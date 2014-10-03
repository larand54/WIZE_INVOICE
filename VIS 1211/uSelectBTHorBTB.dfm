object fSelectBTHorBTB: TfSelectBTHorBTB
  Left = 229
  Top = 107
  Width = 516
  Height = 256
  Caption = 'V'#228'lj leverant'#246'r'
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
    Top = 176
    Width = 508
    Height = 53
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 105
      Height = 33
      TabOrder = 0
      Kind = bkOK
    end
  end
end
