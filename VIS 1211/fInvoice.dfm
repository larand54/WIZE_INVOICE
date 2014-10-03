object frmInvoice: TfrmInvoice
  Left = 206
  Top = 124
  Caption = 'FAKTURA'
  ClientHeight = 858
  ClientWidth = 1144
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgInvoice: TcxPageControl
    Left = 0
    Top = 57
    Width = 1144
    Height = 200
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
    Properties.TabWidth = 150
    LookAndFeel.Kind = lfUltraFlat
    OnPageChanging = pgInvoicePageChanging
    ClientRectBottom = 196
    ClientRectLeft = 4
    ClientRectRight = 1140
    ClientRectTop = 26
    object tsInvoiceHead: TcxTabSheet
      Caption = '&FAKTURA'
      ImageIndex = 16
      object PanelInvoiceHead: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 160
        Align = alTop
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 12
          Width = 66
          Height = 17
          Caption = 'Fakturanr:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object txtCustomer: TDBText
          Left = 71
          Top = 32
          Width = 221
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
        object Label42: TLabel
          Left = 8
          Top = 72
          Width = 285
          Height = 81
          AutoSize = False
          Caption = 'Label42'
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
        object Label11: TLabel
          Left = 298
          Top = 16
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
        object Label2: TLabel
          Left = 298
          Top = 40
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
        object Label6: TLabel
          Left = 298
          Top = 63
          Width = 32
          Height = 15
          Caption = 'Serie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 298
          Top = 86
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
        object Label31: TLabel
          Left = 297
          Top = 106
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
        object Label29: TLabel
          Left = 509
          Top = 19
          Width = 37
          Height = 15
          Caption = 'Moms:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBText8: TDBText
          Left = 600
          Top = 15
          Width = 157
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
        object DBText6: TDBText
          Left = 600
          Top = 35
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
        object DBText4: TDBText
          Left = 511
          Top = 96
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
        object Label35: TLabel
          Left = 771
          Top = 139
          Width = 92
          Height = 15
          Caption = 'Kassarabatt (%):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText42: TDBText
          Left = 875
          Top = 136
          Width = 49
          Height = 18
          Color = clWhite
          DataField = 'Discount1'
          DataSource = dmVidaInvoice.dsrcInvoiceHead
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText18: TDBText
          Left = 875
          Top = 116
          Width = 49
          Height = 17
          Color = clWhite
          DataField = 'AgentCommission'
          DataSource = dmVidaInvoice.dsrcInvoiceHead
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 771
          Top = 118
          Width = 98
          Height = 15
          Caption = 'Agentprovision %:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 936
          Top = 119
          Width = 67
          Height = 15
          Caption = 'Statistikland'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lInvoiceNo: TcxLabel
          Left = 78
          Top = 8
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Height = 20
          Width = 81
        end
        object lKund: TcxLabel
          Left = 6
          Top = 29
          Caption = 'Kund:'
          Style.HotTrack = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.Shadow = False
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.TextStyle = [fsBold, fsUnderline]
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          OnClick = lKundClick
        end
        object lFakturaAdress: TcxLabel
          Left = 8
          Top = 54
          Caption = 'Faktura Adress:'
          Style.HotTrack = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.Shadow = False
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.TextStyle = [fsBold, fsUnderline]
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          OnClick = lFakturaAdressClick
        end
        object lcSR: TcxDBLookupComboBox
          Left = 363
          Top = 8
          DataBinding.DataField = 'SR'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.DropDownRows = 15
          Properties.DropDownWidth = 300
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.OnChange = cxDBLookupComboBox1PropertiesChange
          TabOrder = 3
          Width = 140
        end
        object deFakturaDatum: TcxDBDateEdit
          Left = 363
          Top = 33
          DataBinding.DataField = 'InvoiceDate'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          TabOrder = 4
          Width = 140
        end
        object lcKonto: TcxDBLookupComboBox
          Left = 363
          Top = 56
          DataBinding.DataField = 'InvoiceType'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'InvoiceTypeNo'
          Properties.ListColumns = <
            item
              FieldName = 'InvoiceTypeName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmVidaInvoice.dsInvoiceType
          TabOrder = 5
          Width = 140
        end
        object lcSalesman: TcxDBLookupComboBox
          Left = 363
          Top = 79
          DataBinding.DataField = 'ResponsibleSeller'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 15
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'UserID'
          Properties.ListColumns = <
            item
              FieldName = 'Namn'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.ds_Users
          Properties.OnChange = lcSalesmanPropertiesChange
          TabOrder = 6
          Width = 140
        end
        object eSalesOrgNo: TcxDBTextEdit
          Left = 363
          Top = 102
          DataBinding.DataField = 'SalesOrgNo'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          TabOrder = 7
          Width = 140
        end
        object rgDebitCredit: TDBRadioGroup
          Left = 299
          Top = 124
          Width = 204
          Height = 32
          Columns = 2
          DataField = 'Debit_Credit'
          DataSource = dmVidaInvoice.dsrcInvoiceHead
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            'Debit'
            'Kredit')
          ParentFont = False
          TabOrder = 8
          Values.Strings = (
            '0'
            '1')
        end
        object lLeveransvillkor: TcxLabel
          Left = 507
          Top = 36
          Caption = 'Leveransvillkor:'
          Style.HotTrack = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.Shadow = False
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.TextStyle = [fsBold, fsUnderline]
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          OnClick = lLeveransvillkorClick
        end
        object lcSprak: TcxDBLookupComboBox
          Left = 598
          Top = 53
          DataBinding.DataField = 'LanguageCode'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'LanguageNo'
          Properties.ListColumns = <
            item
              FieldName = 'LanguageName'
            end>
          Properties.ListSource = dmsSystem.ds_Language
          Properties.ReadOnly = False
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.Kind = lfFlat
          Style.Shadow = False
          Style.ButtonTransparency = ebtHideInactive
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 10
          Width = 160
        end
        object lSprak: TcxLabel
          Left = 507
          Top = 57
          Caption = 'Spr'#229'k:'
          Style.HotTrack = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.Shadow = False
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.TextStyle = [fsBold, fsUnderline]
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          OnClick = lSprakClick
        end
        object lBetalningsvillkor: TcxLabel
          Left = 507
          Top = 76
          Caption = 'Betalningsvillkor'
          Style.HotTrack = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.Shadow = False
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.TextStyle = [fsBold, fsUnderline]
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          OnClick = lBetalningsvillkorClick
        end
        object cbSpecialMoms: TcxDBCheckBox
          Left = 768
          Top = 38
          Caption = 'Special moms'
          DataBinding.DataField = 'SpecialMoms'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 13
          Width = 98
        end
        object deDueDate: TcxDBDateEdit
          Left = 171
          Top = 46
          DataBinding.DataField = 'DueDate'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          TabOrder = 14
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 112
          Top = 54
          Caption = 'Duedate:'
        end
        object rgFreightInDiscount: TcxDBRadioGroup
          Left = 770
          Top = 59
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
          TabOrder = 16
          Height = 53
          Width = 127
        end
        object rgCommisionInDiscount: TcxDBRadioGroup
          Left = 904
          Top = 59
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
          TabOrder = 17
          Height = 53
          Width = 129
        end
        object cbTrading: TcxDBCheckBox
          Left = 768
          Top = 0
          Caption = 'Trading'
          DataBinding.DataField = 'Trading'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 18
          Width = 98
        end
        object cbCommissionPaidByCustomer: TcxDBCheckBox
          Left = 872
          Top = 0
          Caption = 'Provision betalas av kund'
          DataBinding.DataField = 'CommissionPaidByCustomer'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 19
          Width = 169
        end
        object cbVAT: TcxDBCheckBox
          Left = 768
          Top = 18
          Caption = 'Skatteupplag'
          DataBinding.DataField = 'VAT_OnInvoice'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 20
          Width = 98
        end
        object cbSnabbfaktura: TcxDBCheckBox
          Left = 872
          Top = 18
          Caption = 'Snabbfaktura'
          DataBinding.DataField = 'QuickInvoice'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 21
          Width = 169
        end
        object lcIntraStatCountryNo: TcxDBLookupComboBox
          Left = 936
          Top = 134
          DataBinding.DataField = 'IntraStatCountryNo'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.KeyFieldNames = 'CountryNo'
          Properties.ListColumns = <
            item
              FieldName = 'CountryName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.ds_Country
          TabOrder = 22
          Width = 145
        end
        object cbMoms: TcxDBCheckBox
          Left = 872
          Top = 38
          Caption = 'Moms'
          DataBinding.DataField = 'Moms'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 23
          Width = 169
        end
        object cxDBLabelCustomerGLNNo: TcxDBLabel
          Left = 168
          Top = 8
          DataBinding.DataField = 'CustomerGLNNo'
          DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
          Height = 21
          Width = 121
        end
      end
    end
    object tsShipToAddress: TcxTabSheet
      Caption = '&LEVERANSADRESS'
      ImageIndex = 14
      object grdShipAdr: TcxGrid
        Left = 0
        Top = 28
        Width = 1136
        Height = 142
        Align = alClient
        TabOrder = 0
        object grdShipAdrDBTableView1: TcxGridDBTableView
          PopupMenu = pmLevAdr
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmVidaInvoice.dsInvoiceShipToAddress
          DataController.KeyFieldNames = 'InternalInvoiceNo;ShippingPlanNo;Reference'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdShipAdrDBTableView1ShippingPlanNo: TcxGridDBColumn
            DataBinding.FieldName = 'ShippingPlanNo'
            Options.Filtering = False
            Width = 63
          end
          object grdShipAdrDBTableView1Reference: TcxGridDBColumn
            DataBinding.FieldName = 'Reference'
            Options.Filtering = False
            Width = 110
          end
          object grdShipAdrDBTableView1AddressName: TcxGridDBColumn
            DataBinding.FieldName = 'AddressName'
            Options.Filtering = False
            Width = 165
          end
          object grdShipAdrDBTableView1ADDR: TcxGridDBColumn
            DataBinding.FieldName = 'ADDR'
            Options.Filtering = False
            Width = 616
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
          object grdShipAdrDBTableView1GLN: TcxGridDBColumn
            DataBinding.FieldName = 'GLN'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 176
          end
        end
        object grdShipAdrLevel1: TcxGridLevel
          GridView = grdShipAdrDBTableView1
        end
      end
      object PanelInvoiceRowMissing: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 28
        Align = alTop
        Caption = 
          'OBS. f'#246'r att l'#228'gga till en leveransadress m'#229'ste minst en faktura' +
          'rad l'#228'ggas till!'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object tsAgent: TcxTabSheet
      Caption = '&AGENT'
      ImageIndex = 15
      DesignSize = (
        1136
        170)
      object Shape3: TShape
        Left = 4
        Top = 3
        Width = 1127
        Height = 155
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clMoneyGreen
        ExplicitWidth = 1135
      end
      object DBText22: TDBText
        Left = 72
        Top = 8
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
        Left = 24
        Top = 64
        Width = 497
        Height = 81
        AutoSize = False
        Caption = 'Label43'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object cxLabel6: TcxLabel
        Left = 24
        Top = 8
        Caption = 'Agent:'
        ParentColor = False
        Style.Color = clMoneyGreen
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        OnClick = Label16DblClick
      end
      object cxLabel7: TcxLabel
        Left = 24
        Top = 40
        Caption = 'Agent fakturaadress'
        ParentColor = False
        Style.Color = clMoneyGreen
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        OnClick = Label38DblClick
      end
    end
    object tsNotes: TcxTabSheet
      Caption = '&NOTERING'
      ImageIndex = 11
      object cxDBRichEdit1: TcxDBRichEdit
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'InvoiceText'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        Properties.HideScrollBars = False
        Properties.ScrollBars = ssVertical
        Properties.SelectionBar = True
        TabOrder = 0
        Height = 170
        Width = 1136
      end
    end
    object tsStickyNote: TcxTabSheet
      Caption = '&POST IT!'
      ImageIndex = 13
      object DBMemo2: TDBMemo
        Left = 400
        Top = 5
        Width = 177
        Height = 148
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clYellow
        DataField = 'StickyNote'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object tsSpec: TcxTabSheet
      Caption = '&SPEC'
      ImageIndex = 5
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object eSearchPkgNo: TcxTextEdit
          Left = 226
          Top = 2
          Hint = 'Mata in paketnr och tryck enter'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = eSearchPkgNoKeyDown
          Width = 118
        end
        object bGrupperingsruta: TcxButton
          Left = 7
          Top = 0
          Width = 26
          Height = 25
          Action = acGroupByBox
          OptionsImage.Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000230B0000230B00000001000000000000CE630000E773
            0000FF7B0000FFDEA500FFE7C600FFF7E700FF00FF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00060606060606
            0200000000000000000006060600000002050404040404040300060606000606
            0101010101010101010106060600060606060606060606060606060606000606
            0200000000000000000006060600000002050404040404040300060606000606
            0101010101010101010106060600060606060606060606060606060606000606
            0200000000000000000006060600000002050404040404040300060606000606
            0101010101010101010106060600060606060606060606060606060200000000
            0000000000060606060606020504040404040403000606060606060101010101
            0101010101060606060606060606060606060606060606060606}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object bGruppsummering: TcxButton
          Left = 33
          Top = 0
          Width = 26
          Height = 25
          Action = acGroupBySummary
          OptionsImage.Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000130B0000130B00000001000000000000000000008484
            8400FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00020202020202
            0202020202020202020202020202020202020202020202020202020202020202
            0202020202020202020202020202020202020202020202020202020202000000
            0000000000000202020202020201000001020202020002020202020202020100
            0001020202020202020202020202020100000102020202020202020202020202
            0100000202020202020202020202020100000102020202020202020202020100
            0001020202020202020202020201000001020202020002020202020202000000
            0000000000000202020202020202020202020202020202020202020202020202
            0202020202020202020202020202020202020202020202020202}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object bbFaltvaljare: TcxButton
          Left = 59
          Top = 0
          Width = 26
          Height = 25
          Action = acSpecFaltValjare
          OptionsImage.Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000230B0000230B00000001000000000000EF9C2100F7A5
            5A00636B6B00FFB56B008C8C8C009C9C9400A5A5A500ADADAD00B5B5B5000063
            CE00DEDEDE00EFEFEF00F7F7F700FF00FF0010F7FF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D0D0D0D0D0D
            0D0D0D0D0D0D0D0D0D0D0D02020202020202020202020202020D0D040F0F0F0F
            0F0F0F0F0F0F0F0F040D0D040F030303090909090303030F040D0D040F030F0F
            090E0E090F0F030F040D0D050F030F0F090E0E090F0F030F050D0D050F030303
            090909090303030F050D0D050F010F0F090E0E090F0F010F050D0D060C010F0F
            090E0E090F0F010C060D0D060C000000090909090000000C060D0D070B000F0F
            090E0E090F0F000B070D0D070B000F0F090E0E090F0F000B070D0D080A000000
            090909090000000A080D0D080A0A0A0A0A0A0A0A0A0A0A0A080D0D0808080808
            0808080808080808080D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object cxLabel3: TcxLabel
          Left = 152
          Top = 8
          Caption = 'S'#246'k Paketnr:'
        end
        object bMarkAllRows: TcxButton
          Left = 85
          Top = 0
          Width = 26
          Height = 25
          Action = acMarkAllRows
          OptionsImage.Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000320B0000320B00000001000000000000EFA54A00C684
            6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00CE9C7B008484
            8400B5848400B58C8400CE9C840084FF8400B5948C00C6A59400F7CE9400C6A5
            9C00F7CE9C00F7D69C00C6ADA500CEADA500F7D6A500C6BDAD00F7D6AD00DEBD
            B500DEC6B500E7C6B500EFC6B500EFCEB500F7DEB500FFDEB500EFCEBD00F7DE
            BD00F7E7C600E7CECE00E7D6CE00E7D6D600F7E7D600FFEFD600FFEFDE00FFF7
            E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002D2D0A0A0A0A
            0A0A0A0A0A0A0A0A0A2D2D2D112722211E181612101010130A2D2D2D11270909
            09090909090909120A2D2D2D14290D0D0D0D0D0D0D0D0D120A2D2D2D14290D0D
            0D0D0D0D0D0D0D100A2D2D2D142C090909090909090909120A2D2D2D1A2E0D0D
            0D0D0D0D0D0D0D0D0A2D2D2D1A2E0D0D0D0D0D0D0D0D0D0D0A2D2D2D1A2E0909
            090909090909091E0A2D2D2D192E0D0D0D0D0D0D0D0D0D1E0A2D2D2D1A2E0D0D
            0D0D0D0D0D0D0D170A2D2D2D1B2E09090909092A260F0E0B0A2D2D2D1B2E0D0D
            0D0D0D0D23020400012D2D2D202E0D0D0D0D0D0D240705032D2D2D2D1B2B2A2A
            2A2A2A2A23070C2D2D2D2D2D1B1D1D1D1D1B1B1D19062D2D2D2D}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
      end
      object grdPackageSpec: TcxGrid
        Left = 0
        Top = 32
        Width = 1136
        Height = 184
        Align = alTop
        TabOrder = 1
        object grdPackageSpecDBTableView1: TcxGridDBTableView
          OnDblClick = grdPackageSpecDBTableView1DblClick
          OnKeyDown = grdPackageSpecDBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmVidaInvoice.ds_LoadPackages2
          DataController.KeyFieldNames = 'LoadNo;LoadDetailNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'PACKAGENO'
              Column = grdPackageSpecDBTableView1PACKAGENO
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'M3_NET'
              Column = grdPackageSpecDBTableView1M3_NET
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'M3_NOM'
              Column = grdPackageSpecDBTableView1M3_NOM
            end
            item
              Kind = skSum
              FieldName = 'PCS'
              Column = grdPackageSpecDBTableView1PCS
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'LOPM'
              Column = grdPackageSpecDBTableView1LOPM
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = grdPackageSpecDBTableView1PRODUCT
                end
                item
                  Column = grdPackageSpecDBTableView1LoadNo
                end
                item
                  Column = grdPackageSpecDBTableView1ShippingPlanNo
                end
                item
                  Column = grdPackageSpecDBTableView1PCS_PER_LENGTH
                end
                item
                  Column = grdPackageSpecDBTableView1ALMM
                end
                item
                end>
              SummaryItems = <
                item
                  Format = '#,###,###.000'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'M3_NET'
                  Column = grdPackageSpecDBTableView1M3_NET
                end
                item
                  Format = '#,###,###.000'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'M3_NOM'
                  Column = grdPackageSpecDBTableView1M3_NOM
                end
                item
                  Kind = skCount
                  Position = spFooter
                  FieldName = 'PACKAGENO'
                  Column = grdPackageSpecDBTableView1PACKAGENO
                end
                item
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'PCS'
                  Column = grdPackageSpecDBTableView1PCS
                end
                item
                  Format = '#,###,###.000'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'LOPM'
                  Column = grdPackageSpecDBTableView1LOPM
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsBehavior.PullFocusing = True
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.Indicator = True
          Styles.OnGetContentStyle = grdPackageSpecDBTableView1StylesGetContentStyle
          object grdPackageSpecDBTableView1ShippingPlanNo: TcxGridDBColumn
            DataBinding.FieldName = 'ShippingPlanNo'
            Width = 54
          end
          object grdPackageSpecDBTableView1LoadNo: TcxGridDBColumn
            DataBinding.FieldName = 'LoadNo'
            Width = 55
          end
          object grdPackageSpecDBTableView1PACKAGENO: TcxGridDBColumn
            DataBinding.FieldName = 'PACKAGENO'
            Width = 60
          end
          object grdPackageSpecDBTableView1SupplierCode: TcxGridDBColumn
            DataBinding.FieldName = 'SupplierCode'
            Width = 54
          end
          object grdPackageSpecDBTableView1LoadDetailNo: TcxGridDBColumn
            DataBinding.FieldName = 'LoadDetailNo'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1PRODUCT: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUCT'
            Width = 295
          end
          object grdPackageSpecDBTableView1NoOfPackages: TcxGridDBColumn
            DataBinding.FieldName = 'NoOfPackages'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1PACKAGETYPENO: TcxGridDBColumn
            DataBinding.FieldName = 'PACKAGETYPENO'
            Visible = False
            VisibleForCustomization = False
            Width = 96
          end
          object grdPackageSpecDBTableView1PCS_PER_LENGTH: TcxGridDBColumn
            DataBinding.FieldName = 'PCS_PER_LENGTH'
            Width = 134
          end
          object grdPackageSpecDBTableView1PackageOK: TcxGridDBColumn
            DataBinding.FieldName = 'PackageOK'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1ProblemPackageLog: TcxGridDBColumn
            DataBinding.FieldName = 'ProblemPackageLog'
            Visible = False
            VisibleForCustomization = False
            Width = 148
          end
          object grdPackageSpecDBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1ModifiedUser: TcxGridDBColumn
            DataBinding.FieldName = 'ModifiedUser'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1DateCreated: TcxGridDBColumn
            DataBinding.FieldName = 'DateCreated'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1M3_NET: TcxGridDBColumn
            DataBinding.FieldName = 'M3_NET'
            Width = 56
          end
          object grdPackageSpecDBTableView1PCS: TcxGridDBColumn
            DataBinding.FieldName = 'PCS'
            Width = 55
          end
          object grdPackageSpecDBTableView1M3_NOM: TcxGridDBColumn
            DataBinding.FieldName = 'M3_NOM'
            Width = 54
          end
          object grdPackageSpecDBTableView1MFBM: TcxGridDBColumn
            DataBinding.FieldName = 'MFBM'
            Visible = False
          end
          object grdPackageSpecDBTableView1KVM: TcxGridDBColumn
            DataBinding.FieldName = 'KVM'
            Visible = False
          end
          object grdPackageSpecDBTableView1LOPM: TcxGridDBColumn
            DataBinding.FieldName = 'LOPM'
            Visible = False
          end
          object grdPackageSpecDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1DefaultCustShipObjectNo: TcxGridDBColumn
            DataBinding.FieldName = 'DefaultCustShipObjectNo'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1NoOfLengths: TcxGridDBColumn
            DataBinding.FieldName = 'NoOfLengths'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1ProductLengthNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductLengthNo'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1ALMM: TcxGridDBColumn
            DataBinding.FieldName = 'ALMM'
            Width = 67
          end
          object grdPackageSpecDBTableView1ActualThicknessMM: TcxGridDBColumn
            DataBinding.FieldName = 'ActualThicknessMM'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1ActualWidthMM: TcxGridDBColumn
            DataBinding.FieldName = 'ActualWidthMM'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1SurfacingNo: TcxGridDBColumn
            DataBinding.FieldName = 'SurfacingNo'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1SpeciesNo: TcxGridDBColumn
            DataBinding.FieldName = 'SpeciesNo'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1MainGradeNo: TcxGridDBColumn
            DataBinding.FieldName = 'MainGradeNo'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1OverrideMatch: TcxGridDBColumn
            DataBinding.FieldName = 'OverrideMatch'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 56
          end
          object grdPackageSpecDBTableView1LIPNo: TcxGridDBColumn
            DataBinding.FieldName = 'LIPNo'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1Pkg_State: TcxGridDBColumn
            DataBinding.FieldName = 'Pkg_State'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1Changed: TcxGridDBColumn
            DataBinding.FieldName = 'Changed'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1Defsspno: TcxGridDBColumn
            DataBinding.FieldName = 'Defsspno'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPackageSpecDBTableView1OverrideRL: TcxGridDBColumn
            DataBinding.FieldName = 'OverrideRL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 54
          end
        end
        object grdPackageSpecLevel1: TcxGridLevel
          GridView = grdPackageSpecDBTableView1
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 216
        Width = 1136
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salTop
        Control = grdPackageSpec
        Color = clMaroon
        ParentColor = False
      end
      object pcSPEC: TcxPageControl
        Left = 0
        Top = 224
        Width = 1136
        Height = 13
        Align = alClient
        TabOrder = 3
        Properties.ActivePage = tsKortSkeppSpec
        Properties.CustomButtons.Buttons = <>
        Properties.Images = ImageList1
        Properties.TabHeight = 30
        Properties.TabWidth = 200
        LookAndFeel.Kind = lfUltraFlat
        ClientRectRight = 0
        ClientRectTop = 0
        object tsKortSkeppSpec: TcxTabSheet
          Caption = 'Kortskeppningsspec'
          ImageIndex = 18
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 0
            Height = 0
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 0
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object bAdd: TcxButton
                Left = 16
                Top = 4
                Width = 75
                Height = 25
                Action = acAddPkg
                OptionsImage.Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000130B0000130B00000001000000000000840000008C29
                  0000BD4A0000FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00030303030303
                  0303030303030303030303030300000000000000000000030303030303020101
                  0101010101010003030303030302010101010101010100030303030303020101
                  0104040101010003030303030302010104040404010100030303030303020104
                  0404040404010003030303030302010101040401010100030303030303020101
                  0104040101010003030303030302010101040401010100030303030303020101
                  0104040101010003030303030302010101010101010100030303030303020202
                  0202020202020003030303030302040404040404040400030303030303020404
                  0404040404040003030303030302020202020202020200030303}
                TabOrder = 0
              end
              object bRemove: TcxButton
                Left = 91
                Top = 4
                Width = 75
                Height = 25
                Hint = #197'ngra markerat paket'
                Action = acRemovePkg
                OptionsImage.Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000130B0000130B00000001000000000000840000008C29
                  0000BD4A0000FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00030303030303
                  0303030303030303030303030300000000000000000000030303030303020101
                  0101010101010003030303030302010101010101010100030303030303020101
                  0104040101010003030303030302010101040401010100030303030303020101
                  0104040101010003030303030302010101040401010100030303030303020104
                  0404040404010003030303030302010104040404010100030303030303020101
                  0104040101010003030303030302010101010101010100030303030303020202
                  0202020202020003030303030302040404040404040400030303030303020404
                  0404040404040003030303030302020202020202020200030303}
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
              end
              object cxButton1: TcxButton
                Left = 166
                Top = 4
                Width = 251
                Height = 25
                Action = acAddPackagesToLoad
                OptionsImage.Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000220B0000220B00000001000000000000942929009431
                  31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
                  4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
                  5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
                  73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
                  8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
                  A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
                  BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
                  CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
                  E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
                  33343433332505050B4848191516111B27384647452D0002131048191515111A
                  05184046492E0102121048191515111C03032F42493200011210481915151120
                  0601243A493200011210481915151221231D1F27322C04041310481915151515
                  1515151313151515160F48190D111E282B292B2828292B26150C481909384544
                  4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
                  3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
                  4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
                  4343434343434630130F4848092D3A363636363636363A2A0748}
                TabOrder = 2
              end
              object cxLabel4: TcxLabel
                Left = 512
                Top = 10
                Caption = #197'ngra paketnr:'
              end
              object tePkgNo: TcxTextEdit
                Left = 600
                Top = 6
                TabOrder = 4
                OnKeyDown = tePkgNoKeyDown
                Width = 121
              end
            end
            object grdSelectedPkgs: TcxGrid
              Left = 0
              Top = 33
              Width = 0
              Height = 236
              Align = alClient
              TabOrder = 1
              object grdSelectedPkgsDBTableView1: TcxGridDBTableView
                OnDblClick = grdSelectedPkgsDBTableView1DblClick
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dmVidaInvoice.ds_LoadPackagesII
                DataController.KeyFieldNames = 'LoadNo;LoadDetailNo'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,###,###.000'
                    Kind = skSum
                    FieldName = 'M3_NET'
                    Column = grdSelectedPkgsDBTableView1M3_NET
                  end
                  item
                    Format = '#,###,###.000'
                    Kind = skSum
                    FieldName = 'M3_NOM'
                    Column = grdSelectedPkgsDBTableView1M3_NOM
                  end
                  item
                    Format = '#,###,###.000'
                    Kind = skSum
                    FieldName = 'PCS'
                    Column = grdSelectedPkgsDBTableView1PCS
                  end
                  item
                    Format = '######'
                    Kind = skCount
                    FieldName = 'PACKAGENO'
                    Column = grdSelectedPkgsDBTableView1PACKAGENO
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsSelection.CellSelect = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                Styles.OnGetContentStyle = grdSelectedPkgsDBTableView1StylesGetContentStyle
                object grdSelectedPkgsDBTableView1LoadNo: TcxGridDBColumn
                  DataBinding.FieldName = 'LoadNo'
                  Visible = False
                  VisibleForCustomization = False
                end
                object grdSelectedPkgsDBTableView1LoadDetailNo: TcxGridDBColumn
                  DataBinding.FieldName = 'LoadDetailNo'
                  Visible = False
                  VisibleForCustomization = False
                end
                object grdSelectedPkgsDBTableView1ShippingPlanNo: TcxGridDBColumn
                  DataBinding.FieldName = 'ShippingPlanNo'
                  Visible = False
                  VisibleForCustomization = False
                end
                object grdSelectedPkgsDBTableView1NoOfPackages: TcxGridDBColumn
                  Caption = #196'ndrad'
                  DataBinding.FieldName = 'NoOfPackages'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ReadOnly = True
                  Properties.ValueChecked = 2
                  Properties.ValueUnchecked = 1
                  Width = 61
                end
                object grdSelectedPkgsDBTableView1PACKAGENO: TcxGridDBColumn
                  DataBinding.FieldName = 'PACKAGENO'
                  Width = 84
                end
                object grdSelectedPkgsDBTableView1SupplierCode: TcxGridDBColumn
                  DataBinding.FieldName = 'SupplierCode'
                  Width = 53
                end
                object grdSelectedPkgsDBTableView1PRODUCT: TcxGridDBColumn
                  DataBinding.FieldName = 'PRODUCT'
                  Width = 397
                end
                object grdSelectedPkgsDBTableView1PACKAGETYPENO: TcxGridDBColumn
                  DataBinding.FieldName = 'PACKAGETYPENO'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1PackageOK: TcxGridDBColumn
                  DataBinding.FieldName = 'PackageOK'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1ProblemPackageLog: TcxGridDBColumn
                  DataBinding.FieldName = 'ProblemPackageLog'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1CreatedUser: TcxGridDBColumn
                  DataBinding.FieldName = 'CreatedUser'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1ModifiedUser: TcxGridDBColumn
                  DataBinding.FieldName = 'ModifiedUser'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1DateCreated: TcxGridDBColumn
                  DataBinding.FieldName = 'DateCreated'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1PCS_PER_LENGTH: TcxGridDBColumn
                  DataBinding.FieldName = 'PCS_PER_LENGTH'
                  Width = 263
                end
                object grdSelectedPkgsDBTableView1M3_NET: TcxGridDBColumn
                  DataBinding.FieldName = 'M3_NET'
                  Width = 48
                end
                object grdSelectedPkgsDBTableView1PCS: TcxGridDBColumn
                  Caption = 'Styck'
                  DataBinding.FieldName = 'PCS'
                  Width = 43
                end
                object grdSelectedPkgsDBTableView1M3_NOM: TcxGridDBColumn
                  DataBinding.FieldName = 'M3_NOM'
                  Width = 45
                end
                object grdSelectedPkgsDBTableView1MFBM: TcxGridDBColumn
                  DataBinding.FieldName = 'MFBM'
                  Visible = False
                  Width = 47
                end
                object grdSelectedPkgsDBTableView1KVM: TcxGridDBColumn
                  DataBinding.FieldName = 'KVM'
                  Visible = False
                  Width = 49
                end
                object grdSelectedPkgsDBTableView1LOPM: TcxGridDBColumn
                  DataBinding.FieldName = 'LOPM'
                  Visible = False
                  Width = 48
                end
                object grdSelectedPkgsDBTableView1ProductNo: TcxGridDBColumn
                  DataBinding.FieldName = 'ProductNo'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1DefaultCustShipObjectNo: TcxGridDBColumn
                  DataBinding.FieldName = 'DefaultCustShipObjectNo'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1NoOfLengths: TcxGridDBColumn
                  DataBinding.FieldName = 'NoOfLengths'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1ProductLengthNo: TcxGridDBColumn
                  DataBinding.FieldName = 'ProductLengthNo'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1ALMM: TcxGridDBColumn
                  DataBinding.FieldName = 'ALMM'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1ActualThicknessMM: TcxGridDBColumn
                  DataBinding.FieldName = 'ActualThicknessMM'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1ActualWidthMM: TcxGridDBColumn
                  DataBinding.FieldName = 'ActualWidthMM'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1SurfacingNo: TcxGridDBColumn
                  DataBinding.FieldName = 'SurfacingNo'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1SpeciesNo: TcxGridDBColumn
                  DataBinding.FieldName = 'SpeciesNo'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1MainGradeNo: TcxGridDBColumn
                  DataBinding.FieldName = 'MainGradeNo'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1OverrideMatch: TcxGridDBColumn
                  DataBinding.FieldName = 'OverrideMatch'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1LIPNo: TcxGridDBColumn
                  DataBinding.FieldName = 'LIPNo'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1Pkg_State: TcxGridDBColumn
                  DataBinding.FieldName = 'Pkg_State'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1Pkg_Function: TcxGridDBColumn
                  DataBinding.FieldName = 'Pkg_Function'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1Changed: TcxGridDBColumn
                  DataBinding.FieldName = 'Changed'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1Defsspno: TcxGridDBColumn
                  DataBinding.FieldName = 'Defsspno'
                  Visible = False
                end
                object grdSelectedPkgsDBTableView1OverrideRL: TcxGridDBColumn
                  DataBinding.FieldName = 'OverrideRL'
                  Visible = False
                end
              end
              object grdSelectedPkgsLevel1: TcxGridLevel
                GridView = grdSelectedPkgsDBTableView1
              end
            end
          end
        end
        object tsLagdTillLagerSpec: TcxTabSheet
          Caption = 'Lager'
          ImageIndex = 19
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 0
            Height = 0
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 0
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object cxButton3: TcxButton
                Left = 16
                Top = 5
                Width = 75
                Height = 25
                Action = acAddPkgToInventory
                OptionsImage.Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000130B0000130B00000001000000000000840000008C29
                  0000BD4A0000FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00030303030303
                  0303030303030303030303030300000000000000000000030303030303020101
                  0101010101010003030303030302010101010101010100030303030303020101
                  0104040101010003030303030302010104040404010100030303030303020104
                  0404040404010003030303030302010101040401010100030303030303020101
                  0104040101010003030303030302010101040401010100030303030303020101
                  0104040101010003030303030302010101010101010100030303030303020202
                  0202020202020003030303030302040404040404040400030303030303020404
                  0404040404040003030303030302020202020202020200030303}
                TabOrder = 0
              end
              object cxButton7: TcxButton
                Left = 91
                Top = 5
                Width = 75
                Height = 25
                Hint = #197'ngra markerat paket'
                Action = acRegretAddPkgToInventory
                OptionsImage.Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000130B0000130B00000001000000000000840000008C29
                  0000BD4A0000FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00030303030303
                  0303030303030303030303030300000000000000000000030303030303020101
                  0101010101010003030303030302010101010101010100030303030303020101
                  0104040101010003030303030302010101040401010100030303030303020101
                  0104040101010003030303030302010101040401010100030303030303020104
                  0404040404010003030303030302010104040404010100030303030303020101
                  0104040101010003030303030302010101010101010100030303030303020202
                  0202020202020003030303030302040404040404040400030303030303020404
                  0404040404040003030303030302020202020202020200030303}
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
              end
              object cxButton9: TcxButton
                Left = 166
                Top = 5
                Width = 251
                Height = 25
                Action = acAddPackagesToInventory
                OptionsImage.Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000220B0000220B00000001000000000000942929009431
                  31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
                  4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
                  5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
                  73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
                  8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
                  A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
                  BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
                  CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
                  E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
                  33343433332505050B4848191516111B27384647452D0002131048191515111A
                  05184046492E0102121048191515111C03032F42493200011210481915151120
                  0601243A493200011210481915151221231D1F27322C04041310481915151515
                  1515151313151515160F48190D111E282B292B2828292B26150C481909384544
                  4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
                  3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
                  4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
                  4343434343434630130F4848092D3A363636363636363A2A0748}
                TabOrder = 2
              end
              object cxLabel1: TcxLabel
                Left = 426
                Top = 11
                Caption = 'Lagerst'#228'lle:'
              end
              object lcPIP: TcxDBLookupComboBox
                Left = 496
                Top = 7
                DataBinding.DataField = 'PIPNAME'
                DataBinding.DataSource = dmVidaInvoice.ds_IH_SpecLoad
                Properties.ImmediatePost = True
                Properties.ListColumns = <>
                Properties.ListOptions.ShowHeader = False
                TabOrder = 4
                Width = 169
              end
              object cxLabel2: TcxLabel
                Left = 680
                Top = 11
                Caption = 'Lagergrupp:'
              end
              object lcLIP: TcxDBLookupComboBox
                Left = 752
                Top = 7
                DataBinding.DataField = 'LIPName'
                DataBinding.DataSource = dmVidaInvoice.ds_IH_SpecLoad
                Properties.ImmediatePost = True
                Properties.ListColumns = <>
                Properties.ListOptions.ShowHeader = False
                TabOrder = 6
                OnEnter = lcLIPEnter
                OnExit = lcLIPExit
                Width = 169
              end
            end
            object grdToInventory: TcxGrid
              Left = 0
              Top = 33
              Width = 0
              Height = 236
              Align = alClient
              TabOrder = 1
              object grdToInventoryDBTableView1: TcxGridDBTableView
                OnDblClick = grdToInventoryDBTableView1DblClick
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dmVidaInvoice.ds_LoadPackagesIII
                DataController.KeyFieldNames = 'PACKAGENO;SupplierCode'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,###,###.000'
                    Kind = skSum
                    FieldName = 'M3_NET'
                    Column = grdToInventoryDBTableView1M3_NET
                  end
                  item
                    Format = '#,###,###.000'
                    Kind = skSum
                    FieldName = 'M3_NOM'
                    Column = grdToInventoryDBTableView1M3_NOM
                  end
                  item
                    Format = '#,###,###.000'
                    Kind = skSum
                    FieldName = 'PCS'
                    Column = grdToInventoryDBTableView1PCS
                  end
                  item
                    Format = '######'
                    Kind = skCount
                    FieldName = 'PACKAGENO'
                    Column = grdToInventoryDBTableView1PACKAGENO
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsSelection.CellSelect = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                Styles.OnGetContentStyle = grdToInventoryDBTableView1StylesGetContentStyle
                object grdToInventoryDBTableView1NoOfPackages: TcxGridDBColumn
                  Caption = #196'ndrad'
                  DataBinding.FieldName = 'NoOfPackages'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ReadOnly = True
                  Properties.ValueChecked = 2
                  Properties.ValueUnchecked = 1
                  Width = 70
                end
                object grdToInventoryDBTableView1PACKAGENO: TcxGridDBColumn
                  DataBinding.FieldName = 'PACKAGENO'
                  Width = 68
                end
                object grdToInventoryDBTableView1SupplierCode: TcxGridDBColumn
                  DataBinding.FieldName = 'SupplierCode'
                  Width = 48
                end
                object grdToInventoryDBTableView1PRODUCT: TcxGridDBColumn
                  DataBinding.FieldName = 'PRODUCT'
                  Width = 349
                end
                object grdToInventoryDBTableView1PCS_PER_LENGTH: TcxGridDBColumn
                  DataBinding.FieldName = 'PCS_PER_LENGTH'
                  Width = 246
                end
                object grdToInventoryDBTableView1M3_NET: TcxGridDBColumn
                  DataBinding.FieldName = 'M3_NET'
                  Width = 71
                end
                object grdToInventoryDBTableView1PCS: TcxGridDBColumn
                  DataBinding.FieldName = 'PCS'
                  Width = 70
                end
                object grdToInventoryDBTableView1M3_NOM: TcxGridDBColumn
                  DataBinding.FieldName = 'M3_NOM'
                  Width = 70
                end
                object grdToInventoryDBTableView1MFBM: TcxGridDBColumn
                  DataBinding.FieldName = 'MFBM'
                  Visible = False
                end
                object grdToInventoryDBTableView1KVM: TcxGridDBColumn
                  DataBinding.FieldName = 'KVM'
                  Visible = False
                end
                object grdToInventoryDBTableView1LOPM: TcxGridDBColumn
                  DataBinding.FieldName = 'LOPM'
                  Visible = False
                end
              end
              object grdToInventoryLevel1: TcxGridLevel
                GridView = grdToInventoryDBTableView1
              end
            end
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1144
    Height = 57
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1144
      57)
    object BitBtn1: TBitBtn
      Left = 471
      Top = 5
      Width = 81
      Height = 49
      Action = acBooking
      Caption = 'Bokning F10'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
        D600FFEFD600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
        FD00FFD6AD00FFD6A500FFD6A500CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7
        EF00FFF7EF00FFEFD600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDE
        B500FFD6AD00FFD6AD00FFD6A500CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFF
        F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDE
        B500FFDEB500FFD6AD00FFD6AD00CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C
        9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
        9C009C9C9C009C9C9C00FFD6AD00CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
        D600FFEFD600FFDEB500FFDEB500CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C
        9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
        9C009C9C9C009C9C9C00FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEF
        D600FFEFD600FFEFD600FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C
        9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
        9C009C9C9C009C9C9C00FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEF
        D600FFEFD600FFEFD600FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C
        9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
        9C009C9C9C009C9C9C00FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEF
        E700FFEFDE00FFEFD600FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5
        B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5AD
        FD00B5ADAD00B5ADAD00FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7
        EF00FFF7EF00FFF7E700FFEFE700CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7
        EF00FFF7EF00FFF7E700FFEFE700CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7
        EF00FFF7E700FFF7E700FFF7E700CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        0000DE7B0000DE7B0000DE7B0000CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00E7A56300CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000E7A56300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D6731000D6731000D6731000D6731000D6731000D6731000D673
        1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
        1000D6731000D6730800D67B2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 4
      Top = 5
      Width = 105
      Height = 49
      Action = acGetInvoiceNo
      Caption = 'H'#228'mta fakturanr F2'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00AD7B7B00B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6
        FD00F7D6A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6
        FD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6
        B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400F7E7CE00F7E7D600F7E7CE00F7DEC600BD6B2900B55A
        1800F7DEBD00BD6B2900B55A1800E7BD8C00EFCE9C00EFCE9C00EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400F7E7D600F7EFDE00F7E7D600F7E7CE00CE8C5A00B55A
        1800DEAD7B00CE8C5200B55A1800DEA57300EFCEA500EFCE9C00EFCE9C00EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD7B8400F7E7DE00F7EFDE00F7E7D600F7E7CE00DEB58C00B55A
        1800CE8C5200F7DEBD00B55A1800CE844A00F7D6AD00EFCEA500EFCE9C00EFCE
        9C00EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B57B8400F7EFE700F7EFE700F7EFDE00CE946300CE946300B55A
        1800CE946300CE946300B55A1800CE946300CE946300CE946300CE946300EFCE
        9C00EFCE9C00EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B5848400F7EFE700FFF7EF00F7EFE700B55A1800B55A1800B55A
        1800B55A1800B55A1800B55A1800B55A1800B55A1800B55A1800B55A1800EFCE
        A500EFCE9C00EFCE9C00EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD848400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00CE8C
        6300B55A1800F7DEBD00CE8C5A00B55A1800DEAD7B00F7D6B500F7D6AD00F7D6
        FD00EFCEA500EFCE9C00EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD848C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700DEB5
        9400B55A1800CE8C5A00F7DEBD00B55A1800CE8C5200F7DEBD00F7D6B500F7D6
        FD00F7D6AD00EFCEA500EFCE9C00B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C68C8C00FFF7F700FFFFFF00FFF7F700CE946300CE946300CE94
        6300B55A1800CE946300CE946300B55A1800CE946300CE946300CE946300F7D6
        B500F7D6AD00F7D6AD00EFCEA500B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C68C8C00FFF7F700FFFFFF00FFFFFF00B55A1800B55A1800B55A
        1800B55A1800B55A1800B55A1800B55A1800B55A1800B55A1800B55A1800F7DE
        BD00F7D6B500F7D6AD00EFCEA500B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C68C8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
        EF00CE946300B55A1800F7DEBD00CE8C6300B55A1800DEAD8400F7DEC600F7DE
        BD00F7DEBD00F7D6B500F7D6AD00B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE948C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
        F700E7BD9C00B55A1800CE8C6300F7DEBD00B55A1800CE8C5A00F7E7CE00F7DE
        C600F7DEBD00F7DEBD00DEC6A500A57B8400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE948C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F7E7DE00B55A1800BD6B2900EFDECE00B55A1800BD632900F7E7CE00F7E7
        CE00EFD6BD00CEBDAD00B5AD94009C7B8400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D69C9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DE
        CE00CEBDAD00BDB5A500B5AD9C009C7B8400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D69C9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD84
        7300AD7B7300AD7B7300AD7B7300AD7B7300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA59400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B5
        8400E7AD6B00EFA55200EFA53900B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA59400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC6
        8C00F7BD6B00FFB55200B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA59400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC6
        8C00F7BD6B00B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA59400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC6
        8C00B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA58C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CE
        BD00E7CEBD00E7CEBD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B584
        8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 658
      Top = 5
      Width = 81
      Height = 49
      Action = acAddTab
      Caption = 'L'#228'gg till flik'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00EF9C2100FF00
        FF00FF00FF00008C0800FF00FF00FF00FF00EF9C2100F7A55A00F7A55A00F7A5
        5A00F7A55A00F7A55A00EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00008C0800008C080000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C
        0800008C0800008C08000073080000730800FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0800008C
        0800008C080000730800007308000073080000730800FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE000063
        CE000063CE000063CE000063CE000063CE000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0000DEE70000DEE70000DEE70000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE000063
        CE000063CE000063CE000063CE000063CE000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0000DEE70000DEE70000DEE70000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 108
      Top = 5
      Width = 81
      Height = 49
      Action = acSave
      Caption = 'Spara F3'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00AD736B009C5252009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5
        B500B5B5B500BDB5B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A573
        7300944242009C4A4A009C4A4A009C4A4A009C4A4A00FF00FF00FF00FF00B584
        7300C66B6B00C6636300C6636300CE636300B55252009C6B6B00B5B5B500CECE
        CE00E7E7DE00EFEFEF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B573
        730094292900943131009C393900BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A009C6B6B00A58C8C00B584
        8400CEADAD00DECECE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B573
        730094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A009C737300A57B7B009C39
        3900B5736B00C69C9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B
        7B0094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A00A5737300A58484009431
        31009C424200B5737300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B
        7B0094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A00A5737300AD8C8C009431
        3100943131009C4A4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B
        7B0094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300B5525200AD7B7B00B58C8C009429
        29009429290094313100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C684
        840094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300B5525200AD7B7B00C6ADAD00A563
        6300A56363009C6363009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C684
        840094292900943131009C393900BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A00B5737300D6A5A500C69C
        9C00BD9C9C00BD949400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C673
        7300A5424200AD424200AD4A4A00C6636300C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300CE636300CE636300CE636300CE63
        6300CE636300CE636300CE636300CE636300C6636300C6636300C6636300CE63
        6300CE636300CE636300CE636300CE636300C66363009C4A4A00FF00FF00B584
        7300C66B6B00C6636300BD5A5A00C6636300C66B6B00CE737300CE737300CE73
        7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE73
        7300CE737300CE7B7B00CE6B6B00CE636300C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD4A4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BD
        BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BD
        BD00D6BDBD00DEC6C600CE8C8C00CE636300C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00EFE7E700CE8C8C00C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700FFF7F700EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7F7F700EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECE
        CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
        C600E7DEDE00EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7
        E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
        E700F7EFEF00EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CE
        CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECE
        CE00E7E7E700EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DE
        DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
        DE00EFEFEF00EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DE
        DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
        DE00EFEFEF00EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CE
        CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECE
        CE00E7E7E700EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700EFE7E700CE8C8C00C65A5A00C66363009C4A4A00FF00FF00B584
        7300BD6B6B00AD424200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7
        E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
        E700EFEFE700E7DEDE00C68C8C00B5525200BD5A5A009C4A4A00FF00FF00FF00
        FF00AD736B00A5424200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600CEC6C600B5848400944242009C4A4A00FF00FF00}
      Layout = blGlyphTop
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 188
      Top = 5
      Width = 81
      Height = 49
      Action = acSummarize
      Caption = 'Summera F6'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000330B0000330B00000001000000010000424242008484
        8400FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020000000000000000000000000002020202
        0202020202020200000000020202020202020100020202020202020202020201
        0000000102020202020202000202020202020202020202020100000001020202
        0202020202020202020202020202020202010000000102020202020202020202
        0202020202020202020201000000010202020202020202020202020202020202
        0202020100000001020202020202020202020202020202020202020100000000
        0202020202020202020202020202020202020100000001020202020202020202
        0202020202020202020100000001020202020202020202020202020202020202
        0100000001020202020202020202020202020202020202010000000102020202
        0202020002020202020202020202020000000002020202020202010002020202
        0202020202020200000000000000000000000000020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202}
      Layout = blGlyphTop
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      Left = 1063
      Top = 5
      Width = 83
      Height = 49
      Action = acClose
      Anchors = [akTop]
      Caption = 'St'#228'ng F12'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C6363004242
        420042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF008C6363004242420042424200B55A0000B55A
        0000424242008C6363008C6363008C6363008C6363008C6363008C6363008C63
        63008C6363008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008C63630042424200B55A0000B55A0000A5520800B55A0000C65A
        00004242420010AD840010AD840010AD840010AD840010AD840010AD840010AD
        840010AD84008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300B55A0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A
        00004242420010AD840010AD840010AD840010AD840010AD840018A57B0018A5
        7B0018A57B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300C65A0000C65A0000C65A0000C65A0000C65A0000CE630000CE63
        00004242420010AD840018A57B0018A57B0018A57B00189C7B00189C73002194
        7300398C6B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300C65A0000CE630000CE630000CE630000CE630000CE630000CE63
        0000424242002984630021947300219473002194730021946B00218C6B00298C
        6B0042846B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE630000CE630000CE630000CE6B0000CE6B0000CE6B0000CE63
        00004242420029735A00218C6B00298C6B00298C6300298C6B00298463002984
        6300298C6B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE630000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673
        000042424200298C6B002984630029845A00317B5A00317B5200317B5A003984
        5A00427B63008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE6B0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673
        000042424200316B4A00397B5200397B520031734A00397B52004A7B5A005A6B
        52005A6B52008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000D6730000D6730000FFD6A500FFE7C600FFBD
        6B00424242005A6B52005A6B520031734A00637B5200637B520094946B00B59C
        7300F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000D6730000D6730000D6730000FFD6A500D673
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        000042424200F7B58400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300DE7B0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B
        000042424200EFCEBD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7
        DE00F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300FF840000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B
        000042424200F7B58400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6
        A500F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000FF840000FF840000F7840000F77B0000EF7B0000EF7B
        000042424200F7B58400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD6B6300AD6B6300D6730000FF840000EF7B0000F7840000FF84
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00AD6B6300AD6B6300D6730000FF840000FF84
        0000424242008484840084848400848484008484840084848400848484008484
        84008484840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD6B6300AD6B6300AD6B
        6300AD6B6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      TabOrder = 8
    end
    object BitBtn8: TBitBtn
      Left = 349
      Top = 5
      Width = 122
      Height = 49
      Action = acAttestera
      Caption = 'Attestera tj'#228'nster F9'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
        D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
        D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
        D60029ADD60029ADD60029ADD60029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6008CF7FF008CF7FF008CF7FF008CF7FF0073DEF70073DEF70073DEF70073DE
        F70073DEF70073DEF70073DEF70073DEF70073DEF70029ADD60029ADD60073DE
        F70073DEF70073DEF70073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DE
        F70073DEF70073DEF70073DEF70073DEF70073DEF70029ADD600ADFFFF0029AD
        D60073DEF70073DEF70073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF0073DE
        F70073DEF70073DEF70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFF
        FF0029ADD60073DEF70073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEF
        FF0073DEF70073DEF70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFF
        FF008CF7FF0029ADD60073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEF
        FF008CEFFF0073DEF70073DEF70073DEF70073DEF70029ADD6008CF7FF008CF7
        FF008CF7FF008CF7FF0029ADD60029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B003131
        31007B5A4A00B5B5B5008CEFFF0073DEF70073DEF70029ADD60029ADD60029AD
        D60029ADD60029ADD60029ADD60029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF007B5A
        4A003929180029637B0052636B0073DEF70073DEF70073DEF70073DEF70073DE
        F70073DEF70073DEF70073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF00D6D6
        D6008CB5C6008CF7FF002973F70021526B0073DEF70073DEF70073DEF70073DE
        F70073DEF70073DEF70073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7
        FF0010A5D6008CF7FF002973F7002973F700084263008CEFFF008CEFFF0073DE
        F70073DEF70073DEF70073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00847B
        7B00847B7B0010A5D60042E7F7002973F7002973F70021526B00847B7B00847B
        7B00847B7B00847B7B0073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
        FF008CF7FF008CF7FF0010A5D60042E7F7002973F7002973F70018425A008CEF
        FF008CEFFF0073DEF70073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
        FF009CFFFF008CF7FF008CF7FF0010A5D60042E7F7002973F7002973F7002152
        6B008CEFFF008CEFFF0073DEF70029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
        FF009CFFFF008CF7FF008CF7FF008CF7FF0010A5D60042E7F7002973F7002973
        F700084263008CEFFF008CEFFF0029ADD600FF00FF00FF00FF00FF00FF0029AD
        D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
        D60029ADD60029ADD60029ADD60029ADD60029ADD60010A5D60042E7F7002973
        F7003139BD003131310029ADD60029ADD600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0010A5D60042A5
        DE008C847B0084847B0031313100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00846B
        5A00FFFFFF00F7EFE7007363520021214A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009C948C00E7CEB50029637B002973F7003139BD00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004A6B9C00299CEF002973F7003139BD00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000010E7000010E700FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      TabOrder = 6
    end
    object dblInFaktNr: TcxDBLabel
      Left = 908
      Top = 30
      DataBinding.DataField = 'InternalInvoiceNo'
      DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
      Height = 21
      Width = 73
    end
    object cxButton2: TcxButton
      Left = 552
      Top = 5
      Width = 105
      Height = 49
      Action = acExportmeny
      DropDownMenu = pmExport
      Kind = cxbkDropDown
      OptionsImage.Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E00000001000000000000EF9C2100F7A5
        5A00636B6B00FFB56B008C8C8C00949494009C9C94009C9C9C00A5A5A500ADAD
        FD00ADB5B500B5B5B500296BC600527BC600D6D6D600DEDEDE00397BE700E7E7
        E700317BEF00EFEFEF000073F700F7F7F700FF00FF00007BFF00008CFF000094
        FF00009CFF0000A5FF0039A5FF0052A5FF005AA5FF0000ADFF0029ADFF0000B5
        FF0008BDFF0010BDFF0000C6FF0008C6FF0018CEFF0000D6FF0010D6FF0031D6
        FF0000DEFF0042DEFF0039E7FF0000EFFF0039EFFF004AEFFF0000F7FF0008F7
        FF0031F7FF0042F7FF0000FFFF0008FFFF0018FFFF0021FFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00161616161616
        1616161616161616161616161616161616161616160202020202020202020202
        0202020202021616161616161604383838383838383838383838383838041616
        161616161605380303030303030303030303030338051616161616161605380D
        3838033838033838033838033805161616161616160538120D0C033838033838
        0338380338051616161616161605381017140D03030303030303030338051616
        16161616160538011A18180D3801383801383801380516161616161616063801
        382118190D0D383801383801380616161616161616073801010121251A1A0D01
        0101010138071616161616161608380038380021221F1A0D0038380038081616
        16161616160815000D0D0D243532231F0D0D1500150816161616161616081500
        20242D3030342F261B0D00001508161616161616160913001C242D302D2A3434
        2E250D0013091616161616161609110011252C2F3336343435370D0011091616
        16161616160911000000002931343027210D00001109161616161616160A0F0F
        0F0F0F0F0F29302D1F1B0D0F0F0A161616161616160B0E0E0E0E0E0E0E0E0E29
        2B281E0D0E0B161616161616160B0E0E0E0E0E0E0E0E0E0E0E291D0D0E0B1616
        16161616160B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B16161616161616161616
        1616161616161616161616161616161616161616161616161616161616161616
        1616161616161616161616161616161616161616161616161616161616161616
        1616161616161616161616161616161616161616161616161616}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 7
      WordWrap = True
    end
    object bPrint: TcxButton
      Left = 268
      Top = 5
      Width = 80
      Height = 49
      Action = acPrintMeny
      DropDownMenu = pmPrint
      Kind = cxbkDropDown
      OptionsImage.Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000220B0000220B00000001000000000000212121002121
        290029292900292931003131310039393900424242004A4A4A00525252005A5A
        5A00635A6300636363006B6B6B007B7B7B00848484008C84840084C684008C8C
        8C009C949C009C9C9C00A59C9C00A59CA500A5A5A500ADA5A500F7B5A500FFBD
        A500ADA5AD00ADADAD00B5ADAD00ADB5AD00E7B5AD00FFC6AD00B5ADB500B5B5
        B500BDB5B500DEB5B500E7BDB500F7BDB500FFC6B500FFCEB500BDB5BD00BDBD
        BD00C6BDBD00E7BDBD00E7C6BD00FFCEBD00FFD6BD00C6BDC600C6C6C600CEC6
        C600E7C6C600E7CEC600FFD6C600C6C6CE00CEC6CE00CECECE00D6CECE00EFCE
        CE00EFD6CE00FFDECE00D6CED600D6D6D600DED6D600F7DED600FFDED600FFE7
        D600D6F7D600D6D6DE00D6DEDE00DEDEDE00E7DEDE00EFDEDE00DEE7DE00E7E7
        DE00FFE7DE00FFEFDE00E7E7E700EFE7E700FFEFE700EFEFEF00FFF7EF00F7F7
        F700FFF7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00535353535353
        53535353535353535353535353535353535353535353535353531B361B135353
        1B3D3E291B53535353535353535353531B305151291B090B0E1B31464C3D2153
        5353535353531B224C54544F221C070004060B0E1B374C4517535353531B4554
        5251524F2121120C07040204060B11165353531637515151514C301B13161B21
        1C130D0905020614535353164F514F452917213D2116141314172121160E0C14
        535353164C3E2216223D454C4C3D30221B161413161B2116535353161C16293D
        453D3D4D51514F4C3D3729211716141353535316293D3D3D3D3D4C51302F3745
        4C4C453D37302916535353163D3D3D3D3D4551291D10211B1B29303D45453D1B
        5353535329453D3D4C4C21294F424F4C25291C171B292921535353535321303D
        301B315151514F4C4C4C453D3717165353535353535353142945371B30454C4C
        4C4C4C4530225353535353535353531B5151452929303D3D3D3D301B22535353
        5353535353535353474A41403F3F3F4746453053535353535353535353535353
        2C4A403B342D26261F3953535353535353535353535353532C4A403B342D261F
        18535353535353535353535353535353334A403B342D261F1853535353535353
        5353535353535353334A403B342D261F25535353535353535353535353535353
        334A403B342D2625255353535353535353535353535353324E4A403B342D2725
        53535353535353535353535353535333504A413B343425255353535353535353
        5353535353532333322C2C24241E255353535353535353535353}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 739
      Top = 5
      Width = 81
      Height = 49
      Action = acGetKontoNr
      Caption = 'Kontonr'
      Layout = blGlyphTop
      TabOrder = 10
    end
    object BitBtn9: TBitBtn
      Left = 821
      Top = 5
      Width = 78
      Height = 49
      Action = acEDI
      Caption = 'Skicka EDI'
      Layout = blGlyphTop
      TabOrder = 11
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 257
    Width = 1144
    Height = 601
    Align = alClient
    TabOrder = 2
    object panelInvoiceTotal: TPanel
      Left = 1
      Top = 474
      Width = 1142
      Height = 126
      Align = alBottom
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 0
      object Label26: TLabel
        Left = 8
        Top = 8
        Width = 275
        Height = 15
        Caption = 'TOTAL INVOICE INCLUDING FREIGTH && EXTRAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText32: TDBText
        Left = 472
        Top = 8
        Width = 129
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Tot_Inv_Inc_Freight_Extras'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
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
        Top = 27
        Width = 119
        Height = 15
        Caption = 'SUM FREIGHT COST:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText33: TDBText
        Left = 472
        Top = 27
        Width = 129
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'SUM_FreigthCost'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
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
        Top = 46
        Width = 215
        Height = 15
        Caption = 'PRODUCT VALUE WITHOUT FREIGHT:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText34: TDBText
        Left = 472
        Top = 50
        Width = 129
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Total_Product_Value_No_Freight'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText35: TDBText
        Left = 472
        Top = 66
        Width = 129
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Discount'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
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
        Top = 85
        Width = 129
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Commission'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
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
        Top = 104
        Width = 378
        Height = 15
        Caption = 'INVOICE VALUE AFTER DEDUCTING DISCOUNT AND COMMISSION:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText40: TDBText
        Left = 472
        Top = 104
        Width = 129
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Inv_Value_After_Deduct_DIS_COMM'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText21: TDBText
        Left = 877
        Top = 94
        Width = 121
        Height = 20
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Inv_Value_To_Be_Paid'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label41: TLabel
        Left = 659
        Top = 96
        Width = 212
        Height = 19
        Caption = 'TO BE PAID (incl. discount):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 877
        Top = 54
        Width = 121
        Height = 20
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'VAT_Value'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label37: TLabel
        Left = 654
        Top = 56
        Width = 34
        Height = 19
        Caption = 'VAT:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 8
        Top = 85
        Width = 82
        Height = 15
        Caption = 'COMMISSION: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 8
        Top = 66
        Width = 68
        Height = 15
        Caption = 'DISCOUNT: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 1002
        Top = 94
        Width = 65
        Height = 19
        AutoSize = True
        Color = clWhite
        DataField = 'CurrencyName'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 656
        Top = 8
        Width = 212
        Height = 19
        Caption = 'TO BE PAID(excl. discount):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 877
        Top = 6
        Width = 121
        Height = 20
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Inv_Value_To_Be_Paid_2'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 1002
        Top = 6
        Width = 73
        Height = 19
        AutoSize = True
        Color = clWhite
        DataField = 'CurrencyName'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 616
        Top = 8
        Width = 33
        Height = 20
        DataField = 'TotalInvoice'
        DataSource = dmVidaInvoice.dsrcInvoiceDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
    end
    object grdFaktura: TcxGrid
      Left = 1
      Top = 96
      Width = 1142
      Height = 378
      Align = alClient
      PopupMenu = pmInvoiceRows
      TabOrder = 1
      object grdFakturaDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnEditing = grdFakturaDBTableView1Editing
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
          DataBinding.FieldName = 'ShippingPlanNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
        end
        object grdFakturaDBTableView1InvoiceDetailNo: TcxGridDBColumn
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
          DataBinding.FieldName = 'Reference'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 41
        end
        object grdFakturaDBTableView1ProductDescription: TcxGridDBColumn
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
          DataBinding.FieldName = 'NoOfPkgs'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 34
        end
        object grdFakturaDBTableView1ActualNetM3: TcxGridDBColumn
          DataBinding.FieldName = 'ActualNetM3'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 30
        end
        object grdFakturaDBTableView1NominalM3: TcxGridDBColumn
          DataBinding.FieldName = 'NominalM3'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 29
        end
        object grdFakturaDBTableView1LinealMeter: TcxGridDBColumn
          DataBinding.FieldName = 'LinealMeter'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 36
        end
        object grdFakturaDBTableView1NoOfPieces: TcxGridDBColumn
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
          DataBinding.FieldName = 'Volume_OrderUnit'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 45
        end
        object grdFakturaDBTableView1Price: TcxGridDBColumn
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 44
        end
        object grdFakturaDBTableView1PriceUnit: TcxGridDBColumn
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
          DataBinding.FieldName = 'VatValue'
          PropertiesClassName = 'TcxCalcEditProperties'
          Visible = False
          Width = 40
        end
        object grdFakturaDBTableView1intNM3: TcxGridDBColumn
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
          DataBinding.FieldName = 'VatCode'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 58
        end
        object grdFakturaDBTableView1moms_konto: TcxGridDBColumn
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
          Styles.Content = cxStyleSpecialColumns
          Styles.Header = cxStyleSpecialColumns
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
          Styles.Content = cxStyleSpecialColumns
          Styles.Header = cxStyleSpecialColumns
          VisibleForCustomization = False
          Width = 110
        end
      end
      object grdFakturaLevel1: TcxGridLevel
        GridView = grdFakturaDBTableView1
      end
    end
    object panelLO: TPanel
      Left = 1
      Top = 20
      Width = 1142
      Height = 76
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 2
      DesignSize = (
        1142
        76)
      object Label17: TLabel
        Left = 6
        Top = 10
        Width = 59
        Height = 15
        Caption = 'Kontraktnr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 6
        Top = 31
        Width = 19
        Height = 15
        Caption = 'LO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText24: TDBText
        Left = 60
        Top = 30
        Width = 108
        Height = 17
        Color = clWhite
        DataField = 'ShippingPlanNo'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label19: TLabel
        Left = 178
        Top = 10
        Width = 42
        Height = 15
        Caption = 'S'#228'ljare:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 178
        Top = 33
        Width = 81
        Height = 15
        Caption = 'Kund referens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 178
        Top = 57
        Width = 70
        Height = 15
        Caption = 'V'#229'r referens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 393
        Top = 10
        Width = 66
        Height = 15
        Caption = 'Bokningsnr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText28: TDBText
        Left = 465
        Top = 7
        Width = 65
        Height = 17
        Color = clWhite
        DataField = 'BookingNo'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText29: TDBText
        Left = 465
        Top = 30
        Width = 65
        Height = 17
        Color = clWhite
        DataField = 'FreightCostPerUnit'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 393
        Top = 33
        Width = 64
        Height = 15
        Caption = 'Frakt/enhet:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 393
        Top = 57
        Width = 52
        Height = 15
        Caption = 'Totalfrakt:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText30: TDBText
        Left = 465
        Top = 54
        Width = 65
        Height = 17
        Color = clWhite
        DataField = 'TotalFreightCost'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label25: TLabel
        Left = 544
        Top = 10
        Width = 85
        Height = 15
        Caption = 'Spedit'#246'rens ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText31: TDBText
        Left = 620
        Top = 30
        Width = 130
        Height = 17
        Color = clWhite
        DataField = 'SUPP_REFERENCE'
        DataSource = dmVidaInvoice.ds_BookingData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object DBText44: TDBText
        Left = 60
        Top = 54
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
      object Label15: TLabel
        Left = 915
        Top = 55
        Width = 24
        Height = 15
        Caption = 'ETA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 760
        Top = 56
        Width = 27
        Height = 15
        Caption = 'ETD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 760
        Top = 32
        Width = 40
        Height = 15
        Caption = 'Vessel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 620
        Top = 7
        Width = 130
        Height = 17
        Color = clWhite
        DataField = 'BOOKING_ID'
        DataSource = dmVidaInvoice.ds_BookingData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 544
        Top = 57
        Width = 33
        Height = 15
        Caption = 'TrpID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 544
        Top = 33
        Width = 54
        Height = 15
        Caption = 'Referens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label5: TLabel
        Left = 760
        Top = 12
        Width = 42
        Height = 13
        Caption = 'Spedit'#246'r:'
      end
      object dcOrderNoText: TDBEdit
        Left = 60
        Top = 2
        Width = 108
        Height = 23
        DataField = 'OrderNoText'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dcSalesMan: TDBEdit
        Left = 256
        Top = 2
        Width = 127
        Height = 23
        DataField = 'SalesMan'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dcCustRef: TDBEdit
        Left = 256
        Top = 25
        Width = 127
        Height = 23
        DataField = 'Reference'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object dcOurRef: TDBEdit
        Left = 256
        Top = 49
        Width = 127
        Height = 23
        DataField = 'OurReference'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object bbNewCarrier: TBitBtn
        Left = 1045
        Top = 50
        Width = 15
        Height = 14
        Caption = 'ny'
        TabOrder = 4
        Visible = False
        OnClick = bbNewCarrierClick
      end
      object DBEdit2: TDBEdit
        Left = 618
        Top = 49
        Width = 132
        Height = 23
        DataField = 'TrpID'
        DataSource = dmVidaInvoice.dsrcInvoiceLO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dxDBEdit1: TcxDBTextEdit
        Left = 808
        Top = 3
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'SHIPPER'
        DataBinding.DataSource = dmVidaInvoice.ds_BookingData
        TabOrder = 6
        Width = 330
      end
      object dxDBEdit2: TcxDBTextEdit
        Left = 808
        Top = 26
        DataBinding.DataField = 'VESSEL'
        DataBinding.DataSource = dmVidaInvoice.ds_BookingData
        TabOrder = 7
        Width = 233
      end
      object dxDBMaskEdit1: TcxDBMaskEdit
        Left = 808
        Top = 49
        DataBinding.DataField = 'ETD'
        DataBinding.DataSource = dmVidaInvoice.ds_BookingData
        TabOrder = 8
        Width = 97
      end
      object dxDBMaskEdit2: TcxDBMaskEdit
        Left = 944
        Top = 49
        DataBinding.DataField = 'ETA'
        DataBinding.DataSource = dmVidaInvoice.ds_BookingData
        TabOrder = 9
        Width = 97
      end
      object lValuta: TcxLabel
        Left = 5
        Top = 57
        Caption = 'Valuta'
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        OnClick = lValutaClick
      end
    end
    object TabControl1: TTabControl
      Left = 1
      Top = 1
      Width = 1142
      Height = 19
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabHeight = 14
      TabOrder = 3
      Tabs.Strings = (
        '1'
        '2')
      TabIndex = 0
      OnChange = TabControl1Change
    end
  end
  object pmInvoiceRow: TPopupMenu
    Left = 408
    Top = 432
    object AddRow1: TMenuItem
      Action = acAddRow
    end
    object RemoveRow: TMenuItem
      Action = acRemoveRow
    end
    object ndralayout1: TMenuItem
      Action = acChangeLayoutFakturaGrid
    end
  end
  object pmLevAdr: TPopupMenu
    Left = 480
    Top = 440
    object AddShiptoaddress1: TMenuItem
      Action = acAddShipToAdr
    end
    object RemoveShipToAddress1: TMenuItem
      Action = acRemoveShipToAdr
    end
  end
  object pmPrint: TPopupMenu
    Left = 216
    Top = 440
    object Skrivut1: TMenuItem
      Caption = '**** SKRIV UT *****'
    end
    object Klientspecifikfaktura1: TMenuItem
      Action = acKlientInvoices
    end
    object Klientpaketspecifikation1: TMenuItem
      Action = acClientPkgSpecar
    end
    object SkrivutKlientfakturaKlientspec1: TMenuItem
      Action = acPrintClientFakturaAndSpec
    end
    object SkrivutTrpbrevKlientspec1st1: TMenuItem
      Action = acPrintOrderAndSpec
    end
    object EmailaKlientfakturaKlientspec1: TMenuItem
      Action = acEmailClientFakturaAndSpec
    end
    object Emailatransportbrevpaketspec1: TMenuItem
      Action = acEmailaTrpBrev
    end
    object EmailakundAgentfakturaspec1: TMenuItem
      Action = acEMailaFakturaSpecTillKundOchAgent
    end
    object TMenuItem
    end
    object TRPBREV1: TMenuItem
      Caption = 'F'#246'rhandsgranska TRP BREV'
      OnClick = TRPBREV1Click
    end
    object Frhandsgranskaklientfaktura1: TMenuItem
      Caption = 'F'#246'rhandsgranska klientfaktura'
      OnClick = Frhandsgranskaklientfaktura1Click
    end
    object Frhandsgranskaklientspecifikation1: TMenuItem
      Action = acPreviewKlientPkgSpec
    end
    object Kundspecifikarapporter1: TMenuItem
      Action = acKundSpecifika
    end
    object vriga1: TMenuItem
      Caption = #214'vriga'
      object Invoice1: TMenuItem
        Action = acPrintInvoices
        Enabled = False
      end
      object FakturaEngelsk1: TMenuItem
        Caption = 'Faktura Engelsk'
        Enabled = False
        OnClick = FakturaEngelsk1Click
      end
      object FakturaEngelskLength1: TMenuItem
        Caption = 'Faktura Engelsk - Length'
        Enabled = False
        OnClick = FakturaEngelskLength1Click
      end
      object SpecifikationSvenskVer2: TMenuItem
        Break = mbBreak
        Caption = 'Specifikation Svensk ver2'
        OnClick = SpecifikationSvenskVer2Click
      end
      object SpecEngVer2: TMenuItem
        Caption = 'Specifikation Engelsk ver2'
        OnClick = SpecEngVer2Click
      end
      object SpecifikationEngelskmedproducentver21: TMenuItem
        Caption = 'Specifikation Engelsk - med producent ver2'
        OnClick = SpecifikationEngelskmedproducentver21Click
      end
      object SpecifikationEngelskAktuelldimensionVer21: TMenuItem
        Caption = 'Specifikation Engelsk - Aktuell dimension ver2'
        OnClick = SpecifikationEngelskAktuelldimensionVer21Click
      end
      object Specifikationutanpktnr1: TMenuItem
        Caption = 'Specifikation utan pktnr'
        OnClick = Specifikationutanpktnr1Click
      end
      object SpecifikationIdahostyle1: TMenuItem
        Caption = 'Specifikation (Idaho style)'
        OnClick = SpecifikationIdahostyle1Click
      end
      object FakturaEngelskfrAgust1: TMenuItem
        Caption = 'Faktura Engelsk (f'#246'r Agust)'
        Enabled = False
        OnClick = FakturaEngelskfrAgust1Click
      end
      object FakturaEngelskLengthNM31: TMenuItem
        Caption = 'Faktura Engelsk - Length (+ NM3)'
        Enabled = False
        OnClick = FakturaEngelskLengthNM31Click
      end
      object FakturaEngelskLngdperpakettyp1: TMenuItem
        Caption = 'Faktura Engelsk - L'#228'ngd (per pakettyp)'
        Enabled = False
        OnClick = FakturaEngelskLngdperpakettyp1Click
      end
      object FakturaSvenskutanmomsdk1: TMenuItem
        Caption = 'Faktura Svensk utan moms (dk)'
        Enabled = False
        OnClick = FakturaSvenskutanmomsdk1Click
      end
      object FakturaEngelskdk1: TMenuItem
        Caption = 'Faktura Engelsk (dk)'
        Enabled = False
        OnClick = FakturaEngelskdk1Click
      end
      object SpecifikationSvenskdk1: TMenuItem
        Caption = 'Specifikation Svensk (dk)'
        OnClick = SpecifikationSvenskdk1Click
      end
      object SpecifikationEngelskdk1: TMenuItem
        Caption = 'Specifikation Engelsk (dk)'
        OnClick = SpecifikationEngelskdk1Click
      end
      object SpecifikationgrupperadperFSSvensk1: TMenuItem
        Action = acSpecGroupByLoadNo
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 272
    Top = 448
    object acBooking: TAction
      Caption = 'Bokning F10'
      ImageIndex = 10
      ShortCut = 121
      OnExecute = acBookingExecute
      OnUpdate = acBookingUpdate
    end
    object acGetInvoiceNo: TAction
      Caption = 'H'#228'mta fakturanr F2'
      ImageIndex = 8
      ShortCut = 113
      OnExecute = acGetInvoiceNoExecute
      OnUpdate = acGetInvoiceNoUpdate
    end
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 6
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acAddTab: TAction
      Caption = 'L'#228'gg till flik'
      ImageIndex = 9
      OnExecute = acAddTabExecute
      OnUpdate = acAddTabUpdate
    end
    object acSummarize: TAction
      Caption = 'Summera F6'
      ImageIndex = 17
      ShortCut = 117
      OnExecute = acSummarizeExecute
      OnUpdate = acSummarizeUpdate
    end
    object acPrintInvoices: TAction
      Caption = 'Faktura Svensk'
      OnExecute = acPrintInvoicesExecute
    end
    object acKlientInvoices: TAction
      Caption = 'Skriv ut Klientfaktura 1st'
      OnExecute = acKlientInvoicesExecute
    end
    object acClientPkgSpecar: TAction
      Caption = 'Skriv ut Klientspecifikation 1st'
      OnExecute = acClientPkgSpecarExecute
    end
    object acPrint: TAction
      Caption = 'Skriv'
      ImageIndex = 5
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acPrintClientFakturaAndSpec: TAction
      Caption = 'Skriv ut Klientfaktura + Klientspec'
      OnExecute = acPrintClientFakturaAndSpecExecute
    end
    object acEmailClientFakturaAndSpec: TAction
      Caption = 'Emaila Klientfaktura + Klientspec'
      OnExecute = acEmailClientFakturaAndSpecExecute
    end
    object acPrintTrpOrder: TAction
      Caption = 'acPrintTrpOrder'
      OnExecute = acPrintTrpOrderExecute
    end
    object acPrintOrderAndSpec: TAction
      Caption = 'Skriv ut Trp brev + Klientspec 1st'
      OnExecute = acPrintOrderAndSpecExecute
    end
    object acAttestera: TAction
      Caption = 'Attestera tj'#228'nster F9'
      ImageIndex = 13
      ShortCut = 120
      OnExecute = acAttesteraExecute
    end
    object acChangeLayoutFakturaGrid: TAction
      Caption = #196'ndra layout'
      OnExecute = acChangeLayoutFakturaGridExecute
    end
    object acRemoveRow: TAction
      Caption = 'Ta bort rad'
      OnExecute = acRemoveRowExecute
      OnUpdate = acRemoveRowUpdate
    end
    object acAddRow: TAction
      Caption = 'L'#228'gg till rad'
      OnExecute = acAddRowExecute
      OnUpdate = acAddRowUpdate
    end
    object acAddShipToAdr: TAction
      Caption = 'L'#228'gg till leveransadress'
      OnExecute = acAddShipToAdrExecute
      OnUpdate = acAddShipToAdrUpdate
    end
    object acRemoveShipToAdr: TAction
      Caption = 'Ta bort leveransadress'
      OnExecute = acRemoveShipToAdrExecute
      OnUpdate = acRemoveShipToAdrUpdate
    end
    object acCopyInvoiceRow: TAction
      Caption = 'Kopiera rad'
      OnExecute = acCopyInvoiceRowExecute
      OnUpdate = acCopyInvoiceRowUpdate
    end
    object acAddPackagesToLoad: TAction
      Category = 'SPEC'
      Caption = 'Spara valda paket till kortskepp.FS'
      OnExecute = acAddPackagesToLoadExecute
      OnUpdate = acAddPackagesToLoadUpdate
    end
    object acAddPackagesToInventory: TAction
      Category = 'SPEC'
      Caption = 'Spara valda paket till lager'
      OnExecute = acAddPackagesToInventoryExecute
      OnUpdate = acAddPackagesToInventoryUpdate
    end
    object acGroupByBox: TAction
      Category = 'SPEC'
      Hint = 'Grupperingsruta'
      OnExecute = acGroupByBoxExecute
    end
    object acGroupBySummary: TAction
      Category = 'SPEC'
      Hint = 'Gruppsummering'
      OnExecute = acGroupBySummaryExecute
    end
    object acSpecFaltValjare: TAction
      Category = 'SPEC'
      Hint = 'F'#228'ltv'#228'ljare'
      OnExecute = acSpecFaltValjareExecute
    end
    object acAddPkg: TAction
      Category = 'SPEC'
      Caption = 'L'#228'gg till'
      OnExecute = acAddPkgExecute
      OnUpdate = acAddPkgUpdate
    end
    object acRemovePkg: TAction
      Category = 'SPEC'
      Caption = #197'ngra'
      OnExecute = acRemovePkgExecute
      OnUpdate = acRemovePkgUpdate
    end
    object acAddPkgToInventory: TAction
      Category = 'SPEC'
      Caption = 'L'#228'gg till'
      OnExecute = acAddPkgToInventoryExecute
      OnUpdate = acAddPkgToInventoryUpdate
    end
    object acRegretAddPkgToInventory: TAction
      Caption = #197'ngra'
      OnExecute = acRegretAddPkgToInventoryExecute
      OnUpdate = acRegretAddPkgToInventoryUpdate
    end
    object acMarkAllRows: TAction
      Category = 'SPEC'
      Hint = 'Markera alla rader'
      OnExecute = acMarkAllRowsExecute
      OnUpdate = acMarkAllRowsUpdate
    end
    object acSpecGroupByLoadNo: TAction
      Caption = 'Specifikation grupperad per FS Svensk'
      OnExecute = acSpecGroupByLoadNoExecute
    end
    object acExportTyp1a: TAction
      Caption = 'Excel: paketnrfil'
    end
    object acExportTyp1b: TAction
      Caption = 'Excel: paketnrfil med "C" framf'#246'r paketnr'
    end
    object acEmailaTrpBrev: TAction
      Caption = 'Emaila transportbrev + paketspec'
      OnExecute = acEmailaTrpBrevExecute
    end
    object acExportInvoiceSpecWoodx: TAction
      Caption = 'Woodx fakturaspec'
      OnExecute = acExportInvoiceSpecWoodxExecute
    end
    object acPrintMeny: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = acPrintMenyExecute
    end
    object acExportmeny: TAction
      Caption = 'Exportera F11'
      ShortCut = 122
      OnExecute = acExportmenyExecute
    end
    object acKundSpecifika: TAction
      Caption = 'Kundspecifika rapporter'
      OnExecute = acKundSpecifikaExecute
    end
    object acEMailaFakturaSpecTillKundOchAgent: TAction
      Caption = 'Emaila kund&&Agent faktura + spec'
      OnExecute = acEMailaFakturaSpecTillKundOchAgentExecute
    end
    object acGetKontoNr: TAction
      Caption = 'Kontonr'
      OnExecute = acGetKontoNrExecute
    end
    object acLenaExport: TAction
      Caption = 'Lena'#39's excel'
      OnExecute = acLenaExportExecute
    end
    object acLindaExport: TAction
      Caption = 'Linda'#39's excel'
      OnExecute = acLindaExportExecute
    end
    object acEDI: TAction
      Caption = 'Skicka EDI'
      OnExecute = acEDIExecute
    end
    object acPreviewKlientPkgSpec: TAction
      Caption = 'F'#246'rhandsgranska klientspecifikation'
      OnExecute = acPreviewKlientPkgSpecExecute
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 424
    Top = 480
    Bitmap = {
      494C010114001900080018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000090000000010020000000000000D8
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040606000806060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080004020200040606000406060008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000402020004020200040404000C0A0A0008040400040202000402020000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      600080606000C0A0A000F0CAA600F0CAA600C060600040202000402020004000
      0000406080004060600040404000404040004040400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      000000000000000000000000000000000000000000000000000080808000C0A0
      A000F0CAA600F0CAA600C080800080606000C060600040202000402020004020
      200000FFFF004060A00000000000406060004040400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      000000000000000000000000000000000000000000000000000080808000C0A0
      A00080808000404040004060600040404000C080800040202000402020000000
      000000FFFF0000FFFF0000204000402020004020200040404000000000008060
      6000406060000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      000000000000000000000000000000000000002040000000000080808000C0A0
      A00040404000404040004040400080606000C0A0A00080202000402020000000
      00008080800000FFFF0000FFFF00002040000040600040608000002040004040
      4000406060008080800000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00008080000000000000FFFF0000FFFF00008080000000
      0000000000000000FF000000FF000000FF00000000000000000000FFFF0000FF
      FF0000808000C0C0C00000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000020400000204000000000008060
      60008060600080606000C0C0C000F0CAA600C0A0A000C0808000804040004000
      000000FFFF008080800000FFFF0000FFFF004060A0004060A000004060004020
      2000806060000020400000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00008080000000000000FFFF0000FFFF00008080000000
      000000FFFF00000080000000FF000000FF0000FFFF000000000000FFFF0000FF
      FF0000808000C0C0C00000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000002040000020E0000020E0004060
      6000F0FBFF00F0CAA600C0A0A000C0A0A000C0A0A00080606000404040000020
      400000FFFF0000FFFF008080800000FFFF0000FFFF004060A000406080000020
      4000402020000040600040404000000000000000000000000000000000000000
      000000FFFF0000FFFF0000808000000000008080800080808000008080000000
      000000FFFF000000FF0000FFFF000000FF0000FFFF0000000000808080008080
      800000808000C0C0C00080808000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000020E0000020E0000020E0008060
      600080606000C0808000C0C0C00080404000402040000040600000E0E00000E0
      E00000FFFF0000FFFF0000FFFF008080800000FFFF0000208000404080004060
      8000004080004060A00040404000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008080000000
      0000000000000000FF00000000000000FF00000000000000000000FFFF0000FF
      FF0000808000C0C0C00080808000808080000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000020E0000020E0000020E0000020
      E0000020E0004020200040404000002040008080800000E0E00000E0E00000E0
      E00000FFFF0000FFFF0000FFFF0000FFFF00808080000020800000FFFF0000FF
      FF00406080004060A00040404000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008080000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000808000C0C0C00080808000808080000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000020E0000020E0000020
      E0000020E0004040400000E0E00000E0E00000E0E0008080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004040008080800000FF
      FF0000FFFF000020800040404000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000008080000000
      0000000000000000000000000000000000000000000000000000808080008080
      800000808000C0C0C00080808000808080000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000020E0000020E0000000
      00000000000000E0E00000E0E00080C0E00080E0E00000FFFF00808080008080
      800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004060A00000FFFF008080
      800000FFFF0000FFFF0040404000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008080000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000808000C0C0C00080808000808080000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000020E0000020E0000000
      0000000000008080800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008080
      80008080800000FFFF0000FFFF0000FFFF0080A0E00000FFFF0000FFFF0000FF
      FF008080800000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008080000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000808000C0C0C00080808000808080000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000020E0000020
      E0000020E0000020E00000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0080808000808080004080A0004080C00000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008080800000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000FFFF00008080000000
      0000000000000000000000000000000000000000000000000000C0C0C00000FF
      FF0000808000C0C0C00080808000808080000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000020E0000020E0000020E00000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004080A000808080008080800000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0080808000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000808080000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000020E000000000000020E00000FFFF0000FFFF0000FF
      FF0080A0C00000FFFF0000FFFF00808080008080800000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008080800080808000808080000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000020E000000000000020E00000000000000000008080
      800000FFFF0000FFFF0000FFFF0000FFFF00808080008080800000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      800080808000808080000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67310000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000020E00000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000020E00000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C0008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEA59400D6AD9400CEA59400C6A59400C6A5
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEA59C00DEAD9400EFC6A500E7C6AD00DEB59C00D6AD
      9400C6A59400C69C9400C69C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6AD9C00DEB59C00EFBD9400EFCEA500F7DEBD00EFCEAD00EFCE
      A500E7C69C00BD948400B58C8400C69C8C00C69C8C00BD948C00000000000000
      0000000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B84
      630052734200319C3100319C3100319C3100319C3100319C3100319C31005263
      4200636B4A007B736300948C8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6AD9C00E7BD9C00F7CE9C00EFBD9400EFCEAD00EFDEC600F7D6B500EFCE
      FD00EFCEA500B58C7B00946363009C736B00AD847B00CEA58C00C69C8C00BD8C
      8400BD8C84000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF0073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD60029ADD60073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000737373002121210052525200525252007373
      7300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073AD73001084
      100042CE420021A5210031A5310039AD390039AD390039AD3900107B1000319C
      31003194290021731800319C310021842100736B5A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6AD
      9C00E7C6A500F7D6A500F7CE9C00EFBD9400EFCEAD00F7E7CE00EFDEC600F7D6
      B500EFCEAD00B58C7B0094636300946B63009C6B6300DEBD9C00E7C69C00D6B5
      9C00CEA58C00BD94840000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF0029ADD60073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      000029292900181818005A4A4A00D6ADAD008442420018181800292929001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000298C290042CE
      420031AD310042BD42004ABD4A0052C65200B5E7A500399C39008CBD7B00399C
      39009CDE8C0042BD420031AD3100217318004A42290000000000000000000000
      0000000000000000000000000000000000000000000000000000D6B59C00EFCE
      A500F7D6A500EFCEA500F7CE9C00EFBD9400F7D6B500F7EFD600F7E7CE00EFDE
      C600F7D6B500B58C7B0094636300946B63009C6B6B00DEBD9C00EFCEA500EFCE
      A500EFC6A500C69C8C0000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFFFF0029ADD60073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000006363
      630063525200BD949400FFCECE00FFCECE00A552520039212100522121002108
      08004A6384005A636B00424242004A4A4A004242420000000000000000000000
      00000000000000000000000000000000000000000000000000003994390029AD
      290039B539004ABD4A005AC65A009CDE8C0052B5520073B56B00D6E7BD004AA5
      4200B5E7A50052C6520042BD4200299C29002184210000000000000000000000
      00000000000000000000000000000000000000000000DEB5A500F7D6AD00F7DE
      FD00F7D6A500EFCEA500F7CE9C00EFBD9400F7D6BD00FFEFE700F7E7D600F7E7
      CE00EFDEC600B58C840094636300946B63009C6B6B00DEBD9C00EFC6A500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFFFF008CF7FF0029AD
      D60073DEF70029ADD600000000000000000000000000000000007B7B7B00D6A5
      A500FFCECE00E7B5B500AD8C8C006B636300B563630052212100392121003910
      10007BADDE003163940008101800525252004242420000000000000000000000
      00000000000000000000000000000000000000000000000000008CBD8C00299C
      29004ABD4A005AC65A006BCE6B00B5E7A50063A56300F7FFEF00F7FFEF0084BD
      7B00B5E7A50063CE630052C6520031A531004A6B390000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7B500F7DE
      FD00F7D6A500EFCEA500F7CE9C00EFBD9400F7D6BD00FFF7EF00FFEFDE00F7E7
      D600F7E7CE00B594840094636300946B63009C6B6B00DEBD9C00EFC6A500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF008CF7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70073DEF70073DEF70029ADD6008CF7FF008CF7FF008CF7FF008CF7
      FF0029ADD60029ADD6000000000000000000000000000000000073737300D6A5
      A500947B7B004A4242005A5A5A0031313100BD8C8C004A181800181818001810
      10007BADDE004A7BAD0000183900292929002929290042424A00000000006363
      63005A5A5A00000000000000000000000000000000000000000000000000398C
      31004ABD4A0063CE6300B5E7A50052A54A00D6E7CE00FFFFFF00FFFFFF0084B5
      84009CDE8C0073CE73005AC65A00319C3100637B520000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7B500F7DE
      FD00F7D6A500EFCEA500F7CE9C00EFBD9400F7D6BD00FFFFF700FFF7E700FFEF
      DE00F7E7D600B5948C0094636300946B63009C6B6B00DEBD9C00EFC6A500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00313131007B5A4A00B5B5
      B5008CEFFF0073DEF70073DEF70029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD6000000000000000000000000000000000073737300BD94
      94004A42420039393900313131007B6B6B00D6ADAD0073292900291818001810
      10007BADDE004A84B500215A8C000018390008315A00295A8C00081829004242
      42005A5A5A007373730000000000000000000000000000000000000000000000
      0000398C310052B552004A9C42009CB58C00BDC6C600BDC6C600E7DECE0094B5
      7B007BCE7B007BD67B0052B55200428439000000000000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7B500F7DE
      FD00F7D6A500F7CE9C00F7CE9C00EFBD9400F7D6BD00FFFFF700FFF7EF00FFF7
      E700FFEFDE00B5948C0094635A0094636300946B6300DEBD9C00EFC6A500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF007B5A4A00392918002963
      7B0052636B0073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000006B5A
      5A008C6B6B00736B6B00D6BDBD00E7C6C600D6A5A500BD8484008C4242002908
      0800396BC60010299C0029528C00295A8C003163940031639C00103963002121
      2100636363001018180000000000000000000000000000000000000000000000
      0000000000004A8C420018734A003984AD00217BBD00217BBD00428CAD004284
      630063BD6300399C3900528C4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7B500FFDE
      FD00FFD6A500BDC6C60063A5E700739CCE00EFDEC600FFFFF700FFF7F700FFF7
      EF00FFF7E700EFDED600D6BDAD00C6A59400B58C8400E7C6A500EFCEA500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF00D6D6D6008CB5C6008CF7
      FF002973F70021526B0073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000005A52
      5200FFEFEF00E7C6C600D6A5A500CE9C9C00CE9C9C007B6B6B00393139000018
      3900005AD6000039D60000189C0010298400214A8C0031639C00215284000818
      2900181818001039630042424A00000000000000000000000000000000000000
      0000000000005A849C00187BC600218CE700298CE700298CE700218CE700107B
      B500296B52000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7AD00F7DE
      FD009CCEDE004AB5FF0042A5FF003194F70073ADEF00F7F7F700FFFFEF00FFF7
      EF00FFF7EF00FFF7E700FFEFDE00F7E7D600F7DEC600F7D6B500EFCEAD00E7C6
      A500E7C69C00C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF0010A5D6008CF7
      FF002973F7002973F700084263008CEFFF008CEFFF0073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000006363
      630073636300A57B7B00B5BDBD007B42420021293100083163000852AD003184
      F70094C6FF00427BB50008396300002984000021940010298400214A8C002152
      8400104273003163940042424A00000000000000000000000000000000000000
      000000000000217BBD002994EF002994F7003194FF003194FF00319CF7002994
      EF00216B9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFC6A500D6DEC6007BCE
      F70052BDFF0052BDFF004AB5FF0042A5FF00319CFF0073B5FF00F7F7F700FFFF
      EF00FFF7EF00FFF7EF00FFEFE700F7E7D600F7E7CE00EFDEC600F7D6B500EFCE
      FD00EFC6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00847B7B00847B7B0010A5
      D60042E7F7002973F7002973F70021526B00847B7B00847B7B00847B7B00847B
      7B0073DEF70029ADD60000000000000000000000000000000000000000000000
      000000000000181818004231310000214A000852AD003984EF0073B5FF009CCE
      FF00A5D6FF005A8CB500184A7300002918000031630000298C000021A5001021
      7B0029528C003163940042424A00000000000000000000000000000000000000
      0000297BAD002994EF00399CFF00399CFF00399CFF00399CFF00399CFF00399C
      FF00298CE700106B9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CBDD60063BDFF005ABD
      FF0063C6FF005ABDFF0052B5FF004AADFF0042A5FF00319CFF0073B5FF00F7F7
      F700FFF7EF00FFF7EF00FFF7EF00FFEFE700F7E7D600F7E7CE00EFDEC600F7D6
      B500D6BDAD00AD94A500BD949C00000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7
      FF0010A5D60042E7F7002973F7002973F70018425A008CEFFF008CEFFF0073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000000000004A4A4A004A4A52004294FF0084BDFF009CCEFF009CCEFF00BDE7
      FF00B5D6EF0084BDE7005A94C600396B9C0031639C001039420008398C000031
      B50000189C001029840042424A00000000000000000000000000000000000000
      00002184C600399CFF0042A5FF0042A5FF0042A5FF0042A5FF0042A5FF0042A5
      FF00399CF700315A6B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063B5FF005AB5FF005AB5FF0063BD
      FF0063BDFF0063C6FF005ABDFF0052B5FF004AADFF0042A5FF00319CFF0084BD
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFEFDE00F7E7D600F7E7CE00CEBD
      BD009C94AD00AD94A50000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7
      FF008CF7FF0010A5D60042E7F7002973F7002973F70021526B008CEFFF008CEF
      FF0073DEF70029ADD60000000000000000000000000000000000000000000000
      0000000000004A4A4A00525252009CCEFF00A5D6FF00ADDEFF00B5D6EF0084AD
      D6005284BD006394C60073A5D6007BADDE005A8CBD00396B9C00295A8C001042
      5A000842BD000031BD0039424A00000000000000000000000000000000006384
      9C00399CF70042A5FF004AADFF004AADFF006BBDFF006BBDFF004AADFF004AAD
      FF0042A5F700316B840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005AB5FF005AB5FF005AB5
      FF0063BDFF0063BDFF0063C6FF005ABDFF0052B5FF004AADFF0042A5FF00319C
      FF0084BDFF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFEFDE00B5B5C600848C
      B5009494AD000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7
      FF008CF7FF008CF7FF0010A5D60042E7F7002973F7002973F700084263008CEF
      FF008CEFFF0029ADD60000000000000000000000000000000000000000000000
      0000000000007373730052525200BDE7FF00A5CEEF0084ADD6005A94C6004A7B
      FD005284B500396B9C004A7BAD00639CCE0073A5D60073ADDE00639CCE003163
      9C0031639C00215AA50042424A00000000000000000000000000000000006BA5
      C60042A5F7004AADFF004AB5FF006BBDFF0052B5FF006BBDFF0052B5FF006BBD
      FF004AADFF003973940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005AB5FF005AB5
      FF0063B5FF0063BDFF0063BDFF0063C6FF005ABDFF0052B5FF004AADFF0042A5
      FF002994FF0084BDFF00FFF7EF00FFFFF700F7F7F70094ADD6007384BD00848C
      B500000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60010A5D60042E7F7002973F7003139BD003131
      310029ADD60029ADD60000000000000000000000000000000000000000000000
      0000000000000000000073737300527394006394C600639CCE005284BD0073A5
      D6009CCEFF007BADDE004273AD005A8CBD006394C600639CCE006B9CD60084B5
      E7005A8CBD004273A50042424A00000000000000000000000000000000005294
      BD0042A5EF0052B5FF006BC6FF006BC6FF006BC6FF0052B5F7004AB5EF0052B5
      F70052B5F70039738C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005AB5
      FF005AB5FF0063BDFF0063BDFF0063C6FF005AC6FF0052BDFF004AB5FF0042A5
      FF00399CFF002994FF0084C6FF00D6E7EF00739CD6005A84C6005A84C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010A5D60042A5DE008C847B008484
      7B00313131000000000000000000000000000000000000000000000000000000
      000000000000000000000000000073737300394A5A00426B8C006394C6005284
      BD00396B9C004A7BAD004273A5004A7BAD005A8CC6005284B5006394CE00639C
      CE0073A5D60073A5D6004A4A52000000000000000000000000000000000063A5
      C600217BB500298CCE003194DE003194DE002184C600298CC600318CC6002984
      C6002994CE00106B9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AB5FF005AB5FF0063BDFF0063BDFF0063C6FF005AC6FF0052B5FF004AAD
      FF0042A5FF00399CFF00319CFF00399CF7005284DE005284DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000846B5A00FFFFFF00F7EF
      E7007363520021214A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300525A6300395A
      7B00639CCE005284B5004A7BB5005284B5004A7BAD005284B5004A7BB500639C
      CE00426B8C004A5A6B0073737300000000000000000000000000000000006384
      9C002173A500428CC6004A94C6006BADD6007BBDEF0063ADF7004A9CE700398C
      CE00216BA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005AB5FF005AB5FF0063BDFF0063BDFF0063C6FF005ABDFF0052B5
      FF004AADFF0042A5FF00318CF7003973EF006384F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C948C00E7CE
      B50029637B002973F7003139BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007373
      730039424A00527394005A8CB500528CBD00427BAD005284B500527BA5003942
      4A00737373000000000000000000000000000000000000000000000000000000
      00002173A500318CC6006BADD6008CBDE7008CBDE70073BDE7005AADDE003994
      C600106B9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005AB5FF005AB5FF0063BDFF0063BDFF0063C6FF005ABD
      FF0052B5FF00638CDE002121AD00394ACE006B84F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A6B
      9C00299CEF002973F7003139BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073737300525A6B00395A7B00426B8C004A5A6B00737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000428CB5004294C6006BADD6009CCEE7008CBDE7004294BD00106B
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005AB5FF0063B5FF0063BDFF0063C6FF000000
      0000000000007B73C6002121AD00394ACE006B84F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000010E7000010E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737373007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BA5BD004A94B500529CBD004A8CAD0063849C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B73C6002121AD00394ACE006B84F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002121AD00394ACE006B84F70000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B58484000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE6300000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      FD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      FD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600BD6B2900B55A1800F7DEBD00BD6B
      2900B55A1800E7BD8C00EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE6300000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6
      FD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000AD73
      8400F7E7D600F7EFDE00F7E7D600F7E7CE00CE8C5A00B55A1800DEAD7B00CE8C
      5200B55A1800DEA57300EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE6300000000000000000000000000000000000000000000AD73
      8400F7E7D600DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C00313131005263
      6B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00EFCE9400B58484000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE00DEB58C00B55A1800CE8C5200F7DE
      BD00B55A1800CE844A00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE6300000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE00F7E7CE00F7DEC6007B5A4A003929
      180029637B0052636B00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00CE946300CE946300B55A1800CE946300CE94
      6300B55A1800CE946300CE946300CE946300CE946300EFCE9C00EFCE9C00EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE6300000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00D6D6D6008CB5
      C6008CF7FF002973F70021526B00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000B584
      8400F7EFE700FFF7EF00F7EFE700B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800EFCEA500EFCE9C00EFCE
      9C00EFCE9400B584840000000000000000000000000000000000EF9C2100F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00EF9C21000000000000000000008C
      08000000000000000000EF9C2100F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000000000000000000000000000B584
      8400F7EFE700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C006BC6
      FF008CF7FF002973F7002973F700084263009C9C9C009C9C9C009C9C9C009C9C
      9C00EFCE9400B58484000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00CE8C6300B55A1800F7DE
      BD00CE8C5A00B55A1800DEAD7B00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008C0800008C
      0800007308000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7
      CE0010A5D60042E7F7002973F7002973F70021526B00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B58484000000000000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700DEB59400B55A1800CE8C
      5A00F7DEBD00B55A1800CE8C5200F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C0800008C0800008C
      0800007308000073080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7
      CE00F7E7CE0010A5D60042E7F7002973F7002973F70018425A00F7D6AD00EFCE
      A500EFCE9C00B58484000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFF7F700CE946300CE946300CE946300B55A1800CE94
      6300CE946300B55A1800CE946300CE946300CE946300F7D6B500F7D6AD00F7D6
      FD00EFCEA500B584840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008C0800008C0800008C08000073
      0800007308000073080000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000C68C
      8C00FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C
      9C00EFCEA500B58484000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800F7DEBD00F7D6B500F7D6
      FD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFE700F7EF
      DE00F7E7D600F7E7CE00F7E7CE0010A5D60042E7F7002973F7002973F7000842
      6300EFCEA500B58484000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00CE946300B55A
      1800F7DEBD00CE8C6300B55A1800DEAD8400F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EF
      E700F7EFDE00F7E7D600F7E7CE00F7E7CE0010A5D60042E7F7002973F7003139
      BD0031313100B58484000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700E7BD9C00B55A
      1800CE8C6300F7DEBD00B55A1800CE8C5A00F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A500A57B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      FD00FFEFD600CE6300000000000000000000000000000000000000000000CE94
      8C00FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C0010A5D60042A5DE008C84
      7B0084847B00313131000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E7DE00B55A
      1800BD6B2900EFDECE00B55A1800BD632900F7E7CE00F7E7CE00EFD6BD00CEBD
      FD00B5AD94009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE6300000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00846B5A00FFFF
      FF00F7EFE7007363520021214A0000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0000DEE70000DE
      E70000DEE70000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE6300000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD009C94
      8C00E7CEB50029637B002973F7003139BD00000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE6300000000000000000000000000000000000000000000D69C
      9400FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00EFDED600B5847300AD847300AD7B7300AD7B
      73004A6B9C00299CEF002973F7003139BD00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE6300000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA539000010E7000010E70000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      840000000000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0000DEE70000DE
      E70000DEE70000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
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
      2800000060000000900000000100010000000000C00600000000000000000000
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
      FFFFFFFFFFFFFFFFC00003FFFFFFFF9FFFFFFFFFC00003FFFFFFFE0FFFFFFFFF
      C00003FFFFFFF00FFFFFFFFFC00003FFFFFFE0007FFFFFFFC00003F8003FC000
      7FFFFFFFC00003F87F3FC00027F33FCFC00003F83FBF400003F00003C00003FC
      1FFF200003F00003C00003FE0FFF000001F00001C00003FF07FF000001F00000
      C00003FF83FF000001F00000C00003FF83FF800001F00000C00003FF07FF9800
      01F00000C00003FE0FFF980001F00000C00003FC1FFFC00001F00000C00003F8
      3FBFF00001F00000C00003F87F3FFD0001F00000C00003F8003FFD6007F80003
      E00007FFFFFFFF781FFE001FFFFFFFFFFFFFFF7E7FFF007FFFFFFFFFFFFFFFFF
      FFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFC01FFFF
      FFFFFFFFFFFFFFFFF8003F800003FF9FFFE001FFF00007800003FE0FFFC0007F
      E00003800003F00FFFC0007FC00003800003E0007FC0007F800003800003C000
      7FC0007F800003800003C00027E0007F800003800003C00003F000FF80000380
      0003E00003F801FF800003800003E00001F807FF800003800003E00001F807FF
      800003800003F80001F003FF800001800003F80001F003FF000003800003F800
      01E003FF800007800003F80001E003FFC0000F800003FC0001E003FFE0001FFF
      FF07FE0001E003FFF0003FFFFF83FF8001E007FFF8007FFFFFC1FFE007F007FF
      FC007FFFFFE1FFF81FF80FFFFE187FFFFFF3FFFE7FFC1FFFFFF87FFFFFFFFFFF
      FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFE00003C07C07FFFFFFE00003E00003C0
      7C07FFFFFFE00003E00003C07C07C00003E00003E00003C07C07C00003E00003
      E00003C07C07C00003E00003E00003C07C07C00003E00003E00003C07C07C000
      03E00003E00003C07C07C00003E00003E00003C06C07C00003E00003E00003FF
      C7FFC00003E00003E00003FF83FFC00003E00003E00003FF01FFC00003E00003
      E00003FFEFFFC00003E00003E00003FFEFFFC00003E00003E00003FFEFFFC000
      03E00003E00003FF01FFC00003E00001E00003FF01FFC00003E00000E00003FF
      01FFC00003E00000E00003FF01FFC00003E00001E00007FF01FFC00003E00007
      E0000FFF01FFE00007E0000FE0001FFF01FFFFFFFFE0001FE0003FFF01FFFFFF
      FFE0003FFFFFFFFF01FFFFFFFFFFFFFFFDE9DCFFFFFFC00001FFFFFFFDE9DCFF
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
  object dsrcInvoiceDetail: TDataSource
    DataSet = dmVidaInvoice.cdsInvoiceDetail
    Left = 144
    Top = 528
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 128
    Top = 440
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 393
    Top = 575
    PixelsPerInch = 96
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
    object cxStyleAqua: TcxStyle
      AssignedValues = [svColor]
      Color = clAqua
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor]
      Color = clBlue
    end
    object cxStyleSilver: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxStyleSpecialColumns: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 569
    Top = 470
    PixelsPerInch = 96
    object cxStyle1Red: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clWhite
    end
  end
  object pmExport: TPopupMenu
    Left = 672
    Top = 397
    object EXPORT1: TMenuItem
      Caption = '***** EXPORT *****'
    end
    object acExportTyp11: TMenuItem
      Caption = 'Excel: paketnrfil'
      object Medkvalitet2: TMenuItem
        Caption = 'Med kvalitet'
        OnClick = Medkvalitet2Click
      end
      object Utankvalitet2: TMenuItem
        Caption = 'Utan kvalitet'
        OnClick = Utankvalitet2Click
      end
    end
    object ExporterapaketnrfilmedCframfrpaketnr1: TMenuItem
      Caption = 'Excel: paketnrfil med "C" framf'#246'r paketnr'
      object Medkvalitet1: TMenuItem
        Caption = 'Med kvalitet'
        OnClick = Medkvalitet1Click
      end
      object Utankvalitet1: TMenuItem
        Caption = 'Utan kvalitet'
        OnClick = Utankvalitet1Click
      end
    end
    object ExporteramedWoodxformat1: TMenuItem
      Action = acExportInvoiceSpecWoodx
    end
    object LenasExport1: TMenuItem
      Action = acLenaExport
    end
    object acLindaExport1: TMenuItem
      Action = acLindaExport
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdFaktura
    PopupMenus = <>
    Left = 360
    Top = 389
  end
  object pmInvoiceRows: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 280
    Top = 521
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 280
    Top = 569
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acAddRow
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = acRemoveRow
      Category = 0
    end
  end
end
