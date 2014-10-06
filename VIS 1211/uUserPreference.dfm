object fUserPreference: TfUserPreference
  Left = 270
  Top = 169
  BorderStyle = bsDialog
  Caption = 'User preference'
  ClientHeight = 344
  ClientWidth = 688
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
  object Label6: TLabel
    Left = 24
    Top = 72
    Width = 87
    Height = 13
    Caption = 'Fr'#229'ga avrop mallar'
  end
  object Label7: TLabel
    Left = 24
    Top = 104
    Width = 45
    Height = 13
    Caption = 'Excel filer'
  end
  object Label1: TLabel
    Left = 24
    Top = 136
    Width = 44
    Height = 13
    Caption = 'LO mallar'
  end
  object Label2: TLabel
    Left = 136
    Top = 40
    Width = 43
    Height = 13
    Caption = 'Mappar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 176
    Width = 58
    Height = 13
    Caption = 'WoodX filer:'
  end
  object Label4: TLabel
    Left = 24
    Top = 224
    Width = 75
    Height = 13
    Caption = 'Min emailadress'
  end
  object bbOK: TBitBtn
    Left = 240
    Top = 288
    Width = 81
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 5
  end
  object bbCancel: TBitBtn
    Left = 344
    Top = 288
    Width = 75
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 6
  end
  object beFragaAvropDir: TcxDBButtonEdit
    Left = 136
    Top = 64
    DataBinding.DataField = 'UserDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beFragaAvropDirPropertiesButtonClick
    TabOrder = 0
    Width = 457
  end
  object beExcelDir: TcxDBButtonEdit
    Left = 136
    Top = 96
    DataBinding.DataField = 'ExcelDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    TabOrder = 1
    Width = 457
  end
  object beLOMallar: TcxDBButtonEdit
    Left = 136
    Top = 128
    DataBinding.DataField = 'LODir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beLOMallarPropertiesButtonClick
    TabOrder = 2
    Width = 457
  end
  object teMyEmailAddress: TcxDBTextEdit
    Left = 136
    Top = 216
    DataBinding.DataField = 'MyEmailAddress'
    DataBinding.DataSource = dmsSystem.ds_Props
    TabOrder = 4
    Width = 457
  end
  object beWoodXDir: TcxDBButtonEdit
    Left = 136
    Top = 168
    DataBinding.DataField = 'WoodXDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beWoodXDirPropertiesButtonClick
    TabOrder = 3
    Width = 457
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 464
    Top = 24
  end
end
