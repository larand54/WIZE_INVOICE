object fInvoiceWizard: TfInvoiceWizard
  Left = 190
  Top = 80
  ActiveControl = cbTrading
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Fakturaguide'
  ClientHeight = 621
  ClientWidth = 1080
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
  object pgPriceListGuide: TcxPageControl
    Left = 0
    Top = 41
    Width = 1080
    Height = 527
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsParametrar
    Properties.CustomButtons.Buttons = <>
    OnPageChanging = pgPriceListGuidePageChanging
    ClientRectBottom = 523
    ClientRectLeft = 4
    ClientRectRight = 1076
    ClientRectTop = 24
    object tsInvoiceHead: TcxTabSheet
      Caption = 'tsInvoiceHead'
      ImageIndex = 0
      OnEnter = tsInvoiceHeadEnter
      ExplicitLeft = 1
      ExplicitTop = 21
      ExplicitWidth = 1078
      ExplicitHeight = 505
      object Label17: TLabel
        Left = 147
        Top = 190
        Width = 42
        Height = 15
        Caption = 'S'#228'ljare:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 154
        Top = 151
        Width = 35
        Height = 15
        Caption = 'Konto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 149
        Top = 112
        Width = 40
        Height = 15
        Caption = 'Datum:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 140
        Top = 72
        Width = 49
        Height = 15
        Caption = 'F'#246'rs.reg:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 8
        Top = 8
        Caption = 'Faktura'
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -32
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.Shadow = False
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
      end
      object lcSalesman: TcxDBLookupComboBox
        Left = 192
        Top = 183
        DataBinding.DataField = 'ResponsibleSeller'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'UserID'
        Properties.ListColumns = <
          item
            FieldName = 'Namn'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.ds_Users
        TabOrder = 3
        Width = 300
      end
      object lcKonto: TcxDBLookupComboBox
        Left = 192
        Top = 144
        DataBinding.DataField = 'InvoiceType'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 12
        Properties.KeyFieldNames = 'InvoiceTypeNo'
        Properties.ListColumns = <
          item
            FieldName = 'InvoiceTypeName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmVidaInvoice.dsInvoiceType
        TabOrder = 2
        Width = 300
      end
      object deFakturaDatum: TcxDBDateEdit
        Left = 192
        Top = 105
        DataBinding.DataField = 'InvoiceDate'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        TabOrder = 1
        Width = 300
      end
      object lcSR: TcxDBLookupComboBox
        Left = 192
        Top = 64
        DataBinding.DataField = 'SR'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        Properties.DropDownRows = 15
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 0
        Width = 300
      end
      object rgDebet_kredit: TcxDBRadioGroup
        Left = 192
        Top = 211
        DataBinding.DataField = 'Debit_Credit'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Debet'
            Value = 0
          end
          item
            Caption = 'Kredit'
            Value = 1
          end>
        TabOrder = 4
        Height = 49
        Width = 185
      end
    end
    object tsAddress: TcxTabSheet
      Caption = 'tsAddress'
      ImageIndex = 3
      OnEnter = tsAddressEnter
      ExplicitLeft = 1
      ExplicitTop = 21
      ExplicitWidth = 1078
      ExplicitHeight = 505
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1072
        Height = 499
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1078
        ExplicitHeight = 505
        object txtCustomer: TDBText
          Left = 32
          Top = 135
          Width = 333
          Height = 16
          Color = clWhite
          DataField = 'CustomerName'
          DataSource = dmVidaInvoice.dsrcInvoiceHead
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 32
          Top = 270
          Width = 285
          Height = 81
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label31: TLabel
          Left = 32
          Top = 159
          Width = 63
          Height = 15
          Caption = 'F'#246'rs.org.nr:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Kund'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -32
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfFlat
          Style.Shadow = False
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
        end
        object bSelectCustomer: TcxButton
          Left = 32
          Top = 88
          Width = 137
          Height = 41
          Action = acSelectCustomer
          TabOrder = 0
        end
        object lFakturaAdress: TcxLabel
          Left = 32
          Top = 247
          Caption = 'Faktura Adress'
          ParentColor = False
          Style.Color = clWindow
          Style.HotTrack = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.Shadow = False
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.TextStyle = [fsBold, fsUnderline]
          StyleHot.LookAndFeel.Kind = lfUltraFlat
        end
        object cxButton7: TcxButton
          Left = 32
          Top = 200
          Width = 137
          Height = 41
          Action = acSelectInvoiceAdress
          TabOrder = 2
        end
        object eSalesOrgNo: TcxDBTextEdit
          Left = 114
          Top = 157
          DataBinding.DataField = 'SalesOrgNo'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          TabOrder = 1
          Width = 300
        end
        object lcSprak: TcxDBLookupComboBox
          Left = 202
          Top = 396
          DataBinding.DataField = 'LanguageCode'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'LanguageNo'
          Properties.ListColumns = <
            item
              FieldName = 'LanguageName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsSystem.ds_Language
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.Kind = lfFlat
          Style.Shadow = False
          Style.ButtonTransparency = ebtNone
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 5
          Width = 163
        end
        object cxButton2: TcxButton
          Left = 32
          Top = 387
          Width = 137
          Height = 41
          Action = acSelectLanguage
          TabOrder = 6
        end
      end
    end
    object tsParametrar: TcxTabSheet
      Caption = 'tsParametrar'
      ImageIndex = 4
      ExplicitLeft = 1
      ExplicitTop = 21
      ExplicitWidth = 1078
      ExplicitHeight = 505
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1072
        Height = 499
        Align = alClient
        TabOrder = 0
        OnEnter = Panel3Enter
        ExplicitWidth = 1078
        ExplicitHeight = 505
        object DBText7: TDBText
          Left = 200
          Top = 281
          Width = 247
          Height = 57
          Color = clWhite
          DataField = 'PaymentDescription'
          DataSource = dmVidaInvoice.dsrcInvoiceHead
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object DBText9: TDBText
          Left = 81
          Top = 157
          Width = 65
          Height = 17
          Color = clWhite
          DataField = 'VAT'
          DataSource = dmVidaInvoice.dsrcInvoiceHead
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label29: TLabel
          Left = 40
          Top = 159
          Width = 31
          Height = 13
          Caption = 'Moms:'
          Transparent = True
        end
        object DBText6: TDBText
          Left = 200
          Top = 207
          Width = 157
          Height = 17
          Color = clWhite
          DataField = 'DeliveryTerm'
          DataSource = dmVidaInvoice.dsrcInvoiceHead
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText44: TDBText
          Left = 200
          Top = 361
          Width = 108
          Height = 17
          Color = clWhite
          DataField = 'CurrencyName'
          DataSource = dmVidaInvoice.dsrcInvoiceHead
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 53
          Top = 411
          Width = 53
          Height = 15
          Caption = 'Due date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 53
          Top = 451
          Width = 70
          Height = 15
          Caption = 'Statistikland:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 8
          Caption = 'Parametrar'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -32
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfFlat
          Style.Shadow = False
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
        end
        object cbTrading: TcxDBCheckBox
          Left = 32
          Top = 80
          Caption = 'Trading'
          DataBinding.DataField = 'Trading'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 1
          Width = 98
        end
        object cbCommissionPaidByCustomer: TcxDBCheckBox
          Left = 136
          Top = 80
          Caption = 'Provision betalas av kund'
          DataBinding.DataField = 'CommissionPaidByCustomer'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 4
          Width = 169
        end
        object cbQuickInvoice: TcxDBCheckBox
          Left = 136
          Top = 98
          Caption = 'Snabbfaktura'
          DataBinding.DataField = 'QuickInvoice'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 5
          Width = 169
        end
        object cbSkatteupplag: TcxDBCheckBox
          Left = 32
          Top = 98
          Caption = 'Skatteupplag'
          DataBinding.DataField = 'VAT_OnInvoice'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 2
          Width = 98
        end
        object cbSpecialMoms: TcxDBCheckBox
          Left = 32
          Top = 118
          Caption = 'Special moms'
          DataBinding.DataField = 'SpecialMoms'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          ParentBackground = False
          ParentColor = False
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.Color = clBtnFace
          TabOrder = 3
          Width = 98
        end
        object cbMoms: TcxDBCheckBox
          Left = 136
          Top = 118
          Caption = 'Moms'
          DataBinding.DataField = 'Moms'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 6
          Width = 169
        end
        object rgCommisionInDiscount: TcxDBRadioGroup
          Left = 595
          Top = 80
          Caption = 'Provision'
          DataBinding.DataField = 'FreightInCommission'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Caption = 'p'#229' fakturabelopp'
              Value = 1
            end
            item
              Caption = 'p'#229' varuv'#228'rde'
              Value = 0
            end>
          Style.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 7
          Height = 53
          Width = 129
        end
        object rgFreightInDiscount: TcxDBRadioGroup
          Left = 386
          Top = 80
          Caption = 'Kassa'
          DataBinding.DataField = 'FreightInDiscount'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Caption = 'p'#229' fakturabelopp'
              Value = 1
            end
            item
              Caption = 'p'#229' varuv'#228'rde'
              Value = 0
            end>
          Style.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 8
          Height = 53
          Width = 127
        end
        object bSelectDeliveryTerms: TcxButton
          Left = 40
          Top = 194
          Width = 113
          Height = 41
          Action = acSelectDeliveryTerms
          TabOrder = 9
        end
        object bSelectPaymentTerms: TcxButton
          Left = 40
          Top = 268
          Width = 113
          Height = 41
          Action = acSelectPaymentTerms
          TabOrder = 10
        end
        object bSelectCurrency: TcxButton
          Left = 40
          Top = 348
          Width = 113
          Height = 41
          Action = acSelectCurrency
          TabOrder = 11
        end
        object deDueDate: TcxDBDateEdit
          Left = 200
          Top = 409
          DataBinding.DataField = 'DueDate'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          TabOrder = 12
          Width = 181
        end
        object lcIntraStatCountryNo: TcxDBLookupComboBox
          Left = 200
          Top = 449
          DataBinding.DataField = 'IntraStatCountryNo'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.KeyFieldNames = 'CountryNo'
          Properties.ListColumns = <
            item
              FieldName = 'CountryName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.ds_Country
          TabOrder = 13
          Width = 181
        end
      end
    end
    object tsAgent: TcxTabSheet
      Caption = 'tsAgent'
      ImageIndex = 5
      OnEnter = tsAgentEnter
      ExplicitLeft = 1
      ExplicitTop = 21
      ExplicitWidth = 1078
      ExplicitHeight = 505
      object DBText22: TDBText
        Left = 32
        Top = 144
        Width = 63
        Height = 17
        AutoSize = True
        Color = clWhite
        DataField = 'AgentName'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label43: TLabel
        Left = 32
        Top = 248
        Width = 497
        Height = 81
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object bSelectAgent: TBitBtn
        Left = 35
        Top = 96
        Width = 92
        Height = 42
        Action = acSelectAgent
        Caption = 'V'#228'lj agent'
        TabOrder = 0
      end
      object bbRemoveAgent: TBitBtn
        Left = 154
        Top = 96
        Width = 87
        Height = 42
        Action = acClearAgent
        Caption = 'Ta bort agent'
        TabOrder = 1
      end
      object cxLabel6: TcxLabel
        Left = 8
        Top = 8
        Caption = 'Agent'
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -32
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.Shadow = False
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
      end
      object cxLabel7: TcxLabel
        Left = 32
        Top = 224
        Caption = 'Agent fakturaadress'
        ParentColor = False
        Style.Color = clBtnFace
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = []
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
      end
      object BitBtn1: TBitBtn
        Left = 32
        Top = 176
        Width = 92
        Height = 42
        Action = acSelectAgentAdress
        Caption = 'V'#228'lj agent adress'
        TabOrder = 4
      end
    end
    object tsInvoiceRows: TcxTabSheet
      Caption = 'tsInvoiceRows'
      ImageIndex = 6
      OnEnter = tsInvoiceRowsEnter
      ExplicitLeft = 1
      ExplicitTop = 21
      ExplicitWidth = 1078
      ExplicitHeight = 505
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1072
        Height = 137
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 1078
        object bSelectInvoiceRows: TcxButton
          Left = 16
          Top = 88
          Width = 105
          Height = 33
          Action = acAddInvoiceRow
          TabOrder = 0
        end
        object cxButton4: TcxButton
          Left = 136
          Top = 88
          Width = 105
          Height = 33
          Action = acRemoveInvoiceRow
          TabOrder = 1
        end
        object cxLabel1: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Fakturarader'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -32
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfFlat
          Style.Shadow = False
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
        end
      end
      object grdFaktura: TcxGrid
        Left = 0
        Top = 137
        Width = 1072
        Height = 362
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 1078
        ExplicitHeight = 368
        object grdFakturaDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsrcInvoiceDetail
          DataController.KeyFieldNames = 'InvoiceDetailNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '######'
              Kind = skSum
              FieldName = 'NoOfPkgs'
              Column = grdFakturaDBTableView1NoOfPkgs
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'ActualNetM3'
              Column = grdFakturaDBTableView1ActualNetM3
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'LinealMeter'
              Column = grdFakturaDBTableView1LinealMeter
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'NominalM3'
              Column = grdFakturaDBTableView1NominalM3
            end
            item
              Format = '#######'
              Kind = skSum
              FieldName = 'NoOfPieces'
              Column = grdFakturaDBTableView1NoOfPieces
            end
            item
              Format = '#,###,###.00'
              Kind = skSum
              FieldName = 'ProductValue'
              Column = grdFakturaDBTableView1ProductValue
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'Volume_OrderUnit'
              Column = grdFakturaDBTableView1Volume_OrderUnit
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'intNM3'
              Column = grdFakturaDBTableView1intNM3
            end
            item
              Format = '#,###,###.00'
              Kind = skSum
              FieldName = 'ProductValueWOFreight'
              Column = grdFakturaDBTableView1ProductValueWOFreight
            end
            item
              Format = '######'
              Kind = skCount
              FieldName = 'ProductDescription'
              Column = grdFakturaDBTableView1ProductDescription
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdFakturaDBTableView1InternalInvoiceNo: TcxGridDBColumn
            DataBinding.FieldName = 'InternalInvoiceNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1ShippingPlanNo: TcxGridDBColumn
            Caption = 'ShippingPlanNo'
            DataBinding.FieldName = 'ShippingPlanNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1InvoiceDetailNo: TcxGridDBColumn
            Caption = 'InvoiceDetailNo'
            DataBinding.FieldName = 'InvoiceDetailNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
          end
          object grdFakturaDBTableView1TypeOfRow: TcxGridDBColumn
            DataBinding.FieldName = 'TypeOfRow'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1LoadNo: TcxGridDBColumn
            DataBinding.FieldName = 'LoadNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1LoadID: TcxGridDBColumn
            DataBinding.FieldName = 'LoadID'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1OrderLineNo: TcxGridDBColumn
            DataBinding.FieldName = 'OrderLineNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1Reference: TcxGridDBColumn
            Caption = 'Reference'
            DataBinding.FieldName = 'Reference'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 41
          end
          object grdFakturaDBTableView1ProductDescription: TcxGridDBColumn
            Caption = 'ProductDescription'
            DataBinding.FieldName = 'ProductDescription'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 54
          end
          object grdFakturaDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1LengthDescription: TcxGridDBColumn
            Caption = 'LengthDescription'
            DataBinding.FieldName = 'LengthDescription'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 74
          end
          object grdFakturaDBTableView1ProductLengthNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductLengthNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1VolumeUnit: TcxGridDBColumn
            Caption = 'VolumeUnit'
            DataBinding.FieldName = 'VolumeUnit'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'Stycketal'
              'm3 aDxaL'
              'm3 nDxnL'
              'm3 aDxnL'
              'm3 nDxaL'
              'Kvm tB'
              'Kvm aB'
              'Lopm a'
              'MFBM Nom'
              'SUM'
              'Lopm n')
            Options.Filtering = False
            Width = 45
          end
          object grdFakturaDBTableView1ActualThicknessMM: TcxGridDBColumn
            DataBinding.FieldName = 'ActualThicknessMM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1ActualWidthMM: TcxGridDBColumn
            DataBinding.FieldName = 'ActualWidthMM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1NominalThicknessMM: TcxGridDBColumn
            DataBinding.FieldName = 'NominalThicknessMM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1NominalWidthMM: TcxGridDBColumn
            DataBinding.FieldName = 'NominalWidthMM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1NominalThicknessINCH: TcxGridDBColumn
            DataBinding.FieldName = 'NominalThicknessINCH'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1NominalWidthINCH: TcxGridDBColumn
            DataBinding.FieldName = 'NominalWidthINCH'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1NoOfPkgs: TcxGridDBColumn
            Caption = 'NoOfPkgs'
            DataBinding.FieldName = 'NoOfPkgs'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 34
          end
          object grdFakturaDBTableView1ActualNetM3: TcxGridDBColumn
            Caption = 'ActualNetM3'
            DataBinding.FieldName = 'ActualNetM3'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 30
          end
          object grdFakturaDBTableView1NominalM3: TcxGridDBColumn
            Caption = 'NominalM3'
            DataBinding.FieldName = 'NominalM3'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 29
          end
          object grdFakturaDBTableView1LinealMeter: TcxGridDBColumn
            Caption = 'LinealMeter'
            DataBinding.FieldName = 'LinealMeter'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 36
          end
          object grdFakturaDBTableView1NoOfPieces: TcxGridDBColumn
            Caption = 'NoOfPieces'
            DataBinding.FieldName = 'NoOfPieces'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 31
          end
          object grdFakturaDBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1ModifiedUser: TcxGridDBColumn
            DataBinding.FieldName = 'ModifiedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1DateCreated: TcxGridDBColumn
            DataBinding.FieldName = 'DateCreated'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1NominalLengthMM: TcxGridDBColumn
            DataBinding.FieldName = 'NominalLengthMM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1CustShipPlanDetailObjectNo: TcxGridDBColumn
            DataBinding.FieldName = 'CustShipPlanDetailObjectNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdFakturaDBTableView1Volume_OrderUnit: TcxGridDBColumn
            Caption = 'Volume_OrderUnit'
            DataBinding.FieldName = 'Volume_OrderUnit'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 45
          end
          object grdFakturaDBTableView1Price: TcxGridDBColumn
            Caption = 'Price'
            DataBinding.FieldName = 'Price'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 44
          end
          object grdFakturaDBTableView1PriceUnit: TcxGridDBColumn
            Caption = 'PriceUnit'
            DataBinding.FieldName = 'PriceUnit'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'Stycketal'
              'm3 aDxaL'
              'm3 nDxnL'
              'm3 aDxnL'
              'm3 nDxaL'
              'Kvm tB'
              'Kvm aB'
              'Lopm a'
              'MFBM Nom'
              'SUM'
              'Lopm n')
            Options.Filtering = False
            Width = 40
          end
          object grdFakturaDBTableView1ProductValue: TcxGridDBColumn
            Caption = 'Belopp'
            DataBinding.FieldName = 'ProductValue'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 43
          end
          object grdFakturaDBTableView1OL_Reference: TcxGridDBColumn
            Caption = 'OL_Reference'
            DataBinding.FieldName = 'OL_Reference'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 57
          end
          object grdFakturaDBTableView1ProductValueWOFreight: TcxGridDBColumn
            Caption = 'Produktv'#228'rde'
            DataBinding.FieldName = 'ProductValueWOFreight'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 82
          end
          object grdFakturaDBTableView1VatValue: TcxGridDBColumn
            Caption = 'VatValue'
            DataBinding.FieldName = 'VatValue'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 40
          end
          object grdFakturaDBTableView1intNM3: TcxGridDBColumn
            Caption = 'intNM3'
            DataBinding.FieldName = 'intNM3'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 61
          end
          object grdFakturaDBTableView1ArticleNo: TcxGridDBColumn
            DataBinding.FieldName = 'ArticleNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            Width = 120
          end
          object grdFakturaDBTableView1ArticleName: TcxGridDBColumn
            Caption = 'ArticleName'
            DataBinding.FieldName = 'ArticleName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 65
          end
          object grdFakturaDBTableView1Konto: TcxGridDBColumn
            DataBinding.FieldName = 'Konto'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 37
          end
          object grdFakturaDBTableView1VatCode: TcxGridDBColumn
            Caption = 'VatCode'
            DataBinding.FieldName = 'VatCode'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 58
          end
          object grdFakturaDBTableView1moms_konto: TcxGridDBColumn
            Caption = 'moms_konto'
            DataBinding.FieldName = 'moms_konto'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 55
          end
          object grdFakturaDBTableView1InclInPrice: TcxGridDBColumn
            Caption = 'Inkl. i Pris'
            DataBinding.FieldName = 'InclInPrice'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            MinWidth = 65
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 65
          end
          object grdFakturaDBTableView1InclInInvoiceTotal: TcxGridDBColumn
            Caption = 'Inkl. i fakturatotal'
            DataBinding.FieldName = 'InclInInvoiceTotal'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
            MinWidth = 110
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 110
          end
        end
        object grdFakturaLevel1: TcxGridLevel
          GridView = grdFakturaDBTableView1
        end
      end
    end
    object tsShipToAddress: TcxTabSheet
      Caption = 'tsShipToAddress'
      ImageIndex = 6
      OnEnter = tsShipToAddressEnter
      ExplicitLeft = 1
      ExplicitTop = 21
      ExplicitWidth = 1078
      ExplicitHeight = 505
      object grdShipAdr: TcxGrid
        Left = 0
        Top = 145
        Width = 1072
        Height = 121
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 1078
        object grdShipAdrDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmVidaInvoice.dsInvoiceShipToAddress
          DataController.KeyFieldNames = 'InternalInvoiceNo;ShippingPlanNo;Reference'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdShipAdrDBTableView1Reference: TcxGridDBColumn
            DataBinding.FieldName = 'Reference'
            Options.Filtering = False
            Width = 134
          end
          object grdShipAdrDBTableView1AddressName: TcxGridDBColumn
            DataBinding.FieldName = 'AddressName'
            Options.Filtering = False
            Width = 201
          end
          object grdShipAdrDBTableView1ADDR: TcxGridDBColumn
            DataBinding.FieldName = 'ADDR'
            Options.Filtering = False
            Width = 616
          end
          object grdShipAdrDBTableView1ShippingPlanNo: TcxGridDBColumn
            DataBinding.FieldName = 'ShippingPlanNo'
            Options.Filtering = False
            Width = 41
          end
          object grdShipAdrDBTableView1AddressLine1: TcxGridDBColumn
            DataBinding.FieldName = 'AddressLine1'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1AddressLine2: TcxGridDBColumn
            DataBinding.FieldName = 'AddressLine2'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1AddressLine3: TcxGridDBColumn
            DataBinding.FieldName = 'AddressLine3'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1AddressLine4: TcxGridDBColumn
            DataBinding.FieldName = 'AddressLine4'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1STATE: TcxGridDBColumn
            DataBinding.FieldName = 'STATE'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1POSTAL_CODE: TcxGridDBColumn
            DataBinding.FieldName = 'POSTAL_CODE'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1CITY: TcxGridDBColumn
            DataBinding.FieldName = 'CITY'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1COUNTRY: TcxGridDBColumn
            DataBinding.FieldName = 'COUNTRY'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1InternalInvoiceNo: TcxGridDBColumn
            DataBinding.FieldName = 'InternalInvoiceNo'
            Visible = False
            Options.Filtering = False
          end
          object grdShipAdrDBTableView1AddressNo: TcxGridDBColumn
            DataBinding.FieldName = 'AddressNo'
            Visible = False
            Options.Filtering = False
          end
        end
        object grdShipAdrLevel1: TcxGridLevel
          GridView = grdShipAdrDBTableView1
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1072
        Height = 145
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1078
        object bSelectDeliveryAddress: TcxButton
          Left = 8
          Top = 80
          Width = 137
          Height = 41
          Action = acAddDeliveryAdress
          TabOrder = 0
        end
        object cxButton6: TcxButton
          Left = 168
          Top = 80
          Width = 129
          Height = 41
          Action = acRemoveDeliveryAdress
          TabOrder = 1
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Leveransadress'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -32
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfFlat
          Style.Shadow = False
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
        end
      end
    end
    object tsNotering: TcxTabSheet
      Caption = 'Notering&&slutf'#246'r'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxDBRichEdit1: TcxDBRichEdit
        Left = 0
        Top = 81
        Align = alClient
        DataBinding.DataField = 'InvoiceText'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        Properties.HideScrollBars = False
        Properties.ScrollBars = ssVertical
        Properties.SelectionBar = True
        TabOrder = 0
        ExplicitWidth = 1078
        ExplicitHeight = 424
        Height = 418
        Width = 1072
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1072
        Height = 81
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1078
        object cxLabel8: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Notering'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -32
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfFlat
          Style.Shadow = False
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 568
    Width = 1080
    Height = 53
    Align = alBottom
    TabOrder = 2
    object SpeedButton2: TSpeedButton
      Left = 599
      Top = 2
      Width = 97
      Height = 44
      Action = acSave
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052ADFF00006BCE00005AAD000063BD000063BD000063BD000063BD000063
        BD000063BD000063B5000063B5000063BD000063B5000063BD000063B500005A
        FD000063B50052ADFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00007BE700007BE7000084EF000084F7000084F7000084F7000084F7000084
        F7000084F7000084EF000084F7000084EF000084EF00007BE700007BDE000073
        D600006BC6000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00007BDE00008CFF001094FF001894FF001894FF001894FF001894FF001894
        FF00088CFF001094FF001094FF00088CFF00008CFF00008CFF000084F700007B
        E700007BDE00005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF00088CFF001094FF00299CFF00299CFF0031A5FF00299CFF00299C
        FF00219CFF001094FF001094FF00088CFF00088CFF00008CFF000084EF000084
        F700007BDE00005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF001094FF00219CFF0031A5FF0031A5FF0031A5FF00299CFF0084C6
        FF00219CFF001894FF001094FF00088CFF00088CFF00088CFF00008CFF000084
        F700007BE700005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF00219CFF0031A5FF0031A5FF0031A5FF0031A5FF0084C6FF00FFFF
        FF0084C6FF001894FF001094FF001094FF00088CFF00008CFF000084F700008C
        FF00007BE7000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF00299CFF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6
        FF00FFFFFF0084C6FF001894FF001094FF00088CFF00008CFF00008CFF00008C
        FF000084EF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5
        FF00219CFF00FFFFFF0084C6FF001094FF00088CFF00008CFF000084F700088C
        FF000084F700006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF0042ADFF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF0031A5
        FF00219CFF001894FF00FFFFFF0084C6FF00088CFF00008CFF00088CFF001094
        FF000084F7000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0039A5FF0042ADFF0042ADFF0084C6FF0031A5FF0031A5FF0031A5
        FF00219CFF001894FF001894FF00FFFFFF0084C6FF001094FF00088CFF00088C
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00299CFF004AADFF0042ADFF0042ADFF0039A5FF0031A5FF0031A5FF0031A5
        FF00299CFF001894FF001094FF001094FF00FFFFFF0084C6FF000084F700088C
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0052ADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5
        FF00299CFF001894FF001094FF00088CFF00088CFF00FFFFFF0084C6FF001094
        FF00088CFF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF005AB5FF0063B5FF0052ADFF004AADFF0039A5FF0031A5FF0039A5
        FF00299CFF00219CFF001894FF001094FF00088CFF001094FF00FFFFFF001094
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0039A5FF006BBDFF0063B5FF005AB5FF004AADFF0042ADFF0039A5FF0031A5
        FF00299CFF00219CFF00219CFF001894FF001894FF00088CFF00088CFF001094
        FF00088CFF00006BCE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0042ADFF007BC6FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042AD
        FF0039A5FF0031A5FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AADFF008CCEFF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052AD
        FF004AADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219C
        FF00088CFF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF005AB5FF0084C6FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AAD
        FF004AADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894
        FF000084F7000073D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF005AB5FF005AB5FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299C
        FF00299CFF0031A5FF00219CFF001094FF001894FF001894FF000084EF000084
        EF000084EF0052ADFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object SpeedButton1: TSpeedButton
      Left = 288
      Top = 2
      Width = 97
      Height = 44
      Action = acCancelChanges
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052ADFF00006BCE00005AAD000063BD000063BD000063BD000063BD000063
        BD000063BD000063B5000063B5000063BD000063B5000063BD000063B500005A
        FD000063B50052ADFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00007BE700007BE7000084EF000084F7000084F7000084F7000084F7000084
        F7000084F7000084EF000084F7000084EF000084EF00007BE700007BDE000073
        D600006BC6000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00007BDE00008CFF001094FF001894FF001894FF001894FF001894FF001894
        FF00088CFF001094FF001094FF00088CFF00008CFF00008CFF000084F700007B
        E700007BDE00005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF00088CFF001094FF00299CFF00299CFF0031A5FF00299CFF00299C
        FF00219CFF001094FF001094FF00088CFF00088CFF00008CFF000084EF000084
        F700007BDE00005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF001094FF00219CFF0031A5FF00FFFFFF0084C6FF00299CFF00219C
        FF00219CFF001894FF001094FF00088CFF0084C6FF00FFFFFF00008CFF000084
        F700007BE700005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF00219CFF0031A5FF0031A5FF0031A5FF00FFFFFF0084C6FF00299C
        FF00219CFF001894FF001094FF0084C6FF00FFFFFF00008CFF000084F700008C
        FF00007BE7000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF00299CFF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6
        FF00219CFF001894FF0084C6FF00FFFFFF00088CFF00008CFF00008CFF00008C
        FF000084EF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF0039A5FF0039A5FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFF
        FF0084C6FF0084C6FF00FFFFFF001094FF00088CFF00008CFF000084F700088C
        FF000084F700006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF0042ADFF0039A5FF0042ADFF0039A5FF0039A5FF0031A5FF0031A5
        FF00FFFFFF00FFFFFF001094FF001094FF00088CFF00008CFF00088CFF001094
        FF000084F7000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0039A5FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0084C6
        FF00FFFFFF00FFFFFF0084C6FF001894FF001094FF001094FF00088CFF00088C
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00299CFF004AADFF0042ADFF0042ADFF0039A5FF0031A5FF0084C6FF00FFFF
        FF00299CFF001894FF00FFFFFF0084C6FF00088CFF00088CFF000084F700088C
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0052ADFF004AADFF004AADFF0042ADFF0084C6FF00FFFFFF0031A5
        FF00299CFF001894FF001094FF00FFFFFF0084C6FF00088CFF00088CFF001094
        FF00088CFF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF005AB5FF0063B5FF0052ADFF0084C6FF00FFFFFF0031A5FF0039A5
        FF00299CFF00219CFF001894FF001094FF00FFFFFF0084C6FF001894FF001094
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0039A5FF006BBDFF0063B5FF005AB5FF00FFFFFF0042ADFF0039A5FF0031A5
        FF00299CFF00219CFF00219CFF001894FF001894FF00FFFFFF00088CFF001094
        FF00088CFF00006BCE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0042ADFF007BC6FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042AD
        FF0039A5FF0031A5FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AADFF008CCEFF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052AD
        FF004AADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219C
        FF00088CFF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF005AB5FF0084C6FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AAD
        FF004AADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894
        FF000084F7000073D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ADDEFF005AB5FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299C
        FF00299CFF0031A5FF00219CFF001094FF001894FF001894FF000084EF000084
        EF000084EF0052ADFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn7: TBitBtn
      Left = 496
      Top = 2
      Width = 97
      Height = 44
      Action = acNextPage
      Caption = '&N'#228'sta'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C00428C4200397B3900398439003984390039843900398439003984
        390039843900397B3900397B390039843900397B390039843900397B3900397B
        3900397B39008CCE8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004A9C4A004A9C4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD
        4A004AAD4A004AA54A004AA54A004AA54A004AA54A004A9C4A00429C42004294
        4200428C420039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00429C420052B552005AB55A0063BD630063BD630063BD630063BD630063BD
        630052B552005AB55A005AB55A0052B5520052B5520052B552004AAD4A004A9C
        4A00429C4200397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A0052B552005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD
        6B0063BD63005AB55A005AB55A0052B5520052B5520052B552004AA54A004AAD
        4A00429C4200397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A005AB55A0063BD630073C6730073C67300EFF7EF00EFF7EF00A5D6
        A50063BD630063BD63005AB55A0052B5520052B5520052B5520052B552004AAD
        4A004A9C4A00397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B5520063BD630073C6730073C6730073C67300EFF7EF00FFFFFF00EFF7
        EF00A5D6A50063BD63005AB55A005AB55A0052B5520052B552004AAD4A0052B5
        52004A9C4A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B552006BBD6B0073C6730073C6730073C67300EFF7EF00FFFFFF00FFFF
        FF00EFF7EF00A5D6A50063BD63005AB55A0052B5520052B5520052B5520052B5
        52004AA54A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B5520073C6730073C6730073C6730073C67300EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B552004AAD4A0052B5
        52004AA54A00428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0063BD63007BC67B0073C673007BC67B0073C67300EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EFF7EF00A5D6A50052B5520052B5520052B552005AB5
        5A004AA54A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730073C673007BC67B007BC67B007BC67B00EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B5
        520052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006BBD6B0084CE84007BC67B007BC67B0073C67300EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EFF7EF00A5D6A50052B5520052B552004AA54A0052B5
        520052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730084CE840084CE840084CE84007BC67B00EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00EFF7EF00A5D6A50052B5520052B5520052B5520052B552005AB5
        5A0052B5520039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C673008CCE8C0094CE940084CE840084CE8400EFF7EF00FFFFFF00FFFF
        FF00EFF7EF00A5D6A50063BD63005AB55A0052B552005AB55A0063BD63005AB5
        5A0052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730094CE940094CE94008CCE8C0084CE8400EFF7EF00FFFFFF00EFF7
        EF00A5D6A50063BD630063BD630063BD630063BD630052B5520052B552005AB5
        5A0052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007BC67B00A5D6A5009CD69C0094CE94008CCE8C00EFF7EF00EFF7EF00A5D6
        A50073C6730073C6730073C673006BBD6B0073C6730063BD630063BD630063BD
        630052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0084CE8400ADDEAD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE
        840084CE840084CE840084CE84007BC67B0073C6730073C6730073C6730063BD
        630052B5520039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C00ADDEAD00ADDEAD009CD69C0094CE940084CE840084CE840084CE
        840084CE840084CE840084CE84007BC67B0073C6730073C673006BBD6B0063BD
        63004AAD4A0042944200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C008CCE8C0084CE840073C6730073C6730073C673006BBD6B006BBD
        6B006BBD6B0073C6730063BD63005AB55A0063BD630063BD630052B5520052B5
        52004AA54A008CCE8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
    end
    object BitBtn8: TBitBtn
      Left = 392
      Top = 2
      Width = 97
      Height = 44
      Action = acPreviousPage
      Caption = '&F'#246'reg'#229'ende'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C00428C4200397B3900398439003984390039843900398439003984
        390039843900397B3900397B390039843900397B390039843900397B3900397B
        3900397B39008CCE8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004A9C4A004A9C4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD
        4A004AAD4A004AA54A004AA54A004AA54A004AA54A004A9C4A00429C42004294
        4200428C420039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00429C420052B552005AB55A0063BD630063BD630063BD630063BD630063BD
        630052B552005AB55A005AB55A0052B5520052B5520052B552004AAD4A004A9C
        4A00429C4200397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A0052B552005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD
        6B0063BD63005AB55A005AB55A0052B5520052B5520052B552004AA54A004AAD
        4A00429C4200397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A005AB55A0063BD630073C6730073C6730073C673006BBD6B0063BD
        630063BD6300A5D6A500EFF7EF00EFF7EF0052B5520052B5520052B552004AAD
        4A004A9C4A00397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B5520063BD630073C6730073C6730073C6730073C6730073C673006BBD
        6B00A5D6A500EFF7EF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B5
        52004A9C4A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B552006BBD6B0073C6730073C6730073C6730073C6730073C67300A5D6
        A500EFF7EF00FFFFFF00FFFFFF00EFF7EF0052B5520052B5520052B5520052B5
        52004AA54A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B5520073C6730073C6730073C6730073C6730073C67300A5D6A500EFF7
        EF00FFFFFF00FFFFFF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B5
        52004AA54A00428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0063BD63007BC67B0073C673007BC67B0073C67300A5D6A500EFF7EF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB5
        5A004AA54A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730073C673007BC67B007BC67B00A5D6A500EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF005AB55A005AB55A0052B5520052B5
        520052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006BBD6B0084CE84007BC67B007BC67B0073C67300A5D6A500EFF7EF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF0052B5520052B552004AA54A0052B5
        520052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730084CE840084CE840084CE84007BC67B0073C67300A5D6A500EFF7
        EF00FFFFFF00FFFFFF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB5
        5A0052B5520039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C673008CCE8C0094CE940084CE840084CE840073C6730073C67300A5D6
        A500EFF7EF00FFFFFF00FFFFFF00EFF7EF0052B552005AB55A0063BD63005AB5
        5A0052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730094CE940094CE94008CCE8C0084CE84007BC67B0073C6730073C6
        7300A5D6A500EFF7EF00FFFFFF00EFF7EF0063BD630052B5520052B552005AB5
        5A0052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007BC67B00A5D6A5009CD69C0094CE94008CCE8C0084CE840084CE84007BC6
        7B0073C67300A5D6A500EFF7EF00EFF7EF0073C6730063BD630063BD630063BD
        630052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0084CE8400ADDEAD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE
        840084CE840084CE840084CE84007BC67B0073C6730073C6730073C6730063BD
        630052B5520039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C00ADDEAD00ADDEAD009CD69C0094CE940084CE840084CE840084CE
        840084CE840084CE840084CE84007BC67B0073C6730073C673006BBD6B0063BD
        63004AAD4A0042944200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C008CCE8C0084CE840073C6730073C6730073C673006BBD6B006BBD
        6B006BBD6B0073C6730063BD63005AB55A0063BD630063BD630052B5520052B5
        52004AA54A008CCE8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 760
    Top = 393
    object acNextPage: TAction
      Caption = '&N'#228'sta'
      ImageIndex = 17
      OnExecute = acNextPageExecute
      OnUpdate = acNextPageUpdate
    end
    object acPreviousPage: TAction
      Caption = '&F'#246'reg'#229'ende'
      ImageIndex = 16
      OnExecute = acPreviousPageExecute
      OnUpdate = acPreviousPageUpdate
    end
    object acSave: TAction
      Caption = '&Slutf'#246'r'
      ImageIndex = 23
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancelChanges: TAction
      Caption = '&Avbryt'
      ImageIndex = 19
      OnExecute = acCancelChangesExecute
    end
    object acSelectCustomer: TAction
      Caption = 'V'#228'lj kund'
      OnExecute = acSelectCustomerExecute
    end
    object acSelectLanguage: TAction
      Caption = 'V'#228'lj spr'#229'k'
      OnExecute = acSelectLanguageExecute
    end
    object acSelectAgent: TAction
      Caption = 'V'#228'lj agent'
      OnExecute = acSelectAgentExecute
    end
    object acSelectAgentAdress: TAction
      Caption = 'V'#228'lj agent adress'
      OnExecute = acSelectAgentAdressExecute
    end
    object acClearAgent: TAction
      Caption = 'acClearAgent'
      OnExecute = acClearAgentExecute
    end
    object acAddInvoiceRow: TAction
      Caption = 'L'#228'gg till rad'
      OnExecute = acAddInvoiceRowExecute
    end
    object acRemoveInvoiceRow: TAction
      Caption = 'Ta bort rad'
      OnExecute = acRemoveInvoiceRowExecute
    end
    object acAddDeliveryAdress: TAction
      Caption = 'V'#228'lj leveransadress'
      OnExecute = acAddDeliveryAdressExecute
      OnUpdate = acAddDeliveryAdressUpdate
    end
    object acRemoveDeliveryAdress: TAction
      Caption = 'Ta bort leveransadress'
      OnExecute = acRemoveDeliveryAdressExecute
      OnUpdate = acRemoveDeliveryAdressUpdate
    end
    object acSelectInvoiceAdress: TAction
      Caption = 'V'#228'lj fakturaadress'
      OnExecute = acSelectInvoiceAdressExecute
    end
    object acSelectPaymentTerms: TAction
      Caption = 'V'#228'lj betalvillkor'
      OnExecute = acSelectPaymentTermsExecute
    end
    object acSelectDeliveryTerms: TAction
      Caption = 'V'#228'lj leveransvillkor'
      OnExecute = acSelectDeliveryTermsExecute
    end
    object acSelectCurrency: TAction
      Caption = 'V'#228'lj valuta'
      OnExecute = acSelectCurrencyExecute
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 640
    Top = 353
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 760
    Top = 448
    Bitmap = {
      494C010118001D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000A8000000010020000000000000FC
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
      0000000000000000000084848400949494006B6B6B00636363005A5A5A005A5A
      5A005A5A5A00636363006B6B6B007B7B7B0094949400A5A5A500848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF00000000000000000000000000000000000000000000000000000000000000
      000084848400636363009C9C9C00737373005A5A5A0063636300737373008C8C
      8C00ADADAD00B5B5B500BDBDBD00BDBDBD00A5A5A5008C8C8C00848484008484
      840084848400000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006B6B6B00DEDEDE008484840063636300636363007B7B7B009494
      9400A5A5A500BDBDBD00CECECE00D6D6D600C6C6C600BDBDBD00ADADAD009C9C
      9C00B5B5B5000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006B6B6B00DEDEDE008C8C8C006363630063636300737373009494
      9400A5A5A500B5B5B500CECECE00D6D6D600C6C6C600B5B5B500ADADAD009C9C
      9C00B5B5B5000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF00315AEF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF008494EF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD00000000000000000000000000000000000000000000000000000000000000
      0000424242006B6B6B00D6D6D600848484006363630063636300737373008C8C
      8C00A5A5A500B5B5B500C6C6C600D6D6D600C6C6C600B5B5B500ADADAD009C9C
      9C00B5B5B50000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7003963E7003963E7003163
      E700295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7009CADEF00FFFFFF008494
      EF00295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD00000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006B6B6B00DEDEDE008484840063636300636363007B7B7B009494
      9400A5A5A500B5B5B500AD524A00AD524A00E7C6C600E7C6C6008C8C8C008C8C
      8C008C8C8C008C8C8C00AD5A5A009431310000000000000000000084EF001094
      FF00219CFF0031A5FF0031A5FF0031A5FF00299CFF0084C6FF00219CFF001894
      FF001094FF00088CFF00088CFF00088CFF00008CFF000084F700007BE700005A
      FD000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7004263E7003963E7003163
      E7002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B5000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7009CADEF00FFFFFF008494
      EF002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B500000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006B6B6B00C6C6C600737373005A5A5A00525252005A5A5A005A5A
      5A005A5A5A00BD7B7300C65A5A00C65A5A00E7C6C6009C393900B5737300C6CE
      C600F7F7F700F7F7F700C65A5A009431310000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF0031A5FF0084C6FF00FFFFFF0084C6FF001894
      FF001094FF001094FF00088CFF00008CFF000084F700008CFF00007BE7000063
      BD00000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7004A6BE7003963E7003163
      E700315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000000000000000
      00004A4A4A005A5A5A00A5A5A500737373005A5A5A005A5A5A00737373008C8C
      8C00A5A5A500BD7B7300C65A5A00C65A5A00C6948C009C3939009C4A4A00E7C6
      C600C6CEC600F7F7F700C65A5A009431310000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF00FFFFFF0084C6
      FF001894FF001094FF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD00000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7004A63E7003963E700395A
      E700315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000000000000000
      0000424242006B6B6B00D6D6D600848484006363630063636300737373008C8C
      8C00A5A5A500BD7B7300C65A5A00C65A5A00C6948C00C6948C00BDA5A500BDA5
      A500E7C6C600C6CEC600C65A5A009431310000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF00219CFF00FFFF
      FF0084C6FF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C6000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE700526BE7008494EF008494EF008494EF008494EF008494EF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE7009CADEF008494EF008494EF008494EF008494EF00FFFFFF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD00000000000000000000000000000000000000000000000000000000000000
      00004A424A006B6B6300E7DED6008C848C0063635A00635A630084737B008C94
      8C00A5A5A500BD7B7300AD524A00B55A5A00C65A5A00C65A5A00C65A5A00C65A
      5A00C65A5A00C65A5A00C65A5A009431310000000000000000001894FF0042AD
      FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF0031A5FF00219CFF001894
      FF00FFFFFF0084C6FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD00000000000000000000000000000000000000000000000000425AEF005273
      E7005A73E7008494EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000425AEF005273
      E7009CADEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000000000000000
      0000424242006B737300D6D6D6008C848C005A635A0063636B007B7373008C8C
      8C00A5A5A500BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0084C6FF0031A5FF0031A5FF0031A5FF00219CFF001894
      FF001894FF00FFFFFF0084C6FF001094FF00088CFF00088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF00FFFFFF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000000000000000
      000042424200636B7300DEDEDE008C848C005A636300636363007B7B7B008C8C
      8C00A5A5A500BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A00943131000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF001094FF00FFFFFF0084C6FF000084F700088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E700425AEF00425AE7003152
      E7002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E7009CADEF00FFFFFF008494
      EF002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300CECECE0084737300525263005A5A5A00525252005A5A
      5A005A5A5A00BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF00088CFF00088CFF00FFFFFF0084C6FF001094FF00088CFF000063
      BD000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7004A63EF00425AE700395A
      E7003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7009CADEF00FFFFFF008494
      EF003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300A5A5A500737373005A63520063636300737373008C8C
      8C00A5A5A500BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF004AADFF0039A5FF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00088CFF001094FF00FFFFFF001094FF00008CFF00006B
      C600000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7004A63E7004263E700395A
      E700395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD00000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7009CADEF00FFFFFF008494
      EF00395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300E7DED6008C848C0063635A006B636300737373008C8C
      8C00A5A5A500BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00088CFF00088CFF001094FF00088CFF00006B
      CE000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700526BE7004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700FFFFFF004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300E7DED6008C848C005A635A0063635A0073737300848C
      8C009C9C9C00BD7B7300AD524A00BDBDBD00C65A5A00C65A5A00C65A5A00C65A
      5A00C65A5A00BDBDBD00AD524A0094313100000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C600000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300E7DED6008C848C005A5A630063635A006B736B00848C
      8C009C9C9C00ADADAD00C6C6C600CECECE00BDBDBD00ADADAD00A5A5A5009494
      9400ADADAD0000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B5000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B500000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300A5A5A500737373006B635A00635A6B006B736B00848C
      8C0094949400ADADAD00BDBDBD00CECECE00BDBDBD00A5A5A500A5A5A5008C8C
      8C00ADADAD0000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000000000000000
      00004242420063636B00A5A5A500737B73005A5263005252520063636300635A
      630063636300636363006B6B6B007B7B7B007B7B7B0084848400848484008484
      8400ADADAD0000000000000000000000000000000000000000005AB5FF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A524A006B736B00ADADB5008C8C8C00949494009CA59400A5A5A500ADAD
      FD00A5A5A500A5A5A500ADADAD00ADADAD00A5A5A5009C9C9C008C8C8C007B7B
      7B009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C847B007B737B0073737300736B730073737B006B73
      6B00737373007373730073737300737373007B7B7B007B7B7B00848484000000
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
      00000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C00000000000000000000000000000000000000000000000000FFBD8400C67B
      3100A56B2900B5733100B5733100B5733100B5733100B5733100B5733100AD6B
      2900AD6B2900B5733100AD6B2900B5733100AD6B2900A56B2900AD6B2900FFBD
      840000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      39000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      3900000000000000000000000000000000000000000000000000D6843100D684
      3100DE8C3100E78C3900E78C3900E78C3900E78C3900E78C3900E78C3900DE8C
      3100E78C3900DE8C3100DE8C3100D6843100CE843100C67B3100BD733100B573
      3100000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD00000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000CE843100EF94
      3900EF9C4200F79C4A00F79C4A00F79C4A00F79C4A00F79C4A00EF944200EF9C
      4200EF9C4200EF944200EF943900EF943900E78C3900D6843100CE843100A56B
      2900000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      39000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      3900000000000000000000000000000000000000000000000000DE8C3100EF94
      4200EF9C4200F7A55A00F7A55A00F7AD6300F7A55A00F7A55A00F7A55200EF9C
      4200EF9C4200EF944200EF944200EF943900DE8C3100E78C3900CE843100A56B
      29000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C6730073C673006BBD6B0063BD630063BD6300A5D6
      A500EFF7EF00EFF7EF0052B5520052B5520052B552004AAD4A004A9C4A00397B
      39000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C67300EFF7EF00EFF7EF00A5D6A50063BD630063BD
      63005AB55A0052B5520052B5520052B5520052B552004AAD4A004A9C4A00397B
      3900000000000000000000000000000000000000000000000000E78C3900EF9C
      4200F7A55200F7AD6300F7AD6300FFF7E700FFF7E700FFCE9C00F7A55200F79C
      4A00EF9C4200EF944200EF944200FFCE9C00FFCE9C00E78C3900D6843100A56B
      29000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF00219CFF001894
      FF001094FF00088CFF0084C6FF00FFFFFF00008CFF000084F700007BE700005A
      FD0000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C6730073C6730073C673006BBD6B00A5D6A500EFF7
      EF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004A9C4A003984
      390000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C67300EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      63005AB55A005AB55A0052B5520052B552004AAD4A0052B552004A9C4A003984
      3900000000000000000000000000000000000000000000000000EF943900F7A5
      5200F7AD6300F7AD6300F7AD6300FFF7E700FFFFFF00FFF7E700FFCE9C00F79C
      4A00EF9C4200EF9C4200EF944200FFCE9C00FFFFFF00EF943900D6843100B573
      31000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF001894
      FF001094FF0084C6FF00FFFFFF00008CFF000084F700008CFF00007BE7000063
      BD0000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B5520052B552004AA54A003984
      390000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B5520052B5520052B5520052B552004AA54A003984
      3900000000000000000000000000000000000000000000000000EF943900F7A5
      5A00F7AD6B00F7AD6B00F7AD6B00FFF7E700FFFFFF00FFFFFF00FFF7E700FFCE
      9C00F79C4A00EF9C4200EF944200FFCE9C00FFFFFF00EF943900DE8C3100B573
      31000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF00219CFF001894
      FF0084C6FF00FFFFFF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD0000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004AA54A00428C
      420000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A5005AB55A0052B5520052B552004AAD4A0052B552004AA54A00428C
      4200000000000000000000000000000000000000000000000000EF944200F7AD
      6B00F7AD6B00F7AD6B00F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFCE9C00EF9C4200EF944200FFCE9C00FFFFFF00EF944200E78C3900BD73
      31000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF0084C6
      FF00FFFFFF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C60000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A004AA54A003984
      390000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B5520052B552005AB55A004AA54A003984
      3900000000000000000000000000000000000000000000000000F79C4A00F7B5
      7300F7AD6B00F7B57300F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFCE9C00EF944200FFCE9C00FFFFFF00EF9C4200E78C3900B573
      31000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0042ADFF0039A5FF0039A5FF0031A5FF0031A5FF00FFFFFF00FFFF
      FF001094FF001094FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD0000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B00A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF005AB55A005AB55A0052B5520052B5520052B55200428C
      420000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000F7AD6300F7AD
      6B00F7B57300F7B57300F7B57300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7E700FFCE9C00FFCE9C00FFFFFF00EF944200EF943900BD73
      310000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0084C6FF00FFFFFF00FFFF
      FF0084C6FF001894FF001094FF001094FF00088CFF00088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AA54A0052B5520052B55200428C
      42000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B552004AA54A0052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000F7A55A00F7B5
      7300F7B57300F7B57300F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFCE9C00EF944200FFCE9C00FFFFFF00EF944200EF943900BD73
      3100000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0084C6FF00FFFFFF00299CFF001894
      FF00FFFFFF0084C6FF00088CFF00088CFF000084F700088CFF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A0052B552003984
      390000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A50052B5520052B5520052B5520052B552005AB55A0052B552003984
      3900000000000000000000000000000000000000000000000000F7AD6300FFBD
      7B00F7B57300F7B57300F7B57300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFCE9C00EF944200EF944200FFCE9C00FFFFFF00EF9C4200EF944200B573
      310000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0084C6FF00FFFFFF0031A5FF00299CFF001894
      FF001094FF00FFFFFF0084C6FF00088CFF00088CFF001094FF00088CFF000063
      BD0000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE840073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B552005AB55A0063BD63005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE8400EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B552005AB55A0063BD63005AB55A0052B55200428C
      4200000000000000000000000000000000000000000000000000F7AD6300FFBD
      8400FFC68C00FFBD7B00F7B57300FFF7E700FFFFFF00FFFFFF00FFF7E700FFCE
      9C00F79C4A00EF9C4200EF944200FFCE9C00FFFFFF00EF9C4200EF943900BD73
      310000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF0084C6FF00FFFFFF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00FFFFFF0084C6FF001894FF001094FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE84007BC67B0073C6730073C67300A5D6A500EFF7
      EF00FFFFFF00EFF7EF0063BD630052B5520052B552005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE8400EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      630063BD630063BD630063BD630052B5520052B552005AB55A0052B55200428C
      4200000000000000000000000000000000000000000000000000F7AD6B00FFC6
      9400FFC68C00FFBD8400F7B57300FFF7E700FFFFFF00FFF7E700FFCE9C00F7A5
      5200F7A55200F79C4A00F79C4A00FFCE9C00FFFFFF00EF9C4200EF944200C67B
      310000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF00FFFFFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00FFFFFF00088CFF001094FF00088CFF00006B
      CE000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C0084CE840084CE84007BC67B0073C67300A5D6
      A500EFF7EF00EFF7EF0073C6730063BD630063BD630063BD630052B55200428C
      42000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C00EFF7EF00EFF7EF00A5D6A50073C6730073C6
      730073C673006BBD6B0073C6730063BD630063BD630063BD630052B55200428C
      4200000000000000000000000000000000000000000000000000F7B57300FFD6
      A500FFCE9C00FFC68C00FFBD8400FFF7E700FFF7E700FFCE9C00F7AD6B00F7AD
      6300F7AD6300F7A55A00F7AD6300FFCE9C00FFCE9C00F79C4A00EF943900BD73
      310000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000084CE8400ADDE
      FD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      390000000000000000000000000000000000000000000000000084CE8400ADDE
      FD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      3900000000000000000000000000000000000000000000000000F7B57300FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFC68C00FFBD8400FFBD7B00F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7AD6300F7A55200EF944200B573
      31000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD000000000000000000000000000000000000000000000000008CCE8C00ADDE
      FD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      42000000000000000000000000000000000000000000000000008CCE8C00ADDE
      FD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      4200000000000000000000000000000000000000000000000000FFBD8400FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFBD7B00FFBD7B00F7B57300F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7A55A00F79C4A00E78C3900C67B
      31000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C00000000000000000000000000000000000000000000000000FFBD8400FFBD
      8400F7B57300F7AD6B00F7AD6300F7AD6300F7A55A00F7A55A00F7A55A00F7AD
      6300F7A55200EF9C4200F79C4A00F79C4A00EF943900EF943900DE8C3100FFBD
      8400000000000000000000000000000000000000000000000000ADDEFF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFBD8400C67B
      3100A56B2900B5733100B5733100B5733100B5733100B5733100B5733100AD6B
      2900AD6B2900B5733100AD6B2900B5733100AD6B2900A56B2900AD6B2900FFBD
      8400000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6843100D684
      3100DE8C3100E78C3900E78C3900E78C3900E78C3900E78C3900E78C3900DE8C
      3100E78C3900DE8C3100DE8C3100D6843100CE843100C67B3100BD733100B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE843100EF94
      3900EF9C4200F79C4A00F79C4A00F79C4A00F79C4A00F79C4A00EF944200EF9C
      4200EF9C4200EF944200EF943900EF943900E78C3900D6843100CE843100A56B
      2900000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010528400000000000000
      0000000000000000000000000000000000000000000000000000DE8C3100EF94
      4200EF9C4200F7A55A00F7A55A00F7AD6300F7A55A00F7A55A00F7A55200EF9C
      4200EF9C4200EF944200EF944200EF943900DE8C3100E78C3900CE843100A56B
      2900000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000000000005294BD004A6B
      9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B
      9C004A6B9C000042730000000000000000000000000010528400004273000000
      0000000000000000000000000000000000000000000000000000E78C3900EF9C
      4200F7A55200FFCE9C00FFCE9C00F7AD6300F7A55A00F7A55200F7A55200F79C
      4A00FFCE9C00FFF7E700FFF7E700EF944200EF943900E78C3900D6843100A56B
      2900000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000000000000000000008639C00ADCE
      E700ADCEE700ADCEE700ADCEE700CECEDE00CECEDE00CECEDE00CECEDE008CB5
      C600004273000000000000000000000000000000000000000000004273001052
      8400000000000000000000000000000000000000000000000000EF943900F7A5
      5200F7AD6300FFFFFF00FFCE9C00F7AD6300F7AD6300F7A55A00F7A55200FFCE
      9C00FFF7E700FFFFFF00FFF7E700EF943900E78C3900EF943900D6843100B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000086BA500DEF7
      FF00DEF7FF00DEF7FF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00C6D6E7001052
      8400000000000000000000000000000000000000000000000000105284001052
      84004A6B9C000000000000000000000000000000000000000000EF943900F7A5
      5A00F7AD6B00FFFFFF00FFCE9C00F7AD6300F7AD6300F7AD6300FFCE9C00FFF7
      E700FFFFFF00FFFFFF00FFF7E700EF943900EF943900EF943900DE8C3100B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000007BAD00CEF7
      FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00DEF7FF00C6D6E700105284000000
      00000000000000000000000000000000000000000000000000004A6B9C00739C
      FD00105284000000000000000000000000000000000000000000EF944200F7AD
      6B00F7AD6B00FFFFFF00FFCE9C00F7AD6B00F7AD6300FFCE9C00FFF7E700FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF943900E78C3900EF944200E78C3900BD73
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000007BAD00B5E7
      FF00B5E7FF00B5E7FF00CEF7FF00CEF7FF00ADCEE70010528400000000000000
      00000000000000000000000000000000000000000000000000004A6B9C00739C
      FD00297BAD000000000000000000000000000000000000000000F79C4A00F7B5
      7300F7AD6B00FFFFFF00FFCE9C00F7AD6B00FFCE9C00FFF7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF943900EF944200EF9C4200E78C3900B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE630000000000000000000000000000000000001884C600B5E7
      FF00B5E7FF00B5E7FF00B5E7FF00B5E7FF00A5DEFF0029637B004A6B9C000000
      000000000000000000000000000000000000000000000000000029637B008CB5
      C600297BAD000000000000000000000000000000000000000000F7AD6300F7AD
      6B00F7B57300FFFFFF00FFCE9C00FFCE9C00FFF7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF9C4200EF944200EF944200EF943900BD73
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC60000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE6300000000000000000000000000000000000010A5D600A5DE
      FF00A5DEFF00A5DEFF00A5DEFF00A5DEFF00A5DEFF00A5DEFF0029637B002963
      7B000000000000000000000000000000000000000000739CAD0010528400B5E7
      FF00298CD6000000000000000000000000000000000000000000F7A55A00F7B5
      7300F7B57300FFFFFF00FFCE9C00F7AD6300FFCE9C00FFF7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF944200E78C3900EF944200EF943900BD73
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B50000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD00313131000000000000000000000000000000000010A5D6008CD6
      FF008CD6FF0084BDE70084BDE7008CD6FF008CD6FF00A5DEFF008CD6FF005294
      BD00004A7B0029637B00739CAD00739CAD00216B9400105A940084BDE7008CD6
      FF00007BAD000000000000000000000000000000000000000000F7AD6300FFBD
      7B00F7B57300FFFFFF00FFCE9C00F7AD6B00F7AD6300FFCE9C00FFF7E700FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF944200EF944200EF9C4200EF944200B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF70000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B003131310000000000000000000000000010A5D6006BC6
      FF006BC6FF001884C600007BAD0084BDE7008CD6FF008CD6FF008CD6FF008CD6
      FF008CD6FF005294BD005294BD005294BD0084BDE700A5DEFF00A5DEFF0042A5
      DE0084BDE7000000000000000000000000000000000000000000F7AD6300FFBD
      8400FFC68C00FFFFFF00FFCE9C00F7AD6B00F7AD6300F7AD6B00FFCE9C00FFF7
      E700FFFFFF00FFFFFF00FFF7E700EF9C4200F79C4A00EF9C4200EF943900BD73
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E70000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A00000000000000000010A5D6004ABD
      FF0010A5D60000000000000000001884C60042A5DE006BC6FF006BC6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF0042A5DE0042A5
      DE00000000000000000000000000000000000000000000000000F7AD6B00FFC6
      9400FFC68C00FFFFFF00FFCE9C00F7B57300F7AD6B00F7AD6300F7A55A00FFCE
      9C00FFF7E700FFFFFF00FFF7E700EF944200EF944200EF9C4200EF944200C67B
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F700000000000000000010A5D60010A5
      D6000000000000000000000000000000000042A5DE001884C60042A5DE004ABD
      FF006BC6FF006BC6FF006BC6FF004ABDFF0042A5DE0010A5D60042A5DE000000
      0000000000000000000000000000000000000000000000000000F7B57300FFD6
      A500FFCE9C00FFCE9C00FFCE9C00FFBD7B00F7B57300F7B57300F7AD6B00F7AD
      6300FFCE9C00FFF7E700FFF7E700F7A55200F7A55200F79C4A00EF943900BD73
      3100000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F700000000000000000010A5D6000000
      000000000000000000000000000000000000000000000000000042A5DE0042A5
      DE0010A5D60010A5D60010A5D60042A5DE0042A5DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000F7B57300FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFC68C00FFBD8400FFBD7B00F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7AD6300F7A55200EF944200B573
      3100000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFBD8400FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFBD7B00FFBD7B00F7B57300F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7A55A00F79C4A00E78C3900C67B
      310000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFBD8400FFBD
      8400F7B57300F7AD6B00F7AD6300F7AD6300F7A55A00F7A55A00F7A55A00F7AD
      6300F7A55200EF9C4200F79C4A00F79C4A00EF943900EF943900DE8C3100FFBD
      8400000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400000000000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      FD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600BD6B2900B55A1800F7DEBD00BD6B
      2900B55A1800E7BD8C00EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000AD73
      8400F7E7D600F7EFDE00F7E7D600F7E7CE00CE8C5A00B55A1800DEAD7B00CE8C
      5200B55A1800DEA57300EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE00DEB58C00B55A1800CE8C5200F7DE
      BD00B55A1800CE844A00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00CE946300CE946300B55A1800CE946300CE94
      6300B55A1800CE946300CE946300CE946300CE946300EFCE9C00EFCE9C00EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000B584
      8400F7EFE700FFF7EF00F7EFE700B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800EFCEA500EFCE9C00EFCE
      9C00EFCE9400B584840000000000000000000000000000000000EF9C2100F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00EF9C21000000000000000000008C
      08000000000000000000EF9C2100F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00CE8C6300B55A1800F7DE
      BD00CE8C5A00B55A1800DEAD7B00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008C0800008C
      0800007308000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700DEB59400B55A1800CE8C
      5A00F7DEBD00B55A1800CE8C5200F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C0800008C0800008C
      0800007308000073080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFF7F700CE946300CE946300CE946300B55A1800CE94
      6300CE946300B55A1800CE946300CE946300CE946300F7D6B500F7D6AD00F7D6
      FD00EFCEA500B584840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008C0800008C0800008C08000073
      0800007308000073080000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800F7DEBD00F7D6B500F7D6
      FD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      00007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B8400000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00CE946300B55A
      1800F7DEBD00CE8C6300B55A1800DEAD8400F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B8400000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700E7BD9C00B55A
      1800CE8C6300F7DEBD00B55A1800CE8C5A00F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A500A57B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      FD00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B8400000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E7DE00B55A
      1800BD6B2900EFDECE00B55A1800BD632900F7E7CE00F7E7CE00EFD6BD00CEBD
      FD00B5AD94009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE630000000000000000000000000000298CBD000873B5000873
      B500085A940042B5F70042B5F7000873B5000873B500085A94007B8CC600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B8400000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0000DEE70000DE
      E70000DEE70000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE6300000000000000000000000000000873B5008CD6F70042B5
      F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B5847300000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE630000000000000000000000000000216BF700B5DEF700B5DE
      F700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216BF700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B5847300000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE6300000000000000000000000000005AB5E7003184FF003184
      FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5E700D6D6
      D600D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B5848400000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      00003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      840000000000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      00003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0000DEE70000DE
      E70000DEE70000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AB5E7003184FF003184FF005AB5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      00000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000BD846B00A573
      6300C68C7300C68C7B00B5847300AD8C84009C847B00E7947300E79473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000007B7B
      7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B7B0000FFFF000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B50000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000CE846300D69C8400CE94
      7B00E7B59C00DEA58C00BD846B00BD8C7B00C6948400B5847300946B5200946B
      520073422900844A3900844A390084635A000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000BD846300DE9C8C00FFC6
      FD00FFE7C600E7BDA500CE8C7300DE947B00FFAD8C00F7A58400F7A58400F7A5
      8400B5847300A5847B009C7B73007B4A390084635A0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DE9C8C00FFB5
      A500FFD6B500E7BDA500D69C8400F7B59400F7B59400C6846B00B56B5200E794
      7B00EFA58C00C6846B00CE7B6300BD846B009C6B5A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DE9C8C00F7BD
      A500FFCEAD00EFC6AD00E7C6AD00FFD6BD00DEA58C00CE9C9400EFD6C600EFB5
      9C00E79C7B00E7A58C00E7947300DEA58C00B58C840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DEA58C00FFBD
      A500FFCEB500EFC6A500DEAD9C00DEB59C00DEAD9400E7CEB500EFEFE700DEBD
      FD00DEAD9400EFBDA500EFB59400E7B59C00B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A0000000000C6846300DEA58C00FFBD
      FD00FFDEBD00DEB59400B5735A00BD735A00F7C6A500E7CEAD00A57B6300DEB5
      9C00FFDEBD00DEBDA500EFC6A500E7BDA500B584730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A0000000000BD846B00DEA59400FFC6
      B500FFD6BD00DEB59C00CE9C8400E7B59C00D6AD9400C68C7300C67B6300E7A5
      8C00DEAD9400C68C7B00DE9C7B00DEB59C00B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A0000000000C6846300DEA59400FFC6
      B500FFCEB500EFC6AD00E7CEB500FFEFCE00D6A59400D6948400FFD6BD00E7B5
      9C00CE947B00D6948400DE947B00DEAD9400B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A0000000000C6846300E7A59400FFC6
      B500FFD6B500EFCEAD00DEB5A500DEBDA500EFBDA500FFD6BD00F7EFDE00E7C6
      FD00E7B59C00F7C6AD00EFBD9C00DEBDA500B58C7B0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A0000000000C6846300E7A59400FFCE
      BD00FFE7C600DEB59400B57B6300BD7B6300F7C6A500EFC6A500AD7B6B00DEB5
      9C00FFD6B500FFC69400FFDE9C00FFCEAD00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A0000000000C6846300E7AD9C00FFD6
      C600FFE7C600DEAD9400BD8C7B00DEAD9400E7BD9C00D6A58C00C68C7300FFBD
      8C00CEADAD007384AD008C94AD00CEBDB500CE9C840000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7AD9C00FFD6
      C600FFDEBD00E7C6AD00DEC6B500FFEFCE00DEB5A500D6A59400FFDEBD00FFC6
      8C00948CA500086BE7001063D6009CADC600DEAD7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000BD846300DEB5A500FFD6
      CE00FFD6BD00F7D6B500E7C6B500DEBDA500EFC6AD00EFCEB500DEC6B500FFC6
      9400B5B5B5004A9CF7005294F700BDB5D600DE9C730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000BD846300DEB5A500FFDE
      CE00FFDEC600FFD6B500EFC6A500F7CEAD00E7B59C00F7D6BD00EFDEC600FFE7
      C600E7DECE00A5CEDE00ADC6E700D6CECE00CE94730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300DEB5A500FFDE
      D600FFDEC600F7C6A500F7CEAD00EFBD9C00F7CEAD00F7CEAD00F7CEAD00F7D6
      B500EFCEB500E7C6AD00EFD6B500EFD6C600C694840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7B5AD00FFE7
      DE00F7D6BD00E7AD8C00E79C7300F7A58400F7A58400F7A58400DE9C7B00DE9C
      7B00DE9C7B00EFAD8400F7B59400F7CEB500BD9C940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7BDB500FFEF
      E700F7DEC600EF9C7300EF844A00FF9C6300FFA56300FF9C6300FFA56B00FFA5
      6B00FFA57300FFAD7B00FFA57300EFBDA500BDA5940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7B5AD00FFEF
      E700FFE7CE00EFAD8400E7734200EF7B4200EF7B4200EF7B4200EF844A00EF84
      4A00F78C5200FF8C5200EF7B4200E7A58C00BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7BDB500FFF7
      F700FFF7DE00F7D6B500E7AD8C00E7A57B00E79C7300E7947300DE946B00DE94
      6B00E78C6300F78C5A00E7845200E7B59400CEA5940000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A0000000000CE846300F7D6CE00FFFF
      FF00FFFFF700FFFFDE00FFFFDE00FFFFDE00FFF7DE00FFFFDE00FFF7DE00FFF7
      DE00FFDEC600F7CEAD00FFD6B500FFEFD600DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000DEB59C00F7E7
      DE00F7E7CE00F7E7CE00F7EFD600F7EFDE00F7F7DE00F7EFDE00F7EFD600F7F7
      DE00F7EFD600F7E7D600FFFFDE00FFF7DE00DEB59C0000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A0000000000000000000000000000000000E7BD
      FD00E7C6B500E7C6B500E7C6BD00E7CEC600EFD6C600E7CEBD00DEC6B500EFD6
      C600F7EFD600FFF7DE00FFFFE700F7EFD600DEB5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D600000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D6000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A0008731000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD3900087308000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD310000730800000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A000873080008730800087308000873080000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      39000873080000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      21000873080000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      18000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      10000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000A80000000100010000000000E00700000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFC0000FC0000FF00007C0000F
      C0000FC0000FF00007C0000FC0000FC0000FF00007C0000FC0000FC0000FF000
      07C0000FC0000FC0000FF00000C0000FC0000FC0000FF00000C0000FC0000FC0
      000FF00000C0000FC0000FC0000FF00000C0000FC0000FC0000FF00000C0000F
      C0000FC0000FF00000C0000FC0000FC0000FF00000C0000FC0000FC0000FF000
      00C0000FC0000FC0000FF00000C0000FC0000FC0000FF00000C0000FC0000FC0
      000FF00000C0000FC0000FC0000FF00007C0000FC0000FC0000FF00007C0000F
      C0000FC0000FF00007C0000FFFFFFFFFFFFFF00007FFFFFFFFFFFFFFFFFFFC00
      1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC00003C00003FFFFFFFFFFFFC00003C00003FFFFFFC0000F
      C00003C00003FFFFFFC0000FC00003C00003FFFFFFC0000FC00003C00003FFFF
      BFC0000FC00003C00003C0039FC0000FC00003C00003C007CFC0000FC00003C0
      0003C00FC7C0000FC00003C00003C01FC7C0000FC00003C00003C03FC7C0000F
      C00003C00003C01FC7C0000FC00003C00003C00F87C0000FC00003C00003C000
      07C0000FC00003C00001C00007C0000FC00003C00000C6000FC0000FC00003C0
      0000CF001FC0000FC00003C00000DFC07FC0000FC00003C00000FFFFFFC0000F
      E00007E00007FFFFFFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003C07C07FFFFFFFFFFFFE00003C0
      7C07FFFFFFFFFFFFE00003C07C07C00003FC0007E00003C07C07C00003FC0007
      E00003C07C07C00003FC0007E00003C07C07C00003FC0007E00003C07C07C000
      03FC0007E00003C07C07C00003FC0007E00003C06C07C00003FC0007E00003FF
      C7FFC00003FC0007E00003FF83FFC00003FC0007E00003FF01FFC00003FC0007
      E00003FFEFFFC00003F00007E00003FFEFFFC00003F00007E00003FFEFFFC000
      03F00007E00003FF01FFC00003800007E00003FF01FFC00003800007E00003FF
      01FFC00003800007E00003FF01FFC00003800007E00007FF01FFC00003F0000F
      E0000FFF01FFE00007F0001FE0001FFF01FFFFFFFFF0FFFFE0003FFF01FFFFFF
      FFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFDE9DCFFFFFFC00001FFFFFFFDE9DCFF
      0C1F800000C01FFFA01801FC00078000008000FF803803F0000180000080007F
      803803E0000380000080007FC03CFB80000380000080007FC03CFB8000038000
      0080007FC03CFB80000380000080007FC03CFB80000380000080007FC038F880
      000380000080007FC038F880000380000080007F0010F8C0000380000080007F
      8008E0E0000780000080007F8008E0F8000F80000080007FC03CC3F8001F8000
      0080007FC07CD3FC007F80000080007FC07CD3FC00FF80000080007FC07CC3FC
      01FF80000080007FC13C11FC01FF80000080007FC13C11FC01FF80000080007F
      81B818FC01FF80000080007FB9DB9DF803FF80000080007FB9DB9DF803FF8000
      00C0007F7BE7BEF007FFC00001E0007FFFFFFFE00003FFFFFFFFF800FFFFFFE0
      0003FFFFFFFFF800FF1FFFE00003807FFF000000F8000FE000038003FF000428
      E0000FE0000380001F000428C0000FE0000380001F000152C0000FE000038000
      0F000428C0000FE0000380000F000428C0000FE00003800007000152C0000FE0
      0003800007000428C0000FE00003800007000428C0000FE00003800003000152
      C0000FE00003800003000428C0000FE00003800001000428C0000FE000038000
      00000152C0000FE00003800000000000C0000FE00003800007000000C0000FE0
      0003800007000000E0000FE00003800007000000F8000FE00007C03F07000000
      FE1FFFE0000FE07E0F000000FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Kakyl')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 433
    Top = 373
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Kalkyl'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 33
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <>
      OldName = 'Kalkyl'
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Texter'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 297
      FloatTop = 486
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <>
      OldName = 'Texter'
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 641
    Top = 406
  end
  object dsrcInvoiceDetail: TDataSource
    DataSet = dmVidaInvoice.cdsInvoiceDetail
    Left = 760
    Top = 344
  end
  object siLangLinked_fInvoiceWizard: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 4
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English'
      'VE_Svenska')
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
    Left = 528
    Top = 312
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660049006E0076006F00690063006500570069007A00
      6100720064000100460061006B00740075007200610067007500690064006500
      0100010001000D000A007400730049006E0076006F0069006300650048006500
      6100640001007400730049006E0076006F006900630065004800650061006400
      0100010001000D000A004C006100620065006C003100370001005300E4006C00
      6A006100720065003A000100010001000D000A004C006100620065006C003100
      380001004B006F006E0074006F003A000100010001000D000A004C0061006200
      65006C0031003900010044006100740075006D003A000100010001000D000A00
      4C006100620065006C003200300001004600F600720073002E00720065006700
      3A000100010001000D000A00630078004C006100620065006C00340001004600
      61006B0074007500720061000100010001000D000A0074007300410064006400
      7200650073007300010074007300410064006400720065007300730001000100
      01000D000A004C006100620065006C003300310001004600F600720073002E00
      6F00720067002E006E0072003A000100010001000D000A00630078004C006100
      620065006C00320001004B0075006E0064000100010001000D000A006C004600
      61006B0074007500720061004100640072006500730073000100460061006B00
      740075007200610020004100640072006500730073000100010001000D000A00
      7400730050006100720061006D00650074007200610072000100740073005000
      6100720061006D00650074007200610072000100010001000D000A004C006100
      620065006C003200390001004D006F006D0073003A000100010001000D000A00
      4C006100620065006C0032000100440075006500200064006100740065003A00
      0100010001000D000A004C006100620065006C00330001005300740061007400
      69007300740069006B006C0061006E0064003A000100010001000D000A006300
      78004C006100620065006C003500010050006100720061006D00650074007200
      610072000100010001000D000A0063006200540072006100640069006E006700
      0100540072006100640069006E0067000100010001000D000A00630062004300
      6F006D006D0069007300730069006F006E005000610069006400420079004300
      7500730074006F006D00650072000100500072006F0076006900730069006F00
      6E00200062006500740061006C006100730020006100760020006B0075006E00
      64000100010001000D000A006300620051007500690063006B0049006E007600
      6F00690063006500010053006E00610062006200660061006B00740075007200
      61000100010001000D000A006300620053006B00610074007400650075007000
      70006C0061006700010053006B0061007400740065007500700070006C006100
      67000100010001000D000A00630062005300700065006300690061006C004D00
      6F006D00730001005300700065006300690061006C0020006D006F006D007300
      0100010001000D000A00630062004D006F006D00730001004D006F006D007300
      0100010001000D000A007200670043006F006D006D006900730069006F006E00
      49006E0044006900730063006F0075006E0074000100500072006F0076006900
      730069006F006E000100010001000D000A007200670046007200650069006700
      6800740049006E0044006900730063006F0075006E00740001004B0061007300
      730061000100010001000D000A00740073004100670065006E00740001007400
      73004100670065006E0074000100010001000D000A0062006200520065006D00
      6F00760065004100670065006E007400010054006100200062006F0072007400
      20006100670065006E0074000100010001000D000A00630078004C0061006200
      65006C00360001004100670065006E0074000100010001000D000A0063007800
      4C006100620065006C00370001004100670065006E0074002000660061006B00
      74007500720061006100640072006500730073000100010001000D000A007400
      730049006E0076006F0069006300650052006F00770073000100740073004900
      6E0076006F0069006300650052006F00770073000100010001000D000A006300
      78004C006100620065006C0031000100460061006B0074007500720061007200
      61006400650072000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031004900
      6E007400650072006E0061006C0049006E0076006F006900630065004E006F00
      010049006E007400650072006E0061006C0049006E0076006F00690063006500
      4E006F000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C00650056006900650077003100530068006900
      7000700069006E00670050006C0061006E004E006F0001005300680069007000
      700069006E00670050006C0061006E004E006F000100010001000D000A006700
      72006400460061006B007400750072006100440042005400610062006C006500
      5600690065007700310049006E0076006F006900630065004400650074006100
      69006C004E006F00010049006E0076006F006900630065004400650074006100
      69006C004E006F000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031005400
      7900700065004F00660052006F007700010054007900700065004F0066005200
      6F0077000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C006500560069006500770031004C006F006100
      64004E006F0001004C006F00610064004E006F000100010001000D000A006700
      72006400460061006B007400750072006100440042005400610062006C006500
      560069006500770031004C006F00610064004900440001004C006F0061006400
      490044000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C006500560069006500770031004F0072006400
      650072004C0069006E0065004E006F0001004F0072006400650072004C006900
      6E0065004E006F000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031005200
      650066006500720065006E006300650001005200650066006500720065006E00
      630065000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C00650056006900650077003100500072006F00
      64007500630074004400650073006300720069007000740069006F006E000100
      500072006F006400750063007400440065007300630072006900700074006900
      6F006E000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C00650056006900650077003100500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      0100010001000D000A00670072006400460061006B0074007500720061004400
      42005400610062006C006500560069006500770031004C0065006E0067007400
      68004400650073006300720069007000740069006F006E0001004C0065006E00
      6700740068004400650073006300720069007000740069006F006E0001000100
      01000D000A00670072006400460061006B007400750072006100440042005400
      610062006C00650056006900650077003100500072006F006400750063007400
      4C0065006E006700740068004E006F000100500072006F006400750063007400
      4C0065006E006700740068004E006F000100010001000D000A00670072006400
      460061006B007400750072006100440042005400610062006C00650056006900
      65007700310056006F006C0075006D00650055006E0069007400010056006F00
      6C0075006D00650055006E00690074000100010001000D000A00670072006400
      460061006B007400750072006100440042005400610062006C00650056006900
      650077003100410063007400750061006C0054006800690063006B006E006500
      730073004D004D000100410063007400750061006C0054006800690063006B00
      6E006500730073004D004D000100010001000D000A0067007200640046006100
      6B007400750072006100440042005400610062006C0065005600690065007700
      3100410063007400750061006C00570069006400740068004D004D0001004100
      63007400750061006C00570069006400740068004D004D000100010001000D00
      0A00670072006400460061006B00740075007200610044004200540061006200
      6C006500560069006500770031004E006F006D0069006E0061006C0054006800
      690063006B006E006500730073004D004D0001004E006F006D0069006E006100
      6C0054006800690063006B006E006500730073004D004D000100010001000D00
      0A00670072006400460061006B00740075007200610044004200540061006200
      6C006500560069006500770031004E006F006D0069006E0061006C0057006900
      6400740068004D004D0001004E006F006D0069006E0061006C00570069006400
      740068004D004D000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031004E00
      6F006D0069006E0061006C0054006800690063006B006E006500730073004900
      4E004300480001004E006F006D0069006E0061006C0054006800690063006B00
      6E0065007300730049004E00430048000100010001000D000A00670072006400
      460061006B007400750072006100440042005400610062006C00650056006900
      6500770031004E006F006D0069006E0061006C00570069006400740068004900
      4E004300480001004E006F006D0069006E0061006C0057006900640074006800
      49004E00430048000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031004E00
      6F004F00660050006B006700730001004E006F004F00660050006B0067007300
      0100010001000D000A00670072006400460061006B0074007500720061004400
      42005400610062006C0065005600690065007700310041006300740075006100
      6C004E00650074004D0033000100410063007400750061006C004E0065007400
      4D0033000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C006500560069006500770031004E006F006D00
      69006E0061006C004D00330001004E006F006D0069006E0061006C004D003300
      0100010001000D000A00670072006400460061006B0074007500720061004400
      42005400610062006C006500560069006500770031004C0069006E0065006100
      6C004D00650074006500720001004C0069006E00650061006C004D0065007400
      650072000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C006500560069006500770031004E006F004F00
      660050006900650063006500730001004E006F004F0066005000690065006300
      650073000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C00650056006900650077003100430072006500
      6100740065006400550073006500720001004300720065006100740065006400
      55007300650072000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031004D00
      6F00640069006600690065006400550073006500720001004D006F0064006900
      660069006500640055007300650072000100010001000D000A00670072006400
      460061006B007400750072006100440042005400610062006C00650056006900
      6500770031004400610074006500430072006500610074006500640001004400
      61007400650043007200650061007400650064000100010001000D000A006700
      72006400460061006B007400750072006100440042005400610062006C006500
      560069006500770031004E006F006D0069006E0061006C004C0065006E006700
      740068004D004D0001004E006F006D0069006E0061006C004C0065006E006700
      740068004D004D000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031004300
      750073007400530068006900700050006C0061006E0044006500740061006900
      6C004F0062006A006500630074004E006F000100430075007300740053006800
      6900700050006C0061006E00440065007400610069006C004F0062006A006500
      630074004E006F000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031005600
      6F006C0075006D0065005F004F00720064006500720055006E00690074000100
      56006F006C0075006D0065005F004F00720064006500720055006E0069007400
      0100010001000D000A00670072006400460061006B0074007500720061004400
      42005400610062006C0065005600690065007700310050007200690063006500
      0100500072006900630065000100010001000D000A0067007200640046006100
      6B007400750072006100440042005400610062006C0065005600690065007700
      31005000720069006300650055006E0069007400010050007200690063006500
      55006E00690074000100010001000D000A00670072006400460061006B007400
      750072006100440042005400610062006C006500560069006500770031005000
      72006F006400750063007400560061006C00750065000100420065006C006F00
      700070000100010001000D000A00670072006400460061006B00740075007200
      6100440042005400610062006C006500560069006500770031004F004C005F00
      5200650066006500720065006E006300650001004F004C005F00520065006600
      6500720065006E00630065000100010001000D000A0067007200640046006100
      6B007400750072006100440042005400610062006C0065005600690065007700
      3100500072006F006400750063007400560061006C007500650057004F004600
      7200650069006700680074000100500072006F00640075006B0074007600E400
      7200640065000100010001000D000A00670072006400460061006B0074007500
      72006100440042005400610062006C0065005600690065007700310056006100
      7400560061006C00750065000100560061007400560061006C00750065000100
      010001000D000A00670072006400460061006B00740075007200610044004200
      5400610062006C0065005600690065007700310069006E0074004E004D003300
      010069006E0074004E004D0033000100010001000D000A006700720064004600
      61006B007400750072006100440042005400610062006C006500560069006500
      77003100410072007400690063006C0065004E006F0001004100720074006900
      63006C0065004E006F000100010001000D000A00670072006400460061006B00
      7400750072006100440042005400610062006C00650056006900650077003100
      410072007400690063006C0065004E0061006D00650001004100720074006900
      63006C0065004E0061006D0065000100010001000D000A006700720064004600
      61006B007400750072006100440042005400610062006C006500560069006500
      770031004B006F006E0074006F0001004B006F006E0074006F00010001000100
      0D000A00670072006400460061006B0074007500720061004400420054006100
      62006C0065005600690065007700310056006100740043006F00640065000100
      56006100740043006F00640065000100010001000D000A006700720064004600
      61006B007400750072006100440042005400610062006C006500560069006500
      770031006D006F006D0073005F006B006F006E0074006F0001006D006F006D00
      73005F006B006F006E0074006F000100010001000D000A006700720064004600
      61006B007400750072006100440042005400610062006C006500560069006500
      7700310049006E0063006C0049006E0050007200690063006500010049006E00
      6B006C002E0020006900200050007200690073000100010001000D000A006700
      72006400460061006B007400750072006100440042005400610062006C006500
      5600690065007700310049006E0063006C0049006E0049006E0076006F006900
      6300650054006F00740061006C00010049006E006B006C002E00200069002000
      660061006B00740075007200610074006F00740061006C000100010001000D00
      0A0074007300530068006900700054006F004100640064007200650073007300
      010074007300530068006900700054006F004100640064007200650073007300
      0100010001000D000A0067007200640053006800690070004100640072004400
      42005400610062006C0065005600690065007700310052006500660065007200
      65006E006300650001005200650066006500720065006E007300010001000100
      0D000A0067007200640053006800690070004100640072004400420054006100
      62006C0065005600690065007700310041006400640072006500730073004E00
      61006D00650001004100640072006500730073006E0061006D006E0001000100
      01000D000A006700720064005300680069007000410064007200440042005400
      610062006C006500560069006500770031004100440044005200010041006400
      7200650073007300720061006400200031002E002E0034000100010001000D00
      0A00670072006400530068006900700041006400720044004200540061006200
      6C006500560069006500770031005300680069007000700069006E0067005000
      6C0061006E004E006F0001004C004F000100010001000D000A00670072006400
      5300680069007000410064007200440042005400610062006C00650056006900
      65007700310041006400640072006500730073004C0069006E00650031000100
      41006400640072006500730073004C0069006E00650031000100010001000D00
      0A00670072006400530068006900700041006400720044004200540061006200
      6C0065005600690065007700310041006400640072006500730073004C006900
      6E0065003200010041006400640072006500730073004C0069006E0065003200
      0100010001000D000A0067007200640053006800690070004100640072004400
      42005400610062006C0065005600690065007700310041006400640072006500
      730073004C0069006E0065003300010041006400640072006500730073004C00
      69006E00650033000100010001000D000A006700720064005300680069007000
      410064007200440042005400610062006C006500560069006500770031004100
      6400640072006500730073004C0069006E006500340001004100640064007200
      6500730073004C0069006E00650034000100010001000D000A00670072006400
      5300680069007000410064007200440042005400610062006C00650056006900
      6500770031005300540041005400450001005300740061007400010001000100
      0D000A0067007200640053006800690070004100640072004400420054006100
      62006C0065005600690065007700310050004F005300540041004C005F004300
      4F0044004500010050006F00730074006E0072000100010001000D000A006700
      720064005300680069007000410064007200440042005400610062006C006500
      56006900650077003100430049005400590001004F0072007400010001000100
      0D000A0067007200640053006800690070004100640072004400420054006100
      62006C0065005600690065007700310043004F0055004E005400520059000100
      4C0061006E0064000100010001000D000A006700720064005300680069007000
      410064007200440042005400610062006C006500560069006500770031004900
      6E007400650072006E0061006C0049006E0076006F006900630065004E006F00
      010049006E007400650072006E0061006C0049006E0076006F00690063006500
      4E006F000100010001000D000A00670072006400530068006900700041006400
      7200440042005400610062006C00650056006900650077003100410064006400
      72006500730073004E006F00010041006400640072006500730073004E006F00
      0100010001000D000A00630078004C006100620065006C00330001004C006500
      76006500720061006E0073006100640072006500730073000100010001000D00
      0A00740073004E006F0074006500720069006E00670001004E006F0074006500
      720069006E0067002600260073006C00750074006600F6007200010001000100
      0D000A00630078004C006100620065006C00380001004E006F00740065007200
      69006E0067000100010001000D000A00610063004E0065007800740050006100
      67006500010026004E00E4007300740061000100010001000D000A0061006300
      500072006500760069006F00750073005000610067006500010026004600F600
      720065006700E50065006E00640065000100010001000D000A00610063005300
      6100760065000100260053006C00750074006600F60072000100010001000D00
      0A0061006300430061006E00630065006C004300680061006E00670065007300
      010026004100760062007200790074000100010001000D000A00610063005300
      65006C0065006300740043007500730074006F006D006500720001005600E400
      6C006A0020006B0075006E0064000100010001000D000A006100630053006500
      6C006500630074004C0061006E006700750061006700650001005600E4006C00
      6A002000730070007200E5006B000100010001000D000A006100630053006500
      6C006500630074004100670065006E00740001005600E4006C006A0020006100
      670065006E0074000100010001000D000A0061006300530065006C0065006300
      74004100670065006E00740041006400720065007300730001005600E4006C00
      6A0020006100670065006E007400200061006400720065007300730001000100
      01000D000A006100630043006C006500610072004100670065006E0074000100
      6100630043006C006500610072004100670065006E0074000100010001000D00
      0A006100630041006400640049006E0076006F0069006300650052006F007700
      01004C00E400670067002000740069006C006C00200072006100640001000100
      01000D000A0061006300520065006D006F007600650049006E0076006F006900
      6300650052006F007700010054006100200062006F0072007400200072006100
      64000100010001000D000A0061006300410064006400440065006C0069007600
      65007200790041006400720065007300730001005600E4006C006A0020006C00
      650076006500720061006E007300610064007200650073007300010001000100
      0D000A0061006300520065006D006F0076006500440065006C00690076006500
      72007900410064007200650073007300010054006100200062006F0072007400
      20006C00650076006500720061006E0073006100640072006500730073000100
      010001000D000A0061006300530065006C0065006300740049006E0076006F00
      69006300650041006400720065007300730001005600E4006C006A0020006600
      61006B0074007500720061006100640072006500730073000100010001000D00
      0A0061006300530065006C006500630074005000610079006D0065006E007400
      5400650072006D00730001005600E4006C006A00200062006500740061006C00
      760069006C006C006B006F0072000100010001000D000A006100630053006500
      6C00650063007400440065006C00690076006500720079005400650072006D00
      730001005600E4006C006A0020006C00650076006500720061006E0073007600
      69006C006C006B006F0072000100010001000D000A0061006300530065006C00
      650063007400430075007200720065006E006300790001005600E4006C006A00
      2000760061006C007500740061000100010001000D000A006400780042006100
      72004D0061006E0061006700650072003100420061007200310001004B006100
      6C006B0079006C000100010001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003200010054006500780074006500
      72000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A005400660049006E0076006F00690063006500570069007A00610072006400
      01004D0053002000530061006E00730020005300650072006900660001004D00
      53002000530061006E0073002000530065007200690066000100540061006800
      6F006D0061000D000A004C006100620065006C00310037000100410072006900
      61006C00010001005400610068006F006D0061000D000A004C00610062006500
      6C0031003800010041007200690061006C00010001005400610068006F006D00
      61000D000A004C006100620065006C0031003900010041007200690061006C00
      010001005400610068006F006D0061000D000A004C006100620065006C003200
      3000010041007200690061006C00010001005400610068006F006D0061000D00
      0A0074007800740043007500730074006F006D00650072000100410072006900
      61006C00010001005400610068006F006D0061000D000A004C00610062006500
      6C003100010041007200690061006C00010001005400610068006F006D006100
      0D000A004C006100620065006C0033003100010041007200690061006C000100
      01005400610068006F006D0061000D000A004400420054006500780074003700
      010041007200690061006C00010001005400610068006F006D0061000D000A00
      4400420054006500780074003900010041007200690061006C00010001005400
      610068006F006D0061000D000A00440042005400650078007400360001004100
      7200690061006C00010001005400610068006F006D0061000D000A0044004200
      540065007800740034003400010041007200690061006C000100010054006100
      68006F006D0061000D000A004C006100620065006C0032000100410072006900
      61006C00010001005400610068006F006D0061000D000A004C00610062006500
      6C003300010041007200690061006C00010001005400610068006F006D006100
      0D000A0044004200540065007800740032003200010041007200690061006C00
      010001005400610068006F006D0061000D000A004C006100620065006C003400
      3300010041007200690061006C00010001005400610068006F006D0061000D00
      0A00640078004200610072004D0061006E006100670065007200310001005300
      650067006F006500200055004900010001005400610068006F006D0061000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      7200310001005300650067006F00650020005500490001000100540061006800
      6F006D0061000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200320001005300650067006F0065002000550049000100
      01005400610068006F006D0061000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A006700
      72006400460061006B007400750072006100440042005400610062006C006500
      5600690065007700310056006F006C0075006D00650055006E00690074002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      010053007400790063006B006500740061006C002C0022006D00330020006100
      4400780061004C0022002C0022006D00330020006E00440078006E004C002200
      2C0022006D00330020006100440078006E004C0022002C0022006D0033002000
      6E004400780061004C0022002C0022004B0076006D0020007400420022002C00
      22004B0076006D0020006100420022002C0022004C006F0070006D0020006100
      22002C0022004D00460042004D0020004E006F006D0022002C00530055004D00
      2C0022004C006F0070006D0020006E002200010001000D000A00670072006400
      460061006B007400750072006100440042005400610062006C00650056006900
      6500770031005000720069006300650055006E00690074002E00500072006F00
      70006500720074006900650073002E004900740065006D007300010053007400
      790063006B006500740061006C002C0022006D00330020006100440078006100
      4C0022002C0022006D00330020006E00440078006E004C0022002C0022006D00
      330020006100440078006E004C0022002C0022006D00330020006E0044007800
      61004C0022002C0022004B0076006D0020007400420022002C0022004B007600
      6D0020006100420022002C0022004C006F0070006D002000610022002C002200
      4D00460042004D0020004E006F006D0022002C00530055004D002C0022004C00
      6F0070006D0020006E002200010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A006C00630053006100
      6C00650073006D0061006E002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E0001004E0061006D006E00010001000D00
      0A006C0063004B006F006E0074006F002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010049006E0076006F006900
      6300650054007900700065004E0061006D006500010001000D000A006C006300
      530052002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E00010043006C00690065006E0074004E0061006D0065000100
      01000D000A0072006700440065006200650074005F006B007200650064006900
      74002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E00430061007000740069006F006E00010044006500
      620065007400010001000D000A0072006700440065006200650074005F006B00
      720065006400690074002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0031005D002E00430061007000740069006F00
      6E0001004B0072006500640069007400010001000D000A006C00630053007000
      720061006B002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E0001004C0061006E00670075006100670065004E006100
      6D006500010001000D000A007200670043006F006D006D006900730069006F00
      6E0049006E0044006900730063006F0075006E0074002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0030005D002E00
      430061007000740069006F006E0001007000E5002000660061006B0074007500
      72006100620065006C006F0070007000010001000D000A007200670043006F00
      6D006D006900730069006F006E0049006E0044006900730063006F0075006E00
      74002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0031005D002E00430061007000740069006F006E0001007000E500
      200076006100720075007600E400720064006500010001000D000A0072006700
      460072006500690067006800740049006E0044006900730063006F0075006E00
      74002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E00430061007000740069006F006E0001007000E500
      2000660061006B007400750072006100620065006C006F007000700001000100
      0D000A0072006700460072006500690067006800740049006E00440069007300
      63006F0075006E0074002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0031005D002E00430061007000740069006F00
      6E0001007000E500200076006100720075007600E40072006400650001000100
      0D000A006C00630049006E00740072006100530074006100740043006F007500
      6E007400720079004E006F002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E00010043006F0075006E00740072007900
      4E0061006D006500010001000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660049006E00
      76006F00690063006500570069007A0061007200640001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C00310037000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004C006100620065006C0031003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004C00
      6100620065006C00310039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A004C006100620065006C00320030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A0074007800740043007500730074006F006D00650072000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A004C006100
      620065006C0031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004C006100620065006C0033003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004400
      4200540065007800740037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A0044004200540065007800740039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A0044004200540065007800740036000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00440042005400650078007400
      340034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A004C006100620065006C003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A004C00610062006500
      6C0033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00440042005400650078007400320032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A004C006100
      620065006C00340033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00640078004200610072004D0061006E006100
      67006500720031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00}
  end
end
