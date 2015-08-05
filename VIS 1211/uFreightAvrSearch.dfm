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
      end
      object grdFreightAvrSearchDBTableView1Verk: TcxGridDBColumn
        DataBinding.FieldName = 'Verk'
      end
      object grdFreightAvrSearchDBTableView1Speditor: TcxGridDBColumn
        DataBinding.FieldName = 'Speditor'
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
        'entName AS Speditor'
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
    object cds_SearchOrderSpeditor: TStringField
      DisplayLabel = 'Spedit'#246'r'
      FieldName = 'Speditor'
      Origin = 'Spedit'#246'r'
      Size = 80
    end
  end
  object siLangLinked_fFreightAvrSearch: TsiLangLinked
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
    Left = 456
    Top = 280
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004600720065006900670068007400410076007200
      53006500610072006300680001005300F6006B002000610076007200E4006B00
      6E0069006E0067000100010001000D000A004C006100620065006C0031000100
      5300F6006B0020004C006100730074006E0072000100010001000D000A004C00
      6100620065006C00320001005300F6006B0020002000610076007200E4006B00
      6E0069006E00670073006E0072000100010001000D000A004C00610062006500
      6C00330001005300F6006B0020004C004F000100010001000D000A004C006100
      620065006C00340001005300F6006B0020002000660061006B00740075007200
      61006E0072000100010001000D000A0042007500740074006F006E0032000100
      2600430061006E00630065006C000100010001000D000A00610074004F004B00
      010026004F004B000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00610074004F004B0001004F00
      4B00010001000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0063006400
      73005F005300650061007200630068004F007200640065007200410076007200
      4E00720001004100760072004E007200010001000D000A006300640073005F00
      5300650061007200630068004F0072006400650072005600650072006B000100
      5600650072006B00010001000D000A006300640073005F005300650061007200
      630068004F007200640065007200530070006500640069007400F60072000100
      530070006500640069007400F6007200010001000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066004600
      7200650069006700680074004100760072005300650061007200630068000100
      4D0053002000530061006E00730020005300650072006900660001004D005300
      2000530061006E00730020005300650072006900660001005400610068006F00
      6D0061000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      5400660046007200650069006700680074004100760072005300650061007200
      630068000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00}
  end
end
