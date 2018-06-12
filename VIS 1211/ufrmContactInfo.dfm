object frmContactInfo: TfrmContactInfo
  Left = 0
  Top = 0
  Caption = 'L'#228'gg upp/redigera kontaktinfo f'#246'r email'
  ClientHeight = 396
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblNewUser: TLabel
    Left = 40
    Top = 24
    Width = 106
    Height = 13
    Caption = 'L'#228'gg till ny anv'#228'ndare'
  end
  object btnNewUser: TSpeedButton
    Left = 16
    Top = 40
    Width = 23
    Height = 22
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000040000000C0000000A0000000400000004000000070000000A0000
      000B0000000D0000000D0000000D0000000C0000000A00000007000000000000
      00000000000B0B5D2FFF042D15AC0002011C32496397113866B70A3972D2093A
      76DB0A458BFF0A448AFF083873DC07346DD4052B5AB8041F4089000000070000
      000B00000016126737FF3CA885FF094321D47093ABFF8BB7DFFF4391D9FF2B85
      D7FF308FE4FF308FE4FF2A84D7FF2981D3FF2A7DCAFF0B488EFF13542FBD1875
      41FF187341FF177340FF2AC696FF24B07EFF196940FD74A0ABFFAAD2EDFF6DB6
      EEFF3F9EEBFF3F9EEBFF46A2ECFF56ADEDFF3B89CDFF0C447FDA20824BFF7AE4
      C9FF39CD9EFF37CC9DFF35CB9CFF33CA9BFF35C193FF278056FE518887FD7EBA
      E3FF51A5E2FF50A6E1FF58A6DFFF1A64A9FA0C3864A3020B1329258C53FFB5F2
      E4FFB5F2E4FFB3F2E4FF7DE6CAFF4AD2A8FF78DCC0FF3F9A6CFB133F2C89416E
      99E03E6C9DFF366596FF184F81DB02080E260000000500000002206F45C02B95
      5AFF299459FF299358FF9AECD6FF7DD6B9FF318D5CEC09201345000000194261
      88DC7DA4CDFF588BC1FF1C4070DE000000190000000000000000000000020000
      0003000000072D9B5FFF7ECEADFF257A4CCB040E092000000005020304205379
      ACF9BDE0F5FF8BC2EBFF335C95FD0103052D0000000300000000000000000000
      000000000002309F63FC1D5F3B9A0104020B000000010000000517335FC05C80
      B0FFCAE8F6FF94C6E9FF375D95FF102345AC0000000900000000000000000000
      0000000000000000000100000001000000000000000000000006205090F64F7C
      B1FF517CAFFF2C5088FF325D98FF183871F40000000B00000000000000000000
      0000000000000000000000000000000000000000000000000003255A9AE66C9D
      D0FE5C8CC1FF76A5D3FF5385BEFF1C427DF70000000700000000000000000000
      00000000000000000000000000000000000000000000000000010C1F3249255B
      92C22E6EB0E62F72B8FA204E82C80A192D590000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0002000000030000000300000003000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    OnClick = btnNewUserClick
  end
  object cxGridContactInfo: TcxGrid
    Left = 16
    Top = 80
    Width = 601
    Height = 273
    TabOrder = 0
    object cxGridContactInfoDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsContactInfo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ColumnHeaderHints = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.DataRowSizing = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGridContactInfoDBTableView1UserID: TcxGridDBColumn
        Caption = 'Anv'#228'ndar ID'
        DataBinding.FieldName = 'UserID'
      end
      object cxGridContactInfoDBTableView1ContactInfoForEmail: TcxGridDBColumn
        Caption = 'Kontaktinfo f'#246'r EMail'
        DataBinding.FieldName = 'ContactInfoForEmail'
        Width = 534
      end
    end
    object cxGridContactInfoLevel1: TcxGridLevel
      GridView = cxGridContactInfoDBTableView1
    end
  end
  object dbcbbNewUser: TDBComboBox
    Left = 40
    Top = 40
    Width = 145
    Height = 21
    DataField = 'UserName'
    DataSource = dsNewUsers
    TabOrder = 1
  end
  object btnClose: TBitBtn
    Left = 288
    Top = 360
    Width = 75
    Height = 25
    Caption = '&St'#228'ng'
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object qryContactInfo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT * FROM dbo.UserContactInfo')
    Left = 512
    Top = 88
    object qryContactInfoUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContactInfoContactInfoForEmail: TMemoField
      FieldName = 'ContactInfoForEmail'
      Origin = 'ContactInfoForEmail'
      BlobType = ftMemo
    end
  end
  object dsContactInfo: TDataSource
    DataSet = qryContactInfo
    Left = 512
    Top = 136
  end
  object con1: TFDConnection
    Params.Strings = (
      'Database=WOODSUPPORT'
      'User_Name=sa'
      'Password=woods2011'
      'Server=CARMAK-FASTER\SQLEXPRESS'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 512
    Top = 48
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 576
    Top = 40
  end
  object fdphysmsqldrvrlnk1: TFDPhysMSSQLDriverLink
    Left = 408
    Top = 96
  end
  object qryNewUsers: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select * from dbo.users U where not exists(SELECT * FROM dbo.Use' +
        'rContactInfo UI WHERE UI.UserID = U.UserID)')
    Left = 520
    Top = 192
    object qryNewUsersUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNewUsersINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      FixedChar = True
      Size = 3
    end
    object qryNewUsersLastName: TStringField
      FieldName = 'LastName'
      Origin = 'LastName'
      FixedChar = True
    end
    object qryNewUsersUserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Required = True
    end
    object qryNewUsersPassword: TStringField
      FieldName = 'Password'
      Origin = 'Password'
      FixedChar = True
      Size = 10
    end
    object qryNewUsersDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 50
    end
    object qryNewUsersCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object qryNewUsersModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object qryNewUsersDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object qryNewUsersCompanyNo: TIntegerField
      FieldName = 'CompanyNo'
      Origin = 'CompanyNo'
    end
    object qryNewUsersFirstName: TStringField
      FieldName = 'FirstName'
      Origin = 'FirstName'
      FixedChar = True
      Size = 10
    end
    object qryNewUsersEditLoadOrder: TIntegerField
      FieldName = 'EditLoadOrder'
      Origin = 'EditLoadOrder'
    end
    object qryNewUsersCustomSalesDimListNo: TIntegerField
      FieldName = 'CustomSalesDimListNo'
      Origin = 'CustomSalesDimListNo'
    end
    object qryNewUsersShowPrice: TIntegerField
      FieldName = 'ShowPrice'
      Origin = 'ShowPrice'
    end
    object qryNewUsersAD_Name: TStringField
      FieldName = 'AD_Name'
      Origin = 'AD_Name'
      Size = 50
    end
    object qryNewUsersLanguageID: TIntegerField
      FieldName = 'LanguageID'
      Origin = 'LanguageID'
    end
    object qryNewUsersAllowedSetCOActive: TIntegerField
      FieldName = 'AllowedSetCOActive'
      Origin = 'AllowedSetCOActive'
    end
    object qryNewUsersPermitLevelMovePkgs: TIntegerField
      FieldName = 'PermitLevelMovePkgs'
      Origin = 'PermitLevelMovePkgs'
    end
    object qryNewUsersAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object qryNewUsersCanChangeLOVolUnit: TIntegerField
      FieldName = 'CanChangeLOVolUnit'
      Origin = 'CanChangeLOVolUnit'
    end
  end
  object dsNewUsers: TDataSource
    DataSet = qryNewUsers
    Left = 528
    Top = 240
  end
end
