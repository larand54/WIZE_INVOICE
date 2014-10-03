object fTradingLinkMult: TfTradingLinkMult
  Left = 229
  Top = 107
  Width = 911
  Height = 429
  Caption = 'V'#228'lj f'#246'rs'#228'ljnings LO#'
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
    Top = 361
    Width = 903
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 304
      Top = 5
      Width = 83
      Height = 29
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 392
      Top = 5
      Width = 83
      Height = 29
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 361
    Align = alClient
    TabOrder = 1
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
            NavigatorButtons.ConfirmDelete = False
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
  object cds_AvropLink: TADQuery
    Active = True
    Connection = dmsConnector.ADConnection1
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
  object sq_POorderInfo: TADQuery
    Active = True
    Connection = dmsConnector.ADConnection1
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
end
