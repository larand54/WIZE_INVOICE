object fLoadOrderListSetup: TfLoadOrderListSetup
  Left = 229
  Top = 107
  Width = 467
  Height = 290
  ActiveControl = lcLengthgrupp
  Caption = 'Lastorder inst'#228'llningar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 222
    Width = 459
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Caption = '&St'#228'ng'
      TabOrder = 0
      Kind = bkClose
    end
  end
  object lcLengthgrupp: TcxDBLookupComboBox
    Left = 112
    Top = 48
    DataBinding.DataField = 'Lengthgrupp'
    DataBinding.DataSource = dmcOrder.dsProps
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 1
    Width = 145
  end
  object cxLabel1: TcxLabel
    Left = 40
    Top = 52
    Caption = 'L'#228'ngdgrupp:'
  end
end
