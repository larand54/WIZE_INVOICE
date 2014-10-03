object Form2: TForm2
  Left = 0
  Top = 0
  Align = alClient
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 303
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object HostPanel: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 303
    Align = alClient
    Caption = 'View Crystal Report'
    TabOrder = 0
    ExplicitWidth = 427
    ExplicitHeight = 275
  end
  object HYModuleManager1: THYModuleManager
    AutoLoad = False
    EnforceSecurity = False
    ResolveInterfacesToOwner = False
    Left = 304
    Top = 40
  end
end
