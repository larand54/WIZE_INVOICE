object FormBookingForm: TFormBookingForm
  Left = 231
  Top = 147
  ActiveControl = eReadyDate
  Caption = 'BOOKING'
  ClientHeight = 1017
  ClientWidth = 1333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu2
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1333
    Height = 159
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object Label27: TLabel
      Left = 30
      Top = 22
      Width = 63
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Bokningnr:'
    end
    object Label28: TLabel
      Left = 620
      Top = 15
      Width = 61
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Redodag:'
    end
    object Label29: TLabel
      Left = 30
      Top = 108
      Width = 37
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LO Nr:'
    end
    object Label30: TLabel
      Left = 325
      Top = 106
      Width = 63
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lev.villkor:'
    end
    object Label31: TLabel
      Left = 620
      Top = 126
      Width = 54
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Notering:'
    end
    object Label32: TLabel
      Left = 620
      Top = 42
      Width = 54
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Spedit'#246'r:'
    end
    object Label33: TLabel
      Left = 620
      Top = 69
      Width = 33
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Frakt:'
    end
    object Label34: TLabel
      Left = 620
      Top = 97
      Width = 61
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Transport:'
    end
    object Label42: TLabel
      Left = 30
      Top = 52
      Width = 51
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Kontrakt:'
    end
    object Label43: TLabel
      Left = 30
      Top = 81
      Width = 51
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Kund ref:'
    end
    object Label44: TLabel
      Left = 325
      Top = 20
      Width = 33
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Kund:'
    end
    object Label45: TLabel
      Left = 325
      Top = 49
      Width = 38
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Agent:'
    end
    object Label46: TLabel
      Left = 325
      Top = 79
      Width = 67
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lev.period:'
    end
    object eBookingNo: TcxDBTextEdit
      Left = 98
      Top = 12
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'BookingNo'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Enabled = False
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 11
      Width = 208
    end
    object eShippingPlanNo: TcxDBTextEdit
      Left = 98
      Top = 98
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'ShippingPlanNo'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 12
      Width = 208
    end
    object eReadyDate: TcxDBTextEdit
      Left = 689
      Top = 5
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PreliminaryRequestedPeriod'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 0
      Width = 208
    end
    object leDelTerms: TcxDBLookupComboBox
      Left = 394
      Top = 96
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'DeliveryTermsNo'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Properties.DropDownWidth = 350
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'DeliveryTerm_No'
      Properties.ListColumns = <
        item
          Caption = 'Leveransvillkor'
          FieldName = 'DeliveryTerm'
        end
        item
          Caption = 'Beskrivning'
          FieldName = 'Description'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmsContact.dsDelTerms
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 14
      Width = 208
    end
    object ePanicNote: TcxDBTextEdit
      Left = 689
      Top = 116
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Panic_Note'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 6
      Width = 405
    end
    object lcShipper: TcxDBLookupComboBox
      Left = 689
      Top = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'ShippingCompanyNo'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm_Booking.dsShippers
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Width = 405
    end
    object eFreightCost: TcxDBTextEdit
      Left = 847
      Top = 59
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'FreightCost'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 3
      Width = 90
    end
    object lcCurrency: TcxDBLookupComboBox
      Left = 689
      Top = 59
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'FreightCostCurrency'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Properties.KeyFieldNames = 'CurrencyNo'
      Properties.ListColumns = <
        item
          Caption = 'Valuta'
          FieldName = 'CurrencyName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmsSystem.ds_Currency
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 2
      Width = 149
    end
    object lcFreightVolUnit: TcxDBLookupComboBox
      Left = 945
      Top = 59
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'FreightCostVolUnit'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Properties.KeyFieldNames = 'TemplateUnitNo'
      Properties.ListColumns = <
        item
          Caption = 'Volymenhet'
          FieldName = 'TemplateUnitName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmsContact.dsPriceUnit
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 4
      Width = 149
    end
    object lcTypeofbooking: TcxDBLookupComboBox
      Left = 689
      Top = 87
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'BookingTypeNo'
      DataBinding.DataSource = dm_Booking.dsBookingInvoice
      Properties.KeyFieldNames = 'BookingTypeNo'
      Properties.ListColumns = <
        item
          Caption = 'Typ av frakt'
          FieldName = 'BookingType'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmsSystem.dsBookingType
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 5
      Width = 297
    end
    object teOrderNoText: TcxDBTextEdit
      Left = 98
      Top = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'OrderNoText'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 13
      Width = 208
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 98
      Top = 71
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Reference'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 15
      Width = 208
    end
    object trCustomer: TcxDBTextEdit
      Left = 394
      Top = 10
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Customer'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 16
      Width = 208
    end
    object teAgent: TcxDBTextEdit
      Left = 394
      Top = 39
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Agent'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 8
      Width = 208
    end
    object teETDYearWeek: TcxDBTextEdit
      Left = 394
      Top = 69
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'ETDYearWeek'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 9
      Width = 80
    end
    object teETDWeekEnd: TcxDBTextEdit
      Left = 482
      Top = 69
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'ETDWeekEnd'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 10
      Width = 80
    end
    object cxButton2: TcxButton
      Left = 1142
      Top = 10
      Width = 188
      Height = 50
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acPrint
      TabOrder = 7
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 420
    Width = 1333
    Height = 597
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object PanelConfirm: TPanel
      Left = 0
      Top = 465
      Width = 1333
      Height = 132
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        1333
        132)
      object Label36: TLabel
        Left = 20
        Top = 25
        Width = 90
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Spedit'#246'rens id:'
      end
      object Label37: TLabel
        Left = 345
        Top = 25
        Width = 40
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Trp ID:'
      end
      object Label38: TLabel
        Left = 610
        Top = 25
        Width = 41
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fartyg:'
      end
      object Label39: TLabel
        Left = 610
        Top = 54
        Width = 64
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ETD (F10):'
      end
      object Label40: TLabel
        Left = 886
        Top = 54
        Width = 30
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ETA:'
      end
      object Label41: TLabel
        Left = 20
        Top = 54
        Width = 113
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Spedit'#246'rensdatum:'
      end
      object bbNewCarrier: TBitBtn
        Left = 1294
        Top = 15
        Width = 36
        Height = 29
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acNewVesselName
        Anchors = [akTop, akRight]
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF0000446900FF00FF0000446900FF00FF00FF00FF00004E7700FF00FF000044
          690000446900004E7700004E7700FF00FF000044690000446900FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000044690000446900FF00FF00FF8C2000FF8C
          2000FF00FF00FF00FF0000446900FF00FF00004E7700FF00FF0000446900FF00
          FF00004E7700FF00FF000044690000446900FF00FF00004E7700FF00FF000044
          6900FF00FF000044690000446900004E7700004E7700FF00FF00FF9E4600FF8C
          2000FF8C2000FF8C2000004E7700004E77000044690000446900004E7700004E
          7700FF00FF0000446900FF00FF00004E7700004E7700FF00FF00004469000044
          690000446900004E7700004E7700FF00FF000044690000446900FF9E4600FF9E
          4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000004E7700FF00FF000044
          690000446900004E7700004E7700FF00FF00FF00FF0000446900004469000044
          6900004E7700FF00FF00FF00FF0000446900004E7700FF00FF00FF8C2000FF8C
          2000FF8C20002600BF002600BF002600BF002600BF002600BF002600BF002600
          BF00004E7700FF00FF00FF00FF000044690000446900004E7700004E7700004E
          7700FF00FF00FF00FF0000446900004E7700FF00FF0000446900FF8C2000FF8C
          20002600BF002600BF002600BF002600BF002600BF002600BF002600BF002600
          BF002600BF002600BF0000446900004E7700004E7700FF00FF00FF00FF00FF00
          FF000044690000446900004E7700FF00FF0000446900004E7700FF8C20002600
          BF002600BF002400B3002400B3002400B3002400B3002400B3002400B3002600
          BF002600BF002600BF002600BF002600BF002600BF00FF00FF00004469000044
          690000446900004E7700FF00FF0000446900004E770000446900FF8C20002600
          BF002400B3008A8A8A008A8A8A008A8A8A000000000000CEE90000B0CA002400
          B3002400B3002400B3002600BF002600BF002600BF002600BF002600BF00004E
          7700004E7700FF00FF0000446900004E77000044690000446900FF8C20002400
          B3008A8A8A008A8A8A00000000000000000000B5CE0000C4DF0000CEE90000B0
          CA0000A4BB0000B5CE002400B3002400B3002400B3002600BF002600BF002600
          BF002600BF002600BF00004E77000044690000446900004E7700FF8C20008080
          80008A8A8A00000000000000000000B0CA0000B0CA0000B5CE0000C4DF0000B0
          CA00009CB30000CEE90000B5CE0000B0CA00009CB3002400B3002400B3002400
          B3002600BF002600BF002600BF002600BF002600BF0000446900FF8C20008080
          80008A8A8A008A8A8A008A8A8A0000000000000000000000000000CEE90000CE
          E90000B0CA0000B5CE0000CEE90000A4BB0000B0CA0000C4DF00000000008A8A
          8A002400B3002400B3002400B3002600BF002600BF002600BF00FF8C2000FF8C
          2000808080008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A00000000000000
          000000A4BB0000B0CA0000B5CE00009CB30000A4BB0000000000000000007474
          74007474740074747400747474002400B3002400B3002400B300FF8C2000FF8C
          2000FF8C20008080800080808000808080008A8A8A008A8A8A008A8A8A008A8A
          8A0000000000000000000000000000B5CE000000000074747400747474007474
          7400FFFFFF00FFFFFF007474740074747400747474002400B300FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C20008080800080808000808080008A8A
          8A008A8A8A008A8A8A008A8A8A00000000007474740074747400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00747474002400B300FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C20008080
          800080808000808080008A8A8A007474740074747400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002400B300FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000808080008080800080808000FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FF8C2000FF8C2000FF8C2000FF8C
          2000FF9E4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C200000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF9E4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C
          2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF9E4600FF8C
          2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E
          4600FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C
          2000FF8C2000FF8C2000FF9E4600FF9E4600FF9E4600FF9E4600FF8C2000FF8C
          2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF9E4600FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF9E4600FF8C2000FF8C
          2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF9E4600FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E
          4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000}
        TabOrder = 6
      end
      object eShippingCompanyBookingID: TcxDBTextEdit
        Left = 138
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'ShippingCompanyBookingID'
        DataBinding.DataSource = dm_Booking.dsBookingInvoice
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Width = 178
      end
      object eTrpID: TcxDBTextEdit
        Left = 394
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'SupplierReference'
        DataBinding.DataSource = dm_Booking.dsBookingInvoice
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 2
        Width = 188
      end
      object eETD: TcxDBDateEdit
        Left = 699
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'ETD'
        DataBinding.DataSource = dm_Booking.dsVoyageInvoice
        Properties.ClearKey = 46
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 4
        Width = 179
      end
      object eETA: TcxDBDateEdit
        Left = 926
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'ETA'
        DataBinding.DataSource = dm_Booking.dsVoyageInvoice
        Properties.ClearKey = 46
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 5
        Width = 178
      end
      object deShipperShipDate: TcxDBDateEdit
        Left = 138
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'ShippersShipDate'
        DataBinding.DataSource = dm_Booking.dsBookingInvoice
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 1
        Width = 178
      end
      object cbvessel: TcxDBComboBox
        Left = 699
        Top = 14
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'Carrier'
        DataBinding.DataSource = dm_Booking.dsVoyageInvoice
        Properties.ClearKey = 46
        Properties.Items.Strings = (
          'AAAAAAAAAAAAAAAA'
          'BBBBBBBBBBBBBBBB'
          'CCCCCCCCCCCCCCCC'
          'DDDDDDDDDDDDDD')
        TabOrder = 3
        OnExit = cbvesselExit
        Width = 405
      end
      object PanelOK: TPanel
        Left = 1
        Top = 75
        Width = 1331
        Height = 56
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        TabOrder = 7
        object bbOK: TBitBtn
          Left = 394
          Top = 9
          Width = 119
          Height = 40
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acSave
          Caption = 'Spara F3'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 0
        end
        object bbCancel: TBitBtn
          Left = 837
          Top = 9
          Width = 119
          Height = 40
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Kind = bkCancel
          NumGlyphs = 2
          TabOrder = 2
        end
        object BitBtn1: TBitBtn
          Left = 542
          Top = 9
          Width = 276
          Height = 40
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acSetETDandSaveAndExit
          Caption = 'S'#228'tt ETD=dagens datum, st'#228'ng F11'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 1
        end
      end
    end
    object PanelFixedNotes: TPanel
      Left = 0
      Top = 0
      Width = 1333
      Height = 277
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 1
      DesignSize = (
        1333
        277)
      object Label19: TLabel
        Left = 20
        Top = 226
        Width = 48
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Lasttext:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label18: TLabel
        Left = 19
        Top = 134
        Width = 68
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Fakturatext:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 20
        Top = 42
        Width = 49
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'LO Text:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object mNoteForLoadSheet: TcxDBMemo
        Left = 98
        Top = 187
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'NoteForLoadSheet'
        DataBinding.DataSource = dm_Booking.dsBookingInvoice
        Properties.ReadOnly = True
        TabOrder = 2
        Height = 80
        Width = 1194
      end
      object mInvoiceText: TcxDBMemo
        Left = 98
        Top = 98
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'InvoiceText'
        DataBinding.DataSource = dm_Booking.dsBookingInvoice
        Properties.ReadOnly = True
        TabOrder = 1
        Height = 80
        Width = 1194
      end
      object mLOText: TcxDBMemo
        Left = 98
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'LOText'
        DataBinding.DataSource = dm_Booking.dsBookingInvoice
        Properties.ReadOnly = True
        TabOrder = 0
        Height = 80
        Width = 1194
      end
    end
    object PanelTEXT: TPanel
      Left = 0
      Top = 285
      Width = 1333
      Height = 180
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Caption = 'PanelTEXT'
      TabOrder = 2
      object grdOrderDocument: TcxGrid
        Left = 1
        Top = 1
        Width = 1331
        Height = 178
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object grdOrderDocumentDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dm_Booking.ds_DocText
          DataController.KeyFieldNames = 'DocTextNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 77
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdOrderDocumentDBTableView1DocText: TcxGridDBColumn
            DataBinding.FieldName = 'DocText'
            PropertiesClassName = 'TcxRichEditProperties'
            Properties.ReadOnly = True
            Width = 799
          end
        end
        object grdOrderDocumentLevel1: TcxGridLevel
          GridView = grdOrderDocumentDBTableView1
        end
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 0
      Top = 277
      Width = 1333
      Height = 8
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salTop
      Control = PanelFixedNotes
      Color = clMaroon
      ParentColor = False
    end
  end
  object grdLoRows: TcxGrid
    Left = 0
    Top = 159
    Width = 1333
    Height = 253
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 1
    object grdLoRowsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dm_Booking.dsBookingProducts
      DataController.KeyFieldNames = 'CSDNO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object grdLoRowsDBTableView1REFERENCE: TcxGridDBColumn
        DataBinding.FieldName = 'REFERENCE'
        Width = 153
      end
      object grdLoRowsDBTableView1DEL_ADDRESS: TcxGridDBColumn
        DataBinding.FieldName = 'DEL_ADDRESS'
        Width = 187
      end
      object grdLoRowsDBTableView1SUPPLIER: TcxGridDBColumn
        DataBinding.FieldName = 'SUPPLIER'
        Width = 164
      end
      object grdLoRowsDBTableView1LOADING_LOCATION: TcxGridDBColumn
        DataBinding.FieldName = 'LOADING_LOCATION'
        Width = 195
      end
      object grdLoRowsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUCT_DESCRIPTION'
        Width = 241
      end
      object grdLoRowsDBTableView1LENGTH_DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'LENGTH_DESCRIPTION'
        Width = 204
      end
      object grdLoRowsDBTableView1NOOFUNITS: TcxGridDBColumn
        DataBinding.FieldName = 'NOOFUNITS'
        Width = 71
      end
      object grdLoRowsDBTableView1VOLUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'VOLUNIT'
        Width = 71
      end
      object grdLoRowsDBTableView1ACTM3: TcxGridDBColumn
        DataBinding.FieldName = 'ACTM3'
      end
      object grdLoRowsDBTableView1ADDRESS_NO: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS_NO'
        Visible = False
        VisibleForCustomization = False
      end
      object grdLoRowsDBTableView1CITY_NO: TcxGridDBColumn
        DataBinding.FieldName = 'CITY_NO'
        Visible = False
        VisibleForCustomization = False
      end
      object grdLoRowsDBTableView1CITY_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'CITY_NAME'
        Width = 138
      end
      object grdLoRowsDBTableView1POSTALCODE: TcxGridDBColumn
        DataBinding.FieldName = 'POSTALCODE'
        Width = 108
      end
      object grdLoRowsDBTableView1KR_Ref: TcxGridDBColumn
        DataBinding.FieldName = 'KR_Ref'
        Width = 150
      end
    end
    object grdLoRowsLevel1: TcxGridLevel
      GridView = grdLoRowsDBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 412
    Width = 1333
    Height = 8
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = grdLoRows
    Color = clMaroon
    ParentColor = False
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 680
    Top = 168
    Bitmap = {
      494C010104000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000004469000000
      0000004469000000000000000000004E7700000000000044690000446900004E
      7700004E77000000000000446900004469000000000000000000000000000000
      00000000000000446900004469000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000000000000000
      00000044690000000000004E7700000000000044690000000000004E77000000
      0000004469000044690000000000004E77000000000000446900000000000044
      690000446900004E7700004E77000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E4600FF8C2000FF8C2000FF8C
      2000004E7700004E77000044690000446900004E7700004E7700000000000044
      690000000000004E7700004E770000000000004469000044690000446900004E
      7700004E770000000000004469000044690000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000FF9E4600FF9E4600FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000004E7700000000000044690000446900004E
      7700004E77000000000000000000004469000044690000446900004E77000000
      00000000000000446900004E77000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A00000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C20002600
      BF002600BF002600BF002600BF002600BF002600BF002600BF00004E77000000
      0000000000000044690000446900004E7700004E7700004E7700000000000000
      000000446900004E7700000000000044690000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000FF8C2000FF8C20002600BF002600
      BF002600BF002600BF002600BF002600BF002600BF002600BF002600BF002600
      BF0000446900004E7700004E7700000000000000000000000000004469000044
      6900004E77000000000000446900004E770000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000FF8C20002600BF002600BF002400
      B3002400B3002400B3002400B3002400B3002400B3002600BF002600BF002600
      BF002600BF002600BF002600BF0000000000004469000044690000446900004E
      77000000000000446900004E77000044690000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A0000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000FF8C20002600BF002400B3008A8A
      8A008A8A8A008A8A8A000000000000CEE90000B0CA002400B3002400B3002400
      B3002600BF002600BF002600BF002600BF002600BF00004E7700004E77000000
      000000446900004E7700004469000044690000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A0000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000FF8C20002400B3008A8A8A008A8A
      8A00000000000000000000B5CE0000C4DF0000CEE90000B0CA0000A4BB0000B5
      CE002400B3002400B3002400B3002600BF002600BF002600BF002600BF002600
      BF00004E77000044690000446900004E770000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000FF8C2000808080008A8A8A000000
      00000000000000B0CA0000B0CA0000B5CE0000C4DF0000B0CA00009CB30000CE
      E90000B5CE0000B0CA00009CB3002400B3002400B3002400B3002600BF002600
      BF002600BF002600BF002600BF000044690000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000FF8C2000808080008A8A8A008A8A
      8A008A8A8A0000000000000000000000000000CEE90000CEE90000B0CA0000B5
      CE0000CEE90000A4BB0000B0CA0000C4DF00000000008A8A8A002400B3002400
      B3002400B3002600BF002600BF002600BF0000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000808080008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A00000000000000000000A4BB0000B0
      CA0000B5CE00009CB30000A4BB00000000000000000074747400747474007474
      7400747474002400B3002400B3002400B30000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C20008080
      800080808000808080008A8A8A008A8A8A008A8A8A008A8A8A00000000000000
      00000000000000B5CE0000000000747474007474740074747400FFFFFF00FFFF
      FF007474740074747400747474002400B30000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C20008080800080808000808080008A8A8A008A8A8A008A8A
      8A008A8A8A00000000007474740074747400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00747474002400B30000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C200080808000808080008080
      80008A8A8A007474740074747400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002400B300FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000808080008080800080808000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF9E4600FF8C
      2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C200000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2000FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF9E
      4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E
      4600FF8C2000FF8C2000FF8C2000FF8C2000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2000FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF9E4600FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF9E
      4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000FF8C2000FF9E4600FF8C2000FF8C
      2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF9E4600FF9E4600FF8C2000FF8C2000FF9E4600FF9E
      4600FF8C2000FF8C2000FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF9E
      4600FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF9E4600FF9E4600FF9E460000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF9E46000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A00000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C00001FFFFFFFFFFFFD684F9800000FF
      0C1FFFFFFF3552A1800000FC0007FF1FFF002904800000F00001F8000F008619
      800000E00003E0000F001832800000800003C0000F0001C4800000800003C000
      0F000108800000800003C0000F000010800000800003C0000F00000080000080
      0003C0000F000000800000800003C0000F000000800000C00003C0000F000000
      800000E00007C0000F000000800000F8000FC0000F000000800000F8001FC000
      0F000000800000FC007FC0000F000000800000FC00FFC0000F000000800000FC
      01FFC0000F000000800000FC01FFE0000F000000800000FC01FFF8000F000000
      800000FC01FFFE1FFF000000800000F803FFFFFFFF000000800000F803FFFFFF
      FF000000C00001F007FFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 616
    Top = 168
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acPrint: TAction
      Caption = 'Skriv ut trp.order F8'
      ImageIndex = 1
      ShortCut = 119
      OnExecute = acPrintExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 2
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acChangeLayout: TAction
      Caption = 'F'#228'ltv'#228'ljare'
      OnExecute = acChangeLayoutExecute
    end
    object acNewVesselName: TAction
      Hint = 'Nytt fartygsnamn F2'
      ImageIndex = 3
      ShortCut = 113
      OnExecute = acNewVesselNameExecute
    end
    object acSetETDandSaveAndExit: TAction
      Caption = 'S'#228'tt ETD=dagens datum, st'#228'ng F11'
      ImageIndex = 0
      ShortCut = 122
      OnExecute = acSetETDandSaveAndExitExecute
    end
    object acSetETD: TAction
      Caption = 'acSetETD'
      ShortCut = 121
      OnExecute = acSetETDExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 168
    object ndralayout1: TMenuItem
      Action = acChangeLayout
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 520
    Top = 168
  end
  object PopupMenu2: TPopupMenu
    AutoPopup = False
    Left = 584
    Top = 168
    object Fltvljare1: TMenuItem
      Action = acClose
    end
    object StngF121: TMenuItem
      Action = acNewVesselName
    end
    object SkrivutF81: TMenuItem
      Action = acPrint
    end
    object SparaF31: TMenuItem
      Action = acSave
    end
    object SttETDdagensdatumstngF111: TMenuItem
      Action = acSetETDandSaveAndExit
    end
  end
  object siLangLinked_FormBookingForm: TsiLangLinked
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
    Top = 416
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D0042006F006F006B0069006E006700
      46006F0072006D00010042004F004F004B0049004E0047000100010001000D00
      0A004C006100620065006C0032003700010042006F006B006E0069006E006700
      6E0072003A000100010001000D000A004C006100620065006C00320038000100
      5200650064006F006400610067003A000100010001000D000A004C0061006200
      65006C003200390001004C004F0020004E0072003A000100010001000D000A00
      4C006100620065006C003300300001004C00650076002E00760069006C006C00
      6B006F0072003A000100010001000D000A004C006100620065006C0033003100
      01004E006F0074006500720069006E0067003A000100010001000D000A004C00
      6100620065006C00330032000100530070006500640069007400F60072003A00
      0100010001000D000A004C006100620065006C00330033000100460072006100
      6B0074003A000100010001000D000A004C006100620065006C00330034000100
      5400720061006E00730070006F00720074003A000100010001000D000A004C00
      6100620065006C003400320001004B006F006E007400720061006B0074003A00
      0100010001000D000A004C006100620065006C003400330001004B0075006E00
      640020007200650066003A000100010001000D000A004C006100620065006C00
      3400340001004B0075006E0064003A000100010001000D000A004C0061006200
      65006C003400350001004100670065006E0074003A000100010001000D000A00
      4C006100620065006C003400360001004C00650076002E007000650072006900
      6F0064003A000100010001000D000A004C006100620065006C00330036000100
      530070006500640069007400F600720065006E0073002000690064003A000100
      010001000D000A004C006100620065006C003300370001005400720070002000
      490044003A000100010001000D000A004C006100620065006C00330038000100
      4600610072007400790067003A000100010001000D000A004C00610062006500
      6C003300390001004500540044002000280046003100300029003A0001000100
      01000D000A004C006100620065006C003400300001004500540041003A000100
      010001000D000A004C006100620065006C003400310001005300700065006400
      69007400F600720065006E00730064006100740075006D003A00010001000100
      0D000A0062006200430061006E00630065006C000100430061006E0063006500
      6C000100010001000D000A004C006100620065006C003100390001004C006100
      7300740074006500780074003A000100010001000D000A004C00610062006500
      6C00310038000100460061006B00740075007200610074006500780074003A00
      0100010001000D000A004C006100620065006C003100370001004C004F002000
      54006500780074003A000100010001000D000A00500061006E0065006C005400
      4500580054000100500061006E0065006C005400450058005400010001000100
      0D000A006700720064004F00720064006500720044006F00630075006D006500
      6E007400440042005400610062006C0065005600690065007700310044006F00
      63005400650078007400010054006500780074000100010001000D000A006700
      720064004C006F0052006F0077007300440042005400610062006C0065005600
      69006500770031005200450046004500520045004E0043004500010052006500
      66006500720065006E0073000100010001000D000A006700720064004C006F00
      52006F0077007300440042005400610062006C00650056006900650077003100
      440045004C005F00410044004400520045005300530001004C00650076006500
      720061006E0073006100640072006500730073000100010001000D000A006700
      720064004C006F0052006F0077007300440042005400610062006C0065005600
      690065007700310053005500500050004C0049004500520001004C0065007600
      6500720061006E007400F60072000100010001000D000A006700720064004C00
      6F0052006F0077007300440042005400610062006C0065005600690065007700
      31004C004F004100440049004E0047005F004C004F0043004100540049004F00
      4E0001004C0061007300740073007400E4006C006C0065000100010001000D00
      0A006700720064004C006F0052006F0077007300440042005400610062006C00
      650056006900650077003100500052004F0044005500430054005F0044004500
      53004300520049005000540049004F004E000100500072006F00640075006B00
      74000100010001000D000A006700720064004C006F0052006F00770073004400
      42005400610062006C006500560069006500770031004C0045004E0047005400
      48005F004400450053004300520049005000540049004F004E0001004C00E400
      6E00670064000100010001000D000A006700720064004C006F0052006F007700
      7300440042005400610062006C006500560069006500770031004E004F004F00
      460055004E0049005400530001004B00760061006E0074006900740065007400
      0100010001000D000A006700720064004C006F0052006F007700730044004200
      5400610062006C0065005600690065007700310056004F004C0055004E004900
      5400010045006E006800650074000100010001000D000A006700720064004C00
      6F0052006F0077007300440042005400610062006C0065005600690065007700
      31004100430054004D003300010041004D0033000100010001000D000A006700
      720064004C006F0052006F0077007300440042005400610062006C0065005600
      690065007700310041004400440052004500530053005F004E004F0001004100
      4400440052004500530053005F004E004F000100010001000D000A0067007200
      64004C006F0052006F0077007300440042005400610062006C00650056006900
      65007700310043004900540059005F004E004F00010043004900540059005F00
      4E004F000100010001000D000A006700720064004C006F0052006F0077007300
      440042005400610062006C006500560069006500770031004300490054005900
      5F004E0041004D00450001004F00720074000100010001000D000A0067007200
      64004C006F0052006F0077007300440042005400610062006C00650056006900
      65007700310050004F005300540041004C0043004F0044004500010050006F00
      730074006E0072000100010001000D000A006700720064004C006F0052006F00
      77007300440042005400610062006C006500560069006500770031004B005200
      5F0052006500660001004B0052002D005200650066006500720065006E007300
      0100010001000D000A0061006300530061007600650001005300700061007200
      61002000460033000100010001000D000A00610063005000720069006E007400
      010053006B0072006900760020007500740020007400720070002E006F007200
      6400650072002000460038000100010001000D000A006100630043006C006F00
      73006500010053007400E4006E00670020004600310032000100010001000D00
      0A00610063004300680061006E00670065004C00610079006F00750074000100
      4600E4006C0074007600E4006C006A006100720065000100010001000D000A00
      6100630053006500740045005400440061006E00640053006100760065004100
      6E006400450078006900740001005300E4007400740020004500540044003D00
      64006100670065006E007300200064006100740075006D002C00200073007400
      E4006E00670020004600310031000100010001000D000A006100630053006500
      7400450054004400010061006300530065007400450054004400010001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A00610063004E0065007700560065007300730065006C004E006100
      6D00650001004E00790074007400200066006100720074007900670073006E00
      61006D006E00200046003200010001000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D0042006F006F006B0069006E006700
      46006F0072006D0001004D0053002000530061006E0073002000530065007200
      6900660001004D0053002000530061006E007300200053006500720069006600
      01005400610068006F006D0061000D000A004C006100620065006C0031003900
      01004D0053002000530061006E00730020005300650072006900660001000100
      5400610068006F006D0061000D000A004C006100620065006C00310038000100
      4D0053002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A004C006100620065006C003100370001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D0061000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A006300620076006500
      7300730065006C002E00500072006F0070006500720074006900650073002E00
      4900740065006D00730001004100410041004100410041004100410041004100
      4100410041004100410041002C00420042004200420042004200420042004200
      42004200420042004200420042002C0043004300430043004300430043004300
      430043004300430043004300430043002C004400440044004400440044004400
      4400440044004400440044004400010001000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A006C0065004400
      65006C005400650072006D0073002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E0001004C0065007600650072006100
      6E007300760069006C006C006B006F007200010001000D000A006C0065004400
      65006C005400650072006D0073002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003100
      5D002E00430061007000740069006F006E0001004200650073006B0072006900
      76006E0069006E006700010001000D000A006C00630053006800690070007000
      650072002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E00010043006C00690065006E0074004E0061006D0065000100
      01000D000A006C006300430075007200720065006E00630079002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      560061006C00750074006100010001000D000A006C0063004600720065006900
      67006800740056006F006C0055006E00690074002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E00010056006F006C00
      79006D0065006E00680065007400010001000D000A006C006300540079007000
      65006F00660062006F006F006B0069006E0067002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E000100540079007000
      20006100760020006600720061006B007400010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00540046006F0072006D0042006F006F006B0069006E00670046006F007200
      6D000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A004C006100620065006C0031003900010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A004C00610062006500
      6C00310038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A004C006100620065006C00310037000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
