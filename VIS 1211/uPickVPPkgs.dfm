object fPickVPPkgs: TfPickVPPkgs
  Left = 322
  Top = 133
  Caption = 'Paket f'#246'rbrukade av Vida Packaging'
  ClientHeight = 653
  ClientWidth = 1035
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
    Width = 1035
    Height = 513
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
    Top = 594
    Width = 1035
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
    Top = 0
    Width = 1035
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
    Font.Height = -12
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
  object siLangLinked_fPickVPPkgs: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
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
      'ListField')
    Left = 512
    Top = 328
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
      690063006F00640065000D000A00640078004200610072004D0061006E006100
      67006500720031002E00430061007400650067006F0072006900650073000100
      440065006600610075006C007400010001000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A006700720064005000690063006B0050006B006700
      4E006F007300440042005400610062006C006500560069006500770031004D00
      410052004B0045005200410044002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790043006800650063006B006500
      640001005400720075006500010001000D000A00670072006400500069006300
      6B0050006B0067004E006F007300440042005400610062006C00650056006900
      6500770031004D00410052004B0045005200410044002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790055006E00
      63006800650063006B00650064000100460061006C0073006500010001000D00
      0A006700720064005000690063006B0050006B0067004E006F00730044004200
      5400610062006C006500560069006500770031004D00410052004B0045005200
      410044002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D006500010054006300780043006800650063006B004200
      6F007800500072006F007000650072007400690065007300010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C00650056006900650077003100500041004B00450054004E005200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640050006900
      63006B0050006B0067004E006F007300440042005400610062006C0065005600
      69006500770031004C00450056004B004F0044002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A006700720064005000690063006B0050006B0067004E00
      6F007300440042005400610062006C0065005600690065007700310041004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      690063006B0050006B0067004E006F007300440042005400610062006C006500
      5600690065007700310053005400590043004B002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A006700720064005000690063006B0050006B0067004E00
      6F007300440042005400610062006C0065005600690065007700310052004500
      4700490053005400520045005200410054002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064005000690063006B0050006B0067004E006F00
      7300440042005400610062006C00650056006900650077003100530054005900
      43004B005000450052004C004E00470044002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064005000690063006B0050006B0067004E006F00
      7300440042005400610062006C00650056006900650077003100500072006F00
      640075006B0074002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A007300
      71005F00500061006B00650074004C0069007300740061002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      01000D000A00730071005F00500061006B00650074004C006900730074006100
      500061006B00650074004E0072002E004F0072006900670069006E0001005000
      61006B00650074004E007200010001000D000A00730071005F00500061006B00
      650074004C0069007300740061005000720065006600690078002E004F007200
      6900670069006E000100500072006500660069007800010001000D000A007300
      71005F00500061006B00650074004C006900730074006100700072006F006400
      7500630074006E006F002E004F0072006900670069006E000100700072006F00
      64007500630074006E006F00010001000D000A00730071005F00500061006B00
      650074004C00690073007400610053007400790063006B005000650072004C00
      61006E00670064002E004F0072006900670069006E0001005300740079006300
      6B005000650072004C0061006E0067006400010001000D000A00730071005F00
      500061006B00650074004C00690073007400610041004D0033002E004F007200
      6900670069006E00010041004D003300010001000D000A00730071005F005000
      61006B00650074004C0069007300740061004E004D0033002E004F0072006900
      670069006E0001004E004D003300010001000D000A00730071005F0050006100
      6B00650074004C00690073007400610053005400590043004B002E004F007200
      6900670069006E00010053005400590043004B00010001000D000A0073007100
      5F00500061006B00650074004C00690073007400610044006100740065004300
      7200650061007400650064002E004F0072006900670069006E00010044006100
      740065004300720065006100740065006400010001000D000A00730071005F00
      500061006B00650074004C0069007300740061004E004F004F0046004C004500
      4E0047005400480053002E004F0072006900670069006E0001004E004F004F00
      46004C0045004E004700540048005300010001000D000A00730071005F005000
      61006B00650074004C006900730074006100500072006F00640075006B007400
      2E004F0072006900670069006E000100500072006F00640075006B0074000100
      01000D000A00730071005F00500061006B00650074004C006900730074006100
      52006100760061007200750050007200690073005000650072004E004D003300
      2E004F0072006900670069006E00010052006100760061007200750050007200
      690073005000650072004E004D003300010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A007200670055007200760061006C00500061006B00650074002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0030005D002E00430061007000740069006F006E0001005600690073006100
      200065006E0064006100730074002000700061006B0065007400200073006F00
      6D0020006D0061007400630068006100720020006100760072006F0070002F00
      6B006F006E007400720061006B007400010001000D000A007200670055007200
      760061006C00500061006B00650074002E00500072006F007000650072007400
      6900650073002E004900740065006D0073005B0031005D002E00430061007000
      740069006F006E0001005600690073006100200061006C006C00610020007000
      61006B0065007400200073006F006D00200069006E0074006500200072006500
      67006900730074006500720061007400730020007000E500200065006E002000
      6C00650076006500720061006E007300010001000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      540066005000690063006B005600500050006B00670073000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A004C006100
      620065006C004C004F004E0072000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00640078004200610072004D006100
      6E00610067006500720031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A0070006D005000690063006B0050006B00
      67004E006F00730047007200690064000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end
