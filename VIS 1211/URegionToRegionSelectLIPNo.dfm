object fRegionToRegionSelectLIPNo: TfRegionToRegionSelectLIPNo
  Left = 0
  Top = 0
  ActiveControl = lcVerk
  Caption = 'Select owner and inventory stock to store packages to'
  ClientHeight = 327
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 253
    Width = 622
    Height = 74
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 157
      Top = 21
      Width = 127
      Height = 43
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 314
      Top = 21
      Width = 127
      Height = 43
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PanelLager: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 253
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 23
      Top = 64
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lagerst'#228'lle:'
    end
    object cxLabel2: TcxLabel
      Left = 23
      Top = 94
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lagergrupp:'
    end
    object lcPIP: TcxDBLookupComboBox
      Left = 104
      Top = 58
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 3
      Width = 398
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 104
      Top = 90
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'LIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 4
      Width = 398
    end
    object cxLabel3: TcxLabel
      Left = 23
      Top = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #196'gare:'
    end
    object lcVerk: TcxDBLookupComboBox
      Left = 103
      Top = 26
      DataBinding.DataField = 'Verk'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Width = 399
    end
    object cxLabel4: TcxLabel
      Left = 104
      Top = 128
      Caption = 'Select owner and inventory stock to store packages to'
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
    Left = 184
    Top = 136
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
    Top = 141
    object mtPropsFakturanr: TIntegerField
      FieldName = 'Fakturanr'
    end
    object mtPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtPropsOwnerNoChange
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
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtPropsPIPNoChange
    end
    object mtPropsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 89
    Top = 189
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP
    Left = 368
    Top = 184
  end
  object ds_PIP2: TDataSource
    DataSet = cds_PIP
    Left = 288
    Top = 184
  end
  object cds_PIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS ORT'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo'
      'AND PH.SequenceNo = 1'
      ''
      ''
      'Order By  CY.CITYNAME')
    Left = 288
    Top = 128
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
  end
  object cds_LIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS Lagergrupp'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1'
      ''
      'Order By LogicalInventoryName ')
    Left = 368
    Top = 128
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
  end
  object siLangLinked_fSelectLIPNo: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
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
      'ListField'
      'HelpFile'
      'Origin'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'PropertiesClassName'
      'AutoIncFields'
      'CaseInsFields'
      'Categories'
      'ClassName'
      'CommandText'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'LockSQL'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'RegistryPath'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'PropertiesClassName')
    Left = 184
    Top = 200
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660052006500670069006F006E0054006F0052006500
      670069006F006E00530065006C006500630074004C00490050004E006F000100
      6600530065006C006500630074004C00490050004E006F000100010001000D00
      0A006300780042007500740074006F006E00310001004F004B00010001000100
      0D000A006300780042007500740074006F006E0032000100C5006E0067007200
      61000100010001000D000A00630078004C006100620065006C00310001004C00
      610067006500720073007400E4006C006C0065003A000100010001000D000A00
      630078004C006100620065006C00320001004C00610067006500720067007200
      7500700070003A000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A006300640073005F004C004F005F004C006F006F006B0055007000
      4C006F006100640069006E0067005000490050004E006F0001004C006F006100
      640069006E0067005000490050004E006F00010001000D000A00630064007300
      5F004C004F005F004C006F006F006B00550070004C006F006100640069006E00
      67004C00490050004E006F0001004C006F006100640069006E0067004C004900
      50004E006F00010001000D000A006D007400500072006F007000730046006100
      6B0074007500720061006E0072000100460061006B0074007500720061006E00
      7200010001000D000A006D007400500072006F00700073005000490050004E00
      6F0001005000490050004E006F00010001000D000A006D007400500072006F00
      700073004C00490050004E006F0001004C00490050004E006F00010001000D00
      0A006D007400500072006F007000730050004900500001005000490050000100
      01000D000A006D007400500072006F00700073004C004900500001004C004900
      5000010001000D000A006D007400500072006F00700073004F0077006E006500
      72004E006F0001004F0077006E00650072004E006F00010001000D000A006300
      640073005F005000490050005000490050004E006F0001005000490050004E00
      6F00010001000D000A006300640073005F005000490050004F00520054000100
      4F0052005400010001000D000A006300640073005F004C00490050004C004900
      50004E006F0001004C00490050004E006F00010001000D000A00630064007300
      5F004C00490050004C0041004700450052004700520055005000500001004C00
      410047004500520047005200550050005000010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      52006500670069006F006E0054006F0052006500670069006F006E0053006500
      6C006500630074004C00490050004E006F0001005400610068006F006D006100
      01005400610068006F006D00610001005400610068006F006D0061000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660052006500
      670069006F006E0054006F0052006500670069006F006E00530065006C006500
      630074004C00490050004E006F000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00}
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from Client c'
      'where  SalesRegionNo = :SalesRegionNo')
    Left = 440
    Top = 128
    ParamData = <
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 440
    Top = 184
  end
end
