object fSelectAttBeskrivning: TfSelectAttBeskrivning
  Left = 372
  Top = 328
  Width = 478
  Height = 254
  ActiveControl = cbDescription
  Caption = 'V'#228'lj beskrivning'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Beskrivning: TcxLabel
    Left = 88
    Top = 76
    Caption = 'Beskrivning'
  end
  object Panel1: TPanel
    Left = 0
    Top = 162
    Width = 470
    Height = 65
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 168
      Top = 16
      Width = 97
      Height = 27
      TabOrder = 0
      Kind = bkOK
    end
  end
  object cbDescription: TcxDBComboBox
    Left = 168
    Top = 72
    DataBinding.DataField = 'Description'
    DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
    Properties.ImmediatePost = True
    Properties.Items.Strings = (
      'Arbete'
      'Vara')
    TabOrder = 2
    Width = 149
  end
end
