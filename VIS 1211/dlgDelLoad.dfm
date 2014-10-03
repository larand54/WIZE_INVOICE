object frmDelLoad: TfrmDelLoad
  Left = 522
  Top = 129
  Width = 324
  Height = 229
  Caption = 'Delete Load'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 220
    Height = 16
    Caption = 'Move package to inventory specified'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 91
    Height = 16
    Caption = 'Inventory place'
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 92
    Height = 16
    Caption = 'Inventory group'
  end
  object ccmbPhysInv: TDBCodeCombo
    Left = 144
    Top = 60
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 0
    OnClick = ccmbPhysInvClick
    Content = ccNames
    CodeField = 'PhysicalInventoryPointNo'
    MeaningField = 'CityName'
  end
  object ccmbLogInv: TDBCodeCombo
    Left = 144
    Top = 108
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 1
    Content = ccNames
    CodeField = 'LogicalInventoryPointNo'
    MeaningField = 'LogicalInventoryName'
  end
  object Button1: TButton
    Left = 32
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = Button2Click
  end
end
