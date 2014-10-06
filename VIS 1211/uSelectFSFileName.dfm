object fSelectFSFileName: TfSelectFSFileName
  Left = 229
  Top = 107
  Caption = 'V'#228'lj en f'#246'ljesedel att importera'
  ClientHeight = 376
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 335
    Width = 600
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 346
    ExplicitWidth = 608
    object BitBtn1: TBitBtn
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 304
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object LBFSFiles: TListBox
    Left = 0
    Top = 0
    Width = 600
    Height = 335
    Align = alClient
    ItemHeight = 13
    Sorted = True
    TabOrder = 1
  end
end
