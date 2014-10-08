object fImportedPackages: TfImportedPackages
  Left = 197
  Top = 160
  Caption = 'Importerade paket'
  ClientHeight = 797
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 721
      Height = 61
      Align = alLeft
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 15
        Width = 31
        Height = 13
        Caption = #196'gare:'
      end
      object Label8: TLabel
        Left = 9
        Top = 40
        Width = 48
        Height = 13
        Caption = 'M'#228'tpunkt:'
      end
      object Label12: TLabel
        Left = 232
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Lagerst'#228'lle:'
      end
      object Label13: TLabel
        Left = 232
        Top = 40
        Width = 57
        Height = 13
        Caption = 'Lagergrupp:'
      end
      object Label14: TLabel
        Left = 472
        Top = 16
        Width = 57
        Height = 13
        Caption = 'Registrerad:'
      end
      object lcOWNER: TcxDBLookupComboBox
        Left = 72
        Top = 7
        DataBinding.DataField = 'OWNER'
        DataBinding.DataSource = dsUserProp
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 0
        Width = 153
      end
      object lcREGPOINT: TcxDBLookupComboBox
        Left = 72
        Top = 32
        DataBinding.DataField = 'REGPOINT'
        DataBinding.DataSource = dsUserProp
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 1
        Width = 153
      end
      object lcPIPNAME: TcxDBLookupComboBox
        Left = 296
        Top = 8
        DataBinding.DataField = 'PIPNAME'
        DataBinding.DataSource = dsUserProp
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 2
        Width = 153
      end
      object lcLIPName: TcxDBLookupComboBox
        Left = 296
        Top = 32
        DataBinding.DataField = 'LIPName'
        DataBinding.DataSource = dsUserProp
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 3
        Width = 153
      end
      object deRegDate: TcxDBDateEdit
        Left = 536
        Top = 8
        DataBinding.DataField = 'RegDate'
        DataBinding.DataSource = dsUserProp
        Properties.ImmediatePost = True
        TabOrder = 4
        Width = 153
      end
    end
    object Panel4: TPanel
      Left = 721
      Top = 0
      Width = 335
      Height = 61
      Align = alClient
      TabOrder = 1
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 333
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel5: TPanel
      Left = 1056
      Top = 0
      Width = 65
      Height = 61
      Align = alRight
      TabOrder = 2
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 63
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 636
    Width = 1121
    Height = 161
    Align = alBottom
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1119
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object grdImpLengths: TcxGrid
      Left = 1
      Top = 23
      Width = 1119
      Height = 137
      Align = alClient
      TabOrder = 1
      object grdImpLengthsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dm_ImportWoodx.ds_ImpLenMap
        DataController.KeyFieldNames = 'Identifier;LengthCategory'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '######'
            Kind = skSum
            FieldName = 'Styck'
            Column = grdImpLengthsDBTableView1Styck
          end
          item
            Kind = skCount
            FieldName = 'LengthCategory'
            Column = grdImpLengthsDBTableView1LengthCategory
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdImpLengthsDBTableView1Identifier: TcxGridDBColumn
          DataBinding.FieldName = 'Identifier'
          Options.Filtering = False
          Width = 133
        end
        object grdImpLengthsDBTableView1LengthCategory: TcxGridDBColumn
          Caption = 'Leverant'#246'rens l'#228'ngd'
          DataBinding.FieldName = 'LengthCategory'
          Options.Filtering = False
          Width = 156
        end
        object grdImpLengthsDBTableView1Lngd: TcxGridDBColumn
          DataBinding.FieldName = 'L'#228'ngd'
          Visible = False
          Options.Filtering = False
          Width = 266
        end
        object grdImpLengthsDBTableView1Styck: TcxGridDBColumn
          DataBinding.FieldName = 'Styck'
          Options.Filtering = False
          Width = 268
        end
        object lcLookUpLength: TcxGridDBColumn
          Caption = 'VIS aktuella l'#228'ngd'
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'ProductLengthNo'
          Properties.ListColumns = <
            item
              FieldName = 'ActualLengthMM'
            end>
          Properties.ListSource = dm_ImportWoodx.ds_ProdLength
          Options.Filtering = False
          Width = 97
        end
        object grdImpLengthsDBTableView1ProductLengthNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 106
        end
      end
      object grdImpLengthsLevel1: TcxGridLevel
        GridView = grdImpLengthsDBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 628
    Width = 1121
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Panel6
  end
  object Panel7: TPanel
    Left = 0
    Top = 316
    Width = 1121
    Height = 312
    Align = alClient
    TabOrder = 3
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 1119
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxLabel4: TcxLabel
        Left = 16
        Top = 8
        Caption = 
          'V'#228'lj den VIS produkt som skall l'#228'nkas mot leverant'#246'rens produkt,' +
          ' du beh'#246'ver bara g'#246'ra l'#228'nken en g'#229'ng f'#246'r varje produkt. Klicka s' +
          'edan p'#229' kontrollera paket ovan.'
        Style.TextStyle = [fsBold]
      end
    end
    object grdImpPkgs: TcxGrid
      Left = 1
      Top = 36
      Width = 1119
      Height = 275
      Align = alClient
      TabOrder = 1
      object grdImpPkgsDBTableView1: TcxGridDBTableView
        PopupMenu = dxBarPopupMenu1
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dm_ImportWoodx.ds_ImpProdMap
        DataController.KeyFieldNames = 'Identifier'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'Identifier'
            Column = grdImpPkgsDBTableView1Identifier
          end
          item
            Format = '#########'
            Kind = skSum
            FieldName = 'Styck'
            Column = grdImpPkgsDBTableView1Styck
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = grdImpPkgsDBTableView1StylesGetContentStyle
        object grdImpPkgsDBTableView1Identifier: TcxGridDBColumn
          DataBinding.FieldName = 'Identifier'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 60
        end
        object grdImpPkgsDBTableView1ClientCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'ClientCode'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 48
        end
        object grdImpPkgsDBTableView1Styck: TcxGridDBColumn
          Caption = 'Tot.styck'
          DataBinding.FieldName = 'Styck'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 58
        end
        object grdImpPkgsDBTableView1ProductIdentifier: TcxGridDBColumn
          Caption = 'Leverant'#246'rens produktbeskrivning'
          DataBinding.FieldName = 'Produktbeskrivning'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 200
        end
        object grdImpPkgsDBTableView1Column1: TcxGridDBColumn
          Caption = 'Leverant'#246'rens produktkod'
          DataBinding.FieldName = 'ProductIdentifier'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 168
        end
        object grdImpPkgsDBTableView1Produkt: TcxGridDBColumn
          Caption = 'VIS Produkt'
          DataBinding.FieldName = 'Produkt'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ProductNo'
          Properties.ListColumns = <
            item
              FieldName = 'ProductDisplayName'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Options.Filtering = False
          Width = 289
        end
        object grdImpPkgsDBTableView1Logg: TcxGridDBColumn
          DataBinding.FieldName = 'Logg'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 186
        end
        object grdImpPkgsDBTableView1Status: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 54
        end
        object grdImpPkgsDBTableView1ProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 50
        end
      end
      object grdImpPkgsLevel1: TcxGridLevel
        GridView = grdImpPkgsDBTableView1
      end
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 61
    Width = 1121
    Height = 255
    Align = alTop
    TabOrder = 8
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 392
      Height = 253
      Align = alLeft
      TabOrder = 0
      object grdDelShipDelMsgRef: TcxGrid
        Left = 1
        Top = 1
        Width = 390
        Height = 251
        Align = alClient
        TabOrder = 0
        object grdDelShipDelMsgRefDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dm_ImportWoodx.ds_DSDMR2
          DataController.KeyFieldNames = 'DeliveryMessageNumber;DeliveryMessageReferenceType'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdDelShipDelMsgRefDBTableView1DeliveryMessageNumber: TcxGridDBColumn
            DataBinding.FieldName = 'DeliveryMessageNumber'
            Visible = False
            Width = 97
          end
          object grdDelShipDelMsgRefDBTableView1DeliveryShipmentLineItemNumber: TcxGridDBColumn
            DataBinding.FieldName = 'DeliveryShipmentLineItemNumber'
            Visible = False
            Width = 93
          end
          object grdDelShipDelMsgRefDBTableView1DeliveryMessageReference: TcxGridDBColumn
            DataBinding.FieldName = 'DeliveryMessageReference'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 219
          end
          object grdDelShipDelMsgRefDBTableView1DeliveryMessageReferenceType: TcxGridDBColumn
            Caption = 'Referens typ'
            DataBinding.FieldName = 'DeliveryMessageReferenceType'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 196
          end
        end
        object grdDelShipDelMsgRefLevel1: TcxGridLevel
          GridView = grdDelShipDelMsgRefDBTableView1
        end
      end
    end
    object Panel12: TPanel
      Left = 393
      Top = 1
      Width = 727
      Height = 253
      Align = alClient
      TabOrder = 1
      object cxLabel1: TcxLabel
        Left = 16
        Top = 35
        Caption = 'Leverant'#246'r (h'#228'mtat fr'#229'n Woodx filen)'
        Style.TextStyle = [fsBold]
      end
      object teName1: TcxDBTextEdit
        Left = 16
        Top = 52
        DataBinding.DataField = 'Name1'
        DataBinding.DataSource = dm_ImportWoodx.ds_ImpClientMap
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 473
      end
      object cxLabel2: TcxLabel
        Left = 16
        Top = 106
        Caption = 'VIS Leverant'#246'r'
        Style.TextStyle = [fsBold]
      end
      object lcLeverantr: TcxDBLookupComboBox
        Left = 624
        Top = 75
        DataBinding.DataField = 'ClientName'
        DataBinding.DataSource = dm_ImportWoodx.dsClient
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ReadOnly = False
        TabOrder = 3
        Visible = False
        Width = 113
      end
      object cxLabel3: TcxLabel
        Left = 495
        Top = 36
        Caption = 'Leverant'#246'rens ID'
        Style.TextStyle = [fsBold]
        Visible = False
      end
      object teWoodXPartyIdentifier: TcxDBTextEdit
        Left = 495
        Top = 56
        DataBinding.DataField = 'WoodXPartyIdentifier'
        DataBinding.DataSource = dm_ImportWoodx.ds_ImpClientMap
        Properties.ReadOnly = True
        TabOrder = 5
        Visible = False
        Width = 122
      end
      object Panel11: TPanel
        Left = 1
        Top = 1
        Width = 725
        Height = 32
        Align = alTop
        TabOrder = 6
        object cxLabel5: TcxLabel
          Left = 21
          Top = 7
          Caption = 'Leveransnr:'
          Style.TextStyle = [fsBold]
        end
        object teDeliveryMessageNumber: TcxDBTextEdit
          Left = 93
          Top = 3
          DataBinding.DataField = 'DeliveryMessageNumber'
          DataBinding.DataSource = dm_ImportWoodx.ds_ImpClientMap
          TabOrder = 1
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 264
          Top = 7
          Caption = 'Utlastad:'
          Style.TextStyle = [fsBold]
        end
        object deDeliveryMessageDate: TcxDBDateEdit
          Left = 325
          Top = 3
          DataBinding.DataField = 'DeliveryMessageDate'
          DataBinding.DataSource = dm_ImportWoodx.ds_ImpClientMap
          Properties.Kind = ckDateTime
          TabOrder = 3
          Width = 180
        end
      end
      object grdPartyIdentifier: TcxGrid
        Left = 1
        Top = 147
        Width = 725
        Height = 105
        Align = alBottom
        TabOrder = 7
        object grdPartyIdentifierDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          DataController.DataSource = dm_ImportWoodx.ds_ImpClientMap
          DataController.KeyFieldNames = 'WoodXPartyIdentifier'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdPartyIdentifierDBTableView1ClientName: TcxGridDBColumn
            Caption = 'VIS Namn'
            DataBinding.FieldName = 'ClientName'
            Width = 122
          end
          object grdPartyIdentifierDBTableView1ClientNo: TcxGridDBColumn
            DataBinding.FieldName = 'ClientNo'
            Visible = False
            Width = 79
          end
          object grdPartyIdentifierDBTableView1Name1: TcxGridDBColumn
            DataBinding.FieldName = 'Name1'
            Visible = False
            Width = 79
          end
          object grdPartyIdentifierDBTableView1PartyIdentifier: TcxGridDBColumn
            DataBinding.FieldName = 'PartyIdentifier'
            Width = 138
          end
          object grdPartyIdentifierDBTableView1PartyIdentifierType: TcxGridDBColumn
            DataBinding.FieldName = 'PartyIdentifierType'
            Width = 117
          end
          object grdPartyIdentifierDBTableView1WoodXPartyIdentifier: TcxGridDBColumn
            DataBinding.FieldName = 'WoodXPartyIdentifier'
            Width = 178
          end
          object grdPartyIdentifierDBTableView1DeliveryMessageNumber: TcxGridDBColumn
            DataBinding.FieldName = 'DeliveryMessageNumber'
            Visible = False
            Width = 162
          end
          object grdPartyIdentifierDBTableView1WoodXPartyIdentifierType: TcxGridDBColumn
            DataBinding.FieldName = 'WoodXPartyIdentifierType'
            Width = 164
          end
          object grdPartyIdentifierDBTableView1DeliveryMessageDate: TcxGridDBColumn
            DataBinding.FieldName = 'DeliveryMessageDate'
            Visible = False
            Width = 122
          end
        end
        object grdPartyIdentifierLevel1: TcxGridLevel
          GridView = grdPartyIdentifierDBTableView1
        end
      end
      object cxButton1: TcxButton
        Left = 544
        Top = 96
        Width = 145
        Height = 33
        Action = acSaveClientConnection
        TabOrder = 8
      end
      object teClientName: TcxDBTextEdit
        Left = 16
        Top = 123
        DataBinding.DataField = 'ClientName'
        DataBinding.DataSource = dm_ImportWoodx.dsClient
        TabOrder = 9
        Width = 233
      end
      object tePartyIdentifier: TcxDBTextEdit
        Left = 256
        Top = 123
        DataBinding.DataField = 'PartyIdentifier'
        DataBinding.DataSource = dm_ImportWoodx.dsClient
        TabOrder = 10
        Width = 121
      end
      object tePartyIdentifierType: TcxDBTextEdit
        Left = 384
        Top = 123
        DataBinding.DataField = 'PartyIdentifierType'
        DataBinding.DataSource = dm_ImportWoodx.dsClient
        TabOrder = 11
        Width = 105
      end
      object cxLabel7: TcxLabel
        Left = 256
        Top = 106
        Caption = 'VIS Party identifier'
        Style.TextStyle = [fsBold]
      end
      object cxLabel8: TcxLabel
        Left = 384
        Top = 106
        Caption = 'VIS Party identifier type'
        Style.TextStyle = [fsBold]
      end
      object cxLabel9: TcxLabel
        Left = 16
        Top = 84
        Caption = #196'r kopplad till VIS klient'
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 336
    object OpenLoad1: TMenuItem
      Caption = 'Open Load'
    end
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 480
    Top = 320
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      OnExecute = acCloseExecute
    end
    object acRefresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 19
      ShortCut = 117
      OnExecute = acRefreshExecute
    end
    object acControllPkgs: TAction
      Caption = 'Kontrollera paket F10'
      ImageIndex = 9
      ShortCut = 121
      OnExecute = acControllPkgsExecute
      OnUpdate = acControllPkgsUpdate
    end
    object acCreatePkgs: TAction
      Caption = 'Spara && st'#228'ng F3'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = acCreatePkgsExecute
      OnUpdate = acCreatePkgsUpdate
    end
    object acSetPrefixOnMarkedPkgs: TAction
      Caption = #196'ndra prefix p'#229' markerade paket'
      OnExecute = acSetPrefixOnMarkedPkgsExecute
    end
    object acSetPrefixOnAllPkgs: TAction
      Caption = #196'ndra prefix p'#229' alla paket'
      OnExecute = acSetPrefixOnAllPkgsExecute
    end
    object acSaveClientConnection: TAction
      Caption = 'Spara klientkoppling'
      ImageIndex = 17
      OnExecute = acSaveClientConnectionExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PkgTable')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = imglistActions
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 289
    Top = 225
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acRefresh
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acControllPkgs
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acCreatePkgs
      Caption = 'Spara paket och l'#228'gg till last'
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acCreatePkgs
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acSetPrefixOnMarkedPkgs
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = acSetPrefixOnAllPkgs
      Category = 1
    end
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 432
    Top = 352
    Bitmap = {
      494C010116001800140018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000090000000010020000000000000D8
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131005263
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B5A4A003929
      180029637B0052636B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B84
      630052734200319C3100319C3100319C3100319C3100319C3100D6D6D6008CB5
      C6008CF7FF002973F70021526B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073AD73001084
      100042CE420021A5210031A5310039AD390039AD390039AD3900107B10006BC6
      FF008CF7FF002973F7002973F70008426300736B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400085A940008426300084263000842630000314A0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000298C290042CE
      420031AD310042BD42004ABD4A0052C65200B5E7A500399C39008CBD7B00399C
      390010A5D60042E7F7002973F7002973F70021526B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400085A9400084263000842630000314A0084848400000000004ABD
      FF00D6FFFF00BDFFFF008CF7FF008CF7FF00299CEF00107BCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003994390029AD
      290039B539004ABD4A005AC65A009CDE8C0052B5520073B56B00D6E7BD004AA5
      4200B5E7A50010A5D60042E7F7002973F7002973F70018425A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004ABDFF00D6FFFF00BDFFFF008CF7FF00299CEF00107BCE00000000008484
      84004ABDFF004ABDFF004ABDFF004ABDFF004ABDFF0084848400084263000031
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CBD8C00299C
      29004ABD4A005AC65A006BCE6B00B5E7A50063A56300F7FFEF00F7FFEF0084BD
      7B00B5E7A50063CE630010A5D60042E7F7002973F7002973F70021526B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484004ABDFF004ABDFF004ABDFF004ABDFF0084848400000000000000
      0000000000000000000084A5FF0094E7FF00BDFFFF007BCEDE004AA5C6002984
      BD005A5ACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000398C
      31004ABD4A0063CE6300B5E7A50052A54A00D6E7CE00FFFFFF00FFFFFF0084B5
      84009CDE8C0073CE73005AC65A0010A5D60042E7F7002973F7002973F7000842
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C94FF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6004A5ADE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000398C310052B552004A9C42009CB58C00BDC6C600BDC6C600E7DECE0094B5
      7B007BCE7B007BD67B0052B552004284390010A5D60042E7F7002973F7003139
      BD00313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000085A94000842630008426300084263000031
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A8C420018734A003984AD00217BBD00217BBD00428CAD004284
      630063BD6300399C3900528C4A00000000000000000010A5D60042A5DE008C84
      7B0084847B003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B9CEF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6003963CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A849C00187BC600218CE700298CE700298CE700218CE700107B
      B500296B52000000000000000000000000000000000000000000846B5A00FFFF
      FF00F7EFE7007363520021214A00000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000073B5D60094DEEF00BDFFFF006BBDD600429CC6002184
      C6001873AD00007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000217BBD002994EF002994F7003194FF003194FF00319CF7002994
      EF00216B9C000000000000000000000000000000000000000000000000009C94
      8C00E7CEB50029637B002973F7003139BD000000000000000000007B00000094
      000000940000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC6005AA5CE000842630008426300084263000031
      4A00009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000297BAD002994EF00399CFF00399CFF00399CFF00399CFF00399CFF00399C
      FF00298CE700106B9C0000000000000000000000000000000000000000000000
      00004A6B9C00299CEF002973F7003139BD000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC6006363
      630063636300636363007BBDD60073C6DE00BDFFFF006BC6D60042A5C6002184
      C60010849C000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002184C600399CFF0042A5FF0042A5FF0042A5FF0042A5FF0042A5FF0042A5
      FF00399CF700315A6B0000000000000000000000000000000000000000000000
      0000000000000010E7000010E700000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FF
      FF00C6C6C600C6FFFF008CCEEF009CE7FF00BDFFFF007BE7FF0052C6F70039A5
      E70021949C000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      9C00399CF70042A5FF004AADFF004AADFF006BBDFF006BBDFF004AADFF004AAD
      FF0042A5F700316B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C6004ABDFF004ABDFF004ABDFF004ABDFF004ABD
      FF00C6FFC60000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006BA5
      C60042A5F7004AADFF004AB5FF006BBDFF0052B5FF006BBDFF0052B5FF006BBD
      FF004AADFF003973940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6FF
      FF00C6C6C600C6C6C600C6FFFF00C6FFFF0063636300C6FFC600C6FFC600C6FF
      C600C6FFC60000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005294
      BD0042A5EF0052B5FF006BC6FF006BC6FF006BC6FF0052B5F7004AB5EF0052B5
      F70052B5F70039738C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC60063636300C6C6
      C600C6C6C600C6C6C600C6C6C60063636300C6FFC600C6FFC600C6FFC600C6FF
      C600A5FFA50000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063A5
      C600217BB500298CCE003194DE003194DE002184C600298CC600318CC6002984
      C6002994CE00106B9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC6006363
      6300636363006363630063636300C6FFC600C6FFC600C6FFC600C6FFC600A5FF
      A50000C600000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      9C002173A500428CC6004A94C6006BADD6007BBDEF0063ADF7004A9CE700398C
      CE00216BA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C6
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002173A500318CC6006BADD6008CBDE7008CBDE70073BDE7005AADDE003994
      C600106B9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C600000094
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000428CB5004294C6006BADD6009CCEE7008CBDE7004294BD00106B
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BA5BD004A94B500529CBD004A8CAD0063849C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C0000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C0000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      3900000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      3900000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD00000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD00000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      39000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      39000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00ADDEFF0031A5FF00ADDEFF00ADDEFF00ADDEFF00ADDE
      FF00ADDEFF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C67300EFF7EF00EFF7EF00A5D6A50063BD630063BD
      63005AB55A0052B5520052B5520052B5520052B552004AAD4A004A9C4A00397B
      39000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF0031A5FF0031A5FF00299CFF0084C6FF00219CFF001894
      FF001094FF00088CFF00088CFF00088CFF00008CFF000084F700007BE700005A
      FD000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C6730073C673006BBD6B0063BD630063BD6300A5D6
      A500EFF7EF00EFF7EF0052B5520052B5520052B552004AAD4A004A9C4A00397B
      39000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF00FFFFFF00ADDEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADDEFF00088CFF00088CFF00008CFF000084F700007BE700005A
      FD0000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C67300EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      63005AB55A005AB55A0052B5520052B552004AAD4A0052B552004A9C4A003984
      39000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF0031A5FF0084C6FF00FFFFFF0084C6FF001894
      FF001094FF001094FF00088CFF00008CFF000084F700008CFF00007BE7000063
      BD0000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C6730073C6730073C673006BBD6B00A5D6A500EFF7
      EF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004A9C4A003984
      39000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF00FFFFFF00FFFFFF00FFFFFF00ADDEFF00219CFF001894
      FF00FFFFFF00FFFFFF00ADDEFF00008CFF000084F700008CFF00007BE7000063
      BD0000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B5520052B5520052B5520052B552004AA54A003984
      39000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF00FFFFFF0084C6
      FF001894FF001094FF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD0000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B5520052B552004AA54A003984
      39000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF00FFFFFF00FFFFFF00ADDEFF0031A5FF00219CFF001894
      FF001894FF00FFFFFF00ADDEFF00008CFF00008CFF00008CFF000084EF000063
      BD0000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A5005AB55A0052B5520052B552004AAD4A0052B552004AA54A00428C
      42000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF00219CFF00FFFF
      FF0084C6FF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C60000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004AA54A00428C
      42000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF00FFFFFF00FFFFFF00FFFFFF00ADDEFF00219CFF00219C
      FF001894FF00ADDEFF00FFFFFF00008CFF000084F700088CFF000084F700006B
      C60000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B5520052B552005AB55A004AA54A003984
      39000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF0031A5FF00219CFF001894
      FF00FFFFFF0084C6FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD0000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A004AA54A003984
      39000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0042ADFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADDEFF001894
      FF001094FF001094FF00088CFF0031A5FF00088CFF001094FF000084F7000063
      BD0000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B5520052B55200428C
      420000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0084C6FF0031A5FF0031A5FF0031A5FF00219CFF001894
      FF001894FF00FFFFFF0084C6FF001094FF00088CFF00088CFF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B00A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF005AB55A005AB55A0052B5520052B5520052B55200428C
      420000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0031A5FF00219CFF001894
      FF001894FF001894FF001094FF001094FF00088CFF00088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B552004AA54A0052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF001094FF00FFFFFF0084C6FF000084F700088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AA54A0052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0031A5FF0031A5FF0031A5FF0031A5FF0031A5FF00ADDEFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF000084F700088CFF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A50052B5520052B5520052B5520052B552005AB55A0052B552003984
      390000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF00088CFF00088CFF00FFFFFF0084C6FF001094FF00088CFF000063
      BD0000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A0052B552003984
      390000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF00FFFFFF00ADDEFF0031A5FF0031A5FF00299CFF00ADDE
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF00088CFF001094FF00088CFF000063
      BD0000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE8400EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B552005AB55A0063BD63005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF004AADFF0039A5FF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00088CFF001094FF00FFFFFF001094FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE840073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B552005AB55A0063BD63005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF00ADDEFF00FFFFFF0031A5FF0039A5FF00299CFF00219C
      FF00ADDEFF00FFFFFF00FFFFFF001094FF001894FF001094FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE8400EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      630063BD630063BD630063BD630052B5520052B552005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00088CFF00088CFF001094FF00088CFF00006B
      CE0000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE84007BC67B0073C6730073C67300A5D6A500EFF7
      EF00FFFFFF00EFF7EF0063BD630052B5520052B552005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF00ADDEFF00FFFFFF00FFFFFF0031A5FF00299CFF00219C
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF00088CFF001094FF00088CFF00006B
      CE000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C00EFF7EF00EFF7EF00A5D6A50073C6730073C6
      730073C673006BBD6B0073C6730063BD630063BD630063BD630052B55200428C
      420000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C6000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C0084CE840084CE84007BC67B0073C67300A5D6
      A500EFF7EF00EFF7EF0073C6730063BD630063BD630063BD630052B55200428C
      420000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF00ADDEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADDEFF00FFFFFF00219CFF00219CFF001894FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000084CE8400ADDE
      FD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      39000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD0000000000000000000000000000000000000000000000000084CE8400ADDE
      FD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      39000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF00ADDEFF00ADDEFF00ADDEFF00ADDE
      FF00ADDEFF0042ADFF00ADDEFF0031A5FF0031A5FF00219CFF00088CFF000063
      BD000000000000000000000000000000000000000000000000008CCE8C00ADDE
      FD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      42000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000008CCE8C00ADDE
      FD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      42000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C000000000000000000000000000000000000000000000000005AB5FF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C000000000000000000000000000000000000000000000000005AB5FF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF00000000000000000000000000000000000000000000000000FFBD8400C67B
      3100A56B2900B5733100B5733100B5733100B5733100B5733100B5733100AD6B
      2900AD6B2900B5733100AD6B2900B5733100AD6B2900A56B2900AD6B2900FFBD
      84000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF00000000000000000000000000000000000000000000000000FFBD8400C67B
      3100A56B2900B5733100B5733100B5733100B5733100B5733100B5733100AD6B
      2900AD6B2900B5733100AD6B2900B5733100AD6B2900A56B2900AD6B2900FFBD
      84000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000D6843100D684
      3100DE8C3100E78C3900E78C3900E78C3900E78C3900E78C3900E78C3900DE8C
      3100E78C3900DE8C3100DE8C3100D6843100CE843100C67B3100BD733100B573
      31000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000D6843100D684
      3100DE8C3100E78C3900E78C3900E78C3900E78C3900E78C3900E78C3900DE8C
      3100E78C3900DE8C3100DE8C3100D6843100CE843100C67B3100BD733100B573
      31000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000CE843100EF94
      3900EF9C4200F79C4A00F79C4A00F79C4A00F79C4A00F79C4A00EF944200EF9C
      4200EF9C4200EF944200EF943900EF943900E78C3900D6843100CE843100A56B
      29000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000CE843100EF94
      3900EF9C4200F79C4A00F79C4A00F79C4A00F79C4A00F79C4A00EF944200EF9C
      4200EF9C4200EF944200EF943900EF943900E78C3900D6843100CE843100A56B
      29000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF00315AEF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD00000000000000000000000000000000000000000000000000DE8C3100EF94
      4200EF9C4200F7A55A00F7A55A00F7AD6300F7A55A00F7A55A00F7A55200EF9C
      4200EF9C4200EF944200EF944200EF943900DE8C3100E78C3900CE843100A56B
      29000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF008494EF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD00000000000000000000000000000000000000000000000000DE8C3100EF94
      4200EF9C4200F7A55A00F7A55A00F7AD6300F7A55A00F7A55A00F7A55200EF9C
      4200EF9C4200EF944200EF944200EF943900DE8C3100E78C3900CE843100A56B
      29000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7003963E7003963E7003163
      E700295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD00000000000000000000000000000000000000000000000000E78C3900EF9C
      4200F7A55200FFCE9C00FFCE9C00F7AD6300F7A55A00F7A55200F7A55200F79C
      4A00FFCE9C00FFF7E700FFF7E700EF944200EF943900E78C3900D6843100A56B
      29000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7009CADEF00FFFFFF008494
      EF00295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD00000000000000000000000000000000000000000000000000E78C3900EF9C
      4200F7A55200F7AD6300F7AD6300FFF7E700FFF7E700FFCE9C00F7A55200F79C
      4A00EF9C4200EF944200EF944200FFCE9C00FFCE9C00E78C3900D6843100A56B
      29000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF008494EF008494EF008494EF008494EF008494EF008494EF008494
      EF008494EF008494EF008494EF008494EF008494EF001042EF000839DE000829
      B500000000000000000000000000000000000000000000000000EF943900F7A5
      5200F7AD6300FFFFFF00FFCE9C00F7AD6300F7AD6300F7A55A00F7A55200FFCE
      9C00FFF7E700FFFFFF00FFF7E700EF943900E78C3900EF943900D6843100B573
      31000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7009CADEF00FFFFFF008494
      EF002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B500000000000000000000000000000000000000000000000000EF943900F7A5
      5200F7AD6300F7AD6300F7AD6300FFF7E700FFFFFF00FFF7E700FFCE9C00F79C
      4A00EF9C4200EF9C4200EF944200FFCE9C00FFFFFF00EF943900D6843100B573
      3100000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE7008494EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000EF943900F7A5
      5A00F7AD6B00FFFFFF00FFCE9C00F7AD6300F7AD6300F7AD6300FFCE9C00FFF7
      E700FFFFFF00FFFFFF00FFF7E700EF943900EF943900EF943900DE8C3100B573
      3100000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000EF943900F7A5
      5A00F7AD6B00F7AD6B00F7AD6B00FFF7E700FFFFFF00FFFFFF00FFF7E700FFCE
      9C00F79C4A00EF9C4200EF944200FFCE9C00FFFFFF00EF943900DE8C3100B573
      3100000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D6D6FF008494EF00184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000EF944200F7AD
      6B00F7AD6B00FFFFFF00FFCE9C00F7AD6B00F7AD6300FFCE9C00FFF7E700FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF943900E78C3900EF944200E78C3900BD73
      3100000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000EF944200F7AD
      6B00F7AD6B00F7AD6B00F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFCE9C00EF9C4200EF944200FFCE9C00FFFFFF00EF944200E78C3900BD73
      31000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE7005A6BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D6D6FF008494EF00184AEF00214AEF00184ADE001031
      FD00000000000000000000000000000000000000000000000000F79C4A00F7B5
      7300F7AD6B00FFFFFF00FFCE9C00F7AD6B00FFCE9C00FFF7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF943900EF944200EF9C4200E78C3900B573
      31000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE7009CADEF008494EF008494EF008494EF008494EF00FFFFFF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD00000000000000000000000000000000000000000000000000F79C4A00F7B5
      7300F7AD6B00F7B57300F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFCE9C00EF944200FFCE9C00FFFFFF00EF9C4200E78C3900B573
      3100000000000000000000000000000000000000000000000000425AEF005273
      E7005A73E7005A73E7005A6BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6FF008494EF00214AEF00214AE700214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000F7AD6300F7AD
      6B00F7B57300FFFFFF00FFCE9C00FFCE9C00FFF7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF9C4200EF944200EF944200EF943900BD73
      3100000000000000000000000000000000000000000000000000425AEF005273
      E7009CADEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000F7AD6300F7AD
      6B00F7B57300F7B57300F7B57300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7E700FFCE9C00FFCE9C00FFFFFF00EF944200EF943900BD73
      31000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7005A73E7005273E7004A6BE7008494EF00E7E7FF00FFFFFF00FFFF
      FF00D6D6FF008494EF00214AE700214AE700184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000F7A55A00F7B5
      7300F7B57300FFFFFF00FFCE9C00F7AD6300FFCE9C00FFF7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF944200E78C3900EF944200EF943900BD73
      31000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF00FFFFFF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000F7A55A00F7B5
      7300F7B57300F7B57300F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFCE9C00EF944200FFCE9C00FFFFFF00EF944200EF943900BD73
      31000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E7008494EF00E7E7FF00D6D6
      FF008494EF002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD00000000000000000000000000000000000000000000000000F7AD6300FFBD
      7B00F7B57300FFFFFF00FFCE9C00F7AD6B00F7AD6300FFCE9C00FFF7E700FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF944200EF944200EF9C4200EF944200B573
      31000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E7009CADEF00FFFFFF008494
      EF002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD00000000000000000000000000000000000000000000000000F7AD6300FFBD
      7B00F7B57300F7B57300F7B57300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFCE9C00EF944200EF944200FFCE9C00FFFFFF00EF9C4200EF944200B573
      31000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7004A63EF008494EF008494
      EF003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD00000000000000000000000000000000000000000000000000F7AD6300FFBD
      8400FFC68C00FFFFFF00FFCE9C00F7AD6B00F7AD6300F7AD6B00FFCE9C00FFF7
      E700FFFFFF00FFFFFF00FFF7E700EF9C4200F79C4A00EF9C4200EF943900BD73
      31000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7009CADEF00FFFFFF008494
      EF003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD00000000000000000000000000000000000000000000000000F7AD6300FFBD
      8400FFC68C00FFBD7B00F7B57300FFF7E700FFFFFF00FFFFFF00FFF7E700FFCE
      9C00F79C4A00EF9C4200EF944200FFCE9C00FFFFFF00EF9C4200EF943900BD73
      3100000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7004A63E7004263E700395A
      E700395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD00000000000000000000000000000000000000000000000000F7AD6B00FFC6
      9400FFC68C00FFFFFF00FFCE9C00F7B57300F7AD6B00F7AD6300F7A55A00FFCE
      9C00FFF7E700FFFFFF00FFF7E700EF944200EF944200EF9C4200EF944200C67B
      3100000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7009CADEF00FFFFFF008494
      EF00395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD00000000000000000000000000000000000000000000000000F7AD6B00FFC6
      9400FFC68C00FFBD8400F7B57300FFF7E700FFFFFF00FFF7E700FFCE9C00F7A5
      5200F7A55200F79C4A00F79C4A00FFCE9C00FFFFFF00EF9C4200EF944200C67B
      31000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700526BE7004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD00000000000000000000000000000000000000000000000000F7B57300FFD6
      A500FFCE9C00FFCE9C00FFCE9C00FFBD7B00F7B57300F7B57300F7AD6B00F7AD
      6300FFCE9C00FFF7E700FFF7E700F7A55200F7A55200F79C4A00EF943900BD73
      31000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700FFFFFF004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD00000000000000000000000000000000000000000000000000F7B57300FFD6
      A500FFCE9C00FFC68C00FFBD8400FFF7E700FFF7E700FFCE9C00F7AD6B00F7AD
      6300F7AD6300F7A55A00F7AD6300FFCE9C00FFCE9C00F79C4A00EF943900BD73
      3100000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000F7B57300FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFC68C00FFBD8400FFBD7B00F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7AD6300F7A55200EF944200B573
      3100000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000F7B57300FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFC68C00FFBD8400FFBD7B00F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7AD6300F7A55200EF944200B573
      31000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B500000000000000000000000000000000000000000000000000FFBD8400FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFBD7B00FFBD7B00F7B57300F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7A55A00F79C4A00E78C3900C67B
      31000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B500000000000000000000000000000000000000000000000000FFBD8400FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFBD7B00FFBD7B00F7B57300F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7A55A00F79C4A00E78C3900C67B
      31000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000FFBD8400FFBD
      8400F7B57300F7AD6B00F7AD6300F7AD6300F7A55A00F7A55A00F7A55A00F7AD
      6300F7A55200EF9C4200F79C4A00F79C4A00EF943900EF943900DE8C3100FFBD
      84000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000FFBD8400FFBD
      8400F7B57300F7AD6B00F7AD6300F7AD6300F7A55A00F7A55A00F7A55A00F7AD
      6300F7A55200EF9C4200F79C4A00F79C4A00EF943900EF943900DE8C3100FFBD
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE630000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF00315AEF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF00219CFF001894
      FF001094FF00088CFF0084C6FF00FFFFFF00008CFF000084F700007BE700005A
      FD000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7003963E7003963E7003163
      E700295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF001894
      FF001094FF0084C6FF00FFFFFF00008CFF000084F700008CFF00007BE7000063
      BD000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7004263E7003963E7003163
      E7002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF00219CFF001894
      FF0084C6FF00FFFFFF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD00000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7004A6BE7003963E7003163
      E700315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF0084C6
      FF00FFFFFF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C600000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7004A63E7003963E700395A
      E700315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE630000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0042ADFF0039A5FF0039A5FF0031A5FF0031A5FF00FFFFFF00FFFF
      FF001094FF001094FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE700526BE7008494EF008494EF008494EF008494EF008494EF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD00000000000000000000000000000000000000000000000000000000000000
      00007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE6300000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0084C6FF00FFFFFF00FFFF
      FF0084C6FF001894FF001094FF001094FF00088CFF00088CFF00008CFF00006B
      C600000000000000000000000000000000000000000000000000425AEF005273
      E7005A73E7008494EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000000000000000
      0000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE63000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0084C6FF00FFFFFF00299CFF001894
      FF00FFFFFF0084C6FF00088CFF00088CFF000084F700088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000000000000000
      0000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD00313131000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0084C6FF00FFFFFF0031A5FF00299CFF001894
      FF001094FF00FFFFFF0084C6FF00088CFF00088CFF001094FF00088CFF000063
      BD000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E700425AEF00425AE7003152
      E7002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD000000000000000000000000000000000000000000298CBD000873B5000873
      B500085A940042B5F70042B5F7000873B5000873B500085A94007B8CC600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B003131310000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF0084C6FF00FFFFFF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00FFFFFF0084C6FF001894FF001094FF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7004A63EF00425AE700395A
      E7003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD0000000000000000000000000000000000000000000873B5008CD6F70042B5
      F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A00000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF00FFFFFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00FFFFFF00088CFF001094FF00088CFF00006B
      CE00000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7004A63E7004263E700395A
      E700395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD000000000000000000000000000000000000000000216BF700B5DEF700B5DE
      F700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216BF700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F700000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C6000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700526BE7004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD0000000000000000000000000000000000000000005AB5E7003184FF003184
      FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5E700D6D6
      D600D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B58484000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F70000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD00000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000000000000000
      00003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      8400000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E70000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B500000000000000000000000000000000000000000000000000000000000000
      00003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000ADDEFF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000000000000000
      00005AB5E7003184FF003184FF005AB5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007F7F7F000000
      00000000000000000000FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B59C9C00B59C9C00B59C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007F7F7F000000
      00000000000000000000FFFFFF007F7F7F000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B59C9C008C736B00AD5252009C5A5A00B59C9C000000
      0000000000000000000000000000000000000000000000FFFF00000000007F7F
      7F007F7F7F0000FFFF0000FFFF007F7F7F007F7F7F007F7F7F0000FFFF000000
      0000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
      FF00FFFFFF00FFFFFF007F7F7F00000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B59C9C008C736B00AD5A5A00CE8C8400C6737B00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B59C9C008C736B00B55A5A00D6949400C6737B0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B59C
      9C009C635A00BD6B6300D69C9C00C6737B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B59C9C00AD5A
      5A00BD736B00DEADA500C6737B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A58C8C00A55A5A00C67B
      7B00DEADA500C6737B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C736B00A55A5A00CE8C8400DEAD
      A500C6737B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6B6300AD5A5A00D6948C00D69C9400C673
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00FFFFFF0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C4A4200B5636300D69C9400D69C9C00B57B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00FFFFFF0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A55A5A00BD6B6B00D6A59C00BD9C8400B5636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      00007F7F7F007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F007F7F7F00FFFFFF000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD5A5A00C67B7300DEADA500C69C9400B563630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007F7F7F007F7F7F00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007F7F7F007F7F7F007F7F7F00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      7B00C6848400DEADA500CEA5A500B56363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007F7F7F007F7F7F00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000426B840000AD
      CE007BB5AD00BDAD9C00B5636300000000000000000000000000000000000000
      00000000000000000000000000004AD6F70010C6EF0010C6EF0010C6EF0010C6
      EF0010ADD600000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000039A5C6006373840052AD
      B500A5E7F70042DEFF0000000000000000000000000000000000000000000000
      0000000000000000000084DEDE004AD6F70021CEF700108CB50042B5D60063D6
      F700ADE7F70010ADD6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      00000000000000000000000000000000000042CEE70010B5DE0031B5D60042DE
      FF0042DEFF000000000000000000000000000000000000000000000000000000
      00000000000084E7F70039CEF70010C6F70052CEEF004AD6F7004AD6F7004AD6
      F7007BDEF70010ADD6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      00000000000000000000000000000000000042CEE70018BDE70021CEF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADE7F70039D6F70042DEFF0039CEF7004AD6F70010ADD600000000000000
      00000000000052C6EF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000000000000000000000000000000000052E7FF0008BDEF0042DEFF00A5E7
      F700000000000000000000000000000000000000000000000000000000000000
      00005ADEF70021CEF70008CEFF0084DEF70010ADD600000000000000000073CE
      EF0000000000B5E7F7000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F000000
      00007F7F7F007F7F7F00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF0000000000000000000000000000000000A5F7FF0010C6F70018D6FF0052E7
      FF00000000000000000000000000000000000000000000000000000000008CE7
      F70029D6F70010C6EF0010C6F70010ADD60000000000000000004AD6F700A5E7
      F7000000000073CEEF0010ADD60000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F000000
      00007F7F7F007F7F7F00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042CEE70031D6FF0039DEFF007BEF
      FF0084E7F70000000000000000000000000000000000000000009CE7F70039D6
      F70029C6F70018C6EF0018BDE7000000000000000000000000000000000084D6
      EF005AC6EF0010ADD60000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      0000000000007F7F7F00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029D6F70073EFFF00A5F7
      FF005AEFFF0073EFFF00ADF7F70000000000000000005AD6DE0042DEF70021CE
      F70018CEF70000C6F70010ADD600000000000000000000000000000000000000
      000010ADD6000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007F7F7F000000000000000000000000007F7F7F007F7F7F000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042CEE70029BDDE0039C6
      E70042CEE70063E7EF0063CEE7005AC6DE0042BDD60042CEE70039C6E70018B5
      DE0021CEF70010ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007F7F7F000000000000000000000000007F7F7F007F7F7F000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042CE
      E7004AB5CE0084D6E70042CEE70042CEE7005ABDD6007BCEDE0039A5C60010AD
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF007F7F7F00000000000000000000000000000000007F7F7F00000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005ABDD60052BDDE0052BDDE0042B5D60063C6DE0010ADD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007F7F7F007F7F7F007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D600000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007F7F7F007F7F7F007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D6000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007F7F7F007F7F7F007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A0008731000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD3900087308000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD310000730800000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007F7F7F007F7F7F007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A000873080008730800087308000873080000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F0000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      39000873080000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F0000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      21000873080000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      18000873080000000000000000000000000000000000BFBFBF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BFBFBF000000
      00007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00FFFFFF007F7F7F000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      10000873080000000000000000000000000000000000BFBFBF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BFBFBF000000
      00007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000900000000100010000000000C00600000000000000000000
      000000000000000000000000FFFFFF00FFCFFFFFFFFF000000000000FFC3FFFF
      FFFF000000000000E001FFFFFFFF000000000000C0007FFFE03F000000000000
      C0007FF0203F000000000000C0003FF0200F000000000000C0001FF03C070000
      00000000E0000FFFFC07000000000000F00007FFFE0F000000000000F80183FF
      FC07000000000000F807C1C00000000000000000F807E0C00000000000000000
      F003F0C00000000000000000F003F9C00000000000000000E003FFC000000000
      00000000E003FFC00000000000000000E003FFC00000000000000000E003FFC0
      0000000000000000E007FFC00000000000000000F007FFC00000000000000000
      F80FFFC00000000000000000FC1FFFFFFFFF000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC0007C00003FFFFFFFFFFFFFC0007C00003C0000FC0000F
      FC0007C00003C0000FC0000FFC0007C00003C0000FC0000FFC0007C00003C000
      0FC0000FFC0007C00003C0000FC0000FFC0007C00003C0000FC0000FFC0007C0
      0003C0000FC0000FFC0007C00003C0000FC0000FFC0007C00003C0000FC0000F
      F00007C00003C0000FC0000FF00007C00003C0000FC0000FF00007C00003C000
      0FC0000F800007C00001C0000FC0000F800007C00000C0000FC0000F800007C0
      0000C0000FC0000F800007C00000C0000FC0000FF0000FC00000C0000FC0000F
      F0001FE00007C0000FC0000FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE9DCFFFFFFFFFFFFFFFE3FFDE9DCFF
      0C1FFFFFF9FFFC1FA01801FC0007FFFFF1FFF83F803803F00001C7FFE3FFF07F
      803803E00003C3FF87FFE0FFC03CFB800003C1FF0FFFC1FFC03CFB800003E0FE
      1FFF83FFC03CFB800003F07C3FFF07FFC03CFB800003FC307FFE0FFFC038F880
      0003FE00FFFC1FFFC038F8800003FF01FFF83FFF0010F8C00003FF83FFF07FFF
      8008E0E00007FF01FFE0FFFF8008E0F8000FFE00FFC1FE07C03CC3F8001FFC18
      7F83FC03C07CD3FC007FF83C3F07F803C07CD3FC00FFF07F1F1FF03BC07CC3FC
      01FFE0FF8F0FF06BC13C11FC01FFC1FFEF0FE0C9C13C11FC01FF83FFFF07C1E3
      81B818FC01FF87FFFF8181F7B9DB9DF803FF8FFFFF8003FFB9DB9DF803FFFFFF
      FFE00FFF7BE7BEF007FFFFFFFFF81FFFFFFFFFE00003FFFFFFFFF800FFFFFFE0
      0003FFFFFFFFF800FF1FFFE00003807FFF000000F8000FE000038003FF000428
      E0000FE0000380001F000428C0000FE0000380001F000152C0000FE000038000
      0F000428C0000FE0000380000F000428C0000FE00003800007000152C0000FE0
      0003800007000428C0000FE00003800007000428C0000FE00003800003000152
      C0000FE00003800003000428C0000FE00003800001000428C0000FE000038000
      00000152C0000FE00003800000000000C0000FE00003800007000000C0000FE0
      0003800007000000E0000FE00003800007000000F8000FE00007C03F07000000
      FE1FFFE0000FE07E0F000000FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 152
    Top = 235
    PixelsPerInch = 96
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'RoleType'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 32
    Top = 240
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
      OnChange = mtUserPropVerkNoChange
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtUserPropOwnerNoChange
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtUserPropPIPNoChange
    end
    object mtUserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtUserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtUserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtUserPropRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtUserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtUserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtUserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtUserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtUserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtUserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtUserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtUserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtUserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtUserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtUserPropLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtUserPropLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = dm_UserProps.cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = dm_UserProps.cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = dm_UserProps.cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtUserPropGradestamp: TStringField
      FieldKind = fkLookup
      FieldName = 'Gradestamp'
      LookupDataSet = dm_UserProps.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtUserPropBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = dm_UserProps.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Lookup = True
    end
    object mtUserPropProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mtUserPropProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtUserPropProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtUserPropLIPChange: TIntegerField
      FieldName = 'LIPChange'
    end
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtUserPropNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
    end
    object mtUserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtUserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtUserPropMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
    end
    object mtUserPropExLog: TStringField
      FieldName = 'ExLog'
      Size = 2
    end
    object mtUserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtUserPropOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
    end
    object mtUserPropStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtUserPropFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
    end
    object mtUserPropClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtUserPropSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
    end
    object mtUserPropVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
    end
    object mtUserPropVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
    end
    object mtUserPropLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
    end
    object mtUserPropLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object mtUserPropBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
    end
    object mtUserPropCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtUserPropShowProduct: TIntegerField
      FieldName = 'ShowProduct'
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 32
    Top = 280
  end
  object ds_Klient: TDataSource
    DataSet = dm_ImportWoodx.mtVisKlient
    Left = 128
    Top = 325
  end
  object mtPkgNos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 240
    Top = 233
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosSupp_Code: TStringField
      FieldName = 'Supp_Code'
      Size = 3
    end
    object mtPkgNosOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtPkgNosLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPkgNosPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPkgNosStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 296
    Top = 417
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPartyIdentifier
    PopupMenus = <>
    Left = 625
    Top = 270
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdImpPkgs
    PopupMenus = <>
    Left = 544
    Top = 481
  end
  object siLangLinked_fImportedPackages: TsiLangLinked
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
    Left = 552
    Top = 400
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660049006D0070006F00720074006500640050006100
      63006B006100670065007300010049006D0070006F0072007400650072006100
      640065002000700061006B0065007400010001000D000A004C00610062006500
      6C0031000100C40067006100720065003A00010001000D000A004C0061006200
      65006C00380001004D00E4007400700075006E006B0074003A00010001000D00
      0A004C006100620065006C003100320001004C00610067006500720073007400
      E4006C006C0065003A00010001000D000A004C006100620065006C0031003300
      01004C006100670065007200670072007500700070003A00010001000D000A00
      4C006100620065006C0031003400010052006500670069007300740072006500
      7200610064003A00010001000D000A00500061006E0065006C00310001002000
      010001000D000A0067007200640049006D0070004C0065006E00670074006800
      7300440042005400610062006C00650056006900650077003100490064006500
      6E0074006900660069006500720001004900640065006E007400690066006900
      65007200010001000D000A0067007200640049006D0070004C0065006E006700
      740068007300440042005400610062006C006500560069006500770031004C00
      65006E00670074006800430061007400650067006F007200790001004C006500
      76006500720061006E007400F600720065006E00730020006C00E4006E006700
      6400010001000D000A0067007200640049006D0070004C0065006E0067007400
      68007300440042005400610062006C006500560069006500770031004C006E00
      6700640001004C00E4006E0067006400010001000D000A006700720064004900
      6D0070004C0065006E006700740068007300440042005400610062006C006500
      5600690065007700310053007400790063006B00010053007400790063006B00
      010001000D000A006C0063004C006F006F006B00550070004C0065006E006700
      740068000100560049005300200061006B007400750065006C006C0061002000
      6C00E4006E0067006400010001000D000A0067007200640049006D0070004C00
      65006E006700740068007300440042005400610062006C006500560069006500
      77003100500072006F0064007500630074004C0065006E006700740068004E00
      6F000100500072006F0064007500630074004C0065006E006700740068004E00
      6F00010001000D000A00500061006E0065006C00380001002000010001000D00
      0A00630078004C006100620065006C00340001005600E4006C006A0020006400
      65006E0020005600490053002000700072006F00640075006B00740020007300
      6F006D00200073006B0061006C006C0020006C00E4006E006B00610073002000
      6D006F00740020006C00650076006500720061006E007400F600720065006E00
      73002000700072006F00640075006B0074002C00200064007500200062006500
      6800F6007600650072002000620061007200610020006700F600720061002000
      6C00E4006E006B0065006E00200065006E0020006700E5006E00670020006600
      F600720020007600610072006A0065002000700072006F00640075006B007400
      2E0020004B006C00690063006B006100200073006500640061006E0020007000
      E50020006B006F006E00740072006F006C006C00650072006100200070006100
      6B006500740020006F00760061006E002E00010001000D000A00670072006400
      49006D00700050006B0067007300440042005400610062006C00650056006900
      6500770031004900640065006E00740069006600690065007200010049006400
      65006E00740069006600690065007200010001000D000A006700720064004900
      6D00700050006B0067007300440042005400610062006C006500560069006500
      7700310043006C00690065006E00740043006F00640065000100500072006500
      660069007800010001000D000A0067007200640049006D00700050006B006700
      7300440042005400610062006C00650056006900650077003100530074007900
      63006B00010054006F0074002E0073007400790063006B00010001000D000A00
      67007200640049006D00700050006B0067007300440042005400610062006C00
      650056006900650077003100500072006F006400750063007400490064006500
      6E0074006900660069006500720001004C00650076006500720061006E007400
      F600720065006E0073002000700072006F00640075006B007400620065007300
      6B007200690076006E0069006E006700010001000D000A006700720064004900
      6D00700050006B0067007300440042005400610062006C006500560069006500
      7700310043006F006C0075006D006E00310001004C0065007600650072006100
      6E007400F600720065006E0073002000700072006F00640075006B0074006B00
      6F006400010001000D000A0067007200640049006D00700050006B0067007300
      440042005400610062006C00650056006900650077003100500072006F006400
      75006B00740001005600490053002000500072006F00640075006B0074000100
      01000D000A0067007200640049006D00700050006B0067007300440042005400
      610062006C006500560069006500770031004C006F006700670001004C006F00
      67006700010001000D000A0067007200640049006D00700050006B0067007300
      440042005400610062006C006500560069006500770031005300740061007400
      750073000100530074006100740075007300010001000D000A00670072006400
      49006D00700050006B0067007300440042005400610062006C00650056006900
      650077003100500072006F0064007500630074004E006F000100500072006F00
      64007500630074004E006F00010001000D000A00670072006400440065006C00
      5300680069007000440065006C004D0073006700520065006600440042005400
      610062006C00650056006900650077003100440065006C006900760065007200
      79004D006500730073006100670065004E0075006D0062006500720001004400
      65006C00690076006500720079004D006500730073006100670065004E007500
      6D00620065007200010001000D000A00670072006400440065006C0053006800
      69007000440065006C004D007300670052006500660044004200540061006200
      6C00650056006900650077003100440065006C00690076006500720079005300
      6800690070006D0065006E0074004C0069006E0065004900740065006D004E00
      75006D006200650072000100440065006C006900760065007200790053006800
      690070006D0065006E0074004C0069006E0065004900740065006D004E007500
      6D00620065007200010001000D000A00670072006400440065006C0053006800
      69007000440065006C004D007300670052006500660044004200540061006200
      6C00650056006900650077003100440065006C00690076006500720079004D00
      6500730073006100670065005200650066006500720065006E00630065000100
      5200650066006500720065006E007300010001000D000A006700720064004400
      65006C005300680069007000440065006C004D00730067005200650066004400
      42005400610062006C00650056006900650077003100440065006C0069007600
      6500720079004D00650073007300610067006500520065006600650072006500
      6E0063006500540079007000650001005200650066006500720065006E007300
      2000740079007000010001000D000A00630078004C006100620065006C003100
      01004C00650076006500720061006E007400F6007200200028006800E4006D00
      740061007400200066007200E5006E00200057006F006F006400780020006600
      69006C0065006E002900010001000D000A00630078004C006100620065006C00
      3200010056004900530020004C00650076006500720061006E007400F6007200
      010001000D000A00630078004C006100620065006C00330001004C0065007600
      6500720061006E007400F600720065006E007300200049004400010001000D00
      0A00630078004C006100620065006C00350001004C0065007600650072006100
      6E0073006E0072003A00010001000D000A00630078004C006100620065006C00
      36000100550074006C00610073007400610064003A00010001000D000A006700
      72006400500061007200740079004900640065006E0074006900660069006500
      7200440042005400610062006C0065005600690065007700310043006C006900
      65006E0074004E0061006D006500010056004900530020004E0061006D006E00
      010001000D000A00670072006400500061007200740079004900640065006E00
      740069006600690065007200440042005400610062006C006500560069006500
      7700310043006C00690065006E0074004E006F00010043006C00690065006E00
      74004E006F00010001000D000A00670072006400500061007200740079004900
      640065006E00740069006600690065007200440042005400610062006C006500
      560069006500770031004E0061006D006500310001004E0061006D0065003100
      010001000D000A00670072006400500061007200740079004900640065006E00
      740069006600690065007200440042005400610062006C006500560069006500
      77003100500061007200740079004900640065006E0074006900660069006500
      72000100500061007200740079004900640065006E0074006900660069006500
      7200010001000D000A0067007200640050006100720074007900490064006500
      6E00740069006600690065007200440042005400610062006C00650056006900
      650077003100500061007200740079004900640065006E007400690066006900
      6500720054007900700065000100500061007200740079004900640065006E00
      7400690066006900650072005400790070006500010001000D000A0067007200
      6400500061007200740079004900640065006E00740069006600690065007200
      440042005400610062006C0065005600690065007700310057006F006F006400
      5800500061007200740079004900640065006E00740069006600690065007200
      010057006F006F0064005800500061007200740079004900640065006E007400
      69006600690065007200010001000D000A006700720064005000610072007400
      79004900640065006E0074006900660069006500720044004200540061006200
      6C00650056006900650077003100440065006C00690076006500720079004D00
      6500730073006100670065004E0075006D006200650072000100440065006C00
      690076006500720079004D006500730073006100670065004E0075006D006200
      65007200010001000D000A006700720064005000610072007400790049006400
      65006E00740069006600690065007200440042005400610062006C0065005600
      690065007700310057006F006F00640058005000610072007400790049006400
      65006E007400690066006900650072005400790070006500010057006F006F00
      64005800500061007200740079004900640065006E0074006900660069006500
      72005400790070006500010001000D000A006700720064005000610072007400
      79004900640065006E0074006900660069006500720044004200540061006200
      6C00650056006900650077003100440065006C00690076006500720079004D00
      65007300730061006700650044006100740065000100440065006C0069007600
      6500720079004D00650073007300610067006500440061007400650001000100
      0D000A00630078004C006100620065006C003700010056004900530020005000
      610072007400790020006900640065006E007400690066006900650072000100
      01000D000A00630078004C006100620065006C00380001005600490053002000
      5000610072007400790020006900640065006E00740069006600690065007200
      20007400790070006500010001000D000A00630078004C006100620065006C00
      39000100C400720020006B006F00700070006C00610064002000740069006C00
      6C00200056004900530020006B006C00690065006E007400010001000D000A00
      4F00700065006E004C006F0061006400310001004F00700065006E0020004C00
      6F0061006400010001000D000A006100630043006C006F007300650001005300
      7400E4006E006700010001000D000A0061006300520065006600720065007300
      6800010055007000700064006100740065007200610020004600360001000100
      0D000A006100630043006F006E00740072006F006C006C0050006B0067007300
      01004B006F006E00740072006F006C006C006500720061002000700061006B00
      650074002000460031003000010001000D000A00610063004300720065006100
      7400650050006B00670073000100530070006100720061002000260026002000
      73007400E4006E006700200046003300010001000D000A006100630053006500
      74005000720065006600690078004F006E004D00610072006B00650064005000
      6B00670073000100C4006E006400720061002000700072006500660069007800
      20007000E50020006D00610072006B0065007200610064006500200070006100
      6B0065007400010001000D000A00610063005300650074005000720065006600
      690078004F006E0041006C006C0050006B00670073000100C4006E0064007200
      6100200070007200650066006900780020007000E500200061006C006C006100
      2000700061006B0065007400010001000D000A00610063005300610076006500
      43006C00690065006E00740043006F006E006E0065006300740069006F006E00
      01005300700061007200610020006B006C00690065006E0074006B006F007000
      70006C0069006E006700010001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003100010043007500730074006F00
      6D0020003100010001000D000A00640078004200610072004D0061006E006100
      67006500720031004200610072003200010043007500730074006F006D002000
      3200010001000D000A00640078004200610072004C0061007200670065004200
      7500740074006F006E0033000100530070006100720061002000700061006B00
      6500740020006F006300680020006C00E400670067002000740069006C006C00
      20006C00610073007400010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A006D0074005500730065007200500072006F007000560065007200
      6B004E006F0001005600650072006B004E006F00010001000D000A006D007400
      5500730065007200500072006F0070004F0077006E00650072004E006F000100
      4F0077006E00650072004E006F00010001000D000A006D007400550073006500
      7200500072006F0070005000490050004E006F0001005000490050004E006F00
      010001000D000A006D0074005500730065007200500072006F0070004C004900
      50004E006F0001004C00490050004E006F00010001000D000A006D0074005500
      730065007200500072006F00700049006E007000750074004F00700074006900
      6F006E00010049006E007000750074004F007000740069006F006E0001000100
      0D000A006D0074005500730065007200500072006F0070005200650067005000
      6F0069006E0074004E006F00010052006500670050006F0069006E0074004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070005200
      6500670044006100740065000100520065006700440061007400650001000100
      0D000A006D0074005500730065007200500072006F00700043006F0070007900
      500063007300010043006F0070007900500063007300010001000D000A006D00
      74005500730065007200500072006F007000520075006E004E006F0001005200
      75006E004E006F00010001000D000A006D007400550073006500720050007200
      6F007000500072006F00640075006300650072004E006F000100500072006F00
      640075006300650072004E006F00010001000D000A006D007400550073006500
      7200500072006F0070004100750074006F0043006F006C005700690064007400
      680001004100750074006F0043006F006C005700690064007400680001000100
      0D000A006D0074005500730065007200500072006F0070005300750070007000
      6C0069006500720043006F0064006500010053007500700070006C0069006500
      720043006F0064006500010001000D000A006D00740055007300650072005000
      72006F0070004C0065006E006700740068004F007000740069006F006E000100
      4C0065006E006700740068004F007000740069006F006E00010001000D000A00
      6D0074005500730065007200500072006F0070004C0065006E00670074006800
      470072006F00750070004E006F0001004C0065006E0067007400680047007200
      6F00750070004E006F00010001000D000A006D00740055007300650072005000
      72006F0070004E00650077004900740065006D0052006F00770001004E006500
      77004900740065006D0052006F007700010001000D000A006D00740055007300
      65007200500072006F007000470072006100640065005300740061006D007000
      4E006F000100470072006100640065005300740061006D0070004E006F000100
      01000D000A006D0074005500730065007200500072006F007000420061007200
      43006F00640065004E006F00010042006100720043006F00640065004E006F00
      010001000D000A006D0074005500730065007200500072006F0070004C006500
      6E00670074006800470072006F007500700001004C0065006E00670074006800
      470072006F0075007000010001000D000A006D00740055007300650072005000
      72006F0070004C00490050004E0061006D00650001004C00490050004E006100
      6D006500010001000D000A006D0074005500730065007200500072006F007000
      5000490050004E0041004D00450001005000490050004E0041004D0045000100
      01000D000A006D0074005500730065007200500072006F007000520045004700
      50004F0049004E005400010052004500470050004F0049004E00540001000100
      0D000A006D0074005500730065007200500072006F007000500052004F004400
      55004300450052000100500052004F0044005500430045005200010001000D00
      0A006D0074005500730065007200500072006F0070004F0057004E0045005200
      01004F0057004E0045005200010001000D000A006D0074005500730065007200
      500072006F0070005600450052004B0001005600450052004B00010001000D00
      0A006D0074005500730065007200500072006F00700052006F006C0065005400
      790070006500010052006F006C0065005400790070006500010001000D000A00
      6D0074005500730065007200500072006F007000470072006100640065007300
      740061006D0070000100470072006100640065007300740061006D0070000100
      01000D000A006D0074005500730065007200500072006F007000420061007200
      63006F0064006500010042006100720063006F0064006500010001000D000A00
      6D0074005500730065007200500072006F007000500072006F00640075006300
      74004400650073006300720069007000740069006F006E000100500072006F00
      64007500630074004400650073006300720069007000740069006F006E000100
      01000D000A006D0074005500730065007200500072006F007000500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      010001000D000A006D0074005500730065007200500072006F00700050007200
      6F006400750063007400470072006F00750070004E006F000100500072006F00
      6400750063007400470072006F00750070004E006F00010001000D000A006D00
      74005500730065007200500072006F0070004C00490050004300680061006E00
      6700650001004C00490050004300680061006E0067006500010001000D000A00
      6D0074005500730065007200500072006F007000530061006C00650073005200
      6500670069006F006E004E006F000100530061006C0065007300520065006700
      69006F006E004E006F00010001000D000A006D00740055007300650072005000
      72006F00700056006F006C0075006D00650055006E00690074004E006F000100
      56006F006C0075006D00650055006E00690074004E006F00010001000D000A00
      6D0074005500730065007200500072006F0070004C0065006E00670074006800
      46006F0072006D00610074004E006F0001004C0065006E006700740068004600
      6F0072006D00610074004E006F00010001000D000A006D007400550073006500
      7200500072006F00700046006F0072006D00010046006F0072006D0001000100
      0D000A006D0074005500730065007200500072006F0070005500730065007200
      490044000100550073006500720049004400010001000D000A006D0074005500
      730065007200500072006F0070004C0065006E0067007400680056006F006C00
      55006E00690074004E006F0001004C0065006E0067007400680056006F006C00
      55006E00690074004E006F00010001000D000A006D0074005500730065007200
      500072006F00700053007500720066006100630069006E0067004E006F000100
      53007500720066006100630069006E0067004E006F00010001000D000A006D00
      74005500730065007200500072006F0070004E004F004D005400480049004300
      4B0001004E004F004D0054004800490043004B00010001000D000A006D007400
      5500730065007200500072006F007000470072006F0075007000420079004200
      6F0078000100470072006F00750070004200790042006F007800010001000D00
      0A006D0074005500730065007200500072006F007000470072006F0075007000
      530075006D006D006100720079000100470072006F0075007000530075006D00
      6D00610072007900010001000D000A006D007400550073006500720050007200
      6F0070004D00430043006C006100730073004E006F0001004D00430043006C00
      6100730073004E006F00010001000D000A006D00740055007300650072005000
      72006F007000450078004C006F0067000100450078004C006F00670001000100
      0D000A006D0074005500730065007200500072006F0070004100670065006E00
      74004E006F0001004100670065006E0074004E006F00010001000D000A006D00
      74005500730065007200500072006F0070005300680069007000700065007200
      4E006F00010053006800690070007000650072004E006F00010001000D000A00
      6D0074005500730065007200500072006F007000530074006100720074005000
      6500720069006F00640001005300740061007200740050006500720069006F00
      6400010001000D000A006D0074005500730065007200500072006F0070004500
      6E00640050006500720069006F006400010045006E0064005000650072006900
      6F006400010001000D000A006D0074005500730065007200500072006F007000
      4D00610072006B006500740052006500670069006F006E004E006F0001004D00
      610072006B006500740052006500670069006F006E004E006F00010001000D00
      0A006D0074005500730065007200500072006F0070004F007200640065007200
      54007900700065004E006F0001004F0072006400650072005400790070006500
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      5300740061007400750073000100530074006100740075007300010001000D00
      0A006D0074005500730065007200500072006F007000460069006C0074006500
      72004F00720064006500720044006100740065000100460069006C0074006500
      72004F0072006400650072004400610074006500010001000D000A006D007400
      5500730065007200500072006F00700043006C00690065006E0074004E006F00
      010043006C00690065006E0074004E006F00010001000D000A006D0074005500
      730065007200500072006F007000530061006C00650073005000650072007300
      6F006E004E006F000100530061006C006500730050006500720073006F006E00
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      5600650072006B0053007500700070006C006900650072004E006F0001005600
      650072006B0053007500700070006C006900650072004E006F00010001000D00
      0A006D0074005500730065007200500072006F0070005600650072006B004B00
      75006E0064004E006F0001005600650072006B004B0075006E0064004E006F00
      010001000D000A006D0074005500730065007200500072006F0070004C004F00
      4F0062006A00650063007400540079007000650001004C004F004F0062006A00
      6500630074005400790070006500010001000D000A006D007400550073006500
      7200500072006F0070004C006F006100640069006E0067004C006F0063006100
      740069006F006E004E006F0001004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F00010001000D000A006D00740055007300
      65007200500072006F00700042006F006F006B0069006E006700540079007000
      65004E006F00010042006F006F006B0069006E00670054007900700065004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070004300
      7500730074006F006D00650072004E006F00010043007500730074006F006D00
      650072004E006F00010001000D000A006D007400550073006500720050007200
      6F007000530068006F007700500072006F006400750063007400010053006800
      6F007700500072006F006400750063007400010001000D000A006D0074005000
      6B0067004E006F0073005000610063006B006100670065004E006F0001005000
      610063006B006100670065004E006F00010001000D000A006D00740050006B00
      67004E006F00730053007500700070005F0043006F0064006500010053007500
      700070005F0043006F0064006500010001000D000A006D00740050006B006700
      4E006F0073004F0077006E00650072004E006F0001004F0077006E0065007200
      4E006F00010001000D000A006D00740050006B0067004E006F0073004C004900
      50004E006F0001004C00490050004E006F00010001000D000A006D0074005000
      6B0067004E006F0073005000490050004E006F0001005000490050004E006F00
      010001000D000A006D00740050006B0067004E006F0073005300740061007400
      750073000100530074006100740075007300010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      49006D0070006F0072007400650064005000610063006B006100670065007300
      01004D0053002000530061006E00730020005300650072006900660001000100
      0D000A00500061006E0065006C00310001004D0053002000530061006E007300
      200053006500720069006600010001000D000A00500061006E0065006C003800
      01004D0053002000530061006E00730020005300650072006900660001000100
      0D000A00640078004200610072004D0061006E00610067006500720031000100
      5300650067006F006500200055004900010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003100010053006500
      67006F006500200055004900010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001005300650067006F00
      6500200055004900010001000D000A00630078005300740079006C0065005200
      6500640001005400610068006F006D006100010001000D000A00640078004200
      6100720050006F007000750070004D0065006E00750031000100530065006700
      6F006500200055004900010001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A006400
      78004200610072004D0061006E00610067006500720031002E00430061007400
      650067006F0072006900650073000100440065006600610075006C0074002C00
      50006B0067005400610062006C006500010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A006C0063004C006F006F006B00550070004C00
      65006E006700740068002E00500072006F007000650072007400690065007300
      2E004B00650079004600690065006C0064004E0061006D006500730001005000
      72006F0064007500630074004C0065006E006700740068004E006F0001000100
      0D000A006C0063004C006F006F006B00550070004C0065006E00670074006800
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      4600690065006C0064004E0061006D0065007300010041006300740075006100
      6C004C0065006E006700740068004D004D00010001000D000A006C0063004C00
      6F006F006B00550070004C0065006E006700740068002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006F006F006B007500700043006F006D0062006F0042006F00
      7800500072006F007000650072007400690065007300010001000D000A006700
      7200640049006D0070004C0065006E0067007400680073004400420054006100
      62006C00650056006900650077003100500072006F0064007500630074004C00
      65006E006700740068004E006F002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A0063007800530070006C006900740074006500720031002E0048006F00
      74005A006F006E00650043006C006100730073004E0061006D00650001005400
      630078004D00650064006900610050006C006100790065007200380053007400
      79006C006500010001000D000A0067007200640049006D00700050006B006700
      7300440042005400610062006C00650056006900650077003100490064006500
      6E007400690066006900650072002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A0067007200640049006D00700050006B00670073004400420054006100
      62006C0065005600690065007700310043006C00690065006E00740043006F00
      640065002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D0065000100540063007800540065007800740045006400
      69007400500072006F007000650072007400690065007300010001000D000A00
      67007200640049006D00700050006B0067007300440042005400610062006C00
      65005600690065007700310053007400790063006B002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A0067007200640049006D00700050006B0067007300
      440042005400610062006C00650056006900650077003100500072006F006400
      7500630074004900640065006E007400690066006900650072002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A0067007200640049006D00700050006B00
      67007300440042005400610062006C0065005600690065007700310043006F00
      6C0075006D006E0031002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      67007200640049006D00700050006B0067007300440042005400610062006C00
      650056006900650077003100500072006F00640075006B0074002E0050007200
      6F0070006500720074006900650073002E004B00650079004600690065006C00
      64004E0061006D00650073000100500072006F0064007500630074004E006F00
      010001000D000A0067007200640049006D00700050006B006700730044004200
      5400610062006C00650056006900650077003100500072006F00640075006B00
      74002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D00650073000100500072006F006400
      75006300740044006900730070006C00610079004E0061006D00650001000100
      0D000A0067007200640049006D00700050006B00670073004400420054006100
      62006C00650056006900650077003100500072006F00640075006B0074002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006F006F006B007500700043006F006D00
      62006F0042006F007800500072006F0070006500720074006900650073000100
      01000D000A0067007200640049006D00700050006B0067007300440042005400
      610062006C006500560069006500770031004C006F00670067002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A0067007200640049006D00700050006B00
      67007300440042005400610062006C0065005600690065007700310053007400
      61007400750073002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078005400650078007400
      4500640069007400500072006F00700065007200740069006500730001000100
      0D000A0067007200640049006D00700050006B00670073004400420054006100
      62006C00650056006900650077003100500072006F0064007500630074004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004400
      65006C005300680069007000440065006C004D00730067005200650066004400
      42005400610062006C00650056006900650077003100440065006C0069007600
      6500720079004D00650073007300610067006500520065006600650072006500
      6E00630065002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400440065006C005300680069007000440065006C004D007300670052006500
      6600440042005400610062006C00650056006900650077003100440065006C00
      690076006500720079004D006500730073006100670065005200650066006500
      720065006E006300650054007900700065002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006C0063004C00650076006500720061006E00740072002E00
      500072006F0070006500720074006900650073002E004B006500790046006900
      65006C0064004E0061006D0065007300010043006C00690065006E0074004E00
      6F00010001000D000A006C0063004C00650076006500720061006E0074007200
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      4600690065006C0064004E0061006D0065007300010043006C00690065006E00
      74004E0061006D006500010001000D000A00640078004200610072004D006100
      6E006100670065007200310042006100720031002E004F006C0064004E006100
      6D006500010043007500730074006F006D0020003100010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003200
      2E004F006C0064004E0061006D006500010043007500730074006F006D002000
      3200010001000D000A006D0074005500730065007200500072006F0070002E00
      560065007200730069006F006E00010037002E00360033002E00300030002000
      5300740061006E0064006100720064002000450064006900740069006F006E00
      010001000D000A006D00740050006B0067004E006F0073002E00560065007200
      730069006F006E00010037002E00360033002E00300030002000530074006100
      6E0064006100720064002000450064006900740069006F006E00010001000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A006C0063004C006F006F006B0055007000
      4C0065006E006700740068002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E000100410063007400750061006C004C00
      65006E006700740068004D004D00010001000D000A0067007200640049006D00
      700050006B0067007300440042005400610062006C0065005600690065007700
      3100500072006F00640075006B0074002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E000100500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500010001000D00
      0A006C0063004C00650076006500720061006E00740072002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001004300
      6C00690065006E0074004E0061006D006500010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A005400660049006D0070006F0072007400650064005000610063006B006100
      6700650073000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00500061006E0065006C003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00500061006E0065006C0038000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0064007800420061007200
      4D0061006E00610067006500720031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00630078005300740079006C006500520065006400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A006400780042006100720050006F007000750070004D006500
      6E00750031000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00}
  end
end
