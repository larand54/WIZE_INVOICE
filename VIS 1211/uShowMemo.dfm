object fShowMemo: TfShowMemo
  Left = 229
  Top = 107
  ActiveControl = BitBtn1
  Caption = 'Info'
  ClientHeight = 462
  ClientWidth = 491
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
  object cxMemo1: TcxMemo
    Left = 0
    Top = 0
    Align = alClient
    Properties.ScrollBars = ssVertical
    TabOrder = 0
    ExplicitWidth = 499
    ExplicitHeight = 432
    Height = 421
    Width = 491
  end
  object Panel1: TPanel
    Left = 0
    Top = 421
    Width = 491
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 432
    ExplicitWidth = 499
    object BitBtn1: TBitBtn
      Left = 197
      Top = 5
      Width = 78
      Height = 28
      Caption = '&St'#228'ng'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
end
