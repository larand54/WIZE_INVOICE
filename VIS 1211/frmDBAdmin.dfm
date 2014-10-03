object dlgDBAdmin: TdlgDBAdmin
  Left = 273
  Top = 252
  BorderStyle = bsDialog
  Caption = 'Database Administration'
  ClientHeight = 204
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 393
    Height = 145
    Caption = 'Verity Information: '
    TabOrder = 0
    object Label2: TLabel
      Left = 33
      Top = 32
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'db User Name:'
    end
    object Label1: TLabel
      Left = 41
      Top = 56
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'db Password:'
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Remote Database:'
    end
    object Label6: TLabel
      Left = 240
      Top = 72
      Width = 135
      Height = 13
      Caption = '(Example: merlin12:vidadata)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 240
      Top = 48
      Width = 70
      Height = 13
      Caption = '(Example: 123)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 240
      Top = 24
      Width = 63
      Height = 13
      Caption = '(Example: sa)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 104
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Admin Password:'
    end
    object Label8: TLabel
      Left = 240
      Top = 104
      Width = 122
      Height = 13
      Caption = '(Change admin password)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object editUserName: TEdit
      Left = 112
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = RemoveHighlight
    end
    object editPassword: TEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object editRemoteDataBase: TEdit
      Left = 112
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = RemoveHighlight
    end
    object editUserKey: TEdit
      Left = 112
      Top = 104
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
  end
  object btnOK: TButton
    Left = 256
    Top = 168
    Width = 65
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 328
    Top = 168
    Width = 65
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
