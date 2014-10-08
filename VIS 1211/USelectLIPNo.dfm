object fSelectLIPNo: TfSelectLIPNo
  Left = 0
  Top = 0
  ActiveControl = lcPIP
  Caption = 'fSelectLIPNo'
  ClientHeight = 151
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 94
    Width = 476
    Height = 57
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 176
    ExplicitWidth = 441
    object cxButton1: TcxButton
      Left = 120
      Top = 16
      Width = 97
      Height = 33
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 240
      Top = 16
      Width = 97
      Height = 33
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PanelLager: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 94
    Align = alClient
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 18
      Top = 17
      Caption = 'Lagerst'#228'lle:'
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 37
      Caption = 'Lagergrupp:'
    end
    object lcPIP: TcxDBLookupComboBox
      Left = 80
      Top = 8
      DataBinding.DataField = 'PIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      OnEnter = lcPIPEnter
      OnExit = lcPIPExit
      Width = 305
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 80
      Top = 32
      DataBinding.DataField = 'LIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 3
      OnEnter = lcLIPEnter
      OnExit = lcLIPExit
      Width = 305
    end
  end
  object cds_LO_LookUp: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT '
      'CSH.LoadingLocationNo AS LoadingPIPNo, CSH.LoadingLIPNo'
      'FROM dbo.CustomerShippingPlanHeader CSH'
      'WHERE'
      'CSH.ShippingPlanNo = :ShippingPlanNo')
    Left = 208
    Top = 88
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LO_LookUpLoadingPIPNo: TIntegerField
      FieldName = 'LoadingPIPNo'
      Origin = 'LoadingPIPNo'
    end
    object cds_LO_LookUpLoadingLIPNo: TIntegerField
      FieldName = 'LoadingLIPNo'
      Origin = 'LoadingLIPNo'
    end
  end
  object mtProps: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 89
    Top = 85
    object mtPropsFakturanr: TIntegerField
      FieldName = 'Fakturanr'
    end
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'ORT'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 89
    Top = 133
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP
    Left = 368
    Top = 128
  end
  object ds_PIP2: TDataSource
    DataSet = cds_PIP
    Left = 288
    Top = 128
  end
  object cds_PIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      ''
      'WHERE PIP.SequenceNo = 1')
    Left = 288
    Top = 72
    object cds_PIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PIPORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
    object cds_PIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_LIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LAGERGRUPP, LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM'
      'dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.SequenceNo = 1')
    Left = 368
    Top = 72
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIPLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      Size = 50
    end
    object cds_LIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object siLangLinked_fSelectLIPNo: TsiLangLinked
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
    Left = 232
    Top = 80
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C00490050004E00
      6F0001006600530065006C006500630074004C00490050004E006F0001000100
      0D000A006300780042007500740074006F006E00310001004F004B0001000100
      0D000A006300780042007500740074006F006E0032000100C5006E0067007200
      6100010001000D000A00630078004C006100620065006C00310001004C006100
      67006500720073007400E4006C006C0065003A00010001000D000A0063007800
      4C006100620065006C00320001004C0061006700650072006700720075007000
      70003A00010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      6300640073005F004C004F005F004C006F006F006B00550070004C006F006100
      640069006E0067005000490050004E006F0001004C006F006100640069006E00
      67005000490050004E006F00010001000D000A006300640073005F004C004F00
      5F004C006F006F006B00550070004C006F006100640069006E0067004C004900
      50004E006F0001004C006F006100640069006E0067004C00490050004E006F00
      010001000D000A006D007400500072006F0070007300460061006B0074007500
      720061006E0072000100460061006B0074007500720061006E00720001000100
      0D000A006D007400500072006F00700073005000490050004E006F0001005000
      490050004E006F00010001000D000A006D007400500072006F00700073004C00
      490050004E006F0001004C00490050004E006F00010001000D000A006D007400
      500072006F00700073005000490050000100500049005000010001000D000A00
      6D007400500072006F00700073004C004900500001004C004900500001000100
      0D000A006D007400500072006F00700073004F0077006E00650072004E006F00
      01004F0077006E00650072004E006F00010001000D000A006300640073005F00
      5000490050005000490050004E006F0001005000490050004E006F0001000100
      0D000A006300640073005F005000490050004F005200540001004F0052005400
      010001000D000A006300640073005F005000490050004F0077006E0065007200
      4E006F0001004F0077006E00650072004E006F00010001000D000A0063006400
      73005F004C00490050004C00490050004E006F0001004C00490050004E006F00
      010001000D000A006300640073005F004C00490050004C004100470045005200
      4700520055005000500001004C00410047004500520047005200550050005000
      010001000D000A006300640073005F004C00490050005000490050004E006F00
      01005000490050004E006F00010001000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054006600530065006C00
      6500630074004C00490050004E006F0001005400610068006F006D0061000100
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A006300640073005F004C004F005F004C006F006F006B005500
      70002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      0100560049005300010001000D000A006300640073005F004C004F005F004C00
      6F006F006B00550070004C006F006100640069006E0067005000490050004E00
      6F002E004F0072006900670069006E0001004C006F006100640069006E006700
      5000490050004E006F00010001000D000A006300640073005F004C004F005F00
      4C006F006F006B00550070004C006F006100640069006E0067004C0049005000
      4E006F002E004F0072006900670069006E0001004C006F006100640069006E00
      67004C00490050004E006F00010001000D000A006D007400500072006F007000
      73002E00560065007200730069006F006E00010037002E00360033002E003000
      300020005300740061006E006400610072006400200045006400690074006900
      6F006E00010001000D000A006300640073005F005000490050002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      010001000D000A006300640073005F005000490050005000490050004E006F00
      2E004F0072006900670069006E0001005000490050004E006F00010001000D00
      0A006300640073005F005000490050004F00520054002E004F00720069006700
      69006E0001004F0052005400010001000D000A006300640073005F0050004900
      50004F0077006E00650072004E006F002E004F0072006900670069006E000100
      4F0077006E00650072004E006F00010001000D000A006300640073005F004C00
      490050002E0043006F006E006E0065006300740069006F006E004E0061006D00
      65000100560049005300010001000D000A006300640073005F004C0049005000
      4C00490050004E006F002E004F0072006900670069006E0001004C0049005000
      4E006F00010001000D000A006300640073005F004C00490050004C0041004700
      45005200470052005500500050002E004F0072006900670069006E0001004C00
      410047004500520047005200550050005000010001000D000A00630064007300
      5F004C00490050005000490050004E006F002E004F0072006900670069006E00
      01005000490050004E006F00010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A0054006600530065006C006500630074004C0049005000
      4E006F000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00}
  end
end
