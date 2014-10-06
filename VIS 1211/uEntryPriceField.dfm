object fEntryPriceField: TfEntryPriceField
  Left = 394
  Top = 226
  ActiveControl = mePriceField
  Caption = 'Ange nytt pris'
  ClientHeight = 160
  ClientWidth = 444
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
  object mePriceField: TcxMaskEdit
    Left = 184
    Top = 60
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d+'
    Properties.MaxLength = 0
    TabOrder = 0
    Width = 121
  end
  object LabelForField: TcxLabel
    Left = 120
    Top = 64
    Caption = 'Pris/NM3:'
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 128
    Width = 84
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 128
    Width = 84
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
end
