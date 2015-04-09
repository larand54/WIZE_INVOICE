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
    object Panel5: TPanel
      Left = 1
      Top = 41
      Width = 893
      Height = 308
      Align = alClient
      TabOrder = 0
      object PanelAvrop: TPanel
        Left = 1
        Top = 1
        Width = 891
        Height = 306
        Align = alClient
        TabOrder = 0
        object grdTradingAvrop: TcxGrid
          Left = 1
          Top = 1
          Width = 889
          Height = 304
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
      Width = 893
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
  object siLangLinked1: TsiLangLinked
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
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HelpFile'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'Origin'
      'PropertiesClassName')
    Left = 538
    Top = 138
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600540072006100640069006E0067004C0069006E00
      6B004D0075006C00740001005600E4006C006A0020006600F60072007300E400
      6C006A006E0069006E006700730020004C004F0023000100010001000D000A00
      420069007400420074006E00310001004F004B000100010001000D000A004200
      69007400420074006E0032000100430061006E00630065006C00010001000100
      0D000A00670072006400540072006100640069006E0067004100760072006F00
      7000440042005400610062006C006500560069006500770031004B0075006E00
      640001004B0075006E0064000100010001000D000A0067007200640054007200
      6100640069006E0067004100760072006F007000440042005400610062006C00
      6500560069006500770031004100760072006F00700073006E00720001004100
      760072006F00700073006E0072000100010001000D000A00500061006E006500
      6C0050004F004E0061006D006500010049006E006B00F600700073006B006F00
      6E007400720061006B0074000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A006300640073005F004100760072006F0070004C006900
      6E006B004B0075006E00640001004B0075006E0064000100010001000D000A00
      6300640073005F004100760072006F0070004C0069006E006B00410076007200
      6F00700073006E00720001004100760072006F00700073006E00720001000100
      01000D000A00730071005F0050004F006F00720064006500720049006E006600
      6F004B006F006E007400720061006B00740001004B006F006E00740072006100
      6B0074000100010001000D000A00730071005F0050004F006F00720064006500
      720049006E0066006F004C00650076006500720061006E007400720001004C00
      650076006500720061006E007400F60072000100010001000D000A0073007100
      5F0050004F006F00720064006500720049006E0066006F004100760072006F00
      700073006E00720001004100760072006F00700073006E007200010001000100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A0054006600540072006100640069006E0067004C0069006E006B00
      4D0075006C00740001004D0053002000530061006E0073002000530065007200
      690066000100010001000D000A00500061006E0065006C0050004F004E006100
      6D00650001004D0053002000530061006E007300200053006500720069006600
      0100010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A0054006600540072006100640069006E0067004C0069006E006B004D007500
      6C0074000100440045004600410055004C0054005F0043004800410052005300
      450054000100010001000D000A00500061006E0065006C0050004F004E006100
      6D0065000100440045004600410055004C0054005F0043004800410052005300
      450054000100010001000D000A00}
  end
end
