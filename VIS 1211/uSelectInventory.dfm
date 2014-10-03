object frmSelectInventory: TfrmSelectInventory
  Left = 202
  Top = 116
  Width = 412
  Height = 233
  Caption = 'V'#228'lj lager'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 35
    Top = 73
    Width = 57
    Height = 13
    Caption = 'Lagerst'#228'lle::'
  end
  object Label13: TLabel
    Left = 35
    Top = 97
    Width = 57
    Height = 13
    Caption = 'Lagergrupp:'
  end
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 353
    Height = 57
    AutoSize = False
    Color = clYellow
    ParentColor = False
    WordWrap = True
  end
  object pePhysInventory: TdxPickEdit
    Left = 114
    Top = 68
    Width = 143
    TabOrder = 0
    Text = 'pePhysInventory'
    OnChange = pePhysInventoryChange
  end
  object peLogicalInventory: TdxPickEdit
    Left = 114
    Top = 92
    Width = 143
    TabOrder = 1
    Text = 'peLogicalInventory'
  end
  object bbOK: TBitBtn
    Left = 96
    Top = 152
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkOK
  end
  object bbCancel: TBitBtn
    Left = 184
    Top = 152
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkCancel
  end
end
