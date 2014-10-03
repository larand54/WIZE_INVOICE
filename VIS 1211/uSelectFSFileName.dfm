object fSelectFSFileName: TfSelectFSFileName
  Left = 229
  Top = 107
  Width = 616
  Height = 414
  Caption = 'V'#228'lj en f'#246'ljesedel att importera'
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
    Top = 346
    Width = 608
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 304
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object LBFSFiles: TListBox
    Left = 0
    Top = 0
    Width = 608
    Height = 346
    Align = alClient
    ItemHeight = 13
    Sorted = True
    TabOrder = 1
  end
end
