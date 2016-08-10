object fPickVPPkgs: TfPickVPPkgs
  Left = 322
  Top = 133
  Caption = 'Paket f'#246'rbrukade av Vida Packaging'
  ClientHeight = 804
  ClientWidth = 1274
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
    Top = 100
    Width = 1274
    Height = 631
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    PopupMenu = pmPickPkgNosGrid
    TabOrder = 0
    object grdPickPkgNosDBTableView1: TcxGridDBTableView
      PopupMenu = pmPickPkgNosGrid
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
    Top = 731
    Width = 1274
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
    Top = 0
    Width = 1274
    Height = 100
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 305
      Top = 18
      Width = 34
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LONr:'
    end
    object LabelLONr: TLabel
      Left = 345
      Top = 18
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
    object cxButton1: TcxButton
      Left = 20
      Top = 10
      Width = 119
      Height = 40
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acMarkAll
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 167
      Top = 10
      Width = 120
      Height = 40
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acUnmarkAll
      TabOrder = 1
    end
    object rgUrvalPaket: TcxRadioGroup
      Left = 473
      Top = 6
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Properties.OnChange = rgUrvalPaketPropertiesChange
      ItemIndex = 0
      TabOrder = 2
      Height = 80
      Width = 336
    end
    object cxButton3: TcxButton
      Left = 832
      Top = 16
      Width = 137
      Height = 65
      Action = acPrint
      TabOrder = 3
    end
  end
  object ds_SelectedPkgNo: TDataSource
    DataSet = dmsSystem.mtSelectedPkgNo
    OnDataChange = ds_SelectedPkgNoDataChange
    Left = 400
    Top = 272
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = False
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
    Left = 312
    Top = 136
  end
  object ActionList1: TActionList
    Left = 440
    Top = 136
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
    object acPrint: TAction
      Caption = 'Skriv ut'
      OnExecute = acPrintExecute
    end
  end
  object sq_PaketLista: TFDQuery
    Connection = dmsConnector.FDConnection1
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
    Left = 256
    Top = 272
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
  object siLangLinked_fPickVPPkgs: TsiLangLinked
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
    Left = 440
    Top = 192
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000690063006B005600500050006B0067007300
      0100500061006B006500740020006600F60072006200720075006B0061006400
      65002000610076002000560069006400610020005000610063006B0061006700
      69006E0067000100010001000D000A006700720064005000690063006B005000
      6B0067004E006F007300440042005400610062006C0065005600690065007700
      31004D00410052004B00450052004100440001005600E4006C006A0001000100
      01000D000A006700720064005000690063006B0050006B0067004E006F007300
      440042005400610062006C00650056006900650077003100500041004B004500
      54004E0052000100500061006B00650074004E0072000100010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C006500560069006500770031004C00450056004B004F0044000100
      5000720065006600690078000100010001000D000A0067007200640050006900
      63006B0050006B0067004E006F007300440042005400610062006C0065005600
      690065007700310041004D003300010041004D0033000100010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C0065005600690065007700310053005400590043004B0001005400
      6F00740061006C007400200073007400790063006B000100010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C006500560069006500770031005200450047004900530054005200
      4500520041005400010052006500670069007300740072006500720061006400
      0100010001000D000A006700720064005000690063006B0050006B0067004E00
      6F007300440042005400610062006C0065005600690065007700310053005400
      590043004B005000450052004C004E0047004400010053007400790063006B00
      2F006C00E4006E00670064000100010001000D000A0067007200640050006900
      63006B0050006B0067004E006F007300440042005400610062006C0065005600
      6900650077003100500072006F00640075006B0074000100500072006F006400
      75006B0074000100010001000D000A004C006100620065006C00310001005000
      61006B006500740020006D00610072006B00650072006100640065003A000100
      010001000D000A004C006100620065006C004E006F004F00660050006B006700
      73004D00610072006B0065006400010030000100010001000D000A0042006900
      7400420074006E00310001004F004B000100010001000D000A00420069007400
      420074006E0032000100430061006E00630065006C000100010001000D000A00
      4C006100620065006C00350001004C004F004E0072003A000100010001000D00
      0A004C006100620065006C004C004F004E00720001004C006100620065006C00
      5000490050004E0061006D0065000100010001000D000A007200670055007200
      760061006C00500061006B00650074000100200055007200760061006C002000
      0100010001000D000A006100630050006B00670049006E0066006F0001005000
      61006B0065007400200069006E0066006F0072006D006100740069006F006E00
      0100010001000D000A00610063004D00610072006B0041006C006C0001004D00
      610072006B00650072006100200061006C006C0061000100010001000D000A00
      6100630055006E006D00610072006B0041006C006C000100410076006D006100
      72006B00650072006100200061006C006C0061000100010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A00730071005F00500061006B006500
      74004C006900730074006100500061006B00650074004E007200010050006100
      6B00650074004E007200010001000D000A00730071005F00500061006B006500
      74004C0069007300740061005000720065006600690078000100500072006500
      660069007800010001000D000A00730071005F00500061006B00650074004C00
      6900730074006100700072006F0064007500630074006E006F00010070007200
      6F0064007500630074006E006F00010001000D000A00730071005F0050006100
      6B00650074004C00690073007400610053007400790063006B00500065007200
      4C0061006E0067006400010053007400790063006B002F006C00E4006E006700
      6400010001000D000A00730071005F00500061006B00650074004C0069007300
      7400610041004D003300010041004D003300010001000D000A00730071005F00
      500061006B00650074004C0069007300740061004E004D00330001004E004D00
      3300010001000D000A00730071005F00500061006B00650074004C0069007300
      7400610053005400590043004B00010053007400790063006B00200074006F00
      740061006C007400010001000D000A00730071005F00500061006B0065007400
      4C00690073007400610044006100740065004300720065006100740065006400
      010044006100740065004300720065006100740065006400010001000D000A00
      730071005F00500061006B00650074004C0069007300740061004E004F004F00
      46004C0045004E004700540048005300010041006E00740061006C0020006C00
      E4006E006700640065007200010001000D000A00730071005F00500061006B00
      650074004C006900730074006100500072006F00640075006B00740001005000
      72006F00640075006B007400010001000D000A00730071005F00500061006B00
      650074004C006900730074006100520061007600610072007500500072006900
      73005000650072004E004D003300010052006100E50076006100720075007000
      7200690073002F004E004D003300010001000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660050006900
      63006B005600500050006B006700730001004D0053002000530061006E007300
      20005300650072006900660001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D0061000D000A004C0061006200
      65006C004C004F004E00720001004D0053002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A0064007800
      4200610072004D0061006E006100670065007200310001005300650067006F00
      6500200055004900010001005400610068006F006D0061000D000A0070006D00
      5000690063006B0050006B0067004E006F007300470072006900640001005300
      650067006F006500200055004900010001005400610068006F006D0061000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A007200670055007200760061006C00
      500061006B00650074002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0030005D002E00430061007000740069006F00
      6E0001005600690073006100200065006E006400610073007400200070006100
      6B0065007400200073006F006D0020006D006100740063006800610072002000
      6100760072006F0070002F006B006F006E007400720061006B00740001000100
      0D000A007200670055007200760061006C00500061006B00650074002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      31005D002E00430061007000740069006F006E00010056006900730061002000
      61006C006C0061002000700061006B0065007400200073006F006D0020006900
      6E00740065002000720065006700690073007400650072006100740073002000
      7000E500200065006E0020006C00650076006500720061006E00730001000100
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00540066005000690063006B005600500050006B00
      670073000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A004C006100620065006C004C004F004E007200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006400
      78004200610072004D0061006E00610067006500720031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0070006D00
      5000690063006B0050006B0067004E006F007300470072006900640001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00}
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 608
    Top = 368
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdPickPkgNos
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
