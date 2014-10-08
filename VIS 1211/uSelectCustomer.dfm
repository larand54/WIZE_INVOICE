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
    Left = 224
    Top = 256
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00530065006C0065006300740043007500
      730074006F006D006500720001005600E4006C006A0020004B0075006E006400
      010001000D000A00620062004F004B0001004F004B00010001000D000A006200
      6200430061006E00630065006C000100430061006E00630065006C0001000100
      0D000A0067007200640043006C00690065006E00740073004400420054006100
      62006C0065005600690065007700310043006C00690065006E0074004E006100
      6D00650001004B0075006E006400010001000D000A0067007200640043006C00
      690065006E0074007300440042005400610062006C0065005600690065007700
      310043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F00010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      6300640073005F0043006C00690065006E007400730043006C00690065006E00
      74004E006F00010043006C00690065006E0074004E006F00010001000D000A00
      6300640073005F0043006C00690065006E007400730043006C00690065006E00
      74004E0061006D00650001004B0075006E006400010001000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      660072006D00530065006C0065006300740043007500730074006F006D006500
      720001004D0053002000530061006E0073002000530065007200690066000100
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A0067007200640043006C00690065006E007400730044004200
      5400610062006C0065005600690065007700310043006C00690065006E007400
      4E0061006D0065002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078005400650078007400
      4500640069007400500072006F00700065007200740069006500730001000100
      0D000A006300640073005F0043006C00690065006E00740073002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      010001000D000A006300640073005F0043006C00690065006E00740073004300
      6C00690065006E0074004E006F002E004F0072006900670069006E0001004300
      6C00690065006E0074004E006F00010001000D000A006300640073005F004300
      6C00690065006E007400730043006C00690065006E0074004E0061006D006500
      2E004F0072006900670069006E00010043006C00690065006E0074004E006100
      6D006500010001000D000A00730071005F0041006C006C0043006C0069006500
      6E00740073002E0043006F006E006E0065006300740069006F006E004E006100
      6D0065000100560049005300010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400660072006D00530065006C006500630074004300
      7500730074006F006D00650072000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00}
  end
end
