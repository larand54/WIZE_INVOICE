object fEntryField: TfEntryField
  Left = 303
  Top = 226
  ActiveControl = eNoofpkgs
  Caption = 'Enter no of pkgs'
  ClientHeight = 169
  ClientWidth = 376
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
    Left = 64
    Top = 64
    Width = 78
    Height = 13
    Caption = 'Enter no of pkgs'
  end
  object bbok: TBitBtn
    Left = 96
    Top = 128
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object bbcancel: TBitBtn
    Left = 192
    Top = 128
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object eNoofpkgs: TcxMaskEdit
    Left = 152
    Top = 56
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d{1,7}('#39','#39'\d\d?)?'
    Properties.MaxLength = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Width = 153
  end
end
