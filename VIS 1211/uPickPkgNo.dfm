object fPickPkgNo: TfPickPkgNo
  Left = 216
  Top = 125
  Caption = 'Plocka paketnr'
  ClientHeight = 816
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object grdPickPkgNos: TcxGrid
    Left = 0
    Top = 306
    Width = 1284
    Height = 437
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    object grdPickPkgNosDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Cancel.Visible = True
      DataController.DataSource = ds_SelectedPkgNo
      DataController.KeyFieldNames = 'PAKETNR;LEVKOD'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '########'
          Kind = skCount
          FieldName = 'PAKETNR'
          Column = grdPickPkgNosDBTableView1PAKETNR
        end
        item
          Format = '###,###,###.000'
          Kind = skSum
          FieldName = 'AM3'
          Column = grdPickPkgNosDBTableView1AM3
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'STYCK'
          Column = grdPickPkgNosDBTableView1STYCK
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object grdPickPkgNosDBTableView1MARKERAD: TcxGridDBColumn
        Caption = 'V'#228'lj'
        DataBinding.FieldName = 'MARKERAD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Filtering = False
        Width = 42
      end
      object grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn
        Caption = 'Paketnr'
        DataBinding.FieldName = 'PAKETNR'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 38
      end
      object grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn
        Caption = 'Prefix'
        DataBinding.FieldName = 'LEVKOD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 30
      end
      object grdPickPkgNosDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 39
      end
      object grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn
        Caption = 'Styck'
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 39
      end
      object grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn
        Caption = 'Registrerad'
        DataBinding.FieldName = 'REGISTRERAT'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 62
      end
      object grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn
        Caption = 'Styck/l'#228'ngd'
        DataBinding.FieldName = 'STYCKPERL'#196'NGD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 78
      end
      object grdPickPkgNosDBTableView1Lagergrupp: TcxGridDBColumn
        DataBinding.FieldName = 'Lagergrupp'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 177
      end
      object grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn
        Caption = 'Produkt'
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 444
      end
      object grdPickPkgNosDBTableView1HTFStatus: TcxGridDBColumn
        Caption = 'HTF status'
        DataBinding.FieldName = 'HTFStatus'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 92
      end
    end
    object grdPickPkgNosLevel1: TcxGridLevel
      GridView = grdPickPkgNosDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 743
    Width = 1284
    Height = 73
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 20
      Width = 107
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Paket markerade:'
    end
    object LabelNoOfPkgsMarked: TLabel
      Left = 118
      Top = 20
      Width = 7
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '0'
    end
    object BitBtn1: TBitBtn
      Left = 512
      Top = 20
      Width = 110
      Height = 40
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 630
      Top = 20
      Width = 110
      Height = 40
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 139
    Width = 1284
    Height = 167
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 2
    object LabelProduct: TLabel
      Left = 571
      Top = 28
      Width = 80
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelProduct'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelLength: TLabel
      Left = 571
      Top = 48
      Width = 74
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelLength'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelPIPName: TLabel
      Left = 571
      Top = 68
      Width = 92
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 492
      Top = 28
      Width = 49
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Produkt:'
    end
    object Label3: TLabel
      Left = 492
      Top = 48
      Width = 41
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'L'#228'ngd:'
    end
    object Label4: TLabel
      Left = 492
      Top = 68
      Width = 70
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lagerst'#228'lle:'
    end
    object LabelOwnerTitle: TLabel
      Left = 492
      Top = 9
      Width = 40
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #196'gare:'
    end
    object LabelOwner: TLabel
      Left = 571
      Top = 9
      Width = 72
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelOwner'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 492
      Top = 87
      Width = 34
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LONr:'
    end
    object LabelLONr: TLabel
      Left = 571
      Top = 87
      Width = 92
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbFilterOnLength: TcxCheckBox
      Left = 1024
      Top = 9
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Filtrera p'#229' l'#228'ngd'
      Properties.OnChange = cbFilterOnLengthPropertiesChange
      State = cbsChecked
      TabOrder = 0
      Width = 149
    end
    object lcProductDisplayName: TcxDBLookupComboBox
      Left = 837
      Top = 79
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'ProductDisplayName'
      DataBinding.DataSource = dsProduct
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ProductNo'
      Properties.ListColumns = <
        item
          FieldName = 'ProductDisplayName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 1
      Visible = False
      Width = 365
    end
    object cxLabel1: TcxLabel
      Left = 837
      Top = 59
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Produkter i lager'
      Visible = False
    end
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 100
      Height = 80
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acMarkAll
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 118
      Top = 10
      Width = 100
      Height = 80
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acUnmarkAll
      TabOrder = 4
    end
    object cxButton8: TcxButton
      Left = 226
      Top = 10
      Width = 149
      Height = 80
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acSelectMarkedRows
      TabOrder = 5
    end
    object cxLabel2: TcxLabel
      Left = 492
      Top = 123
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lagergrupp:'
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 571
      Top = 119
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'LIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 7
      Width = 179
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 139
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 3
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1282
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Urvalsalternativ'
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 30
      Width = 149
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowMatchingProductAndLength
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 166
      Top = 30
      Width = 150
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowMatchingProduct
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 324
      Top = 30
      Width = 150
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowAddLOPkgsWithMatchingProduct
      TabOrder = 3
    end
    object cxButton6: TcxButton
      Left = 481
      Top = 30
      Width = 160
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowAllAddLOPkgs
      TabOrder = 4
    end
    object cxButton7: TcxButton
      Left = 649
      Top = 30
      Width = 150
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowPkgsWithSameActDimOnly
      TabOrder = 5
    end
    object cxLabel_Val: TcxLabel
      Left = 10
      Top = 107
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '______'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxButton9: TcxButton
      Left = 807
      Top = 30
      Width = 199
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowMatchingLIP
      TabOrder = 7
    end
  end
  object ds_SelectedPkgNo: TDataSource
    DataSet = dmsSystem.mtSelectedPkgNo
    OnDataChange = ds_SelectedPkgNoDataChange
    Left = 576
    Top = 272
  end
  object ActionList1: TActionList
    Left = 272
    Top = 360
    object acPkgInfo: TAction
      Caption = 'Paket information'
      OnExecute = acPkgInfoExecute
    end
    object acMarkAll: TAction
      Caption = 'Markera alla'
      OnExecute = acMarkAllExecute
    end
    object acUnmarkAll: TAction
      Caption = 'Avmarkera alla'
      OnExecute = acUnmarkAllExecute
    end
    object acShowAddLOPkgsWithMatchingProduct: TAction
      Caption = 'Urval add LO && produkt'
      OnExecute = acShowAddLOPkgsWithMatchingProductExecute
    end
    object acShowAllAddLOPkgs: TAction
      Caption = 'Urval add LO'
      OnExecute = acShowAllAddLOPkgsExecute
    end
    object acShowMatchingProductAndLength: TAction
      Caption = 'Urval produkt && l'#228'ngd'
      OnExecute = acShowMatchingProductAndLengthExecute
    end
    object acShowMatchingProduct: TAction
      Caption = 'Urval produkt'
      OnExecute = acShowMatchingProductExecute
    end
    object acShowPkgsWithSameActDimOnly: TAction
      Caption = 'Urval TM'
      OnExecute = acShowPkgsWithSameActDimOnlyExecute
    end
    object acSelectMarkedRows: TAction
      Caption = 'V'#228'lj markerade rader'
      OnExecute = acSelectMarkedRowsExecute
    end
    object acShowMatchingLIP: TAction
      Caption = 'Urval lagergrupp'
      OnExecute = acShowMatchingLIPExecute
    end
  end
  object mtProduct: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end>
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
    Left = 472
    Top = 264
    object mtProductProductNo: TIntegerField
      FieldName = 'ProductNo'
      OnChange = mtProductProductNoChange
    end
    object mtProductProductDisplayName: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductDisplayName'
      LookupDataSet = cds_ProdInLager
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'ProductNo'
      Size = 100
      Lookup = True
    end
  end
  object dsProduct: TDataSource
    DataSet = mtProduct
    Left = 472
    Top = 312
  end
  object sq_PaketLista: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo, pn.SupplierCode AS LEVKOD,'
      'pt.productno,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      
        '(Select Count(PackageTypeNo) From PackageTypeDetail WHERE Packag' +
        'eTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,'
      
        '(Select TOP 1 PVC.PackageCodeNo FROM PkgVarCode PVC WHERE PVC.Pa' +
        'ckageTypeNo = pt.packagetypeno),'
      'p.ProductDisplayName AS Produkt,'
      'CASE'
      'WHEN htf.Status = 1 THEN '#39'Modtaget'#39
      'WHEN htf.Status = 2 THEN '#39'Klar til produktion'#39
      'WHEN htf.Status = 3 THEN '#39'Produktionsdato'#39
      'WHEN htf.Status = 4 THEN '#39'Klar til afgang'#39
      'WHEN htf.Status = 5 THEN '#39'Udleverat'#39
      'End AS StatusHTF,'
      'LIP.LogicalInventoryName AS Lagergrupp'
      ''
      'From dbo.packagenumber pn'
      
        'inner join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      'Inner Join dbo.product p on p.productno = pt.productno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      
        'Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.Pac' +
        'kageNo'
      'and htf.prefix = pn.suppliercode'
      'where'
      'pn.Status = 1'
      'AND pt.productno = 13260'
      '')
    Left = 472
    Top = 416
    object sq_PaketListaPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PaketListaLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_PaketListaPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
    object sq_PaketListaAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_PaketListaSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_PaketListaDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_PaketListaNOOFLENGTHS: TIntegerField
      FieldName = 'NOOFLENGTHS'
      Origin = 'NOOFLENGTHS'
      ReadOnly = True
    end
    object sq_PaketListaproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_PaketListaProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object sq_PaketListaStatusHTF: TStringField
      FieldName = 'StatusHTF'
      Origin = 'StatusHTF'
      ReadOnly = True
      Size = 19
    end
    object sq_PaketListaLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      Size = 50
    end
  end
  object cds_ProdInLager: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct pr.ProductDisplayName, pr.ProductNo FROM '
      'dbo.PackageNumber pn'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pr on pr.ProductNo = pt.ProductNo'
      'WHERE PIP.PhysicalInventoryPointNo = :PIPNo'
      'AND pn.Status = 1'
      'Order By pr.ProductDisplayName'
      '')
    Left = 472
    Top = 480
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdInLagerProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProdInLagerProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPickPkgNos
    PopupMenus = <>
    Left = 576
    Top = 328
  end
  object siLangLinked_fPickPkgNo: TsiLangLinked
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
    Left = 576
    Top = 384
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000690063006B0050006B0067004E006F000100
      50006C006F0063006B0061002000700061006B00650074006E00720001000100
      01000D000A006700720064005000690063006B0050006B0067004E006F007300
      440042005400610062006C006500560069006500770031004D00410052004B00
      450052004100440001005600E4006C006A000100010001000D000A0067007200
      64005000690063006B0050006B0067004E006F00730044004200540061006200
      6C00650056006900650077003100500041004B00450054004E00520001005000
      61006B00650074006E0072000100010001000D000A0067007200640050006900
      63006B0050006B0067004E006F007300440042005400610062006C0065005600
      69006500770031004C00450056004B004F004400010050007200650066006900
      78000100010001000D000A006700720064005000690063006B0050006B006700
      4E006F007300440042005400610062006C006500560069006500770031004100
      4D003300010041004D0033000100010001000D000A0067007200640050006900
      63006B0050006B0067004E006F007300440042005400610062006C0065005600
      690065007700310053005400590043004B00010053007400790063006B000100
      010001000D000A006700720064005000690063006B0050006B0067004E006F00
      7300440042005400610062006C00650056006900650077003100520045004700
      4900530054005200450052004100540001005200650067006900730074007200
      65007200610064000100010001000D000A006700720064005000690063006B00
      50006B0067004E006F007300440042005400610062006C006500560069006500
      7700310053005400590043004B005000450052004C004E004700440001005300
      7400790063006B002F006C00E4006E00670064000100010001000D000A006700
      720064005000690063006B0050006B0067004E006F0073004400420054006100
      62006C006500560069006500770031004C006100670065007200670072007500
      7000700001004C00610067006500720067007200750070007000010001000100
      0D000A006700720064005000690063006B0050006B0067004E006F0073004400
      42005400610062006C00650056006900650077003100500072006F0064007500
      6B0074000100500072006F00640075006B0074000100010001000D000A006700
      720064005000690063006B0050006B0067004E006F0073004400420054006100
      62006C0065005600690065007700310048005400460053007400610074007500
      7300010048005400460020007300740061007400750073000100010001000D00
      0A004C006100620065006C0031000100500061006B006500740020006D006100
      72006B00650072006100640065003A000100010001000D000A004C0061006200
      65006C004E006F004F00660050006B00670073004D00610072006B0065006400
      010030000100010001000D000A00420069007400420074006E00310001004F00
      4B000100010001000D000A00420069007400420074006E003200010043006100
      6E00630065006C000100010001000D000A004C006100620065006C0050007200
      6F00640075006300740001004C006100620065006C00500072006F0064007500
      630074000100010001000D000A004C006100620065006C004C0065006E006700
      7400680001004C006100620065006C004C0065006E0067007400680001000100
      01000D000A004C006100620065006C005000490050004E0061006D0065000100
      4C006100620065006C005000490050004E0061006D0065000100010001000D00
      0A004C006100620065006C0032000100500072006F00640075006B0074003A00
      0100010001000D000A004C006100620065006C00330001004C00E4006E006700
      64003A000100010001000D000A004C006100620065006C00340001004C006100
      67006500720073007400E4006C006C0065003A000100010001000D000A004C00
      6100620065006C004F0077006E00650072005400690074006C0065000100C400
      67006100720065003A000100010001000D000A004C006100620065006C004F00
      77006E006500720001004C006100620065006C004F0077006E00650072000100
      010001000D000A004C006100620065006C00350001004C004F004E0072003A00
      0100010001000D000A004C006100620065006C004C004F004E00720001004C00
      6100620065006C005000490050004E0061006D0065000100010001000D000A00
      63006200460069006C007400650072004F006E004C0065006E00670074006800
      0100460069006C007400720065007200610020007000E50020006C00E4006E00
      670064000100010001000D000A00630078004C006100620065006C0031000100
      500072006F00640075006B007400650072002000690020006C00610067006500
      72000100010001000D000A00500061006E0065006C0034000100550072007600
      61006C00730061006C007400650072006E006100740069007600010001000100
      0D000A00630078004C006100620065006C005F00560061006C0001005F005F00
      5F005F005F005F000100010001000D000A006100630050006B00670049006E00
      66006F000100500061006B0065007400200069006E0066006F0072006D006100
      740069006F006E000100010001000D000A00610063004D00610072006B004100
      6C006C0001004D00610072006B00650072006100200061006C006C0061000100
      010001000D000A006100630055006E006D00610072006B0041006C006C000100
      410076006D00610072006B00650072006100200061006C006C00610001000100
      01000D000A0061006300530068006F0077004100640064004C004F0050006B00
      6700730057006900740068004D00610074006300680069006E00670050007200
      6F006400750063007400010055007200760061006C0020006100640064002000
      4C004F002000260026002000700072006F00640075006B007400010001000100
      0D000A0061006300530068006F00770041006C006C004100640064004C004F00
      50006B0067007300010055007200760061006C00200061006400640020004C00
      4F000100010001000D000A0061006300530068006F0077004D00610074006300
      680069006E006700500072006F00640075006300740041006E0064004C006500
      6E00670074006800010055007200760061006C002000700072006F0064007500
      6B00740020002600260020006C00E4006E00670064000100010001000D000A00
      61006300530068006F0077004D00610074006300680069006E00670050007200
      6F006400750063007400010055007200760061006C002000700072006F006400
      75006B0074000100010001000D000A0061006300530068006F00770050006B00
      670073005700690074006800530061006D006500410063007400440069006D00
      4F006E006C007900010055007200760061006C00200054004D00010001000100
      0D000A00630078004C006100620065006C00320001004C006100670065007200
      670072007500700070003A000100010001000D000A0061006300530065006C00
      6500630074004D00610072006B006500640052006F007700730001005600E400
      6C006A0020006D00610072006B00650072006100640065002000720061006400
      650072000100010001000D000A0061006300530068006F0077004D0061007400
      6300680069006E0067004C0049005000010055007200760061006C0020006C00
      6100670065007200670072007500700070000100010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A006D007400500072006F00640075006300
      7400500072006F0064007500630074004E006F000100500072006F0064007500
      630074004E006F00010001000D000A006D007400500072006F00640075006300
      7400500072006F00640075006300740044006900730070006C00610079004E00
      61006D0065000100500072006F00640075006300740044006900730070006C00
      610079004E0061006D006500010001000D000A00730071005F00500061006B00
      650074004C0069007300740061005000610063006B006100670065004E006F00
      01005000610063006B006100670065004E006F00010001000D000A0073007100
      5F00500061006B00650074004C0069007300740061004C00450056004B004F00
      440001004C00450056004B004F004400010001000D000A00730071005F005000
      61006B00650074004C0069007300740061005000630073005000650072004C00
      65006E0067007400680001005000630073005000650072004C0065006E006700
      74006800010001000D000A00730071005F00500061006B00650074004C006900
      73007400610041004D003300010041004D003300010001000D000A0073007100
      5F00500061006B00650074004C00690073007400610053005400590043004B00
      010053005400590043004B00010001000D000A00730071005F00500061006B00
      650074004C006900730074006100440061007400650043007200650061007400
      6500640001004400610074006500430072006500610074006500640001000100
      0D000A00730071005F00500061006B00650074004C0069007300740061004E00
      4F004F0046004C0045004E00470054004800530001004E004F004F0046004C00
      45004E004700540048005300010001000D000A00730071005F00500061006B00
      650074004C006900730074006100700072006F0064007500630074006E006F00
      0100700072006F0064007500630074006E006F00010001000D000A0073007100
      5F00500061006B00650074004C006900730074006100500072006F0064007500
      6B0074000100500072006F00640075006B007400010001000D000A0073007100
      5F00500061006B00650074004C00690073007400610053007400610074007500
      7300480054004600010053007400610074007500730048005400460001000100
      0D000A00730071005F00500061006B00650074004C0069007300740061004C00
      61006700650072006700720075007000700001004C0061006700650072006700
      7200750070007000010001000D000A006300640073005F00500072006F006400
      49006E004C006100670065007200500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D006500010001000D000A00
      6300640073005F00500072006F00640049006E004C0061006700650072005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F00010001000D000A006D00740050006B0067004E006F00730050006100
      63006B006100670065004E006F0001005000610063006B006100670065004E00
      6F000100010001000D000A006D00740050006B0067004E006F00730050007200
      650066006900780001005000720065006600690078000100010001000D000A00
      6300640073005F004C004900500032004C00490050004E006F0001004C004900
      50004E006F000100010001000D000A006300640073005F004C00490050003200
      4C00490050004E0061006D00650001004C00490050004E0061006D0065000100
      010001000D000A006D007400500072006F00700073005000490050004E006F00
      01005000490050004E006F000100010001000D000A006D007400500072006F00
      700073004C00490050004E006F0001004C00490050004E006F00010001000100
      0D000A006D007400500072006F00700073004C004900500001004C0049005000
      0100010001000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A00540066005000690063006B0050006B0067004E00
      6F0001004D0053002000530061006E0073002000530065007200690066000100
      4D0053002000530061006E007300200053006500720069006600010054006100
      68006F006D0061000D000A004C006100620065006C00500072006F0064007500
      6300740001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D0061000D000A004C006100620065006C004C00
      65006E0067007400680001004D0053002000530061006E007300200053006500
      720069006600010001005400610068006F006D0061000D000A004C0061006200
      65006C005000490050004E0061006D00650001004D0053002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000D00
      0A004C006100620065006C004F0077006E006500720001004D00530020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      61000D000A004C006100620065006C004C004F004E00720001004D0053002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D0061000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A006C00630050007200
      6F00640075006300740044006900730070006C00610079004E0061006D006500
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      43006F006C0075006D006E0073005B0030005D002E0043006100700074006900
      6F006E000100500072006F00640075006300740044006900730070006C006100
      79004E0061006D006500010001000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066005000
      690063006B0050006B0067004E006F000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A004C006100620065006C005000
      72006F0064007500630074000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A004C006100620065006C004C0065006E00
      6700740068000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A004C006100620065006C005000490050004E0061006D00
      65000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A004C006100620065006C004F0077006E0065007200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004C00
      6100620065006C004C004F004E0072000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
  object mtPkgNos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 576
    Top = 440
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosPrefix: TStringField
      FieldName = 'Prefix'
      Size = 3
    end
  end
  object cds_LIP2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1'
      ''
      'Order By LogicalInventoryName ')
    Left = 744
    Top = 296
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LIP2LIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIP2LIPName: TStringField
      FieldName = 'LIPName'
      Origin = 'LIPName'
      Size = 50
    end
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP2
    Left = 744
    Top = 352
  end
  object mtProps: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 824
    Top = 296
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 824
    Top = 351
  end
end
