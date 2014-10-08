object fFreightAvrSearch: TfFreightAvrSearch
  Left = 219
  Top = 106
  ActiveControl = EditSearchLO
  Caption = 'S'#246'k avr'#228'kning'
  ClientHeight = 498
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 998
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 19
      Width = 51
      Height = 13
      Caption = 'S'#246'k Lastnr'
    end
    object Label2: TLabel
      Left = 392
      Top = 19
      Width = 86
      Height = 13
      Caption = 'S'#246'k  avr'#228'kningsnr'
    end
    object Label3: TLabel
      Left = 16
      Top = 19
      Width = 36
      Height = 13
      Caption = 'S'#246'k LO'
    end
    object Label4: TLabel
      Left = 624
      Top = 19
      Width = 67
      Height = 13
      Caption = 'S'#246'k  fakturanr'
    end
    object editSearch: TEdit
      Left = 256
      Top = 11
      Width = 113
      Height = 21
      TabOrder = 1
      OnEnter = editSearchEnter
      OnExit = editSearchExit
      OnKeyUp = editSearchKeyUp
    end
    object EditSearchAvrNr: TEdit
      Left = 484
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 2
      OnEnter = EditSearchAvrNrEnter
      OnExit = EditSearchAvrNrExit
      OnKeyUp = EditSearchAvrNrKeyUp
    end
    object EditSearchLO: TEdit
      Left = 56
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      OnEnter = EditSearchLOEnter
      OnExit = EditSearchLOExit
      OnKeyUp = EditSearchLOKeyUp
    end
    object EditSearchYourInvoiceNo: TEdit
      Left = 698
      Top = 11
      Width = 113
      Height = 21
      TabOrder = 3
      OnEnter = EditSearchYourInvoiceNoEnter
      OnExit = EditSearchYourInvoiceNoExit
      OnKeyUp = EditSearchYourInvoiceNoKeyUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 457
    Width = 998
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button2: TButton
      Left = 488
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object Button1: TButton
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Action = atOK
      TabOrder = 0
    end
  end
  object grdFreightAvrSearch: TcxGrid
    Left = 0
    Top = 41
    Width = 998
    Height = 416
    Align = alClient
    TabOrder = 2
    object grdFreightAvrSearchDBTableView1: TcxGridDBTableView
      OnDblClick = atOKExecute
      OnKeyUp = grdFreightAvrSearchDBTableView1KeyUp
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_SearchOrder
      DataController.KeyFieldNames = 'AvrNr'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdFreightAvrSearchDBTableView1AvrNr: TcxGridDBColumn
        DataBinding.FieldName = 'AvrNr'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 127
      end
      object grdFreightAvrSearchDBTableView1Verk: TcxGridDBColumn
        DataBinding.FieldName = 'Verk'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 439
      end
      object grdFreightAvrSearchDBTableView1Speditr: TcxGridDBColumn
        DataBinding.FieldName = 'Spedit'#246'r'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 438
      end
    end
    object grdFreightAvrSearchLevel1: TcxGridLevel
      GridView = grdFreightAvrSearchDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 184
    Top = 128
    object atOK: TAction
      Caption = '&OK'
      Hint = 'OK'
      OnExecute = atOKExecute
      OnUpdate = atOKUpdate
    end
  end
  object ds_SearchOrder: TDataSource
    DataSet = cds_SearchOrder
    Left = 184
    Top = 248
  end
  object cds_SearchOrder: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      
        'LFCH.AvrakningsNo AS AvrNr, Verk.clientName AS Verk, shipper.cli' +
        'entName AS Spedit'#246'r'
      'FROM   dbo.LoadFreightCostHeader LFCH'
      ''
      
        'Inner join Client Shipper on shipper.clientno = LFCH.LocalShippe' +
        'rNo'
      'Inner join Client Verk on Verk.clientno = LFCH.VerkNo'
      
        'Inner Join dbo.LoadFreightCost LFC on LFC.AvrakningsNo = LFCH.Av' +
        'rakningsNo'
      'Inner Join dbo.LoadShippingPlan LSP on LSP.LoadNo = LFC.LoadNo'
      '')
    Left = 184
    Top = 192
    object cds_SearchOrderAvrNr: TIntegerField
      FieldName = 'AvrNr'
      Origin = 'AvrNr'
      Required = True
    end
    object cds_SearchOrderVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object cds_SearchOrderSpeditör: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      Size = 80
    end
  end
  object siLangLinked_fFreightAvrSearch: TsiLangLinked
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
    Left = 496
    Top = 256
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004600720065006900670068007400410076007200
      53006500610072006300680001005300F6006B002000610076007200E4006B00
      6E0069006E006700010001000D000A004C006100620065006C00310001005300
      F6006B0020004C006100730074006E007200010001000D000A004C0061006200
      65006C00320001005300F6006B0020002000610076007200E4006B006E006900
      6E00670073006E007200010001000D000A004C006100620065006C0033000100
      5300F6006B0020004C004F00010001000D000A004C006100620065006C003400
      01005300F6006B0020002000660061006B0074007500720061006E0072000100
      01000D000A0042007500740074006F006E00320001002600430061006E006300
      65006C00010001000D000A006700720064004600720065006900670068007400
      410076007200530065006100720063006800440042005400610062006C006500
      560069006500770031004100760072004E00720001004100760072004E007200
      010001000D000A00670072006400460072006500690067006800740041007600
      7200530065006100720063006800440042005400610062006C00650056006900
      6500770031005600650072006B0001005600650072006B00010001000D000A00
      6700720064004600720065006900670068007400410076007200530065006100
      720063006800440042005400610062006C006500560069006500770031005300
      7000650064006900740072000100530070006500640069007400F60072000100
      01000D000A00610074004F004B00010026004F004B00010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      610074004F004B0001004F004B00010001000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A006300640073005F005300650061007200630068004F007200
      6400650072004100760072004E00720001004100760072004E00720001000100
      0D000A006300640073005F005300650061007200630068004F00720064006500
      72005600650072006B0001005600650072006B00010001000D000A0063006400
      73005F005300650061007200630068004F007200640065007200530070006500
      640069007400F60072000100530070006500640069007400F600720001000100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A005400660046007200650069006700680074004100760072005300
      6500610072006300680001004D0053002000530061006E007300200053006500
      720069006600010001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A0067007200640046007200650069006700
      6800740041007600720053006500610072006300680044004200540061006200
      6C006500560069006500770031004100760072004E0072002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00670072006400460072006500690067006800
      7400410076007200530065006100720063006800440042005400610062006C00
      6500560069006500770031005600650072006B002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A0067007200640046007200650069006700680074004100
      76007200530065006100720063006800440042005400610062006C0065005600
      690065007700310053007000650064006900740072002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006300640073005F00530065006100720063006800
      4F0072006400650072002E0043006F006E006E0065006300740069006F006E00
      4E0061006D0065000100560049005300010001000D000A006300640073005F00
      5300650061007200630068004F0072006400650072004100760072004E007200
      2E004F0072006900670069006E0001004100760072004E007200010001000D00
      0A006300640073005F005300650061007200630068004F007200640065007200
      5600650072006B002E004F0072006900670069006E0001005600650072006B00
      010001000D000A006300640073005F005300650061007200630068004F007200
      640065007200530070006500640069007400F60072002E004F00720069006700
      69006E0001005B00530070006500640069007400F60072005D00010001000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660046007200
      6500690067006800740041007600720053006500610072006300680001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00}
  end
end
