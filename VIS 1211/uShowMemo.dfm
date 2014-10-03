object fShowMemo: TfShowMemo
  Left = 229
  Top = 107
  Width = 507
  Height = 500
  ActiveControl = BitBtn1
  Caption = 'Info'
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
    Height = 432
    Width = 499
  end
  object Panel1: TPanel
    Left = 0
    Top = 432
    Width = 499
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 197
      Top = 5
      Width = 78
      Height = 28
      Caption = '&St'#228'ng'
      TabOrder = 0
      Kind = bkClose
    end
  end
end
