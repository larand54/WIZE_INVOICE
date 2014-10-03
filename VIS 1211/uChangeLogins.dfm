object OKHelpBottomDlg: TOKHelpBottomDlg
  Left = 335
  Top = 193
  ActiveControl = eAD_Name
  Caption = 'Byt anv'#228'ndare'
  ClientHeight = 220
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 39
    Top = 49
    Width = 61
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'AD Namn:'
  end
  object Label2: TLabel
    Left = 39
    Top = 98
    Width = 55
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Databas:'
  end
  object eAD_Name: TEdit
    Left = 108
    Top = 39
    Width = 149
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
  end
  object Button1: TButton
    Left = 266
    Top = 36
    Width = 188
    Height = 30
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'H'#228'mta standard AD namn'
    TabOrder = 2
    OnClick = Button1Click
  end
  object eDatabas: TEdit
    Left = 108
    Top = 89
    Width = 149
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
  end
  object Button2: TButton
    Left = 266
    Top = 85
    Width = 188
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'H'#228'mta standard databas'
    TabOrder = 3
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 118
    Top = 170
    Width = 92
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 234
    Top = 170
    Width = 92
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
end
