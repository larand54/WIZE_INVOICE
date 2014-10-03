object fExportLoadPurpose: TfExportLoadPurpose
  Left = 405
  Top = 190
  Width = 461
  Height = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rgPurpose: TcxRadioGroup
    Left = 48
    Top = 32
    Caption = 'V'#228'lj typ av indlagring'
    Properties.Items = <
      item
        Caption = 'Indlagres uden behandling'
        Value = 0
      end
      item
        Caption = 'Inlagres for behandling'
        Value = 1
      end>
    TabOrder = 0
    Height = 113
    Width = 353
  end
  object Panel1: TPanel
    Left = 0
    Top = 208
    Width = 453
    Height = 55
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 136
      Top = 8
      Width = 75
      Height = 33
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 8
      Width = 75
      Height = 33
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
