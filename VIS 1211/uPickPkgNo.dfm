object fPickPkgNo: TfPickPkgNo
  Left = 216
  Top = 125
  Caption = 'Plocka paketnr'
  ClientHeight = 663
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdPickPkgNos: TcxGrid
    Left = 0
    Top = 209
    Width = 1043
    Height = 395
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
    Top = 604
    Width = 1043
    Height = 59
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 84
      Height = 13
      Caption = 'Paket markerade:'
    end
    object LabelNoOfPkgsMarked: TLabel
      Left = 96
      Top = 16
      Width = 6
      Height = 13
      Caption = '0'
    end
    object BitBtn1: TBitBtn
      Left = 416
      Top = 16
      Width = 89
      Height = 33
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 512
      Top = 16
      Width = 89
      Height = 33
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 1043
    Height = 96
    Align = alTop
    TabOrder = 2
    object LabelProduct: TLabel
      Left = 464
      Top = 23
      Width = 63
      Height = 13
      Caption = 'LabelProduct'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelLength: TLabel
      Left = 464
      Top = 39
      Width = 59
      Height = 13
      Caption = 'LabelLength'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelPIPName: TLabel
      Left = 464
      Top = 55
      Width = 71
      Height = 13
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 400
      Top = 23
      Width = 40
      Height = 13
      Caption = 'Produkt:'
    end
    object Label3: TLabel
      Left = 400
      Top = 39
      Width = 33
      Height = 13
      Caption = 'L'#228'ngd:'
    end
    object Label4: TLabel
      Left = 400
      Top = 55
      Width = 54
      Height = 13
      Caption = 'Lagerst'#228'lle:'
    end
    object LabelOwnerTitle: TLabel
      Left = 400
      Top = 7
      Width = 31
      Height = 13
      Caption = #196'gare:'
    end
    object LabelOwner: TLabel
      Left = 464
      Top = 7
      Width = 57
      Height = 13
      Caption = 'LabelOwner'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 400
      Top = 71
      Width = 28
      Height = 13
      Caption = 'LONr:'
    end
    object LabelLONr: TLabel
      Left = 464
      Top = 71
      Width = 71
      Height = 13
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbFilterOnLength: TcxCheckBox
      Left = 832
      Top = 7
      Caption = 'Filtrera p'#229' l'#228'ngd'
      Properties.OnChange = cbFilterOnLengthPropertiesChange
      State = cbsChecked
      TabOrder = 0
      Width = 121
    end
    object lcProductDisplayName: TcxDBLookupComboBox
      Left = 680
      Top = 64
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
      Width = 297
    end
    object cxLabel1: TcxLabel
      Left = 680
      Top = 48
      Caption = 'Produkter i lager'
      Visible = False
    end
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 81
      Height = 65
      Action = acMarkAll
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 96
      Top = 8
      Width = 81
      Height = 65
      Action = acUnmarkAll
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1043
    Height = 113
    Align = alTop
    TabOrder = 3
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1041
      Height = 17
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Urvalsalternativ'
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 8
      Top = 24
      Width = 121
      Height = 57
      Action = acShowMatchingProductAndLength
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 135
      Top = 24
      Width = 122
      Height = 57
      Action = acShowMatchingProduct
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 263
      Top = 24
      Width = 122
      Height = 57
      Action = acShowAddLOPkgsWithMatchingProduct
      TabOrder = 3
    end
    object cxButton6: TcxButton
      Left = 391
      Top = 24
      Width = 130
      Height = 57
      Action = acShowAllAddLOPkgs
      TabOrder = 4
    end
    object cxButton7: TcxButton
      Left = 527
      Top = 24
      Width = 122
      Height = 57
      Action = acShowPkgsWithSameActDimOnly
      TabOrder = 5
    end
    object cxLabel_Val: TcxLabel
      Left = 8
      Top = 87
      Caption = '______'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
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
    Active = True
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
    Top = 376
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
    Top = 440
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
end
