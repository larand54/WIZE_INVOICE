object dlgLogOn: TdlgLogOn
  Left = 281
  Top = 208
  ActiveControl = editUserName
  BorderStyle = bsDialog
  Caption = 'Logon'
  ClientHeight = 153
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 7
    Top = 13
    Width = 32
    Height = 32
    AutoSize = True
    Center = True
    Picture.Data = {
      055449636F6E0000010001002020040000000000E80200001600000028000000
      2000000040000000010004000000000000020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF0000000000000000000000000000000000000000000000000000000007
      0700000000000000000000000000707070707000000000000000000000070707
      0707070000007000007070700070707070707070000707070707070700070707
      0707070000707070707070707070707070707070070707070707070707070707
      0700070770707070707070707070707070000070070707070707070707070707
      0700070700707070707070707070707070707070000000000000000700070707
      070707000000000000000070007070000000707000000000000000000007007B
      7B70070000000000000000000000B7B7B7B7B0000000000000000000000B7B7B
      7B7B7B0000007700077770070007B7B7B7B7B7000000000000000000007B7B7B
      7B000B7000B7B7B7B7B7B7B7B7B7B7B7B00000B00B7B7B7B7B7B7B7B7B7B7B7B
      700000700BBBBBBBBBBBBBB7B7B7B7B7B07770B0000000000000000B007B7B7B
      7B000B70000000000000000B0007B7B7B7B7B7000000000000000000000B7B7B
      7B7B7B0000000000000000000000B7B7B7B7B00000000000000000000000007B
      7B70000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFEBFFFFFF557FFFFEAABF7D5D555EAAAEAABD5555555
      AAAAAABA5555557DAAAAAABAD5555555FFFEEAABFFFDD415FFFFE003FFFFE003
      F384C001E0004001C000000080000038000000380000000080000000FFFC4001
      FFFCC001FFFFE003FFFFF007FFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF}
  end
  object GroupBox1: TGroupBox
    Left = 46
    Top = 7
    Width = 216
    Height = 104
    Caption = ' Verity Information:  '
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'User Name:'
    end
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Password:'
    end
    object editPassword: TEdit
      Left = 80
      Top = 48
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object ckRememberPassword: TCheckBox
      Left = 80
      Top = 72
      Width = 121
      Height = 17
      Caption = 'Remember password.'
      TabOrder = 2
    end
    object editUserName: TEdit
      Left = 80
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = editUserNameChange
    end
  end
  object btnDBSetup: TButton
    Left = 51
    Top = 120
    Width = 65
    Height = 25
    Caption = '&DB Setup...'
    TabOrder = 1
    OnClick = btnDBSetupClick
  end
  object btnOK: TButton
    Left = 123
    Top = 120
    Width = 65
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 195
    Top = 120
    Width = 65
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 3
  end
end
