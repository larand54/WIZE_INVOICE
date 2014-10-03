object fPkgNoPos: TfPkgNoPos
  Left = 270
  Top = 246
  Width = 366
  Height = 339
  Caption = 'fPkgNoPos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 81
    Height = 13
    Caption = 'PaketNr position:'
  end
  object Label2: TLabel
    Left = 32
    Top = 104
    Width = 120
    Height = 13
    Caption = 'Antal positioner i Paketnr:'
  end
  object Label3: TLabel
    Left = 32
    Top = 128
    Width = 116
    Height = 13
    Caption = 'Leverant'#246'rskod position:'
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 153
    Height = 13
    Caption = 'Antal positioner i leverant'#246'rskod:'
  end
  object Bevel1: TBevel
    Left = 24
    Top = 40
    Width = 305
    Height = 153
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 232
    Width = 89
    Height = 33
    TabOrder = 0
    Kind = bkOK
  end
  object ePktnrPos: TEdit
    Left = 208
    Top = 64
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object eAntPosPktNr: TEdit
    Left = 208
    Top = 96
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object eLevKodPos: TEdit
    Left = 208
    Top = 120
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object eAntPosLevKod: TEdit
    Left = 208
    Top = 144
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 232
    Width = 89
    Height = 33
    TabOrder = 5
    Kind = bkCancel
  end
end
