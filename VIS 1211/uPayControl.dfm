inherited fPayControl: TfPayControl
  Caption = 'fPayControl'
  ClientHeight = 916
  ClientWidth = 1391
  OnDestroy = FormDestroy
  ExplicitWidth = 1138
  ExplicitHeight = 772
  PixelsPerInch = 120
  TextHeight = 16
  inherited Panel1: TPanel
    Width = 1391
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1391
    inherited Panel2: TPanel
      Width = 775
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 775
      inherited dxBarDockControl1: TdxBarDockControl
        Width = 773
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 773
      end
    end
    inherited Panel3: TPanel
      Left = 1305
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MaxWidth = 130
      Constraints.MinWidth = 70
      ExplicitLeft = 1305
      inherited dxBarDockControl2: TdxBarDockControl
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
    end
    inherited Panel4: TPanel
      Left = 775
      Width = 530
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 775
      ExplicitWidth = 530
    end
  end
  inherited Panel5: TPanel
    Width = 1391
    Height = 843
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1391
    ExplicitHeight = 843
    object Panel6: TPanel
      Left = 1
      Top = 23
      Width = 1389
      Height = 40
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 866
        Top = 10
        Width = 92
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Reskontraserie'
      end
      object Label2: TLabel
        Left = 315
        Top = 10
        Width = 83
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Faktura status'
      end
      object Label3: TLabel
        Left = 630
        Top = 10
        Width = 32
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'FOM:'
      end
      object Label4: TLabel
        Left = 20
        Top = 10
        Width = 81
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'S'#246'k fakturanr:'
      end
      object bcInvoiceType: TcxComboBox
        Left = 965
        Top = 4
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'VIDA (K1)'
          'PROFORMA (invoice later)'
          'PROFORMA (move pkgs)'
          'PURCHASE INVOICE'
          'USA (K2)'
          'FORESTWOOD')
        TabOrder = 2
        Text = 'VIDA (K1)'
        Width = 149
      end
      object bcFakturaStatus: TcxComboBox
        Left = 414
        Top = 4
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'DEL OCH OBETALDA '
          'DEL BETALDA'
          'FULL BETALDA')
        TabOrder = 0
        Text = 'DEL OCH OBETALDA '
        Width = 198
      end
      object deFOM: TcxDateEdit
        Left = 670
        Top = 4
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 1
        Width = 178
      end
      object Edit1: TEdit
        Left = 108
        Top = 4
        Width = 149
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 3
        OnKeyDown = Edit1KeyDown
      end
    end
    object grdInvPaid: TcxGrid
      Left = 1
      Top = 63
      Width = 1389
      Height = 779
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 1
      object grdInvPaidDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmModule1.ds_InvoicePayStatus
        DataController.KeyFieldNames = 'IH_InternalInvoiceNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '######'
            Kind = skCount
            FieldName = 'FAKTURANR'
            Column = grdInvPaidDBTableView1FAKTURANR
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'BELOPP'
            Column = grdInvPaidDBTableView1BELOPP
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'KASSARABATT'
            Column = grdInvPaidDBTableView1KASSARABATT
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'BELOP_EXKL_KASSA'
            Column = grdInvPaidDBTableView1BELOP_EXKL_KASSA
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'Paid'
            Column = grdInvPaidDBTableView1SUMMA_BETALD
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'PROVISION'
            Column = grdInvPaidDBTableView1PROVISION
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'FRAKT'
            Column = grdInvPaidDBTableView1FRAKT
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'AttBetala'
            Column = grdInvPaidDBTableView1AttBetala
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'VARUVARDE_NO_FREIGHT'
            Column = grdInvPaidDBTableView1VARUVARDE_NO_FREIGHT
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdInvPaidDBTableView1FAKTURANR: TcxGridDBColumn
          DataBinding.FieldName = 'FAKTURANR'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 95
        end
        object grdInvPaidDBTableView1FAKTURA_DATUM: TcxGridDBColumn
          DataBinding.FieldName = 'FAKTURA_DATUM'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 99
        end
        object grdInvPaidDBTableView1KUND: TcxGridDBColumn
          DataBinding.FieldName = 'KUND'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object grdInvPaidDBTableView1AGENT: TcxGridDBColumn
          DataBinding.FieldName = 'AGENT'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 167
        end
        object grdInvPaidDBTableView1BETALVILLKOR: TcxGridDBColumn
          DataBinding.FieldName = 'BETALVILLKOR'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 156
        end
        object grdInvPaidDBTableView1BELOPP: TcxGridDBColumn
          DataBinding.FieldName = 'BELOPP'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 73
        end
        object grdInvPaidDBTableView1KASSARABATT: TcxGridDBColumn
          DataBinding.FieldName = 'KASSARABATT'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 91
        end
        object grdInvPaidDBTableView1BELOP_EXKL_KASSA: TcxGridDBColumn
          DataBinding.FieldName = 'BELOP_EXKL_KASSA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 125
        end
        object grdInvPaidDBTableView1BETALD: TcxGridDBColumn
          DataBinding.FieldName = 'Paid'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 96
        end
        object grdInvPaidDBTableView1DATUM_BETALD: TcxGridDBColumn
          DataBinding.FieldName = 'DatePaid'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 101
        end
        object grdInvPaidDBTableView1SUMMA_BETALD: TcxGridDBColumn
          DataBinding.FieldName = 'AmountPaid'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 112
        end
        object grdInvPaidDBTableView1MEDDELANDE: TcxGridDBColumn
          DataBinding.FieldName = 'Note'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 162
        end
        object grdInvPaidDBTableView1VALUTA: TcxGridDBColumn
          DataBinding.FieldName = 'VALUTA'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 71
        end
        object grdInvPaidDBTableView1POST_IT: TcxGridDBColumn
          DataBinding.FieldName = 'POST_IT'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 135
        end
        object grdInvPaidDBTableView1VARUVARDE_NO_FREIGHT: TcxGridDBColumn
          DataBinding.FieldName = 'VARUVARDE_NO_FREIGHT'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 87
        end
        object grdInvPaidDBTableView1PROVISION: TcxGridDBColumn
          DataBinding.FieldName = 'PROVISION'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 82
        end
        object grdInvPaidDBTableView1Trading: TcxGridDBColumn
          DataBinding.FieldName = 'Trading'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object grdInvPaidDBTableView1FRAKT: TcxGridDBColumn
          DataBinding.FieldName = 'FRAKT'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 60
        end
        object grdInvPaidDBTableView1AttBetala: TcxGridDBColumn
          DataBinding.FieldName = 'AttBetala'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 118
        end
      end
      object grdInvPaidLevel1: TcxGridLevel
        GridView = grdInvPaidDBTableView1
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 1389
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Obetalda fakturor'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited dxBarManager1: TdxBarManager
    UseSystemFont = False
    Left = 392
    Top = 328
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = False
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = False
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acOpenInvoice
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
  end
  inherited ActionList1: TActionList
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    inherited acSave: TAction
      Caption = 'Spara F3'
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    inherited acExportXLS: TAction
      OnUpdate = acExportXLSUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra '#228'ndringar F4'
      ImageIndex = 10
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acOpenInvoice: TAction
      Caption = #214'ppna faktura'
      ImageIndex = 2
      OnExecute = acOpenInvoiceExecute
      OnUpdate = acOpenInvoiceUpdate
    end
  end
  inherited cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    Left = 112
  end
  inherited ds_Props: TDataSource
    Left = 104
    Top = 248
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdInvPaid
    PopupMenus = <>
    Left = 496
    Top = 227
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
    Left = 816
    Top = 443
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660050006100790043006F006E00740072006F006C00
      0100660050006100790043006F006E00740072006F006C000100010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      7200310001004D00610069006E000100010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003200010045007800
      690074000100010001000D000A00610063005200650066007200650073006800
      0100550070007000640061007400650072006100200046003600010001000100
      0D000A006100630043006C006F0073006500010053007400E4006E0067002000
      4600310032000100010001000D000A00610063004E006500770001004C00E400
      670067002000740069006C006C000100010001000D000A006100630050007200
      69006E007400010053006B007200690076002000750074002000460038000100
      010001000D000A00610063005300610076006500010053007000610072006100
      2000460033000100010001000D000A00610063004500780070006F0072007400
      58004C00530001004500780070006F0072007400650072006100200058004C00
      530020004600310031000100010001000D000A004C006100620065006C003100
      01005200650073006B006F006E00740072006100730065007200690065000100
      010001000D000A004C006100620065006C0032000100460061006B0074007500
      7200610020007300740061007400750073000100010001000D000A004C006100
      620065006C003300010046004F004D003A000100010001000D000A004C006100
      620065006C00340001005300F6006B002000660061006B007400750072006100
      6E0072003A000100010001000D000A0067007200640049006E00760050006100
      69006400440042005400610062006C0065005600690065007700310046004100
      4B0054005500520041004E0052000100460061006B0074007500720061006E00
      72000100010001000D000A0067007200640049006E0076005000610069006400
      440042005400610062006C00650056006900650077003100460041004B005400
      5500520041005F0044004100540055004D000100460061006B00740075007200
      65007200610064000100010001000D000A0067007200640049006E0076005000
      610069006400440042005400610062006C006500560069006500770031004B00
      55004E00440001004B0075006E0064000100010001000D000A00670072006400
      49006E0076005000610069006400440042005400610062006C00650056006900
      6500770031004100470045004E00540001004100670065006E00740001000100
      01000D000A0067007200640049006E0076005000610069006400440042005400
      610062006C0065005600690065007700310042004500540041004C0056004900
      4C004C004B004F005200010042006500740061006C00760069006C006C006B00
      6F0072000100010001000D000A0067007200640049006E007600500061006900
      6400440042005400610062006C00650056006900650077003100420045004C00
      4F00500050000100420065006C006F00700070000100010001000D000A006700
      7200640049006E0076005000610069006400440042005400610062006C006500
      560069006500770031004B004100530053004100520041004200410054005400
      01004B0061007300730061007200610062006100740074000100010001000D00
      0A0067007200640049006E007600500061006900640044004200540061006200
      6C00650056006900650077003100420045004C004F0050005F00450058004B00
      4C005F004B0041005300530041000100420065006C006F007000700020006500
      78006B006C002E006B0061007300730061000100010001000D000A0067007200
      640049006E0076005000610069006400440042005400610062006C0065005600
      690065007700310042004500540041004C004400010042006500740061006C00
      64000100010001000D000A0067007200640049006E0076005000610069006400
      440042005400610062006C006500560069006500770031004400410054005500
      4D005F0042004500540041004C004400010044006100740075006D0020006200
      6500740061006C0064000100010001000D000A0067007200640049006E007600
      5000610069006400440042005400610062006C00650056006900650077003100
      530055004D004D0041005F0042004500540041004C0044000100530075006D00
      6D006100200062006500740061006C0064000100010001000D000A0067007200
      640049006E0076005000610069006400440042005400610062006C0065005600
      69006500770031004D0045004400440045004C0041004E004400450001004D00
      65006400640065006C0061006E00640065000100010001000D000A0067007200
      640049006E0076005000610069006400440042005400610062006C0065005600
      6900650077003100560041004C005500540041000100560061006C0075007400
      61000100010001000D000A0067007200640049006E0076005000610069006400
      440042005400610062006C0065005600690065007700310050004F0053005400
      5F0049005400010050006F007300740020006900740020006E006F0074006500
      0100010001000D000A0067007200640049006E00760050006100690064004400
      42005400610062006C0065005600690065007700310056004100520055005600
      41005200440045005F004E004F005F0046005200450049004700480054000100
      56006100720075007600E4007200640065002000650078006B006C002E006600
      720061006B0074000100010001000D000A0067007200640049006E0076005000
      610069006400440042005400610062006C006500560069006500770031005000
      52004F0056004900530049004F004E0001004B006F006D006D00690073007300
      69006F006E000100010001000D000A0067007200640049006E00760050006100
      69006400440042005400610062006C0065005600690065007700310054007200
      6100640069006E0067000100540072006100640069006E006700010001000100
      0D000A0067007200640049006E00760050006100690064004400420054006100
      62006C006500560069006500770031004600520041004B005400010046007200
      61006B0074000100010001000D000A0067007200640049006E00760050006100
      69006400440042005400610062006C0065005600690065007700310041007400
      740042006500740061006C0061000100420065006C006F007000700020002800
      610074007400200062006500740061006C00610029000100010001000D000A00
      500061006E0065006C00370001004F0062006500740061006C00640061002000
      660061006B007400750072006F0072000100010001000D000A00610063004300
      61006E00630065006C004300680061006E006700650073000100C5006E006700
      720061002000E4006E006400720069006E006700610072002000460034000100
      010001000D000A00610063004F00700065006E0049006E0076006F0069006300
      65000100D600700070006E0061002000660061006B0074007500720061000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0063006400
      73005F00500072006F0070007300550073006500720049004400010055007300
      65007200490044000100010001000D000A006300640073005F00500072006F00
      7000730046006F0072006D00010046006F0072006D000100010001000D000A00
      6300640073005F00500072006F00700073005600650072006B004E006F000100
      5600650072006B004E006F000100010001000D000A006300640073005F005000
      72006F00700073004F0077006E00650072004E006F0001004F0077006E006500
      72004E006F000100010001000D000A006300640073005F00500072006F007000
      73005000490050004E006F0001005000490050004E006F000100010001000D00
      0A006300640073005F00500072006F00700073004C00490050004E006F000100
      4C00490050004E006F000100010001000D000A006300640073005F0050007200
      6F007000730049006E007000750074004F007000740069006F006E0001004900
      6E007000750074004F007000740069006F006E000100010001000D000A006300
      640073005F00500072006F007000730052006500670050006F0069006E007400
      4E006F00010052006500670050006F0069006E0074004E006F00010001000100
      0D000A006300640073005F00500072006F007000730052006500670044006100
      74006500010052006500670044006100740065000100010001000D000A006300
      640073005F00500072006F007000730043006F00700079005000630073000100
      43006F00700079005000630073000100010001000D000A006300640073005F00
      500072006F0070007300520075006E004E006F000100520075006E004E006F00
      0100010001000D000A006300640073005F00500072006F007000730050007200
      6F00640075006300650072004E006F000100500072006F006400750063006500
      72004E006F000100010001000D000A006300640073005F00500072006F007000
      73004100750074006F0043006F006C0057006900640074006800010041007500
      74006F0043006F006C00570069006400740068000100010001000D000A006300
      640073005F00500072006F007000730053007500700070006C00690065007200
      43006F0064006500010053007500700070006C0069006500720043006F006400
      65000100010001000D000A006300640073005F00500072006F00700073004C00
      65006E006700740068004F007000740069006F006E0001004C0065006E006700
      740068004F007000740069006F006E000100010001000D000A00630064007300
      5F00500072006F00700073004C0065006E00670074006800470072006F007500
      70004E006F0001004C0065006E00670074006800470072006F00750070004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004E00
      650077004900740065006D0052006F00770001004E0065007700490074006500
      6D0052006F0077000100010001000D000A006300640073005F00500072006F00
      70007300530061006C006500730052006500670069006F006E004E006F000100
      530061006C006500730052006500670069006F006E004E006F00010001000100
      0D000A006300640073005F00500072006F00700073004D00610072006B006500
      740052006500670069006F006E004E006F0001004D00610072006B0065007400
      52006500670069006F006E004E006F000100010001000D000A00630064007300
      5F00500072006F00700073004F00720064006500720054007900700065004E00
      6F0001004F00720064006500720054007900700065004E006F00010001000100
      0D000A006300640073005F00500072006F007000730053007400610074007500
      730001005300740061007400750073000100010001000D000A00630064007300
      5F00500072006F0070007300460069006C007400650072004F00720064006500
      720044006100740065000100460069006C007400650072004F00720064006500
      720044006100740065000100010001000D000A006300640073005F0050007200
      6F00700073005300740061007200740050006500720069006F00640001005300
      740061007200740050006500720069006F0064000100010001000D000A006300
      640073005F00500072006F007000730045006E00640050006500720069006F00
      6400010045006E00640050006500720069006F0064000100010001000D000A00
      6300640073005F00500072006F007000730043006C00690065006E0074004E00
      6F00010043006C00690065006E0074004E006F000100010001000D000A006300
      640073005F00500072006F0070007300530061006C0065007300500065007200
      73006F006E004E006F000100530061006C006500730050006500720073006F00
      6E004E006F000100010001000D000A006300640073005F00500072006F007000
      73005600650072006B0053007500700070006C006900650072004E006F000100
      5600650072006B0053007500700070006C006900650072004E006F0001000100
      01000D000A006300640073005F00500072006F00700073005600650072006B00
      4B0075006E0064004E006F0001005600650072006B004B0075006E0064004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004C00
      4F004F0062006A00650063007400540079007000650001004C004F004F006200
      6A0065006300740054007900700065000100010001000D000A00630064007300
      5F00500072006F007000730042006100720043006F00640065004E006F000100
      42006100720043006F00640065004E006F000100010001000D000A0063006400
      73005F00500072006F0070007300470072006100640065005300740061006D00
      70004E006F000100470072006100640065005300740061006D0070004E006F00
      0100010001000D000A006300640073005F00500072006F007000730056006F00
      6C0075006D00650055006E00690074004E006F00010056006F006C0075006D00
      650055006E00690074004E006F000100010001000D000A006300640073005F00
      500072006F00700073004C0065006E0067007400680046006F0072006D006100
      74004E006F0001004C0065006E0067007400680046006F0072006D0061007400
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      4C0065006E0067007400680056006F006C0055006E00690074004E006F000100
      4C0065006E0067007400680056006F006C0055006E00690074004E006F000100
      010001000D000A006300640073005F00500072006F0070007300470072006F00
      750070004200790042006F0078000100470072006F0075007000420079004200
      6F0078000100010001000D000A006300640073005F00500072006F0070007300
      470072006F0075007000530075006D006D006100720079000100470072006F00
      75007000530075006D006D006100720079000100010001000D000A0063006400
      73005F00500072006F00700073004100670065006E0074004E006F0001004100
      670065006E0074004E006F000100010001000D000A006300640073005F005000
      72006F00700073004C006F006100640069006E0067004C006F00630061007400
      69006F006E004E006F0001004C006F006100640069006E0067004C006F006300
      6100740069006F006E004E006F000100010001000D000A006300640073005F00
      500072006F007000730053006800690070007000650072004E006F0001005300
      6800690070007000650072004E006F000100010001000D000A00630064007300
      5F00500072006F007000730042006F006F006B0069006E006700540079007000
      65004E006F00010042006F006F006B0069006E00670054007900700065004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004300
      7500730074006F006D00650072004E006F00010043007500730074006F006D00
      650072004E006F000100010001000D000A006300640073005F00500072006F00
      70007300530068006F007700500072006F006400750063007400010053006800
      6F007700500072006F0064007500630074000100010001000D000A0063006400
      73005F00500072006F00700073004D00610072006B006E006100640001004D00
      610072006B006E00610064000100010001000D000A006300640073005F005000
      72006F00700073004B0075006E00640001004B0075006E006400010001000100
      0D000A006300640073005F00500072006F007000730053005200010053005200
      0100010001000D000A006300640073005F00500072006F007000730053006100
      6C006A00670072007500700070000100530061006C006A006700720075007000
      70000100010001000D000A006300640073005F00500072006F00700073005600
      650072006B0001005600650072006B000100010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      50006100790043006F006E00740072006F006C0001004D005300200053006100
      6E00730020005300650072006900660001004D0053002000530061006E007300
      20005300650072006900660001005400610068006F006D00610001000D000A00
      640078004200610072004D0061006E0061006700650072003100010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003100
      01005400610068006F006D006100010001005400610068006F006D0061000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      61007200320001005400610068006F006D006100010001005400610068006F00
      6D00610001000D000A00500061006E0065006C00370001004D00530020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      610001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A006200630049006E0076006F00
      69006300650054007900700065002E00500072006F0070006500720074006900
      650073002E004900740065006D00730001002200560049004400410020002800
      4B003100290022002C002200500052004F0046004F0052004D00410020002800
      69006E0076006F0069006300650020006C006100740065007200290022002C00
      2200500052004F0046004F0052004D004100200028006D006F00760065002000
      70006B0067007300290022002C00220050005500520043004800410053004500
      200049004E0056004F0049004300450022002C00220055005300410020002800
      4B003200290022002C0046004F00520045005300540057004F004F0044000100
      010001000D000A0062006300460061006B007400750072006100530074006100
      7400750073002E00500072006F0070006500720074006900650073002E004900
      740065006D00730001002200440045004C0020004F004300480020004F004200
      4500540041004C0044004100200022002C002200440045004C00200042004500
      540041004C004400410022002C002200460055004C004C002000420045005400
      41004C004400410022000100010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A006200630049006E0076006F0069006300650054007900
      700065002E00540065007800740001005600490044004100200028004B003100
      29000100010001000D000A0062006300460061006B0074007500720061005300
      740061007400750073002E0054006500780074000100440045004C0020004F00
      4300480020004F0042004500540041004C004400410020000100010001000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660050006100
      790043006F006E00740072006F006C000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0064007800420061007200
      4D0061006E00610067006500720031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00500061006E0065006C0037000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00}
  end
end
