object fPickVPPkgs: TfPickVPPkgs
  Left = 322
  Top = 133
  Width = 1051
  Height = 691
  Caption = 'Paket f'#246'rbrukade av Vida Packaging'
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
    Top = 81
    Width = 1043
    Height = 524
    Align = alClient
    PopupMenu = pmPickPkgNosGrid
    TabOrder = 0
    object grdPickPkgNosDBTableView1: TcxGridDBTableView
      PopupMenu = pmPickPkgNosGrid
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Cancel.Visible = True
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
        Width = 55
      end
      object grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn
        Caption = 'PaketNr'
        DataBinding.FieldName = 'PAKETNR'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 50
      end
      object grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn
        Caption = 'Prefix'
        DataBinding.FieldName = 'LEVKOD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 40
      end
      object grdPickPkgNosDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 51
      end
      object grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn
        Caption = 'Totalt styck'
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 70
      end
      object grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn
        Caption = 'Registrerad'
        DataBinding.FieldName = 'REGISTRERAT'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 80
      end
      object grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn
        Caption = 'Styck/l'#228'ngd'
        DataBinding.FieldName = 'STYCKPERL'#196'NGD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 248
      end
      object grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn
        Caption = 'Produkt'
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 447
      end
    end
    object grdPickPkgNosLevel1: TcxGridLevel
      GridView = grdPickPkgNosDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 605
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
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 512
      Top = 16
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1043
    Height = 81
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 248
      Top = 15
      Width = 28
      Height = 13
      Caption = 'LONr:'
    end
    object LabelLONr: TLabel
      Left = 280
      Top = 15
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
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 97
      Height = 33
      Action = acMarkAll
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 136
      Top = 8
      Width = 97
      Height = 33
      Action = acUnmarkAll
      TabOrder = 1
    end
    object rgUrvalPaket: TcxRadioGroup
      Left = 384
      Top = 5
      Caption = ' Urval '
      Properties.Items = <
        item
          Caption = 'Visa endast paket som matchar avrop/kontrakt'
          Value = 0
        end
        item
          Caption = 'Visa alla paket som inte registerats p'#229' en leverans'
          Value = 1
        end>
      ItemIndex = 0
      TabOrder = 2
      Height = 65
      Width = 273
    end
  end
  object ds_SelectedPkgNo: TDataSource
    DataSet = dmsSystem.mtSelectedPkgNo
    OnDataChange = ds_SelectedPkgNoDataChange
    Left = 440
    Top = 192
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 312
    Top = 184
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acPkgInfo
      Category = 0
    end
  end
  object pmPickPkgNosGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 272
    Top = 184
  end
  object ActionList1: TActionList
    Left = 352
    Top = 184
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
  end
  object sq_PaketLista: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select distinct'
      'pn.PackageNo AS PaketNr, pn.SupplierCode AS Prefix,'
      'pt.productno,'
      'ptl.PcsPerLength AS StyckPerLangd,'
      'pt.Totalm3Actual AS AM3,'
      'pt.Totalm3Nominal AS NM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      
        '(Select Count(PackageTypeNo) From PackageTypeDetail WHERE Packag' +
        'eTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,'
      'p.ProductDisplayName AS Produkt,'
      'pg.RaMtrlPrice AS RavaruPrisPerNM3'
      'From dbo.PackageGroup pg'
      
        'Inner Join dbo.packagenumber pn on pn.packageno = pg.AvRegpackag' +
        'eno'
      'and pn.SupplierCode = pg.AvRegPrefix'
      
        'Inner join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      'Inner Join dbo.product p on p.productno = pt.productno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      'where'
      'PIP.OwnerNo = :VerkNo'
      'and pn.Status = 1'
      'and Exists (Select OL.ProductNo FROM dbo.OrderLine OL'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.OrderNo = ' +
        'OL.OrderNo'
      'and csd.OrderLineNo = OL.OrderLineNo'
      'WHERE csd.ShippingPlanNo = :LONo'
      'and ol.ProductNo = pt.ProductNo)'
      '')
    Left = 400
    Top = 192
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PaketListaPaketNr: TIntegerField
      FieldName = 'PaketNr'
      Origin = 'PaketNr'
      Required = True
    end
    object sq_PaketListaPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_PaketListaproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_PaketListaStyckPerLangd: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'StyckPerLangd'
      Origin = 'StyckPerLangd'
      Size = 255
    end
    object sq_PaketListaAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_PaketListaNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object sq_PaketListaSTYCK: TIntegerField
      DisplayLabel = 'Styck totalt'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_PaketListaDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_PaketListaNOOFLENGTHS: TIntegerField
      DisplayLabel = 'Antal l'#228'ngder'
      FieldName = 'NOOFLENGTHS'
      Origin = 'NOOFLENGTHS'
      ReadOnly = True
    end
    object sq_PaketListaProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object sq_PaketListaRavaruPrisPerNM3: TFloatField
      DisplayLabel = 'Ra'#229'varupris/NM3'
      FieldName = 'RavaruPrisPerNM3'
      Origin = 'RavaruPrisPerNM3'
    end
  end
end
