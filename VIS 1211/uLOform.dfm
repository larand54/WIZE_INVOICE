object fLOform: TfLOform
  Left = 236
  Top = 53
  Width = 1027
  Height = 717
  Caption = 'Lastorder'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 49
    Width = 1019
    Height = 154
    ActivePage = tsLORad
    Align = alTop
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    Options = [pcoGradientClientArea, pcoRedrawOnResize]
    Style = 7
    TabOrder = 0
    TabWidth = 100
    OnChange = cxPageControl1Change
    ClientRectBottom = 153
    ClientRectLeft = 1
    ClientRectRight = 1018
    ClientRectTop = 21
    object tsKUND: TcxTabSheet
      Caption = 'KUND'
      ImageIndex = 0
      object Label1: TLabel
        Left = 400
        Top = 16
        Width = 55
        Height = 13
        Caption = 'F'#246'rs.region:'
      end
      object Label2: TLabel
        Left = 8
        Top = 88
        Width = 28
        Height = 13
        Caption = 'Kund:'
      end
      object Label3: TLabel
        Left = 400
        Top = 88
        Width = 66
        Height = 13
        Caption = 'Till lagerst'#228'lle:'
      end
      object Label4: TLabel
        Left = 8
        Top = 16
        Width = 38
        Height = 13
        Caption = 'Ordernr:'
      end
      object Label5: TLabel
        Left = 13
        Top = 120
        Width = 29
        Height = 13
        Caption = 'LO nr:'
        Visible = False
      end
      object Label6: TLabel
        Left = 232
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Status:'
      end
      object Label7: TLabel
        Left = 8
        Top = 40
        Width = 33
        Height = 13
        Caption = 'Period:'
      end
      object Label8: TLabel
        Left = 128
        Top = 40
        Width = 9
        Height = 13
        Caption = 'till'
      end
      object Label41: TLabel
        Left = 86
        Top = 120
        Width = 32
        Height = 13
        Caption = 'Kund#'
        Visible = False
      end
      object Label46: TLabel
        Left = 232
        Top = 40
        Width = 35
        Height = 13
        Caption = 'S'#228'ljare:'
      end
      object Label48: TLabel
        Left = 621
        Top = 16
        Width = 40
        Height = 13
        Caption = 'Skapad:'
      end
      object Label50: TLabel
        Left = 624
        Top = 88
        Width = 39
        Height = 13
        Caption = '&& grupp:'
      end
      object Label51: TLabel
        Left = 400
        Top = 40
        Width = 45
        Height = 13
        Caption = 'Marknad:'
      end
      object Label56: TLabel
        Left = 8
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Leverant'#246'r:'
      end
      object Label57: TLabel
        Left = 400
        Top = 64
        Width = 47
        Height = 13
        Caption = 'Lastst'#228'lle:'
      end
      object eOrderNoText: TcxDBTextEdit
        Left = 80
        Top = 8
        DataBinding.DataField = 'OrderNoText'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Width = 81
      end
      object leSR: TcxDBLookupComboBox
        Left = 472
        Top = 8
        DataBinding.DataField = 'SalesRegionNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.ds_SR
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 2
        Width = 145
      end
      object leKund: TcxDBLookupComboBox
        Left = 80
        Top = 80
        DataBinding.DataField = 'CustomerNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.ds_Verk
        Properties.MaxLength = 0
        Properties.OnInitPopup = leKundPropertiesInitPopup
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 11
        Width = 313
      end
      object eOrderNo: TcxDBTextEdit
        Left = 240
        Top = 112
        DataBinding.DataField = 'OrderNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Enabled = False
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        TabOrder = 16
        Visible = False
        Width = 41
      end
      object lcShipTo: TcxDBLookupComboBox
        Left = 472
        Top = 80
        DataBinding.DataField = 'DefaultShipToInvPointNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PhyInvPointNameNo'
        Properties.ListColumns = <
          item
            FieldName = 'CITYNAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.ds_PhysInvByCityNo
        Properties.MaxLength = 0
        Properties.OnChange = lcShipToPropertiesChange
        Properties.OnCloseUp = lcShipToPropertiesCloseUp
        Properties.OnInitPopup = lcShipToPropertiesInitPopup
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 12
        Width = 145
      end
      object eCustomerNo: TcxDBTextEdit
        Left = 160
        Top = 112
        DataBinding.DataField = 'CustomerNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Enabled = False
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        TabOrder = 15
        Visible = False
        Width = 41
      end
      object eSalesRegionNo: TcxDBTextEdit
        Left = 200
        Top = 112
        DataBinding.DataField = 'SalesRegionNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Enabled = False
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        TabOrder = 17
        Visible = False
        Width = 41
      end
      object eLONr: TcxDBTextEdit
        Left = 45
        Top = 112
        DataBinding.DataField = 'ShippingPlanNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Enabled = False
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 19
        Visible = False
        Width = 41
      end
      object icbStatus: TcxDBImageComboBox
        Left = 272
        Top = 8
        DataBinding.DataField = 'Status'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.Images = dmsConnector.ilStatus
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = 'Cancel'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Progress'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'Complete'
            ImageIndex = 2
            Value = 2
          end>
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 1
        Width = 121
      end
      object eETD: TcxDBTextEdit
        Left = 80
        Top = 32
        DataBinding.DataField = 'Def_StartETDYearWeek'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 4
        Width = 41
      end
      object eETA: TcxDBTextEdit
        Left = 144
        Top = 32
        DataBinding.DataField = 'Def_StartETAYearWeek'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 5
        Width = 41
      end
      object rgFraktBestallsAv: TcxDBRadioGroup
        Left = 832
        Top = 52
        Caption = ' Frakt best'#228'lls av '
        DataBinding.DataField = 'SequenceNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.Items = <
          item
            Caption = 'Leverant'#246'r'
            Value = 0
          end
          item
            Caption = 'Kund'
            Value = 1
          end>
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 14
        Height = 49
        Width = 105
      end
      object eCustNo: TcxDBTextEdit
        Left = 120
        Top = 112
        DataBinding.DataField = 'CustomerNo'
        DataBinding.DataSource = dmcLO.ds_LO
        Enabled = False
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 18
        Visible = False
        Width = 41
      end
      object lcSalesMan: TcxDBLookupComboBox
        Left = 272
        Top = 32
        DataBinding.DataField = 'DestinationNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'UserID'
        Properties.ListColumns = <
          item
            FieldName = 'Namn'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmcLO.ds_Users
        Properties.MaxLength = 0
        Properties.OnInitPopup = lcShipToPropertiesInitPopup
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 6
        Width = 121
      end
      object deCreated: TcxDBDateEdit
        Left = 664
        Top = 8
        DataBinding.DataField = 'DateCreated'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 145
      end
      object lcLagerGrupp: TcxDBLookupComboBox
        Left = 664
        Top = 80
        DataBinding.DataField = 'DefaultLIPNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LIPNO'
        Properties.ListColumns = <
          item
            FieldName = 'LAGERGRUPP'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmcLO.ds_LIP
        Properties.MaxLength = 0
        Properties.OnChange = lcLagerGruppPropertiesChange
        Properties.OnCloseUp = lcLagerGruppPropertiesCloseUp
        Properties.OnInitPopup = lcLagerGruppPropertiesInitPopup
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 13
        OnEnter = lcLagerGruppEnter
        OnExit = lcLagerGruppExit
        Width = 145
      end
      object lcMarket: TcxDBLookupComboBox
        Left = 472
        Top = 32
        DataBinding.DataField = 'MarketRegionNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'MarketRegionNo'
        Properties.ListColumns = <
          item
            FieldName = 'MarketRegionName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.ds_Market
        Properties.MaxLength = 0
        TabOrder = 7
        Width = 145
      end
      object cbFilterOnMarketRegion: TCheckBox
        Left = 664
        Top = 31
        Width = 160
        Height = 17
        Caption = 'Urval p'#229' marknadsregion'
        Checked = True
        State = cbChecked
        TabOrder = 8
        OnClick = cbFilterOnMarketRegionClick
      end
      object lcSupplier: TcxDBLookupComboBox
        Left = 80
        Top = 56
        DataBinding.DataField = 'SupplierNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.ds_Verk
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Properties.OnInitPopup = lcSupplierPropertiesInitPopup
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 9
        Width = 313
      end
      object leLastStalle: TcxDBLookupComboBox
        Left = 472
        Top = 56
        DataBinding.DataField = 'Laststalle'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PhyInvPointNameNo'
        Properties.ListColumns = <
          item
            FieldName = 'CITYNAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.MaxLength = 0
        Properties.OnChange = leLastStallePropertiesChange
        Properties.OnCloseUp = leLastStallePropertiesCloseUp
        Properties.OnInitPopup = leLastStallePropertiesInitPopup
        TabOrder = 10
        OnEnter = leLastStalleEnter
        OnExit = leLastStalleExit
        Width = 145
      end
      object BitBtn1: TBitBtn
        Left = 872
        Top = 106
        Width = 51
        Height = 25
        Action = acNextOrderTab
        Caption = 'N'#228'sta'
        TabOrder = 20
      end
    end
    object tsParametrar: TcxTabSheet
      Caption = 'PARAMETRAR'
      ImageIndex = 1
      object Label9: TLabel
        Left = 24
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Betalvillkor:'
      end
      object Label10: TLabel
        Left = 24
        Top = 40
        Width = 33
        Height = 13
        Caption = 'Valuta:'
      end
      object Label11: TLabel
        Left = 24
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Lev.villkor::'
      end
      object Label12: TLabel
        Left = 248
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Dim format:'
      end
      object Label13: TLabel
        Left = 248
        Top = 40
        Width = 68
        Height = 13
        Caption = 'Length format:'
      end
      object Label43: TLabel
        Left = 248
        Top = 66
        Width = 31
        Height = 13
        Caption = 'Spr'#229'k:'
      end
      object Label52: TLabel
        Left = 560
        Top = 16
        Width = 38
        Height = 13
        Caption = 'Prislista:'
      end
      object lcDefaultPaymentTermsNo: TcxDBLookupComboBox
        Left = 88
        Top = 8
        DataBinding.DataField = 'DefaultPaymentTermsNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PaymentTermsNo'
        Properties.ListColumns = <
          item
            FieldName = 'Description'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.dsPaymentTerm
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 2
        Width = 145
      end
      object leValuta: TcxDBLookupComboBox
        Left = 88
        Top = 32
        DataBinding.DataField = 'DefaultCurrencyNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CurrencyNo'
        Properties.ListColumns = <
          item
            FieldName = 'CurrencyName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.dsCurrency
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 3
        Width = 145
      end
      object leDelTerms: TcxDBLookupComboBox
        Left = 88
        Top = 56
        DataBinding.DataField = 'DefaultDeliveryTermsNo'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'DeliveryTerm_No'
        Properties.ListColumns = <
          item
            FieldName = 'DeliveryTerm'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.dsDelTerms
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 4
        Width = 145
      end
      object leDimFormat: TcxDBLookupComboBox
        Left = 320
        Top = 8
        DataBinding.DataField = 'ProductDisplayFormat'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'SizeFormatNo'
        Properties.ListColumns = <
          item
            FieldName = 'SizeFormat'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsSystem.ds_SizeFormat
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 5
        Width = 145
      end
      object leLengthFormat: TcxDBLookupComboBox
        Left = 320
        Top = 32
        DataBinding.DataField = 'LengthFormat'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LengthFormatNo'
        Properties.ListColumns = <
          item
            FieldName = 'LengthFormat'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsSystem.ds_LengthFormat
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 7
        Width = 145
      end
      object bbChangeDimFormat: TBitBtn
        Left = 466
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Uppdatera'
        TabOrder = 6
        OnClick = bbChangeDimFormatClick
      end
      object bbUppdateraLangd: TBitBtn
        Left = 466
        Top = 30
        Width = 75
        Height = 22
        Caption = 'Uppdatera'
        TabOrder = 8
        OnClick = bbUppdateraLangdClick
      end
      object lcLanguage: TcxDBLookupComboBox
        Left = 320
        Top = 58
        DataBinding.DataField = 'LanguageCode'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LanguageNo'
        Properties.ListColumns = <
          item
            FieldName = 'LanguageName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsSystem.ds_Language
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 9
        Width = 145
      end
      object bbUppdateraSprak: TBitBtn
        Left = 466
        Top = 56
        Width = 75
        Height = 24
        Caption = 'Uppdatera'
        TabOrder = 10
        Visible = False
      end
      object cbVatExempt: TcxDBCheckBox
        Left = 628
        Top = 32
        Caption = 'Skatteupplag'
        DataBinding.DataField = 'VatExempt'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 12
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 560
        Top = 60
        Caption = 'Standardfrakt:'
      end
      object meIntHdrInternKundFrakt: TcxDBMaskEdit
        Left = 632
        Top = 56
        DataBinding.DataField = 'InternKundFrakt'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.MaxLength = 0
        TabOrder = 13
        Width = 57
      end
      object bbNextInParameter: TBitBtn
        Left = 872
        Top = 106
        Width = 51
        Height = 25
        Action = acNextOrderTab
        Caption = 'N'#228'sta'
        TabOrder = 1
      end
      object bbForeg: TBitBtn
        Left = 821
        Top = 106
        Width = 51
        Height = 25
        Action = acPrevOrderTab
        Caption = 'F'#246'reg.'
        TabOrder = 0
      end
      object lcPrislista: TcxDBLookupComboBox
        Left = 632
        Top = 8
        DataBinding.DataField = 'Prislista'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'templateno'
        Properties.ListColumns = <
          item
            FieldName = 'PriceListName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.MaxLength = 0
        TabOrder = 11
        Width = 145
      end
      object cbAutoPkgCode: TcxDBCheckBox
        Left = 632
        Top = 88
        Caption = 'Skapa koder automatiskt'
        DataBinding.DataField = 'AutoPkgCode'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 14
        Width = 169
      end
    end
    object tsTexter: TcxTabSheet
      Caption = 'TEXTER'
      ImageIndex = 2
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'OrderNote'
        DataBinding.DataSource = dmcLO.ds_IntHdr
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Height = 100
        Width = 1017
      end
      object Panel5: TPanel
        Left = 0
        Top = 100
        Width = 1017
        Height = 32
        Align = alBottom
        TabOrder = 1
        object BitBtn4: TBitBtn
          Left = 872
          Top = 5
          Width = 51
          Height = 25
          Action = acNextOrderTab
          Caption = 'N'#228'sta'
          TabOrder = 1
        end
        object BitBtn6: TBitBtn
          Left = 821
          Top = 5
          Width = 51
          Height = 25
          Action = acPrevOrderTab
          Caption = 'F'#246'reg.'
          TabOrder = 0
        end
      end
    end
    object tsLORad: TcxTabSheet
      Caption = 'LASTORDERRAD'
      Color = clBtnFace
      ImageIndex = 3
      ParentColor = False
      object Label14: TLabel
        Left = 8
        Top = 11
        Width = 40
        Height = 13
        Caption = 'Product:'
      end
      object Label15: TLabel
        Left = 485
        Top = 11
        Width = 46
        Height = 13
        Caption = 'Internpris:'
      end
      object Label16: TLabel
        Left = 630
        Top = 11
        Width = 15
        Height = 13
        Caption = 'per'
      end
      object Label17: TLabel
        Left = 485
        Top = 35
        Width = 45
        Height = 13
        Caption = 'Kvantitet:'
      end
      object Label18: TLabel
        Left = 630
        Top = 35
        Width = 15
        Height = 13
        Caption = 'per'
      end
      object Label19: TLabel
        Left = 616
        Top = 59
        Width = 50
        Height = 13
        Caption = 'Styck/pkt:'
      end
      object Label20: TLabel
        Left = 200
        Top = 59
        Width = 33
        Height = 13
        Caption = 'L'#228'ngd:'
      end
      object Label21: TLabel
        Left = 8
        Top = 35
        Width = 40
        Height = 13
        Caption = 'Pkt.kod:'
      end
      object Label22: TLabel
        Left = 8
        Top = 59
        Width = 48
        Height = 13
        Caption = 'Akt.l'#228'ngd:'
      end
      object Label42: TLabel
        Left = 792
        Top = 58
        Width = 25
        Height = 13
        Caption = 'AM3:'
      end
      object Label44: TLabel
        Left = 485
        Top = 58
        Width = 53
        Height = 13
        Caption = 'Med.l'#228'ngd:'
      end
      object Label49: TLabel
        Left = 704
        Top = 83
        Width = 37
        Height = 13
        Caption = 'Skapad'
        Visible = False
      end
      object Label53: TLabel
        Left = 792
        Top = 11
        Width = 35
        Height = 13
        Caption = 'Prislista'
      end
      object Label54: TLabel
        Left = 792
        Top = 35
        Width = 27
        Height = 13
        Caption = 'Frakt:'
      end
      object Label39: TLabel
        Left = 8
        Top = 83
        Width = 46
        Height = 13
        Caption = 'Referens:'
      end
      object eProduct: TcxDBButtonEdit
        Left = 64
        Top = 3
        DataBinding.DataField = 'ProductDescription'
        DataBinding.DataSource = dmcLO.ds_LO
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
            Visible = False
          end>
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        OnEnter = eProductEnter
        Width = 393
      end
      object ePrice: TcxDBTextEdit
        Left = 542
        Top = 3
        DataBinding.DataField = 'Price'
        DataBinding.DataSource = dmcLO.ds_LO
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 7
        Width = 65
      end
      object lcPriceUnit: TcxDBLookupComboBox
        Left = 670
        Top = 3
        DataBinding.DataField = 'PriceUnitNo'
        DataBinding.DataSource = dmcLO.ds_LO
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'TemplateUnitNo'
        Properties.ListColumns = <
          item
            FieldName = 'TemplateUnitName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.dsPriceUnit
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 8
        Width = 107
      end
      object eNoOfUnits: TcxDBTextEdit
        Left = 542
        Top = 27
        DataBinding.DataField = 'NoOfUnits'
        DataBinding.DataSource = dmcLO.ds_LO
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 9
        Width = 65
      end
      object lcVolumeUnit: TcxDBLookupComboBox
        Left = 670
        Top = 27
        DataBinding.DataField = 'VolumeUnitNo'
        DataBinding.DataSource = dmcLO.ds_LO
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VolumeUnit_No'
        Properties.ListColumns = <
          item
            FieldName = 'VolumeUnitName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmsContact.ds_volunit
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 10
        Width = 107
      end
      object ePcsPerPkg: TcxDBTextEdit
        Left = 670
        Top = 51
        DataBinding.DataField = 'PcsPerPkg'
        DataBinding.DataSource = dmcLO.ds_LO
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 12
        Width = 107
      end
      object eLengthDesc: TcxDBTextEdit
        Left = 240
        Top = 51
        DataBinding.DataField = 'LengthDescription'
        DataBinding.DataSource = dmcLO.ds_LO
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 5
        OnEnter = eLengthDescEnter
        Width = 217
      end
      object leProductCode: TcxDBLookupComboBox
        Left = 64
        Top = 27
        DataBinding.DataField = 'PkgCodePPNo'
        DataBinding.DataSource = dmcLO.ds_LO
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PkgCodePPNo'
        Properties.ListColumns = <
          item
            FieldName = 'PackageCodeNo'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.MaxLength = 0
        Properties.ReadOnly = False
        Properties.OnValidate = tvLOPkgCodePropertiesValidate
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 2
        OnEnter = leProductCodeEnter
        Width = 129
      end
      object eAM3: TcxDBTextEdit
        Left = 840
        Top = 50
        DataBinding.DataField = 'ActualM3Net'
        DataBinding.DataSource = dmcLO.ds_LO
        Enabled = False
        Properties.LookupItems.Strings = (
          'Hello'
          'Now')
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 15
        Width = 57
      end
      object lcLength: TcxDBLookupComboBox
        Left = 64
        Top = 51
        DataBinding.DataField = 'ProductLengthNo'
        DataBinding.DataSource = dmcLO.ds_LO
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownWidth = 600
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LNO'
        Properties.ListColumns = <
          item
            Caption = 'ALMM'
            SortOrder = soAscending
            FieldName = 'AMM'
          end
          item
            Caption = 'NLMM'
            FieldName = 'NMM'
          end
          item
            Caption = 'L'#228'ngdgrupp'
            FieldName = 'GroupName'
          end
          item
            FieldName = 'LNO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmcLO.ds_PL
        Properties.MaxLength = 0
        Properties.OnValidate = cxDBLookupComboBox3PropertiesValidate
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 4
        Width = 129
      end
      object eAvgLength: TcxDBTextEdit
        Left = 542
        Top = 51
        DataBinding.DataField = 'MinActualLengthMM'
        DataBinding.DataSource = dmcLO.ds_LO
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 11
        OnEnter = eLengthDescEnter
        Width = 65
      end
      object P: TBitBtn
        Left = 456
        Top = 3
        Width = 20
        Height = 21
        Action = acSearchProduct
        TabOrder = 1
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
          73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
          8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
          9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
          A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
          AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
          BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
          D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
          E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
          F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
          424242424242424242422B39180B42424242424242424242424243443C180B42
          4242424242424242424242444438180B42424242424242424242424244433918
          0A424242424242424242424242444335004201101A114242424242424242453D
          05072F343434291942424242424242221A2D34343437403E0442424242424206
          231C303437404146284242424242421B210F30373A414140310D42424242421F
          20032434373A3A37321342424242421D25030F2D37373737311042424242420D
          2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
          4227312D21252314424242424242424242420E141B1B42424242}
      end
      object deLORowCreated: TcxDBDateEdit
        Left = 752
        Top = 75
        DataBinding.DataField = 'DateCreated'
        DataBinding.DataSource = dmcLO.ds_LO
        Properties.ImmediatePost = True
        Properties.ReadOnly = True
        TabOrder = 16
        Visible = False
        Width = 49
      end
      object lcPrisListaLORow: TcxDBLookupComboBox
        Left = 840
        Top = 3
        DataBinding.DataField = 'PrisLista'
        DataBinding.DataSource = dmcLO.ds_LO
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'templateno'
        Properties.ListColumns = <
          item
            FieldName = 'PriceListName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.MaxLength = 0
        TabOrder = 13
        Width = 145
      end
      object meInternKundFrakt: TcxDBMaskEdit
        Left = 840
        Top = 27
        DataBinding.DataField = 'InternKundFrakt'
        DataBinding.DataSource = dmcLO.ds_LO
        Properties.MaxLength = 0
        TabOrder = 14
        Width = 145
      end
      object Panel4: TPanel
        Left = 0
        Top = 102
        Width = 1017
        Height = 30
        Align = alBottom
        TabOrder = 17
        object Label23: TLabel
          Left = 656
          Top = 9
          Width = 38
          Height = 13
          Caption = 'Akt.dim:'
          Visible = False
        end
        object Label40: TLabel
          Left = 751
          Top = 9
          Width = 13
          Height = 13
          Caption = ' X '
          Visible = False
        end
        object Label47: TLabel
          Left = 813
          Top = 9
          Width = 44
          Height = 13
          Caption = 'Int.l'#228'ngd:'
          Visible = False
        end
        object bbSelectProdinInv: TcxButton
          Left = 277
          Top = 2
          Width = 137
          Height = 25
          Action = acSelectProductByLager
          TabOrder = 2
        end
        object bbSelectProduct: TcxButton
          Left = 140
          Top = 2
          Width = 137
          Height = 25
          Action = acSelectProducts
          TabOrder = 1
        end
        object bbSelectPkgCode: TcxButton
          Left = 3
          Top = 2
          Width = 137
          Height = 25
          Action = acOpenPackageCodeForm
          TabOrder = 0
        end
        object bbCopyRow: TBitBtn
          Left = 414
          Top = 2
          Width = 137
          Height = 25
          Action = acCopyLORow
          Caption = 'Kopiera rad'
          TabOrder = 3
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B000000010000000100008C5A5A009C6B
            63009C6B6B00EFB56B00A57B7300B5847300C68C7B00BD848400B58C8C00FFD6
            A500BDADAD00F7DEBD00D6C6C600F7DEC600FFDEC600FFE7C600EFDECE00F7DE
            CE00F7E7CE00FFE7CE00EFE7D600F7E7D600FFE7D600FFEFD600EFDEDE00EFE7
            DE00F7E7DE00F7EFDE00FFEFDE00FFF7DE00FFF7E700FFF7EF00FFFFEF00FFFF
            F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00222222222208
            000000000000000000222222222222081E1B1B1B1B1B1B120022222222222208
            1B110D0D0D0D101000222222222222081E090909090909100022220800000008
            1F0D0D0D0D0B1210012222081E1B1B081F120D0D0D0D1510022222081B110D08
            2109090909090914042222081E0909082116161512161E18042222081F0D0D08
            2323232121180C0A052222081F120D0823232321210808080822220821090908
            2323232323080306222222082116160808080808080807222222220823232321
            21180C0A05222222222222082323232121080808082222222222220823232323
            2308030622222222222222080808080808080722222222222222}
        end
        object bbDeleteRow: TBitBtn
          Left = 550
          Top = 2
          Width = 137
          Height = 25
          Action = acDeleteLORow
          Caption = 'Ta bort rad'
          TabOrder = 4
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B000000010000000100000031DE000031
            E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
            0404040404040404000004000004040404040404040404000004040000000404
            0404040404040000040404000000000404040404040000040404040402000000
            0404040400000404040404040404000000040000000404040404040404040400
            0101010004040404040404040404040401010204040404040404040404040400
            0201020304040404040404040404030201040403030404040404040404050203
            0404040405030404040404040303050404040404040303040404040303030404
            0404040404040403040403030304040404040404040404040404030304040404
            0404040404040404040404040404040404040404040404040404}
        end
        object bbPrevOrderRadFlik: TBitBtn
          Left = 872
          Top = 5
          Width = 51
          Height = 25
          Action = acPrevOrderTab
          Caption = 'F'#246'reg.'
          TabOrder = 8
        end
        object lcAT: TcxDBLookupComboBox
          Left = 704
          Top = 1
          DataBinding.DataField = 'ProductGroupNo'
          DataBinding.DataSource = dmcLO.ds_LO
          Enabled = False
          Properties.KeyFieldNames = 'ProductGroupNo'
          Properties.ListColumns = <
            item
              FieldName = 'ActualThicknessMM'
            end>
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfFlat
          Style.ButtonTransparency = ebtHideInactive
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 9
          Visible = False
          Width = 49
        end
        object lcAW: TcxDBLookupComboBox
          Left = 763
          Top = 1
          DataBinding.DataField = 'ProductGroupNo'
          DataBinding.DataSource = dmcLO.ds_LO
          Enabled = False
          Properties.KeyFieldNames = 'ProductGroupNo'
          Properties.ListColumns = <
            item
              FieldName = 'ActualWidthMM'
            end>
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfFlat
          Style.ButtonTransparency = ebtHideInactive
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 10
          Visible = False
          Width = 46
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 843
          Top = 1
          DataBinding.DataField = 'LengthTyp'
          DataBinding.DataSource = dmcLO.ds_LO
          Enabled = False
          Style.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 11
          Visible = False
          OnEnter = eLengthDescEnter
          Width = 49
        end
        object bGrupperingsruta: TcxButton
          Left = 727
          Top = 2
          Width = 26
          Height = 25
          Action = acGroupByBox
          TabOrder = 5
          Glyph.Data = {
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
        end
        object bGruppsummering: TcxButton
          Left = 753
          Top = 2
          Width = 26
          Height = 25
          Action = acGroupSummary
          TabOrder = 6
          Glyph.Data = {
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
        end
        object bbFaltvaljare: TcxButton
          Left = 779
          Top = 2
          Width = 26
          Height = 25
          Action = acChangeLayout
          TabOrder = 7
          Glyph.Data = {
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
        end
      end
      object bbNewRow: TBitBtn
        Left = 194
        Top = 26
        Width = 21
        Height = 22
        Action = acNewLORows
        TabOrder = 3
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000E30E0000E30E0000000100000001000031319C003131
          A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
          E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
          FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
          FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
          1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
          0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
          0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
          0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
          1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
          0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
          111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
          0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
      end
      object eReference: TcxDBTextEdit
        Left = 64
        Top = 75
        DataBinding.DataField = 'Reference'
        DataBinding.DataSource = dmcLO.ds_LO
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 6
        OnEnter = eLengthDescEnter
        Width = 129
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 203
    Width = 1019
    Height = 487
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object grdINTLO: TcxGrid
      Left = 0
      Top = 0
      Width = 1019
      Height = 487
      Align = alClient
      BevelOuter = bvNone
      BevelKind = bkSoft
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      object tvINTLO: TcxGridDBTableView
        PopupMenu = pmLOGrd
        NavigatorButtons.ConfirmDelete = False
        OnEditing = tvINTLOEditing
        OnEditKeyDown = tvINTLOEditKeyDown
        DataController.DataSource = dmcLO.ds_LO
        DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'ActualM3Net'
            Column = tvINTLOActualM3Net
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'NoOfUnits'
            Column = tvINTLONoOfUnits
          end
          item
            Format = '###'
            Kind = skCount
            FieldName = 'SupplierShipPlanObjectNo'
            Column = tvINTLOProductDescription
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'LEV'
            Column = tvINTLOLEV
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'REST'
            Column = tvINTLOREST
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvINTLOPkgCode: TcxGridDBColumn
          DataBinding.FieldName = 'PKTKOD'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PackageTypeNo'
          Properties.ListColumns = <
            item
              FieldName = 'PackageCodeNo'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ReadOnly = True
          Properties.OnValidate = tvLOPkgCodePropertiesValidate
        end
        object tvINTLOPackageCode: TcxGridDBColumn
          DataBinding.FieldName = 'PackageCode'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.ListColumns = <>
          Properties.ListOptions.ShowHeader = False
          Visible = False
          Width = 75
        end
        object tvINTLOVERK: TcxGridDBColumn
          DataBinding.FieldName = 'VERK'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 250
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 122
        end
        object tvINTLOShippingPlanStatus: TcxGridDBColumn
          DataBinding.FieldName = 'ShippingPlanStatus'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'PRELIMIN'#196'R'
              ImageIndex = 5
              Value = 0
            end
            item
              Description = 'NY'
              ImageIndex = 3
              Value = 1
            end
            item
              Description = 'AVSLAGEN'
              ImageIndex = 0
              Value = 2
            end
            item
              Description = 'ACCEPTERAD'
              ImageIndex = 1
              Value = 3
            end
            item
              Description = 'AVSLUTAD'
              ImageIndex = 2
              Value = 4
            end
            item
              Description = 'V'#196'NTA'
              ImageIndex = 4
              Value = 5
            end
            item
              Description = 'PROD. KLAR'
              ImageIndex = 6
              Value = 6
            end
            item
              Description = 'ANNULERAD'
              ImageIndex = 7
              Value = 7
            end
            item
              Description = 'ANUL.BEKR'#196'FTAD'
              ImageIndex = 8
              Value = 8
            end>
          Width = 114
        end
        object tvINTLOProductDescription: TcxGridDBColumn
          DataBinding.FieldName = 'ProductDescription'
          PropertiesClassName = 'TcxMaskEditProperties'
          Width = 201
        end
        object tvINTLOLengthDescription: TcxGridDBColumn
          DataBinding.FieldName = 'LengthDescription'
          PropertiesClassName = 'TcxMaskEditProperties'
          Width = 151
        end
        object tvINTLOLengths: TcxGridDBColumn
          Caption = 'AKT.L'#196'NGD'
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 550
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'LNO'
          Properties.ListColumns = <
            item
              Caption = 'ALMM'
              FieldName = 'AMM'
            end
            item
              Caption = 'NLMM'
              FieldName = 'NMM'
            end
            item
              FieldName = 'FOT'
            end
            item
              FieldName = 'TUM'
            end
            item
              Caption = 'L'#228'ngdgrupp'
              FieldName = 'GroupName'
            end
            item
              FieldName = 'LNO'
            end>
          Properties.ListSource = dmcLO.ds_PL
          Properties.OnValidate = tvINTLODBColumn2PropertiesValidate
        end
        object tvINTLOLASTSTALLE: TcxGridDBColumn
          DataBinding.FieldName = 'LASTSTALLE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PhyInvPointNameNo'
          Properties.ListColumns = <
            item
              FieldName = 'CITYNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.OnCloseUp = tvINTLOLASTSTALLEPropertiesCloseUp
          Properties.OnInitPopup = tvINTLOLASTSTALLEPropertiesInitPopup
          Width = 131
        end
        object tvINTLOLEVERERA_TILL: TcxGridDBColumn
          DataBinding.FieldName = 'LEVERERA_TILL'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PhyInvPointNameNo'
          Properties.ListColumns = <
            item
              FieldName = 'CITYNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 135
        end
        object tvINTLOLengthTyp: TcxGridDBColumn
          DataBinding.FieldName = 'LengthTyp'
          PropertiesClassName = 'TcxMaskEditProperties'
        end
        object tvINTLONoOfUnits: TcxGridDBColumn
          Caption = 'KVANTITET'
          DataBinding.FieldName = 'NoOfUnits'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Filtering = False
        end
        object tvINTLOActualM3Net: TcxGridDBColumn
          Caption = 'AM3'
          DataBinding.FieldName = 'ActualM3Net'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Filtering = False
        end
        object tvINTLOStartETDYearWeek: TcxGridDBColumn
          Caption = 'FOM VECKA'
          DataBinding.FieldName = 'StartETDYearWeek'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Filtering = False
        end
        object tvINTLOEndETDYearWeek: TcxGridDBColumn
          Caption = 'TOM VECKA'
          DataBinding.FieldName = 'EndETDYearWeek'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Filtering = False
        end
        object tvINTLOPrice: TcxGridDBColumn
          Caption = 'Internpris'
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
          Styles.OnGetContentStyle = tvINTLOPriceStylesGetContentStyle
        end
        object tvINTLOCustomerPrice: TcxGridDBColumn
          Caption = 'old price'
          DataBinding.FieldName = 'CustomerPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          Options.Filtering = False
          Width = 105
        end
        object tvINTLOMinActualLengthMM: TcxGridDBColumn
          Caption = 'MED.L'#196'NGD'
          DataBinding.FieldName = 'MinActualLengthMM'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Filtering = False
        end
        object tvINTLOPcsPerPkg: TcxGridDBColumn
          Caption = 'PPP'
          DataBinding.FieldName = 'PcsPerPkg'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Filtering = False
        end
        object tvINTLOLEV: TcxGridDBColumn
          DataBinding.FieldName = 'LEV'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Filtering = False
        end
        object tvINTLOREST: TcxGridDBColumn
          DataBinding.FieldName = 'REST'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Filtering = False
        end
        object tvINTLOPrisLista: TcxGridDBColumn
          DataBinding.FieldName = 'PrisLista'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'templateno'
          Properties.ListColumns = <
            item
              FieldName = 'PriceListName'
            end>
          Properties.ListOptions.ShowHeader = False
          Styles.OnGetContentStyle = tvINTLOPriceStylesGetContentStyle
          Width = 117
        end
        object tvINTLOInternKundFrakt: TcxGridDBColumn
          DataBinding.FieldName = 'InternKundFrakt'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00 kr;-,0.00 kr'
          Options.Filtering = False
        end
        object tvINTLOSupplierShipPlanObjectNo: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierShipPlanObjectNo'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object tvINTLOProdInstructNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProdInstructNo'
          Visible = False
          VisibleForCustomization = False
        end
        object tvINTLOPkgCodePPNo: TcxGridDBColumn
          DataBinding.FieldName = 'PkgCodePPNo'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object tvINTLOPackageWidth: TcxGridDBColumn
          DataBinding.FieldName = 'PackageWidth'
        end
        object tvINTLOPackageHeight: TcxGridDBColumn
          DataBinding.FieldName = 'PackageHeight'
        end
      end
      object glLO: TcxGridLevel
        GridView = tvINTLO
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1019
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 619
      Height = 49
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 619
        Height = 44
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel6: TPanel
      Left = 619
      Top = 0
      Width = 328
      Height = 49
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Edit1: TEdit
        Left = 1
        Top = 3
        Width = 4
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clMaroon
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object Panel7: TPanel
      Left = 947
      Top = 0
      Width = 72
      Height = 49
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object dxBarDockControl3: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 72
        Height = 44
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        BorderStyle = bbsNone
        Caption = 'Custom 1'
        DockControl = dxBarDockControl2
        DockedDockControl = dxBarDockControl2
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 276
        FloatTop = 216
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarLargeButton1
            Visible = True
          end
          item
            Item = lbSearchLO
            Visible = True
          end
          item
            Item = lbNewIntHdr
            Visible = True
          end
          item
            Item = lbCancelUpdates
            Visible = True
          end
          item
            Item = lbCopyLO
            Visible = True
          end
          item
            Item = lbDeleteALL_LO
            Visible = True
          end
          item
            Item = lbPrint
            Visible = True
          end
          item
            Item = dxBarLargeButton2
            Visible = True
          end>
        Name = 'Custom 1'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        BorderStyle = bbsNone
        Caption = 'Custom 2'
        DockControl = dxBarDockControl3
        DockedDockControl = dxBarDockControl3
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 404
        FloatTop = 232
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = lbClose
            Visible = True
          end>
        Name = 'Custom 2'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'Default'
      'LOGRD'
      'Print')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    LargeImages = Images2424
    PopupMenuLinks = <
      item
        Control = grdINTLO
        PopupMenu = pmLOGrd
      end>
    UseSystemFont = True
    Left = 136
    Top = 200
    DockControlHeights = (
      0
      0
      0
      0)
    object lbExit: TdxBarLargeButton
      Caption = 'St'#228'ng'
      Category = 0
      Enabled = False
      Hint = 'Close'
      Visible = ivAlways
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acSpara
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acChangeLayout
      Category = 1
    end
    object lbNewIntHdr: TdxBarLargeButton
      Action = acNewLOSet
      Category = 0
    end
    object lbCancelUpdates: TdxBarLargeButton
      Action = acAngraAllt
      Category = 0
    end
    object lbPrint: TdxBarLargeButton
      Action = acPrintmeny
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pmPrint
    end
    object dxBarButton2: TdxBarButton
      Action = acPrintPreviewLO
      Category = 2
    end
    object lbClose: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbSearchLO: TdxBarLargeButton
      Action = acSearchLO
      Category = 0
    end
    object lbCopyLO: TdxBarLargeButton
      Action = acCopyLO
      Category = 0
    end
    object lbDeleteALL_LO: TdxBarLargeButton
      Action = acDeleteALL_LO
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = acShowFooter
      Category = 1
    end
    object dxBarButton4: TdxBarButton
      Action = acPrintLO
      Category = 2
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acSetPreliminaryStatusToNew
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = acPrintLOKontroll
      Category = 2
    end
    object dxBarButton6: TdxBarButton
      Action = acLOLengths
      Category = 1
    end
  end
  object ActionList1: TActionList
    Images = Images2424
    Left = 232
    Top = 259
    object DeleteLOrow: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Ta bort rad'
      DataSource = dmcLO.ds_LO
    end
    object acNewPIrecord: TAction
      Caption = 'Ny'
      OnExecute = acNewPIrecordExecute
      OnUpdate = acNewPIrecordUpdate
    end
    object acAngraAllt: TAction
      Caption = #197'ngra F4'
      ImageIndex = 9
      ShortCut = 115
      OnExecute = acAngraAlltExecute
      OnUpdate = acAngraAlltUpdate
    end
    object acSpara: TAction
      Caption = 'Spara F3'
      ImageIndex = 6
      ShortCut = 114
      OnExecute = acSparaExecute
      OnUpdate = acSparaUpdate
    end
    object acPrintPreviewLO: TAction
      Caption = 'F'#246'rhandsgranska LO'
      OnExecute = acPrintPreviewLOExecute
    end
    object acNewLOSet: TAction
      Category = 'Dataset'
      Caption = 'Ny F2'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acNewLOSetExecute
      OnUpdate = acNewLOSetUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 5
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acChangeLayout: TAction
      Hint = 'F'#228'ltv'#228'ljare'
      OnExecute = acChangeLayoutExecute
    end
    object acSearchLO: TAction
      Caption = 'S'#246'k F7'
      ImageIndex = 3
      ShortCut = 118
      OnExecute = acSearchLOExecute
    end
    object acCopyLO: TAction
      Caption = 'Kopiera'
      ImageIndex = 12
      OnExecute = acCopyLOExecute
      OnUpdate = acCopyLOUpdate
    end
    object acDeleteALL_LO: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 2
      ShortCut = 116
      OnExecute = acDeleteALL_LOExecute
    end
    object acShowFooter: TAction
      Caption = 'Visa totaler'
      OnExecute = acShowFooterExecute
    end
    object acCopyLORow: TAction
      Caption = 'Kopiera rad'
      OnExecute = acCopyLORowExecute
    end
    object acDeleteLORow: TAction
      Caption = 'Ta bort rad'
      OnExecute = acDeleteLORowExecute
      OnUpdate = acDeleteLORowUpdate
    end
    object acOpenPackageCodeForm: TAction
      Caption = 'V'#228'lj paketkoder'
      OnExecute = acOpenPackageCodeFormExecute
    end
    object acPrintLO: TAction
      Caption = 'Skriv ut LO'
      OnExecute = acPrintLOExecute
    end
    object acSetPreliminaryStatusToNew: TAction
      Caption = #196'ndra status Prelimin'#228'r till Ny'
      ImageIndex = 19
      OnExecute = acSetPreliminaryStatusToNewExecute
    end
    object acPrintLOKontroll: TAction
      Caption = 'LO kontroll'
      OnExecute = acPrintLOKontrollExecute
    end
    object acSelectProducts: TAction
      Caption = 'V'#228'lj produkter'
      OnExecute = acSelectProductsExecute
    end
    object acSelectProductByLager: TAction
      Caption = 'V'#228'lj produkter i lager'
      OnExecute = acSelectProductByLagerExecute
    end
    object acNextOrderTab: TAction
      Caption = 'N'#228'sta'
      OnExecute = acNextOrderTabExecute
    end
    object acPrevOrderTab: TAction
      Caption = 'F'#246'reg.'
      OnExecute = acPrevOrderTabExecute
    end
    object acSearchProduct: TAction
      OnExecute = acSearchProductExecute
      OnUpdate = acSearchProductUpdate
    end
    object acGroupByBox: TAction
      Hint = 'Grupperingsrutan'
      OnExecute = acGroupByBoxExecute
    end
    object acGroupSummary: TAction
      OnExecute = acGroupSummaryExecute
    end
    object acCopyPI: TAction
      Caption = 'Spara till markerade rader'
      OnExecute = acCopyPIExecute
    end
    object acNewLORows: TAction
      Category = 'Dataset'
      OnExecute = acNewLORowsExecute
    end
    object acAddLayout: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddLayoutExecute
    end
    object acRemoveLayout: TAction
      Caption = 'Ta bort'
      OnExecute = acRemoveLayoutExecute
      OnUpdate = acRemoveLayoutUpdate
    end
    object acLOLengths: TAction
      Caption = 'LO l'#228'ngder'
      OnExecute = acLOLengthsExecute
    end
    object acGetStandardLayout: TAction
      Caption = 'Standard layout'
      OnExecute = acGetStandardLayoutExecute
    end
    object acPrintmeny: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 8
      ShortCut = 119
      OnExecute = acPrintmenyExecute
    end
  end
  object pmLOGrd: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton6
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton3
        Visible = True
      end>
    UseOwnFont = False
    Left = 232
    Top = 223
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        Item = dxBarButton4
        Visible = True
      end
      item
        Item = dxBarButton5
        Visible = True
      end>
    UseOwnFont = False
    Left = 136
    Top = 235
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpeg)|*.jpeg|JPEG Image File (*.jpg)|*.jpg'
    Left = 664
    Top = 426
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = True
    Left = 296
    Top = 243
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 168
    Top = 199
    PixelsPerInch = 96
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clWhite
    end
    object ssOrderRow: TcxGridTableViewStyleSheet
      Caption = 'OrderRow'
      BuiltIn = True
    end
    object ssAvropRow: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    object ssLO: TcxGridTableViewStyleSheet
      Caption = 'LO'
      BuiltIn = True
    end
    object ssELO: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object Images2424: TImageList
    Height = 24
    Width = 24
    Left = 384
    Top = 176
    Bitmap = {
      494C010114001800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000087BAD00087BAD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD00087BAD000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A542080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000218CB50063C6E70031A5CE00087BAD000000000000000000000000000000
      000000000000000000000000000000000000107BAD0021ADD60029BDE700107B
      AD00000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C0000000000000000000000000000000000000000008C8C8C006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800B5520000BD5A0000A54208009C390800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001884B50084DEF70073EFFF0042B5D600087BAD0000000000000000000000
      00000000000000000000000000001084B50039C6E700FFFFFF0031C6EF00087B
      AD00000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B000073F7000073F7000073
      F7000073F7000073F700FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      940000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F7006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5390800BD5A0000D66B0000BD5A0000A5420800A54208000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087BAD0052B5D6006BE7FF0073E7FF0042BDDE00087BAD00000000000000
      000000000000000000001884B5004ACEEF00FFFFFF0042E7FF00189CC600087B
      AD00000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF000073F70010F7FF0010F7
      FF0010F7FF000073F700FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      940000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800A5420800C65A0000D66B0000BD5A0000A5420800A542
      0800000000000000000000000000000000000000000000000000000000000000
      000000000000087BAD0073DEF7005AE7FF007BEFFF0052C6E700087BAD000000
      000000000000218CB5006BDEF700FFFFFF0042E7FF0031C6EF00107BAD000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF000073F70010F7FF0010F7
      FF0010F7FF000073F700FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      940000000000000000000000000000000000000000008C8C8C008C8C8C00527B
      C6008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C390800A5420800C6630000CE6B0000B55200009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      000000000000087BAD0063C6E70052E7FF0063E7FF007BEFFF0063CEE7001084
      B500188CBD0073DEF700FFFFFF005AE7FF004AE7FF0021ADD600087BAD000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF000073F70010F7FF0010F7
      FF0010F7FF000073F700FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      940000000000000000000000000000000000000000008C8C8C00E7E7E700317B
      EF00527BC600296BC600F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F7006B6B6B0000000000A54208009C3908009C3908009C39
      08009C3908009C3908009C3908009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000009C390800AD4A0800CE630000CE6B0000AD4A
      08009C3908009C39080000000000000000000000000000000000000000000000
      00000000000000000000399CC60063E7FF004ADEFF0063E7FF0084EFFF0073DE
      F7007BE7F700FFFFFF007BEFFF006BE7FF0052DEFF00108CB500000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00FFB56B00FFB56B00FFB56B000073F7000073F7000073
      F7000073F7000073F700FFB56B00FFB56B00FFB56B00F7A55A00FFFFFF009494
      940000000000000000000000000000000000000000008C8C8C00E7E7E700397B
      E700007BFF000073F700527BC600FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7006B6B6B0000000000A5420800B55A1000B55A1000B552
      0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800B54A0000AD4A
      0800A5420800A542080000000000000000009C390800AD4A0800CE6B0000C663
      0000A54208009C39080000000000000000000000000000000000000000000000
      00000000000000000000107BAD0063CEE70042DEFF004ADEFF0063E7FF0084EF
      FF0094EFFF009CEFFF008CEFFF007BEFFF004AC6E700087BAD00000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00FFFFFF000073F70010F7FF0010F7
      FF0010F7FF000073F700FFFFFF00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      940000000000000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C00009CFF00008CFF00008CFF00527BC6008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B0000000000AD4A1000EF943100E78C2900DE7B
      1000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D66B
      0000B55208009C3908000000000000000000000000009C390800B5520800CE6B
      0000BD5A00009C3908009C390800000000000000000000000000000000000000
      0000000000000000000000000000087BAD004ADEFF0039DEFF0052DEFF0063E7
      FF007BEFFF0094EFFF009CEFFF0084EFFF00087BAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00FFFFFF00FFFFFF00FFFFFF000073F70010F7FF0010F7
      FF0010F7FF000073F700FFFFFF00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      9C0000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFF7EF0000B5FF00008CFF000094FF00527BC600527BC6008C8C8C00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF008C8C8C00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF006B6B6B0000000000AD4A1000F7A54200F7A53900E78C
      2900DE841800CE630800B5520000B5520000B5520000B5520000B5520000B552
      0800A5420800A5420800000000000000000000000000000000009C390800BD5A
      0000CE6B0000AD4A08009C390800000000000000000000000000000000000000
      000000000000087BAD001084B50021B5DE0021D6FF0029D6FF0042DEFF0052DE
      FF006BE7FF0084EFFF0094EFFF0094EFFF0042ADCE00087BAD00000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500FFFFFF00F7A55A00FFFFFF00FFFFFF00FFFFFF000073F70010F7FF0010F7
      FF0010F7FF000073F700FFFFFF00FFFFFF00FFFFFF00F7A55A00FFFFFF00A5A5
      A50000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFEFD600FFEFD60000B5FF0008C6FF00009CFF00009CFF00527BC600FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B0000000000AD4A1000F7AD4A00FFAD4A00E794
      3900EF943100DE7B1800A54208009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000BD5A00009C3908009C3908000000000000000000000000000000
      00000073AD002994C60052CEEF0042DEFF0021D6FF0018CEFF0029D6FF0042DE
      FF0052DEFF006BE7FF0084EFFF009CEFFF009CEFFF0063C6E700188CB5000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100EF9C2100EF9C2100EF9C21000073F7000073F7000073
      F7000073F7000073F700EF9C2100EF9C2100EF9C2100EF9C2100F7F7F700A5A5
      A50000000000000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C0000B5FF0008BDFF0000ADFF00009CFF00527B
      C6008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B0000000000AD4A1000F7A54200FFB55200C66B
      2100DE8C3100F79C3100D6731800A54208009C39080000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800CE630000C6630000A54208009C3908000000000000000000087BAD001884
      B50063BDDE008CE7FF0073E7FF0052DEFF0039DEFF0021D6FF0018D6FF0029D6
      FF0042DEFF005AE7FF006BE7FF0084EFFF009CEFFF009CF7FF007BE7F70031A5
      CE00087BAD00000000000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100FFFFFF00FFFFFF00FFFFFF000073F70010F7FF0010F7
      FF0010F7FF000073F700FFFFFF00FFFFFF00FFFFFF00EF9C2100F7F7F700A5A5
      A50000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00527BC600527BC600527BC60000C6FF0008FFFF0031F7FF0010BDFF0000AD
      FF00527BC600527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B0000000000AD4A1000F7A54200FFBD5200BD5A
      1800AD4A1000F7A54200F7A53900CE731800A53908009C390800000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C39080000000000087BAD0042A5C600ADE7
      F700CEFFFF00ADF7FF008CE7FF006BE7FF0052DEFF0039DEFF0021D6FF0018D6
      FF0029D6FF0042DEFF005AE7FF0073E7FF008CE7FF009CEFFF0094EFFF0084EF
      FF0052C6E700087BAD000000000000000000000000000000000000000000ADAD
      AD00EFEFEF00EF9C2100EFEFEF00EFEFEF00EFEFEF000073F70010F7FF0010F7
      FF0010F7FF000073F700EFEFEF00EFEFEF00EFEFEF00EF9C2100EFEFEF00ADAD
      AD0000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C0029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FFFF004AEFFF0018CE
      FF0000A5FF00527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B0000000000AD4A1000F7A54200FFBD5200BD63
      180094290000BD631800F7AD4A00F7A53900CE731800A54208009C3908000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C390800107BAD008CCEE700DEFFFF00DEFF
      FF00D6FFFF00CEFFFF00B5F7FF009CEFFF0084EFFF0063E7FF0039DEFF0018D6
      FF0018D6FF0031DEFF004ADEFF0063E7FF0073E7FF0094EFFF009CEFFF008CEF
      FF0084EFFF0063E7FF00087BAD0000000000000000000000000000000000ADAD
      AD00E7E7E700EF9C2100E7E7E700E7E7E700E7E7E7000073F70010F7FF0010F7
      FF0010F7FF000073F700E7E7E700E7E7E700E7E7E700EF9C2100E7E7E700ADAD
      AD0000000000000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C0039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DEFF0000FFFF0000FF
      FF0039EFFF0008C6FF00527BC6008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B0000000000AD4A1000F7A54200FFB55200BD63
      18009C3900009C390000C66B2100FFAD4A00F7A53900D67B2100A54208009C39
      08000000000000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000C6630000A54208009C39080000000000087BAD00087BAD00087B
      AD00087BAD00087BAD00087BAD00087BAD00087BAD0073BDDE0073E7FF0029D6
      FF0018D6FF0018D6FF0021ADD600087BAD00087BAD00087BAD00087BAD00087B
      AD00087BAD00087BAD000000000000000000000000000000000000000000ADAD
      AD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C21000073F7000073F7000073
      F7000073F7000073F700EF9C2100EF9C2100EF9C2100EF9C2100E7E7E700ADAD
      AD0000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFEFD60008C6FF0039E7FF004AEFFF0042F7FF0018FFFF0000FFFF0000FF
      FF0008FFFF0021FFFF00527BC600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B0000000000AD4A1000F7A54200FFB55200BD63
      18009C390000000000009C390000C6632100F7AD4A00FFAD4200DE842100AD4A
      08009C39080000000000000000000000000000000000A54208009C390800BD5A
      0000CE6B0000BD5A00009C390800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD008CE7FF004ADE
      FF0031DEFF0018CEFF000884B500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADB5
      B50000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFEFD600FFEFD600FFEFD60031D6FF0008F7FF0000FFFF0000F7FF0000D6
      FF0000B5FF00527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B0000000000AD4A1000F7A54200FFB55200BD63
      18009C39000000000000000000009C310000BD5A1800F7A54200FFAD4200E78C
      2900B55210009C3908009C3908009C3908009C3908009C390800B5520000CE6B
      0000CE6B0000AD4208009C390800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD009CE7FF0063E7
      FF004ADEFF0029CEF700087BAD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B5000000000000000000000000000000000000000000EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C210031D6FF0000F7FF0000EF
      FF0000ADFF0000A5FF00527BC600EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C210000000000AD4A1000F7A54200FFB55200BD63
      18009C3900000000000000000000000000009C390000AD4A1000E7943900FFAD
      4200F79C3100CE731800B55A1000AD4A0800AD4A0800BD5A0000CE6B0000CE6B
      0000B55208009C39080000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD009CDEF70084EF
      FF0063E7FF0039C6E700087BAD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B5000000000000000000000000000000000000000000EF9C2100E7A56300EF9C
      2100E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300EF9C210031D6
      FF0042DEFF0010D6FF005AA5FF00527BC600EF9C2100E7A56300E7A56300E7A5
      6300E7A56300E7A56300EF9C210000000000AD4A1000F7AD4A00FFBD5200BD63
      18009C390000000000000000000000000000000000009C3900009C390800C66B
      2100E7943900F79C3100EF942900DE7B1000D6730000CE6B0000C65A0000AD4A
      08009C3908000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD009CD6E7009CEF
      FF007BEFFF0039B5DE00087BAD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B5000000000000000000000000000000000000000000EF9C2100FFDEB500EF9C
      2100FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500EF9C2100FFDE
      B500FFDEB50031D6FF0052A5FF00527BC600EF9C2100FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500EF9C210000000000A5420800D6842900E7943900AD4A
      10009C39080000000000000000000000000000000000000000009C3908009C39
      0000A5420800B55A1000C6631800BD631800B5520800A5420800A54208009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD00087BAD00C6F7
      FF0094EFFF00087BAD00087BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C210000000000000000009C3908009C3908009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00009C3908009C3908009C3908009C3908009C3908009C390800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087BAD00DEFF
      FF00ADF7FF00087BAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087BAD00F7FF
      FF00C6F7FF00087BAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087BAD009CCE
      E70073BDDE00087BAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000087B
      AD00087BAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7EFD600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00EFE7
      D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDED600F7EFE700EFE7
      DE00EFE7DE00EFE7D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700F7DE
      C600FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00F7DE
      BD00EFE7D600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600BD6B2900B55A1800F7DEBD00BD6B
      2900B55A1800E7BD8C00EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700FFE7
      CE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
      C600EFE7D600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7E7D600F7EFDE00F7E7D600F7E7CE00CE8C5A00B55A1800DEAD7B00CE8C
      5200B55A1800DEA57300EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E7000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300B5847300EFE7DE00FFF7EF00F7EF
      DE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600EFE7D600EFE7
      D600F7E7D600EFDECE009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE00DEB58C00B55A1800CE8C5200F7DE
      BD00B55A1800CE844A00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300EFDECE00F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600BD8C8400EFE7DE00FFF7EF00F7DE
      BD00FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      BD00F7E7DE00EFDECE009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00CE946300CE946300B55A1800CE946300CE94
      6300B55A1800CE946300CE946300CE946300CE946300EFCE9C00EFCE9C00EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300EFDECE00F7EF
      DE00EFE7D600EFE7D600EFE7D600EFE7D600BD8C8400EFE7DE00FFF7F700F7EF
      E700F7EFDE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7DE00EFDECE009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B584
      8400F7EFE700FFF7EF00F7EFE700B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800EFCEA500EFCE9C00EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E700000000000000000042E7E70042E7E70042E7E70000000000000000000000
      00000000000000000000000000000000000000000000A57B7300EFDED600F7EF
      E700EFE7DE00EFE7DE00EFE7D600EFE7D600CE9C8400EFE7E700FFFFF700F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600FFE7CE00F7DEC600F7E7
      D600F7EFDE00EFDED600A57B7300000000000000000000000000000000000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00CE8C6300B55A1800F7DE
      BD00CE8C5A00B55A1800DEAD7B00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7E7000000
      00000000000000000000000000000000000000000000B5847300EFDED600F7EF
      E700F7DEC600FFD6AD00FFD6AD00FFD6AD00CE9C8400F7EFE700FFFFFF00FFDE
      C600FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      C600F7EFE700EFE7D600A57B73000000000000000000000000000021A5000021
      D6000021D6000021D6000021D6000021D6000021D6000021D6000021D6000021
      D6000021D6000021D6000021D6000021D6000021D6000021D6000021D6000021
      D6000021D6000021D6000021A50000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700DEB59400B55A1800CE8C
      5A00F7DEBD00B55A1800CE8C5200F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000000000000000
      000000000000000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000042E7E70042E7E70042E7
      E7000000000000000000000000000000000000000000B5847300EFDED600F7EF
      E700FFE7CE00F7DEBD00F7DEBD00F7DEBD00DEAD8400F7EFEF00FFFFFF00FFF7
      F700FFF7EF00FFF7EF00F7EFEF00F7EFE700F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700DED6CE00A57B73000000000000000000000000000021A5000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFF7F700CE946300CE946300CE946300B55A1800CE94
      6300CE946300B55A1800CE946300CE946300CE946300F7D6B500F7D6AD00F7D6
      AD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70000000000000000000000000000000000B5847300EFE7DE00FFF7
      EF00F7EFDE00F7E7DE00F7E7DE00F7E7D600DEAD8400F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7F700EFE7
      E700D6D6D600BDBDBD00B58473000000000000000000000000000021A500B5C6
      FF00B5C6FF009CBDFF009CBDFF009CBDFF009CB5FF009CB5FF00739CFF00739C
      FF00638CF700638CF700638CF7005284F7005284F7005284F700526BF700526B
      F700526BF700526BF7000021A50000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800F7DEBD00F7D6B500F7D6
      AD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E7000000000000000000000000000000000000000000BD8C8400EFE7DE00FFF7
      EF00F7DEBD00FFD6A500FFD6A500FFD6A500E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B5847300B584
      7300B5847300B5847300B58473000000000000000000000000000021A50094AD
      FF00B5C6FF00B5C6FF00B5C6FF00B5C6FF009CBDFF009CBDFF009CB5FF009CB5
      FF00739CFF00739CFF00739CFF00638CF700638CF700638CF7005284F7005284
      F7005284F7005284F7000021A50000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00CE946300B55A
      1800F7DEBD00CE8C6300B55A1800DEAD8400F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E70042E7E70042E7E700000000000000000000000000BD8C8400EFE7DE00FFF7
      F700F7EFE700F7EFDE00F7E7DE00F7E7DE00E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B5847300E7AD
      7300EFAD5A00E79C4200BD848400000000000000000000000000000000000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700E7BD9C00B55A
      1800CE8C6300F7DEBD00B55A1800CE8C5A00F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A500A57B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E7000000000000000000CE9C8400EFE7E700FFFF
      F700F7EFDE00F7E7D600F7E7D600F7E7D600EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300F7C6
      7B00EFAD5A00BD84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E7DE00B55A
      1800BD6B2900EFDECE00B55A1800BD632900F7E7CE00F7E7CE00EFD6BD00CEBD
      AD00B5AD94009C7B840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E70000000000CE9C8400F7EFE700FFFF
      FF00FFDEC600FFD6A500FFD6A500FFD6A500EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300E7B5
      7B00BD8484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E70000000000DEAD8400F7EFEF00FFFF
      FF00FFF7F700FFF7EF00FFF7EF00F7EFEF00EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B5847300BD84
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B7300000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E700000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E7000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7
      F700EFE7E700D6D6D600BDBDBD00B58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B5848400000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B584
      7300B5847300B5847300B5847300B58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B584
      7300E7AD7300EFAD5A00E79C4200BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E70000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300F7C67B00EFAD5A00BD848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E70000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300E7B57B00BD84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E7000000000000000000EFBD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300BD8484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A542080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      AD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800B5520000BD5A0000A54208009C390800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      AD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5390800BD5A0000D66B0000BD5A0000A5420800A54208000000
      00000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C0000000000000000000000000000000000000000000000000000000000ADAD
      AD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800A5420800C65A0000D66B0000BD5A0000A5420800A542
      08000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      39000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      39000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C390800A5420800C6630000CE6B0000B55200009C39
      08009C3908000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      39000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C000000000000000000A54208009C3908009C3908009C39
      08009C3908009C3908009C3908009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000009C390800AD4A0800CE630000CE6B0000AD4A
      08009C3908009C390800000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      39000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      39000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      AD00B5B5B500A5A5A5000000000000000000A5420800B55A1000B55A1000B552
      0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800B54A0000AD4A
      0800A5420800A542080000000000000000009C390800AD4A0800CE6B0000C663
      0000A54208009C390800000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C67300EFF7EF00EFF7EF00A5D6A50063BD630063BD
      63005AB55A0052B5520052B5520052B5520052B552004AAD4A004A9C4A00397B
      39000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C6730073C673006BBD6B0063BD630063BD6300A5D6
      A500EFF7EF00EFF7EF0052B5520052B5520052B552004AAD4A004A9C4A00397B
      39000000000000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C000000000000000000AD4A1000EF943100E78C2900DE7B
      1000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D66B
      0000B55208009C3908000000000000000000000000009C390800B5520800CE6B
      0000BD5A00009C3908009C39080000000000000000000000000052B5520063BD
      630073C6730073C6730073C67300EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      63005AB55A005AB55A0052B5520052B552004AAD4A0052B552004A9C4A003984
      390000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C6730073C6730073C673006BBD6B00A5D6A500EFF7
      EF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004A9C4A003984
      39000000000000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A5000000000000000000AD4A1000F7A54200F7A53900E78C
      2900DE841800CE630800B5520000B5520000B5520000B5520000B5520000B552
      0800A5420800A5420800000000000000000000000000000000009C390800BD5A
      0000CE6B0000AD4A08009C39080000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B5520052B5520052B5520052B552004AA54A003984
      390000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B5520052B552004AA54A003984
      39000000000000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD000000000000000000AD4A1000F7AD4A00FFAD4A00E794
      3900EF943100DE7B1800A54208009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000BD5A00009C3908009C390800000000000000000052B5520073C6
      730073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A5005AB55A0052B5520052B552004AAD4A0052B552004AA54A00428C
      420000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004AA54A00428C
      4200000000000000000000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B5000000000000000000AD4A1000F7A54200FFB55200C66B
      2100DE8C3100F79C3100D6731800A54208009C39080000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800CE630000C6630000A54208009C390800000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B5520052B552005AB55A004AA54A003984
      390000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A004AA54A003984
      390000000000000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A500000000000000000000000000AD4A1000F7A54200FFBD5200BD5A
      1800AD4A1000F7A54200F7A53900CE731800A53908009C390800000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C390800000000000000000073C6730073C6
      73007BC67B007BC67B007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B5520052B55200428C
      420000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B00A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF005AB55A005AB55A0052B5520052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B50000000000000000000000000000000000AD4A1000F7A54200FFBD5200BD63
      180094290000BD631800F7AD4A00F7A53900CE731800A54208009C3908000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C39080000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B552004AA54A0052B5520052B55200428C
      42000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AA54A0052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900009C390000C66B2100FFAD4A00F7A53900D67B2100A54208009C39
      08000000000000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000C6630000A54208009C390800000000000000000073C6730084CE
      840084CE840084CE84007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A50052B5520052B5520052B5520052B552005AB55A0052B552003984
      390000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A0052B552003984
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C390000000000009C390000C6632100F7AD4A00FFAD4200DE842100AD4A
      08009C39080000000000000000000000000000000000A54208009C390800BD5A
      0000CE6B0000BD5A00009C39080000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE8400EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B552005AB55A0063BD63005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE840073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B552005AB55A0063BD63005AB55A0052B55200428C
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C39000000000000000000009C310000BD5A1800F7A54200FFAD4200E78C
      2900B55210009C3908009C3908009C3908009C3908009C390800B5520000CE6B
      0000CE6B0000AD4208009C39080000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE8400EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      630063BD630063BD630063BD630052B5520052B552005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE84007BC67B0073C6730073C67300A5D6A500EFF7
      EF00FFFFFF00EFF7EF0063BD630052B5520052B552005AB55A0052B55200428C
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900000000000000000000000000009C390000AD4A1000E7943900FFAD
      4200F79C3100CE731800B55A1000AD4A0800AD4A0800BD5A0000CE6B0000CE6B
      0000B55208009C390800000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C00EFF7EF00EFF7EF00A5D6A50073C6730073C6
      730073C673006BBD6B0073C6730063BD630063BD630063BD630052B55200428C
      42000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C0084CE840084CE84007BC67B0073C67300A5D6
      A500EFF7EF00EFF7EF0073C6730063BD630063BD630063BD630052B55200428C
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7AD4A00FFBD5200BD63
      18009C390000000000000000000000000000000000009C3900009C390800C66B
      2100E7943900F79C3100EF942900DE7B1000D6730000CE6B0000C65A0000AD4A
      08009C390800000000000000000000000000000000000000000084CE8400ADDE
      AD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      390000000000000000000000000000000000000000000000000084CE8400ADDE
      AD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000A5420800D6842900E7943900AD4A
      10009C39080000000000000000000000000000000000000000009C3908009C39
      0000A5420800B55A1000C6631800BD631800B5520800A5420800A54208009C39
      08000000000000000000000000000000000000000000000000008CCE8C00ADDE
      AD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      42000000000000000000000000000000000000000000000000008CCE8C00ADDE
      AD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C3908009C3908009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00009C3908009C3908009C3908009C3908009C3908009C390800000000000000
      00000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      AD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      8400000000000000000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A000000000000000000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      84000000000000000000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      00000000000000000000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      63006363630063636300000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B0000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE63000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B0031313100000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F7000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      000000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      63000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F7000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      84000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E7000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A00636B7300C69C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE0000000000ADADA5003973A5002173B5007384
      9400CE9C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000006394B50039A5FF00218CEF002173
      B5007B849400CE9C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE630000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000004AB5FF005ABDFF0042A5FF00218C
      EF002173B5007B849400CE9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE630000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE0000000000000000000000000031A5FF0052BDFF005ABDFF0042A5
      FF00218CEF002173B5007B849400CE9C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE630000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000031A5FF0052BDFF005ABD
      FF0042A5FF00218CEF002173B50084849400CE9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      000000000000000000000000000000000000000000000000000031A5FF0052BD
      FF005ABDFF0042A5FF00218CEF002173B50084849400CE9C9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000000000000000000000000000000000000000000000000000000000031A5
      FF0052BDFF005ABDFF0042A5FF00218CEF002173B50084849400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000031A5FF0052BDFF005ABDFF0039A5FF003184D60052636B00000000000000
      00009C6B6B00B58C8400CEA59C00D6B5A500D6ADA500CE9C9C00C69494000000
      000000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031A5FF0052BDFF007BC6FF00C6CEDE009C9C9C00846B6B00AD8C
      8400E7D6BD00FFF7CE00FFFFD600FFFFDE00FFFFD600FFFFD600EFDEC600CEA5
      9C0000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFE700C6ADAD00CEA59400FFF7
      CE00FFFFD600FFFFDE00FFFFD600FFFFD600FFFFD600FFFFDE00FFFFDE00FFFF
      DE00D6B5A500A57373000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      AD00EFCEA500B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6ADAD00CEA59400FFEFBD00FFE7
      BD00FFF7CE00FFFFD600FFFFD600FFFFD600FFFFDE00FFFFDE00FFFFE700FFFF
      FF00FFFFFF00C6A5A5000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      AD00EFCEA500B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD8C8C00EFDEB500FFE7B500F7D6
      AD00FFF7CE00FFFFD600FFFFD600FFFFDE00FFFFE700FFFFEF00FFFFF700FFFF
      FF00FFFFFF00F7EFDE00A57B730000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC60000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6B5A500FFEFBD00F7CE9C00F7D6
      A500FFF7CE00FFFFD600FFFFD600FFFFDE00FFFFEF00FFFFF700FFFFFF00FFFF
      F700FFFFEF00FFFFDE00BDA5940000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B50000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400E7CEAD00FFEFBD00F7C68C00F7CE
      9C00FFEFC600FFFFD600FFFFD600FFFFDE00FFFFEF00FFFFF700FFFFF700FFFF
      EF00FFFFDE00FFFFDE00D6C6AD00C6949400000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      AD00B5AD94009C847B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF70000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400EFD6B500FFE7B500EFBD8400F7C6
      8C00F7DEB500FFFFD600FFFFD600FFFFDE00FFFFE700FFFFEF00FFFFEF00FFFF
      E700FFFFDE00FFFFDE00E7D6BD00BD9C8C00000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E70000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400EFD6B500FFEFBD00F7BD8C00EFBD
      8400F7CE9C00FFEFC600FFFFD600FFFFDE00FFFFDE00FFFFDE00FFFFDE00FFFF
      DE00FFFFD600FFFFDE00E7D6BD00BD9C8C00000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400E7CEAD00FFEFBD00F7CE9C00EFBD
      8400F7C69400F7D6A500FFEFC600FFFFD600FFFFDE00FFFFD600FFFFD600FFFF
      D600FFFFD600FFFFDE00D6C6AD00C6949400000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE630000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6ADA500FFEFBD00FFE7BD00F7DE
      AD00F7CE9C00F7CE9C00F7D6A500F7E7BD00FFF7CE00FFFFD600FFFFD600FFFF
      D600FFFFD600FFFFD600BD9C8C0000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A563000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD8C8C00EFDEB500FFFFDE00FFFF
      EF00F7EFDE00F7CE9C00F7CE9400F7C69400F7D6AD00F7E7BD00F7E7BD00FFEF
      C600FFFFD600EFDEC600A573730000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      840000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C69C8C00FFF7E700FFFF
      FF00FFFFFF00F7DEBD00F7C69400EFBD8400F7BD8C00F7C69400F7D6AD00FFEF
      BD00FFEFC600BD9C8C000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9C9C00EFEF
      E700FFFFEF00FFF7CE00FFE7B500F7DEAD00F7DEAD00FFE7B500FFEFBD00F7E7
      BD00C69C9400000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A57B
      7300D6BDA500F7E7BD00FFEFBD00FFEFBD00FFEFBD00F7E7BD00E7C6AD00C694
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
      000000000000AD847B00C69C8C00CEA59C00CEA59C00C69C9400000000000000
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
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFF9FF9FE0000FFF
      FFFFFFFC7FF0FF0FE0000F800001FFF83FF07E0FE0000F800001FFF81FF03C0F
      E0000F800001FFF80FF8181FE0000F800001FFFC07F8001FE0000F8000010006
      03FC003FE0000F800001000303FC003FE0000F800001000381FE007FE0000F80
      00010003C1F8003FE0000F8000010007C0F0001FE0000F800001007FE0C00007
      E0000F800001003FE0800003E0000F800001001FE0000001E0000F800001000F
      C0800003E0000F800001040781FF81FFE0000F800001060001FF81FFE0000F80
      0001070003FF81FFE0000F800001078007FF81FFE0000F80000107C00FFF81FF
      FFFFFF8000018FF03FFFC3FFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFF
      FFFFC3FFFFFFFFFFFFFFFFFFFFFFE7FFFF0001FFFFFFE00003FFFFFFFF0001FF
      FFFFE00003FFFFFFFF0001FFFFFFE00003FFFFFFFF0001FFFFFFE00003FFFFFF
      FF0001FFFFFFE000038007FFFF0001FFFFFFE000038001FF800001FFFFFFE000
      038000FF800001FFFFFFE0000380007F800001FFFFFFE00003C0001F800001E0
      0003E00003F0000F800001C00001E00003FC0007800001C00001E00003FE0003
      800001C00001E00003FF0001800001C00001E00003FF0000800001E00003E000
      03FF0000800003FFFFFFE00003FF8000800007FFFFFFE00003C0000080000FFF
      FFFFE00003C000008000FFFFFFFFE00003C000008000FFFFFFFFE00007C00000
      8000FFFFFFFFE0000FF000008001FFFFFFFFE0001FFC00008003FFFFFFFFE000
      3FFF00008007FFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFF0C1FFF
      FC7FFFFFFFFFFFFFFC0007FFF83FFFFFFFFFFFFFF00001FFF81FC0000FC0000F
      E00003FFF80FC0000FC0000F800003FFFC07C0000FC0000F800003000603C000
      0FC0000F800003000303C0000FC0000F800003000381C0000FC0000F80000300
      03C1C0000FC0000F8000030007C0C0000FC0000FC00003007FE0C0000FC0000F
      E00007003FE0C0000FC0000FF8000F001FE0C0000FC0000FF8001F000FC0C000
      0FC0000FFC007F040781C0000FC0000FFC00FF060001C0000FC0000FFC01FF07
      0003C0000FC0000FFC01FF078007C0000FC0000FFC01FF07C00FC0000FC0000F
      FC01FF8FF03FC0000FC0000FF803FFFFFFFFFFFFFFFFFFFFF803FFFFFFFFFFFF
      FFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00001FFFFFFFFFFFFFF
      FFFF800000FFFFFFFFFFFFFF1FFF800000C00003FFFFFFF8000F800000C00003
      F1FFCFE0000F800000C00003F5802FC0000F800000C00003F9900FC0000F8000
      00C00003FBDEDFC0000F800000C00003F1FFFFC0000F800000C00003FFFFFFC0
      000F800000C00003F18FFFC0000F800000C00003F7C423C0000F800000C00003
      FB8003C0000F800000C00003F5D237C0000F800000C00003F1FF7FC0000F8000
      00C00003FFFFFFC0000F800000C00001F1FFFFC0000F800000C00000FBA05FC0
      000F800000C00000FB821FE0000F800000C00000F3989FF8000F800000C00000
      FBFBFFFE1FFF800000E00007FFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFF8000
      00FFFFFFFFFFFFFFFFFFC00001FFFFFFE00003FFFFFFFFFFFF8FFFFFE00003FF
      FFFFFFFFF907FFFFE00003C00003FFFFF103FFFFE00003C00003C7FFE301FFFF
      E00003C00003C3FF8700FFFFE00003C00003C1FF0F807FFFE00003C00003E0FE
      1FC03FFFE00003C00003F07C3FE03FFFE00003C00003FC307FF0301FE00003C0
      0003FE00FFF8000FE00003C00003FF01FFFF0003E00003C00003FF83FFFF0003
      E00003C00003FF01FFFF0001E00003C00003FE00FFFF0001E00003C00003FC18
      7FFE0000E00003C00003F83C3FFE0000E00003C00003F07F1FFE0000E00003C0
      0003E0FF8FFE0000E00003C00003C1FFEFFF0001E00007C0000383FFFFFF0001
      E0000FE0000787FFFFFF8003E0001FFFFFFF8FFFFFFFC007E0003FFFFFFFFFFF
      FFFFE00FFFFFFFFFFFFFFFFFFFFFF83F00000000000000000000000000000000
      000000000000}
  end
end
