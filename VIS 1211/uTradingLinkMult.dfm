object fTradingLinkMult: TfTradingLinkMult
  Left = 229
  Top = 107
  Caption = 'V'#228'lj f'#246'rs'#228'ljnings LO#'
  ClientHeight = 391
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 350
    Width = 895
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 361
    ExplicitWidth = 903
    object BitBtn1: TBitBtn
      Left = 304
      Top = 5
      Width = 83
      Height = 29
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 392
      Top = 5
      Width = 83
      Height = 29
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 895
    Height = 350
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 903
    ExplicitHeight = 361
    object Panel5: TPanel
      Left = 1
      Top = 41
      Width = 901
      Height = 319
      Align = alClient
      TabOrder = 0
      object PanelAvrop: TPanel
        Left = 1
        Top = 1
        Width = 899
        Height = 317
        Align = alClient
        TabOrder = 0
        object grdTradingAvrop: TcxGrid
          Left = 1
          Top = 1
          Width = 897
          Height = 315
          Align = alClient
          TabOrder = 0
          object grdTradingAvropDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_AvropTrading
            DataController.KeyFieldNames = 'Avropsnr'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object grdTradingAvropDBTableView1Kund: TcxGridDBColumn
              DataBinding.FieldName = 'Kund'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 433
            end
            object grdTradingAvropDBTableView1Avropsnr: TcxGridDBColumn
              DataBinding.FieldName = 'Avropsnr'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 450
            end
          end
          object grdTradingAvropLevel1: TcxGridLevel
            GridView = grdTradingAvropDBTableView1
          end
        end
      end
    end
    object PanelPOName: TPanel
      Left = 1
      Top = 1
      Width = 901
      Height = 40
      Align = alTop
      Caption = 'Ink'#246'pskontrakt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
  end
  object ActionList1: TActionList
    Left = 424
    Top = 200
  end
  object ds_AvropTrading: TDataSource
    DataSet = cds_AvropLink
    Left = 473
    Top = 251
  end
  object cds_AvropLink: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select C.ClientName AS Kund, CSH.ShippingPlanNo AS Avropsnr from' +
        ' dbo.CSHTradingLink trl'
      
        'Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPla' +
        'nNo = trl.SalesShippingPlanNo'
      'Inner Join dbo.Client C on C.ClientNo = csh.CustomerNo'
      'where trl.POShippingPlanNo = :POShippingPlanNo')
    Left = 474
    Top = 202
    ParamData = <
      item
        Name = 'POSHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AvropLinkKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      Size = 80
    end
    object cds_AvropLinkAvropsnr: TIntegerField
      FieldName = 'Avropsnr'
      Origin = 'Avropsnr'
      Required = True
    end
  end
  object sq_POorderInfo: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select ord.OrderNoText AS Kontrakt, C.ClientName AS Leverant'#246'r, ' +
        'csh.ShippingPlanNo AS Avropsnr'
      'from dbo.CustomerShippingPlanHeader csh '
      'Inner Join dbo.Orders ord on ord.OrderNo = csh.OrderNo'
      'Inner Join dbo.Client C on C.ClientNo = csh.CustomerNo'
      'where  csh.ShippingPlanNo = :POShippingPlanNo')
    Left = 226
    Top = 202
    ParamData = <
      item
        Name = 'POSHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_POorderInfoKontrakt: TStringField
      FieldName = 'Kontrakt'
      Origin = 'Kontrakt'
      Required = True
    end
    object sq_POorderInfoLeverantr: TStringField
      FieldName = 'Leverant'#246'r'
      Origin = '[Leverant'#246'r]'
      Size = 80
    end
    object sq_POorderInfoAvropsnr: TIntegerField
      FieldName = 'Avropsnr'
      Origin = 'Avropsnr'
      Required = True
    end
  end
  object siLangLinked_fTradingLinkMult: TsiLangLinked
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
    Left = 440
    Top = 200
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600540072006100640069006E0067004C0069006E00
      6B004D0075006C00740001005600E4006C006A0020006600F60072007300E400
      6C006A006E0069006E006700730020004C004F002300010001000D000A004200
      69007400420074006E00310001004F004B00010001000D000A00420069007400
      420074006E0032000100430061006E00630065006C00010001000D000A006700
      72006400540072006100640069006E0067004100760072006F00700044004200
      5400610062006C006500560069006500770031004B0075006E00640001004B00
      75006E006400010001000D000A00670072006400540072006100640069006E00
      67004100760072006F007000440042005400610062006C006500560069006500
      770031004100760072006F00700073006E00720001004100760072006F007000
      73006E007200010001000D000A00500061006E0065006C0050004F004E006100
      6D006500010049006E006B00F600700073006B006F006E007400720061006B00
      7400010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A006300
      640073005F004100760072006F0070004C0069006E006B004B0075006E006400
      01004B0075006E006400010001000D000A006300640073005F00410076007200
      6F0070004C0069006E006B004100760072006F00700073006E00720001004100
      760072006F00700073006E007200010001000D000A00730071005F0050004F00
      6F00720064006500720049006E0066006F004B006F006E007400720061006B00
      740001004B006F006E007400720061006B007400010001000D000A0073007100
      5F0050004F006F00720064006500720049006E0066006F004C00650076006500
      720061006E007400720001004C00650076006500720061006E007400F6007200
      010001000D000A00730071005F0050004F006F00720064006500720049006E00
      66006F004100760072006F00700073006E00720001004100760072006F007000
      73006E007200010001000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A0054006600540072006100640069006E00
      67004C0069006E006B004D0075006C00740001004D0053002000530061006E00
      7300200053006500720069006600010001000D000A00500061006E0065006C00
      50004F004E0061006D00650001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A006700720064005400720061006400
      69006E0067004100760072006F007000440042005400610062006C0065005600
      69006500770031004B0075006E0064002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400540072006100640069006E006700410076007200
      6F007000440042005400610062006C0065005600690065007700310041007600
      72006F00700073006E0072002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A006300640073005F004100760072006F0070004C0069006E006B002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      5300010001000D000A006300640073005F004100760072006F0070004C006900
      6E006B004B0075006E0064002E004F0072006900670069006E0001004B007500
      6E006400010001000D000A006300640073005F004100760072006F0070004C00
      69006E006B004100760072006F00700073006E0072002E004F00720069006700
      69006E0001004100760072006F00700073006E007200010001000D000A007300
      71005F0050004F006F00720064006500720049006E0066006F002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      010001000D000A00730071005F0050004F006F00720064006500720049006E00
      66006F004B006F006E007400720061006B0074002E004F007200690067006900
      6E0001004B006F006E007400720061006B007400010001000D000A0073007100
      5F0050004F006F00720064006500720049006E0066006F004C00650076006500
      720061006E00740072002E004F0072006900670069006E0001005B004C006500
      76006500720061006E007400F60072005D00010001000D000A00730071005F00
      50004F006F00720064006500720049006E0066006F004100760072006F007000
      73006E0072002E004F0072006900670069006E0001004100760072006F007000
      73006E007200010001000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A0054006600540072006100640069006E0067004C0069006E006B004D00
      75006C0074000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00500061006E0065006C0050004F004E006100
      6D0065000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00}
  end
end
