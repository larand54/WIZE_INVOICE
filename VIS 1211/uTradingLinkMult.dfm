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
  object siLangLinked1: TsiLangLinked
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
    Left = 538
    Top = 138
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
