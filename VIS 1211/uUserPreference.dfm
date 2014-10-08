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
  object siLangLinked_fUserPreference: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 336
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005500730065007200500072006500660065007200
      65006E0063006500010055007300650072002000700072006500660065007200
      65006E0063006500010001000D000A004C006100620065006C00360001004600
      7200E5006700610020006100760072006F00700020006D0061006C006C006100
      7200010001000D000A004C006100620065006C00370001004500780063006500
      6C002000660069006C0065007200010001000D000A004C006100620065006C00
      310001004C004F0020006D0061006C006C0061007200010001000D000A004C00
      6100620065006C00320001004D0061007000700061007200010001000D000A00
      4C006100620065006C003300010057006F006F00640058002000660069006C00
      650072003A00010001000D000A004C006100620065006C00340001004D006900
      6E00200065006D00610069006C00610064007200650073007300010001000D00
      0A00620062004F004B0001004F004B00010001000D000A006200620043006100
      6E00630065006C000100430061006E00630065006C00010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00540066005500730065007200
      50007200650066006500720065006E006300650001004D005300200053006100
      6E007300200053006500720069006600010001000D000A004C00610062006500
      6C00320001004D0053002000530061006E007300200053006500720069006600
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      54006600550073006500720050007200650066006500720065006E0063006500
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A004C006100620065006C003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A00}
  end
end
