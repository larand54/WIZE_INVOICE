object fSelectAttBeskrivning: TfSelectAttBeskrivning
  Left = 372
  Top = 328
  ActiveControl = cbDescription
  Caption = 'V'#228'lj beskrivning'
  ClientHeight = 216
  ClientWidth = 462
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
    Top = 151
    Width = 462
    Height = 65
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 162
    ExplicitWidth = 470
    object BitBtn1: TBitBtn
      Left = 168
      Top = 16
      Width = 97
      Height = 27
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
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
