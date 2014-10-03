object fPrintTest: TfPrintTest
  Left = 0
  Top = 0
  Caption = 'fPrintTest'
  ClientHeight = 682
  ClientWidth = 1202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lb_Name: TLabel
    Left = 17
    Top = 43
    Width = 63
    Height = 13
    Caption = 'Report Name'
  end
  object lbRPTFilePath: TLabel
    Left = 16
    Top = 89
    Width = 74
    Height = 13
    Caption = 'Report FilePath'
  end
  object lb_ReportOptions: TLabel
    Left = 16
    Top = 177
    Width = 73
    Height = 13
    Caption = 'Report Options'
  end
  object Label1: TLabel
    Left = 16
    Top = 254
    Width = 70
    Height = 13
    Caption = 'PDF StorePath'
  end
  object lb_PrintSetUp: TLabel
    Left = 16
    Top = 313
    Width = 54
    Height = 13
    Caption = 'Print SetUp'
  end
  object lb_Parameters: TLabel
    Left = 16
    Top = 407
    Width = 55
    Height = 13
    Caption = 'Parameters'
  end
  object ServerName: TLabel
    Left = 272
    Top = 48
    Width = 59
    Height = 13
    Caption = 'ServerName'
  end
  object DatabaseName: TLabel
    Left = 272
    Top = 89
    Width = 73
    Height = 13
    Caption = 'DatabaseName'
  end
  object lbUserID: TLabel
    Left = 272
    Top = 137
    Width = 33
    Height = 13
    Caption = 'UserID'
  end
  object lbPassword: TLabel
    Left = 272
    Top = 177
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object cxButton1: TcxButton
    Left = 304
    Top = 251
    Width = 193
    Height = 81
    Caption = 'Print'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object ed_ReportName: TEdit
    Left = 106
    Top = 40
    Width = 167
    Height = 21
    TabOrder = 1
    Text = 'FAKTURA_ENG_VER3'
  end
  object edRPTFilePath: TEdit
    Left = 106
    Top = 86
    Width = 160
    Height = 21
    TabOrder = 2
    Text = 'C:\VIS\CrystalReports\'
  end
  object rg_ReportOptions: TRadioGroup
    Left = 106
    Top = 137
    Width = 117
    Height = 93
    Caption = 'Report Options'
    ItemIndex = 0
    Items.Strings = (
      'View Report'
      'PrintSetUp'
      'Save PDF')
    TabOrder = 3
    OnClick = rg_ReportOptionsClick
  end
  object edStorePath: TEdit
    Left = 105
    Top = 251
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'C:\Users\Public\Documents\'
  end
  object rg_PrintSetUp: TRadioGroup
    Left = 106
    Top = 291
    Width = 117
    Height = 64
    Caption = 'Print SetUp'
    ItemIndex = 1
    Items.Strings = (
      'Default Printer'
      'Choose Printer')
    TabOrder = 5
    OnClick = rg_PrintSetUpClick
  end
  object lbx_Parameters: TListBox
    Left = 105
    Top = 373
    Width = 121
    Height = 97
    ItemHeight = 13
    MultiSelect = True
    TabOrder = 6
  end
  object edServerName: TEdit
    Left = 376
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'carmak-speed\sqlexpress'
  end
  object edDBName: TEdit
    Left = 376
    Top = 86
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'vis_vida'
  end
  object edUserID: TEdit
    Left = 376
    Top = 134
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'sa'
  end
  object edPassword: TEdit
    Left = 376
    Top = 174
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'woods2011'
  end
  object bt_AddParams: TButton
    Left = 106
    Top = 476
    Width = 53
    Height = 25
    Caption = 'Add'
    TabOrder = 11
  end
  object bt_ClearParams: TButton
    Left = 165
    Top = 476
    Width = 58
    Height = 25
    Caption = 'Clear'
    TabOrder = 12
    OnClick = bt_ClearParamsClick
  end
  object chkSecurity: TCheckBox
    Left = 376
    Top = 213
    Width = 121
    Height = 17
    Caption = 'Integrated Security'
    TabOrder = 13
  end
  object DelphiHostPanel: TPanel
    Left = 596
    Top = 0
    Width = 606
    Height = 682
    Align = alRight
    AutoSize = True
    BevelKind = bkSoft
    Caption = 'DelphiHostPanel'
    TabOrder = 14
    ExplicitLeft = 520
    ExplicitHeight = 624
  end
end
