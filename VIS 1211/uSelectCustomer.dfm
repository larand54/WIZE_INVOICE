object frmSelectCustomer: TfrmSelectCustomer
  Left = 505
  Top = 179
  ActiveControl = grdClients
  Caption = 'V'#228'lj Kund'
  ClientHeight = 504
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 451
    Width = 462
    Height = 53
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 462
    ExplicitWidth = 470
    object bbOK: TBitBtn
      Left = 136
      Top = 16
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 232
      Top = 16
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdClients: TcxGrid
    Left = 0
    Top = 0
    Width = 462
    Height = 451
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 470
    ExplicitHeight = 462
    object grdClientsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_Clients
      DataController.KeyFieldNames = 'ClientNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = grdClientsDBTableView1ClientName
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdClientsDBTableView1ClientName: TcxGridDBColumn
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        SortIndex = 0
        SortOrder = soAscending
      end
      object grdClientsDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        Visible = False
      end
    end
    object grdClientsLevel1: TcxGridLevel
      GridView = grdClientsDBTableView1
    end
  end
  object ds_Clients: TDataSource
    DataSet = cds_Clients
    Left = 16
    Top = 112
  end
  object cds_Clients: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      'SELECT C.ClientNo,     '
      '       C.ClientName    '
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 1'
      'AND C.ClientNo NOT IN  (Select ClientNo FROM CreditGrpClients)'
      ''
      'order by C.ClientName'
      '')
    Left = 16
    Top = 64
    object cds_ClientsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ClientsClientName: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object sq_AllClients: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT C.ClientNo,     '
      '       C.ClientName    '
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 1'
      'order by C.ClientName')
    Left = 64
    Top = 64
  end
  object siLangLinked_frmSelectCustomer: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    DefaultLanguage = 2
    NumOfLanguages = 3
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Swedish'
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
    Left = 224
    Top = 256
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00530065006C0065006300740043007500
      730074006F006D006500720001005600E4006C006A0020004B0075006E006400
      01005600E4006C006A0020004B0075006E006400010001000D000A0062006200
      4F004B0001004F004B000100010001000D000A0062006200430061006E006300
      65006C000100430061006E00630065006C000100010001000D000A0067007200
      640043006C00690065006E0074007300440042005400610062006C0065005600
      690065007700310043006C00690065006E0074004E0061006D00650001004B00
      75006E0064000100010001000D000A0067007200640043006C00690065006E00
      74007300440042005400610062006C0065005600690065007700310043006C00
      690065006E0074004E006F00010043006C00690065006E0074004E006F000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0063006400
      73005F0043006C00690065006E007400730043006C00690065006E0074004E00
      6F00010043006C00690065006E0074004E006F00010001000D000A0063006400
      73005F0043006C00690065006E007400730043006C00690065006E0074004E00
      61006D00650001004B0075006E006400010001000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066007200
      6D00530065006C0065006300740043007500730074006F006D00650072000100
      4D0053002000530061006E00730020005300650072006900660001004D005300
      2000530061006E00730020005300650072006900660001005400610068006F00
      6D0061000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A0067007200640043006C00690065006E00740073004400
      42005400610062006C0065005600690065007700310043006C00690065006E00
      74004E0061006D0065002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800540065007800
      74004500640069007400500072006F0070006500720074006900650073000100
      01000D000A006300640073005F0043006C00690065006E00740073002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      5300010001000D000A006300640073005F0043006C00690065006E0074007300
      43006C00690065006E0074004E006F002E004F0072006900670069006E000100
      43006C00690065006E0074004E006F00010001000D000A006300640073005F00
      43006C00690065006E007400730043006C00690065006E0074004E0061006D00
      65002E004F0072006900670069006E00010043006C00690065006E0074004E00
      61006D006500010001000D000A00730071005F0041006C006C0043006C006900
      65006E00740073002E0043006F006E006E0065006300740069006F006E004E00
      61006D0065000100560049005300010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660072006D00530065006C00650063007400
      43007500730074006F006D00650072000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end
