object fSelectBTHorBTB: TfSelectBTHorBTB
  Left = 229
  Top = 107
  Caption = 'V'#228'lj leverant'#246'r'
  ClientHeight = 218
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cgSelectSupplier: TcxRadioGroup
    Left = 16
    Top = 24
    Caption = 'V'#228'lj leverant'#246'r'
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'BTH'
        Value = 0
      end
      item
        Caption = 'BTB'
        Value = 1
      end>
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 137
    Width = 465
  end
  object Panel1: TPanel
    Left = 0
    Top = 165
    Width = 500
    Height = 53
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 176
    ExplicitWidth = 508
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 105
      Height = 33
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
end
