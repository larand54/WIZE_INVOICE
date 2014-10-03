object fAddSpecialLengths: TfAddSpecialLengths
  Left = 224
  Top = 107
  Width = 314
  Height = 242
  ActiveControl = eLength
  Caption = 'Speciall'#228'ngder'
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
  object lbSpecialLengths: TListBox
    Left = 152
    Top = 8
    Width = 137
    Height = 145
    ItemHeight = 13
    MultiSelect = True
    Sorted = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 40
    Width = 97
    Height = 25
    Action = acAddLength
    Caption = 'L'#228'gg till l'#228'ngd'
    Default = True
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 16
    Top = 72
    Width = 97
    Height = 25
    Action = acRemoveLength
    Caption = 'Ta bort markerade'
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 174
    Width = 306
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn3: TBitBtn
      Left = 64
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 152
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object eLength: TcxMaskEdit
    Left = 16
    Top = 16
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d{1,7}('#39','#39'\d\d?)?'
    Properties.MaxLength = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 4
    Width = 97
  end
  object ActionList1: TActionList
    Left = 40
    Top = 104
    object acAddLength: TAction
      Caption = 'L'#228'gg till l'#228'ngd'
      OnExecute = acAddLengthExecute
    end
    object acRemoveLength: TAction
      Caption = 'Ta bort l'#228'ngd'
      OnExecute = acRemoveLengthExecute
    end
  end
end
