object frmInvoiceList: TfrmInvoiceList
  Left = 205
  Top = 103
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmInvoiceList'
  ClientHeight = 856
  ClientWidth = 1154
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PopupMenu = pmShortCuts
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1154
    Height = 172
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 1154
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel6'
      TabOrder = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1082
        Height = 50
        Align = alClient
        TabOrder = 0
        object dxBarDockControl1: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 1080
          Height = 46
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object Panel3: TPanel
        Left = 1082
        Top = 0
        Width = 72
        Height = 50
        Align = alRight
        TabOrder = 1
        object dxBarDockControl2: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 70
          Height = 46
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 50
      Width = 1154
      Height = 122
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1154
        Height = 122
        Align = alClient
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 23
          Height = 13
          Caption = 'LOnr'
        end
        object Label1: TLabel
          Left = 8
          Top = 54
          Width = 48
          Height = 13
          Caption = 'Fakturanr:'
        end
        object Label4: TLabel
          Left = 8
          Top = 31
          Width = 29
          Height = 13
          Caption = 'Lastnr'
        end
        object Label5: TLabel
          Left = 165
          Top = 11
          Width = 27
          Height = 13
          Caption = 'Serie:'
        end
        object Label6: TLabel
          Left = 366
          Top = 9
          Width = 55
          Height = 13
          Caption = 'Betalstatus:'
        end
        object Label7: TLabel
          Left = 366
          Top = 33
          Width = 47
          Height = 13
          Caption = 'S'#228'ljgrupp:'
        end
        object Label8: TLabel
          Left = 576
          Top = 12
          Width = 53
          Height = 13
          Caption = 'Fakturatyp:'
        end
        object Label9: TLabel
          Left = 576
          Top = 36
          Width = 31
          Height = 13
          Caption = 'Konto:'
        end
        object Label10: TLabel
          Left = 576
          Top = 60
          Width = 44
          Height = 13
          Caption = 'Varuslag:'
        end
        object Label11: TLabel
          Left = 366
          Top = 57
          Width = 37
          Height = 13
          Caption = 'Region:'
        end
        object Label12: TLabel
          Left = 366
          Top = 81
          Width = 29
          Height = 13
          Caption = 'Klient:'
        end
        object Label13: TLabel
          Left = 8
          Top = 80
          Width = 32
          Height = 13
          Caption = 'Org.nr:'
        end
        object Label14: TLabel
          Left = 576
          Top = 84
          Width = 44
          Height = 13
          Caption = #214'verf'#246'ra:'
        end
        object Label2: TLabel
          Left = 8
          Top = 103
          Width = 52
          Height = 13
          Caption = 'Kontraktnr:'
        end
        object nfSearchLO: TcxTextEdit
          Left = 67
          Top = 2
          TabOrder = 0
          OnKeyDown = nfSearchLOKeyDown
          Width = 62
        end
        object nfSearchInvoiceNo: TcxTextEdit
          Left = 67
          Top = 48
          TabOrder = 2
          OnKeyDown = nfSearchInvoiceNoKeyDown
          Width = 62
        end
        object nfSearchLastNr: TcxTextEdit
          Left = 67
          Top = 24
          TabOrder = 1
          OnKeyDown = nfSearchLastNrKeyDown
          Width = 62
        end
        object lcSaljgrupp: TcxDBLookupComboBox
          Left = 424
          Top = 28
          DataBinding.DataField = 'Saljgrupp'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.DropDownRows = 15
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'SalesGroupNo'
          Properties.ListColumns = <
            item
              FieldName = 'SalesGroupName'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          TabOrder = 12
          Width = 145
        end
        object icBetalStatus: TcxDBImageComboBox
          Left = 424
          Top = 4
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'ALLA'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'DEL OCH OBETALDA'
              Value = 1
            end
            item
              Description = 'ENDAST DEL BETALDA'
              Value = 2
            end
            item
              Description = 'FULL BETALDA'
              Value = 3
            end>
          TabOrder = 11
          Width = 145
        end
        object deStartPeriod: TcxDBDateEdit
          Left = 205
          Top = 27
          DataBinding.DataField = 'StartPeriod'
          DataBinding.DataSource = ds_Props
          Properties.ImmediatePost = True
          Properties.Kind = ckDateTime
          TabOrder = 8
          Width = 156
        end
        object deEndPeriod: TcxDBDateEdit
          Left = 205
          Top = 51
          DataBinding.DataField = 'EndPeriod'
          DataBinding.DataSource = ds_Props
          Properties.ImmediatePost = True
          Properties.Kind = ckDateTime
          TabOrder = 9
          Width = 156
        end
        object ccbInvoiceType: TcxCheckComboBox
          Left = 205
          Top = 3
          Properties.DropDownRows = 15
          Properties.ImmediatePost = True
          Properties.Items = <>
          TabOrder = 6
          Width = 155
        end
        object cbTyp: TcxDBImageComboBox
          Left = 632
          Top = 3
          DataBinding.DataField = 'BarCodeNo'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Normala'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Snabb'
              Value = 1
            end
            item
              Description = 'Alla'
              Value = 2
            end>
          TabOrder = 15
          Width = 121
        end
        object cbKonto: TcxDBImageComboBox
          Left = 632
          Top = 27
          DataBinding.DataField = 'BookingTypeNo'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Debet'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Kredit'
              Value = 1
            end
            item
              Description = 'Alla'
              Value = 2
            end>
          TabOrder = 16
          Width = 121
        end
        object cbVaruSlag: TcxDBImageComboBox
          Left = 632
          Top = 51
          DataBinding.DataField = 'CopyPcs'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Tr'#228'varor'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Stolp&pall'
              Value = 3
            end
            item
              Description = 'Alla'
              Value = 4
            end>
          TabOrder = 17
          Width = 121
        end
        object nfSearchInvoiceNoII: TcxTextEdit
          Left = 163
          Top = 48
          TabOrder = 3
          Visible = False
          OnKeyDown = nfSearchInvoiceNoIIKeyDown
          Width = 29
        end
        object lcSR: TcxDBLookupComboBox
          Left = 424
          Top = 52
          DataBinding.DataField = 'SR'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.DropDownRows = 15
          Properties.DropDownWidth = 300
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          TabOrder = 13
          Width = 145
        end
        object bSparaDueDate: TcxButton
          Left = 205
          Top = 75
          Width = 154
          Height = 22
          Action = acSave
          Caption = 'Spara duedate '#228'ndringar'
          TabOrder = 10
        end
        object icTransferredStatus: TcxDBImageComboBox
          Left = 632
          Top = 75
          DataBinding.DataField = 'GradeStampNo'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Alla'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Ej '#246'verf'#246'rda'
              Value = 1
            end
            item
              Description = #214'verf'#246'rda'
              Value = 2
            end>
          TabOrder = 18
          Width = 121
        end
        object lcKund: TcxDBLookupComboBox
          Left = 424
          Top = 76
          DataBinding.DataField = 'Kund'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.DropDownWidth = 350
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          TabOrder = 14
          Width = 145
        end
        object teSaleOrgNr: TcxTextEdit
          Left = 67
          Top = 72
          TabOrder = 4
          OnKeyDown = teSaleOrgNrKeyDown
          Width = 99
        end
        object bMallar: TcxButton
          Left = 768
          Top = 8
          Width = 73
          Height = 33
          Caption = 'Mallar'
          DropDownMenu = pmMallar
          Kind = cxbkDropDown
          TabOrder = 19
        end
        object cxDBLabel1: TcxDBLabel
          Left = 846
          Top = 18
          DataBinding.DataField = 'Form'
          DataBinding.DataSource = ds_Props
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Height = 21
          Width = 83
        end
        object cbFillterOnInvoiceDate: TcxDBCheckBox
          Left = 144
          Top = 27
          Caption = 'Period:'
          DataBinding.DataField = 'FilterOrderDate'
          DataBinding.DataSource = ds_Props
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 7
          Width = 57
        end
        object cbDelKredit: TcxDBCheckBox
          Left = 768
          Top = 48
          Caption = 'Exkludera delkredit'
          DataBinding.DataField = 'LengthFormatNo'
          DataBinding.DataSource = ds_Props
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 21
          Width = 121
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 768
          Top = 72
          Caption = 'Exkludera prelimin'#228'ra'
          DataBinding.DataField = 'LengthOption'
          DataBinding.DataSource = ds_Props
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 22
          Width = 129
        end
        object cxButton1: TcxButton
          Left = 904
          Top = 56
          Width = 75
          Height = 41
          Action = acShowVerifikatLogg
          TabOrder = 23
        end
        object BKalkylera: TcxButton
          Left = 1064
          Top = 56
          Width = 75
          Height = 41
          Action = acReCalcInvoice
          TabOrder = 24
        end
        object BKontonr: TcxButton
          Left = 984
          Top = 56
          Width = 75
          Height = 41
          Action = acGetKontoNr
          TabOrder = 25
        end
        object ccKontraktnr: TcxComboBox
          Left = 66
          Top = 95
          TabOrder = 5
          OnKeyDown = ccKontraktnrKeyDown
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 904
          Top = 104
          Caption = 'cxLabel1'
        end
      end
    end
  end
  object grdFaktura: TcxGrid
    Left = 0
    Top = 172
    Width = 1154
    Height = 684
    Align = alClient
    PopupMenu = pmInvoiceGrid
    TabOrder = 6
    object grdFakturaDBBandedTableView1: TcxGridDBBandedTableView
      OnDblClick = grdFakturaDBBandedTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmVidaInvoice.dsInvoiceList
      DataController.KeyFieldNames = 'InternalInvoiceNo;LO;ArticleName'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'ProduktVardeSEK'
          Column = grdFakturaDBBandedTableView1ProduktVardeSEK
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'AM3'
          Column = grdFakturaDBBandedTableView1AM3
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'NM3_Ext'
          Column = grdFakturaDBBandedTableView1NM3_Ext
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'NM3_Int'
          Column = grdFakturaDBBandedTableView1NM3_Int
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'ProduktVardeUtanFraktSEK'
          Column = grdFakturaDBBandedTableView1ProduktVardeUtanFraktSEK
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = grdFakturaDBBandedTableView1VECKA
            end
            item
              Column = grdFakturaDBBandedTableView1CUSTOMER
            end
            item
              Column = grdFakturaDBBandedTableView1LAND
            end
            item
              Column = grdFakturaDBBandedTableView1FrsljOrgNr
            end
            item
              Column = grdFakturaDBBandedTableView1SljGrupp
            end
            item
              Column = grdFakturaDBBandedTableView1TRADING
            end
            item
              Column = grdFakturaDBBandedTableView1Varukonto
            end>
          SummaryItems = <
            item
              Format = '#,###,###,###.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'AM3'
              Column = grdFakturaDBBandedTableView1AM3
            end
            item
              Format = '#,###,###,###.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'ProduktVardeSEK'
              Column = grdFakturaDBBandedTableView1ProduktVardeSEK
            end
            item
              Format = '#,###,###,###.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'NM3_Int'
              Column = grdFakturaDBBandedTableView1NM3_Int
            end
            item
              Format = '#,###,###,###.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'ProduktVardeUtanFraktSEK'
              Column = grdFakturaDBBandedTableView1ProduktVardeUtanFraktSEK
            end>
        end>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Fakturanr'
          FixedKind = fkLeft
          Width = 493
        end
        item
          Caption = 'Volym&v'#228'rde'
        end
        item
        end>
      object grdFakturaDBBandedTableView1INT_INVNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InternalInvoiceNo'
        PropertiesClassName = 'TcxLabelProperties'
        Options.CellMerging = True
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1INV_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INV_DATE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1INVOICE_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_NO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1INVOICE_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_TYPE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1INVOICE_KONTO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_KONTO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 27
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1DueDate: TcxGridDBBandedColumn
        Caption = 'Duedate'
        DataBinding.FieldName = 'DueDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1CountryName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Statistikland'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1QuickInvoice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QuickInvoice'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1CUSTOMER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 167
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1KURS: TcxGridDBBandedColumn
        Caption = 'Kurs'
        DataBinding.FieldName = 'KURS'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1CURRENCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CURRENCY'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1AGENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AGENT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 136
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1TRADING: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADING'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1FrsljOrgNr: TcxGridDBBandedColumn
        DataBinding.FieldName = 'F'#246'rs'#228'ljOrgNr'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1VECKA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VECKA'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1LAND: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAND'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 118
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1FrsljReg: TcxGridDBBandedColumn
        DataBinding.FieldName = 'F'#246'rs'#228'ljReg'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 127
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1SljGrupp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S'#228'ljGrupp'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 69
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1CustomerNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustomerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1InvoiceType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvoiceType'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 52
        Position.BandIndex = 2
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1LO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Kvantitet: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Kvantitet'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1AM3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1NM3_Int: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NM3_Int'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1NM3_Ext: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NM3_Ext'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Paket: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Paket'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1momsvarde: TcxGridDBBandedColumn
        DataBinding.FieldName = 'momsvarde'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Produktvarde: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Produktvarde'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1ProduktVardeSEK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProduktVardeSEK'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1ProduktvardeUtanFrakt: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProduktvardeUtanFrakt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 126
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1ProduktVardeUtanFraktSEK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProduktVardeUtanFraktSEK'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 151
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1FraktValuta: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FraktValuta'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1LevORT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LevORT'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1ErReferens: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ErReferens'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Ordernr: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Ordernr'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1SHIPPER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHIPPER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 33
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Postit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Postit'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1PO_prefix: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PO_prefix'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Skatteupplag: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Skatteupplag'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 26
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Varukonto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Varukonto'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 76
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Fraktkonto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fraktkonto'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Momskonto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Momskonto'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1Momskod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Momskod'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1FraktValutaSEK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FraktValutaSEK'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1ArticleName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ArticleName'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1DelKredit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DelKredit'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 27
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdFakturaDBBandedTableView1AddressLine1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AddressLine1'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object grdFakturaLevel1: TcxGridLevel
      GridView = grdFakturaDBBandedTableView1
    end
  end
  object lbLO_To_Invoice: TListBox
    Left = 456
    Top = 360
    Width = 169
    Height = 193
    ItemHeight = 13
    Sorted = True
    TabOrder = 1
    Visible = False
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 712
    Top = 376
    object acOpenInvoice: TAction
      Caption = #214'ppna F9'
      ImageIndex = 2
      ShortCut = 120
      OnExecute = acOpenInvoiceExecute
      OnUpdate = acOpenInvoiceUpdate
    end
    object acRefresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = acRefreshExecute
    end
    object acQuickInvoice: TAction
      Caption = 'Snabbfaktura F2'
      ImageIndex = 10
      ShortCut = 113
      OnExecute = acQuickInvoiceExecute
    end
    object acDeleteInvoice: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 6
      ShortCut = 116
      OnExecute = acDeleteInvoiceExecute
      OnUpdate = acDeleteInvoiceUpdate
    end
    object acCreditInvoice: TAction
      Caption = 'Fullkredit'
      ImageIndex = 8
      OnExecute = acCreditInvoiceExecute
      OnUpdate = acCreditInvoiceUpdate
    end
    object acGroupedInvoice: TAction
      Caption = 'Samlingsfaktura F7'
      ImageIndex = 11
      ShortCut = 118
      OnExecute = acGroupedInvoiceExecute
      OnUpdate = acGroupedInvoiceUpdate
    end
    object acAttestInvoice: TAction
      Caption = 'Att. tj'#228'nster Shift+F10'
      ImageIndex = 12
      ShortCut = 8313
      OnExecute = acAttestInvoiceExecute
      OnUpdate = acAttestInvoiceUpdate
    end
    object acDeleteInvoiceWithNumber: TAction
      Caption = 'Ta bort Faktura'
      OnExecute = acDeleteInvoiceWithNumberExecute
    end
    object acPrintClientsInvoice: TAction
      Caption = 'Skriv ut Klientfaktura 1st'
      OnExecute = acPrintClientsInvoiceExecute
    end
    object acClientPackageSpecification: TAction
      Caption = 'Skriv ut Klientspecifikation 1st'
      OnExecute = acClientPackageSpecificationExecute
    end
    object acFakturaSvensk: TAction
      Caption = 'Faktura Svensk'
      OnExecute = acFakturaSvenskExecute
      OnUpdate = acFakturaSvenskUpdate
    end
    object acFakturaEngelsk: TAction
      Caption = 'Faktura Engelsk'
      OnExecute = acFakturaEngelskExecute
      OnUpdate = acFakturaEngelskUpdate
    end
    object acFakturaEngelskLangd: TAction
      Caption = 'Faktura Engelsk L'#228'ngd'
      OnExecute = acFakturaEngelskLangdExecute
      OnUpdate = acFakturaEngelskLangdUpdate
    end
    object acSpecificationSvensk: TAction
      Caption = 'Specification Svensk'
      OnExecute = acSpecificationSvenskExecute
    end
    object acSpecificationEngelsk: TAction
      Caption = 'Specifikation Engelsk'
      OnExecute = acSpecificationEngelskExecute
    end
    object acSpecificationEngelskMedProducent: TAction
      Caption = 'Specification Engelsk med producent'
      OnExecute = acSpecificationEngelskMedProducentExecute
    end
    object acSpecifikationEngelskAktuellDimension: TAction
      Caption = 'Specifikation Engelsk - Aktuell dimension'
      OnExecute = acSpecifikationEngelskAktuellDimensionExecute
    end
    object acTrpBrev: TAction
      Caption = 'F'#246'rhandsgranska Transportbrev'
      OnExecute = acTrpBrevExecute
    end
    object acSpecifikatinUtanPaketNr: TAction
      Caption = 'Specifikatin utan paketnr'
      OnExecute = acSpecifikatinUtanPaketNrExecute
    end
    object acSpecifikationIdahoStyle: TAction
      Caption = 'Specifikation (Idaho style)'
      OnExecute = acSpecifikationIdahoStyleExecute
    end
    object acFakturaEngelskAgust: TAction
      Caption = 'Faktura Engelsk (f'#246'r Agust)'
      OnExecute = acFakturaEngelskAgustExecute
      OnUpdate = acFakturaEngelskAgustUpdate
    end
    object acFakturaEngelskLengthPlusNM3: TAction
      Caption = 'Faktura Engelsk - L'#228'ngd (+ NM3)'
      OnExecute = acFakturaEngelskLengthPlusNM3Execute
      OnUpdate = acFakturaEngelskLengthPlusNM3Update
    end
    object acFakturaEngelskLangdPerPakettyp: TAction
      Caption = 'Faktura Engelsk - L'#228'ngd (per pakettyp)'
      OnExecute = acFakturaEngelskLangdPerPakettypExecute
      OnUpdate = acFakturaEngelskLangdPerPakettypUpdate
    end
    object acFakturaSvenskUtanMoms_DK: TAction
      Caption = 'Faktura Svensk - utan moms (dk)'
      OnExecute = acFakturaSvenskUtanMoms_DKExecute
      OnUpdate = acFakturaSvenskUtanMoms_DKUpdate
    end
    object acFakturaEngelsk_DK: TAction
      Caption = 'Faktura Engelsk (dk)'
      OnExecute = acFakturaEngelsk_DKExecute
      OnUpdate = acFakturaEngelsk_DKUpdate
    end
    object acSpecifikationSvensk_DK: TAction
      Caption = 'Specifikation Svensk (dk)'
      OnExecute = acSpecifikationSvensk_DKExecute
    end
    object acSpecifikatikonEngelsk_DK: TAction
      Caption = 'Specifikatikon Engelsk (dk)'
      OnExecute = acSpecifikatikonEngelsk_DKExecute
    end
    object acTrpBrvTest: TAction
      Caption = 'TrpBrvTest'
      OnUpdate = acTrpBrvTestUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acChangeLayout: TAction
      Caption = #196'ndra layout'
    end
    object acPrintClientInvoiceAndSpecification: TAction
      Caption = 'Skriv ut Klientfaktura + Klientspec'
      OnExecute = acPrintClientInvoiceAndSpecificationExecute
    end
    object acEmailFakturaAndSpec: TAction
      Caption = 'Emaila Klientfaktura + Klientspec'
      OnExecute = acEmailFakturaAndSpecExecute
    end
    object acPrintTRPOrder: TAction
      Caption = 'acPrintTRPOrder'
      OnExecute = acPrintTRPOrderExecute
    end
    object acPrintTrpOrderAndSpec: TAction
      Caption = 'Skriv ut Trp brev + Klientspec 1st'
      OnExecute = acPrintTrpOrderAndSpecExecute
    end
    object acExportInvoiceSpec: TAction
      Caption = 'Exp. fakturaspec F11'
      Hint = 'Exportera fakturan enligt woodX format'
      ImageIndex = 7
      ShortCut = 122
      OnExecute = acExportInvoiceSpecExecute
      OnUpdate = acExportInvoiceSpecUpdate
    end
    object acEmailaTrpBrev: TAction
      Caption = 'Emaila transportbrev + paketspec'
      OnExecute = acEmailaTrpBrevExecute
    end
    object acSpecSV_GroupByLoadNo: TAction
      Caption = 'Specifikation grupperad per FS Svensk'
      OnExecute = acSpecSV_GroupByLoadNoExecute
    end
    object acPreViewInvoice: TAction
      Caption = 'F'#246'rhandsgranska klientfaktura'
      OnExecute = acPreViewInvoiceExecute
    end
    object acPrintCreditInvoices: TAction
      Caption = 'Skriv ut kreditfakturor f'#246'r 2008'
      OnExecute = acPrintCreditInvoicesExecute
    end
    object acPrintMeny: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = acPrintMenyExecute
    end
    object acKundSpecifika: TAction
      Caption = 'Kundspecifika rapporter'
      OnExecute = acKundSpecifikaExecute
    end
    object acDelKredit: TAction
      Caption = 'Delkredit'
      ImageIndex = 8
      OnExecute = acDelKreditExecute
    end
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
    end
    object acEMailaKundOchAgentFakturaOchSpec: TAction
      Caption = 'Emaila kund&&Agent faktura + spec'
      OnExecute = acEMailaKundOchAgentFakturaOchSpecExecute
    end
    object acTransferInvoices: TAction
      Caption = #214'verf'#246'r till Ekon.'
      ImageIndex = 13
      OnExecute = acTransferInvoicesExecute
      OnUpdate = acTransferInvoicesUpdate
    end
    object acSaveMall: TAction
      Caption = 'Spara mall'
      ShortCut = 114
      OnExecute = acSaveMallExecute
    end
    object acSaveMallAs: TAction
      Caption = 'Ny mall'
      OnExecute = acSaveMallAsExecute
    end
    object acOpenMall: TAction
      Caption = #214'ppna mall'
      OnExecute = acOpenMallExecute
    end
    object acSetMallAsStrd: TAction
      Caption = 'Satt som standard mall'
      OnExecute = acSetMallAsStrdExecute
    end
    object acGotoLOnr: TAction
      Category = 'shortcuts'
      Caption = 'acGotoLOnr'
      ShortCut = 16460
      OnExecute = acGotoLOnrExecute
    end
    object acPrintFRInvoice: TAction
      Caption = 'Faktura (fr)'
      OnExecute = acPrintFRInvoiceExecute
    end
    object acExportXLS: TAction
      Caption = 'Tabell -> excel'
      ImageIndex = 7
      OnExecute = acExportXLSExecute
    end
    object acShowVerifikatLogg: TAction
      Caption = 'Verifikatlogg'
      OnExecute = acShowVerifikatLoggExecute
      OnUpdate = acShowVerifikatLoggUpdate
    end
    object acReCalcInvoice: TAction
      Caption = 'Kalkylera'
      OnExecute = acReCalcInvoiceExecute
      OnUpdate = acReCalcInvoiceUpdate
    end
    object acGetKontoNr: TAction
      Caption = 'Kontonr'
      OnExecute = acGetKontoNrExecute
    end
    object acFilterOnLO: TAction
      Caption = 'G'#246'r urval p'#229' LOnr'
      OnExecute = acFilterOnLOExecute
    end
    object acAssignMissingLoads: TAction
      Caption = 'acAssignMissingLoads'
      OnExecute = acAssignMissingLoadsExecute
    end
    object acLenaExport: TAction
      Caption = 'Lena'#39's excel'
      OnExecute = acLenaExportExecute
    end
    object acSendEDIMessage: TAction
      Caption = 'Skicka EDI'
      ImageIndex = 13
      OnExecute = acSendEDIMessageExecute
    end
    object acLindasExport: TAction
      Caption = 'Linda'#39's excel'
      OnExecute = acLindasExportExecute
    end
    object acNewQuickInvoice: TAction
      Caption = 'Snabbfaktura'
      ImageIndex = 10
      OnExecute = acNewQuickInvoiceExecute
    end
    object acUpgradeProductCodeInfo: TAction
      Caption = 'Uppdatera produktkodinfo, produktkod + statkod'
      OnExecute = acUpgradeProductCodeInfoExecute
    end
    object acUpgradeProductCodeInfoNoStat: TAction
      Caption = 'Uppdatera produktkodinfo, produktkod'
      OnExecute = acUpgradeProductCodeInfoNoStatExecute
    end
    object acCancelProformaInvoice: TAction
      Caption = #197'ngra proforma faktura'
      OnExecute = acCancelProformaInvoiceExecute
      OnUpdate = acCancelProformaInvoiceUpdate
    end
    object acPreviewPkgSpec: TAction
      Caption = 'F'#246'rhandsgranska klientspecifikation'
      OnExecute = acPreviewPkgSpecExecute
    end
    object acAustraliaExport: TAction
      Caption = 'Export (Australien)'
      OnExecute = acAustraliaExportExecute
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
      'Print'
      'InvoiceGrid'
      'Mallar')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.LargeImages = imglistActions
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 184
    Top = 216
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
      FloatLeft = 355
      FloatTop = 365
      FloatClientWidth = 75
      FloatClientHeight = 40
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
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
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
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
          ItemName = 'dxBarLargeButton8'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acPrintMeny
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pmPrint
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acOpenInvoice
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acRefresh
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acNewQuickInvoice
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acDeleteInvoice
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Kreditera'
      Category = 0
      Hint = 'Kreditera'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmKredit
      LargeImageIndex = 8
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acGroupedInvoice
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'Exportera'
      Category = 0
      Hint = 'Exportera fakturan enligt woodX format'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmExport
      LargeImageIndex = 7
      ShortCut = 122
    end
    object dxBarButton31: TdxBarButton
      Action = acCreditInvoice
      Category = 0
    end
    object dxBarButton32: TdxBarButton
      Action = acDelKredit
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = acAttestInvoice
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = acTransferInvoices
      Caption = #214'verf'#246'r till XOR'
      Category = 0
    end
    object dxBarButton23: TdxBarButton
      Action = acPrintFRInvoice
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = acExportXLS
      Category = 0
    end
    object dxBarButton37: TdxBarButton
      Action = acExportInvoiceSpec
      Caption = 'WoodX fakturaspec F11'
      Category = 0
    end
    object dxBarButton39: TdxBarButton
      Action = acLenaExport
      Category = 0
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = acSendEDIMessage
      Category = 0
    end
    object dxBarButton40: TdxBarButton
      Action = acLindasExport
      Category = 0
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Excel paketnrfil'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton43'
        end
        item
          Visible = True
          ItemName = 'dxBarButton44'
        end>
    end
    object dxBarButton43: TdxBarButton
      Caption = 'Med kvalitet'
      Category = 0
      Hint = 'Med kvalitet'
      Visible = ivAlways
      OnClick = dxBarButton43Click
    end
    object dxBarButton44: TdxBarButton
      Caption = 'Utan kvalitet'
      Category = 0
      Hint = 'Utan kvalitet'
      Visible = ivAlways
      OnClick = dxBarButton44Click
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Excel paketnrfil med "C" framf'#246'r paketnr'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton45'
        end
        item
          Visible = True
          ItemName = 'dxBarButton46'
        end>
    end
    object dxBarButton45: TdxBarButton
      Caption = 'Med kvalitet'
      Category = 0
      Hint = 'Med kvalitet'
      Visible = ivAlways
      OnClick = dxBarButton45Click
    end
    object dxBarButton46: TdxBarButton
      Caption = 'Utan kvalitet'
      Category = 0
      Hint = 'Utan kvalitet'
      Visible = ivAlways
      OnClick = dxBarButton46Click
    end
    object dxBarButton47: TdxBarButton
      Action = acCancelProformaInvoice
      Category = 0
    end
    object dxBarButton48: TdxBarButton
      Action = acPreviewPkgSpec
      Category = 0
    end
    object dxBarButton49: TdxBarButton
      Action = acAustraliaExport
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acPrintClientsInvoice
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = acClientPackageSpecification
      Category = 1
    end
    object dxBarButton3: TdxBarButton
      Action = acFakturaSvensk
      Category = 1
    end
    object dxBarButton4: TdxBarButton
      Action = acFakturaEngelsk
      Category = 1
    end
    object dxBarButton6: TdxBarButton
      Action = acFakturaEngelskLangd
      Category = 1
    end
    object dxBarButton7: TdxBarButton
      Action = acSpecificationSvensk
      Category = 1
    end
    object dxBarButton8: TdxBarButton
      Action = acSpecificationEngelsk
      Category = 1
    end
    object dxBarButton9: TdxBarButton
      Action = acSpecificationEngelskMedProducent
      Category = 1
    end
    object dxBarButton10: TdxBarButton
      Action = acSpecifikationEngelskAktuellDimension
      Category = 1
    end
    object dxBarButton11: TdxBarButton
      Action = acTrpBrev
      Category = 1
    end
    object dxBarButton12: TdxBarButton
      Action = acSpecifikatinUtanPaketNr
      Caption = 'Specifikation utan paketnr'
      Category = 1
    end
    object dxBarButton13: TdxBarButton
      Action = acSpecifikationIdahoStyle
      Category = 1
    end
    object dxBarButton14: TdxBarButton
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Action = acFakturaEngelskAgust
      Category = 1
    end
    object dxBarButton16: TdxBarButton
      Action = acFakturaEngelskLengthPlusNM3
      Category = 1
    end
    object dxBarButton17: TdxBarButton
      Action = acFakturaEngelskLangdPerPakettyp
      Category = 1
    end
    object dxBarButton18: TdxBarButton
      Action = acFakturaSvenskUtanMoms_DK
      Caption = 'Faktura Svensk (dk)'
      Category = 1
    end
    object dxBarButton19: TdxBarButton
      Action = acFakturaEngelsk_DK
      Category = 1
    end
    object dxBarButton20: TdxBarButton
      Action = acSpecifikationSvensk_DK
      Category = 1
    end
    object dxBarButton21: TdxBarButton
      Action = acSpecifikatikonEngelsk_DK
      Category = 1
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #214'vriga'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton29'
        end>
    end
    object dxBarButton22: TdxBarButton
      Action = acPrintClientInvoiceAndSpecification
      Category = 1
    end
    object dxBarButton24: TdxBarButton
      Action = acEmailFakturaAndSpec
      Category = 1
    end
    object dxBarButton25: TdxBarButton
      Action = acPrintTrpOrderAndSpec
      Category = 1
    end
    object dxBarButton26: TdxBarButton
      Action = acEmailaTrpBrev
      Category = 1
    end
    object dxBarButton27: TdxBarButton
      Action = acSpecSV_GroupByLoadNo
      Category = 1
    end
    object dxBarButton28: TdxBarButton
      Action = acPreViewInvoice
      Category = 1
    end
    object dxBarButton29: TdxBarButton
      Action = acPrintCreditInvoices
      Category = 1
    end
    object dxBarButton30: TdxBarButton
      Action = acKundSpecifika
      Category = 1
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000080008000808
        0800101010001084100008101800181818008C311800A5421800AD421800C642
        1800188C1800189418001818210021212100C6422100CE4A2100946321005A7B
        21002184210021A52100292929008C4A29009C4A2900C64A2900CE4A2900D64A
        290029732900297B2900101831001021310031313100C65A3100C6633100316B
        3100B56B310031733100319C310031AD310031B531000010390039393900E75A
        3900EF5A3900DE6339003973390031843900398C39007B8C3900182942003131
        4200424242008C524200EF5A4200A5634200D66B4200DE6B420042844200428C
        420042AD420042B5420042BD420008214A004A4A4A00A5524A00EF634A00F763
        4A00D66B4A00DE7B4A004AA54A004ABD4A0052525200FF635200FF6B5200B573
        5200F7735200527B5200E77B52005A9C52007BA5520052B5520052BD520052C6
        520010215A0042215A0063525A005A5A5A00FF6B5A005A735A0063735A00F773
        5A00FF735A00EF7B5A00F77B5A00DE8C5A00E78C5A005AA55A005AAD5A0063AD
        5A005AB55A0073B55A005AC65A0063636300FF7B6300D68463007BAD630063BD
        630063C6630063CE63006B6B6B0084736B00FF8C6B0010187300212173001831
        7300423173005A7373007373730084BD73007BCE730073D6730021217B00426B
        7B00187B7B007B7B7B007BA57B00103984004A5A84005A63840084848400DE9C
        8400EFB5840084DE840010318C00526B8C00737B8C008C8C8C00DEA58C00FFBD
        8C00082994001031940010399400738494008CBD9400EFC6940010319C001039
        9C00106B9C0010739C0084949C00949C9C00FFD69C00184AA5001852A500215A
        A5002173A5002973A5004284A5006394A500949CA500A5A5A500A5CEA500FFD6
        A5001042AD001842AD00104AAD003184AD00FFDEAD00187BB500318CB500428C
        B5004A8CB50094ADB500C6DEB5001852BD00185ABD002184BD002984BD00318C
        BD001863C600186BC600216BC6003994C600529CC6006BA5C600D6E7C6002163
        CE00216BCE00298CCE003194CE00429CCE004A9CCE00529CCE008CB5CE00216B
        D6002173D6001884D6002184D60052A5D6005AA5D60073B5D60084B5D6008CBD
        D600297BDE00218CDE003194DE00429CDE0039A5DE0042A5DE0052ADDE005AAD
        DE006BB5DE0094C6DE009CC6DE00F7EFDE00297BE7002984E700298CE70042A5
        E7004AA5E7007BBDE7008CC6E70094C6E70094CEE700EFF7E700FFF7E7002994
        EF00ADD6EF00FFF7EF00298CF7003194F7004AADF7004AB5F700FF00FF003194
        FF00319CFF00399CFF0039A5FF0042A5FF0042ADFF004AADFF004AB5FF0052B5
        FF0052BDFF005ABDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E84949090E1817
        1633E8E8E8E8E8E8E8E8090929415640293415582C231B1A21570F0F5A663782
        4359292F75616A51260BE867666E5D965D5B294EACB8776B3B0AE8E835067078
        3F1F6383E0E068692EE8E8E805018B8B6F544469ABAA9D2DE8E8E8020497AEAE
        FD84E8E8E5E5E5E1E8E8E8051DAEBABAB9A4E8BFECECEBEB79E8E81E1499E5E5
        E4BAE8D9F0F1F0EFBBE8E81E3E30BAD6E5B4E8DAF2F3F2F1CCE8E8E8556C9F80
        1E3EE8B6B5BEBCBB92E8E8E83274878028E8E8E8C6D2E2C79CE8E8E8E8E8E8E8
        E8E8E8E8D4C9C8C0E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
    end
    object dxBarButton33: TdxBarButton
      Action = acEMailaKundOchAgentFakturaOchSpec
      Category = 1
    end
    object dxBarButton5: TdxBarButton
      Action = acDeleteInvoiceWithNumber
      Category = 2
    end
    object dxBarButton38: TdxBarButton
      Action = acFilterOnLO
      Category = 2
    end
    object dxBarButton41: TdxBarButton
      Action = acUpgradeProductCodeInfo
      Category = 2
    end
    object dxBarButton42: TdxBarButton
      Action = acUpgradeProductCodeInfoNoStat
      Category = 2
    end
    object dxBarButton34: TdxBarButton
      Action = acOpenMall
      Category = 3
    end
    object dxBarButton35: TdxBarButton
      Action = acSaveMall
      Category = 3
    end
    object dxBarButton36: TdxBarButton
      Action = acSaveMallAs
      Category = 3
    end
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        Visible = True
        ItemName = 'dxBarButton25'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        Visible = True
        ItemName = 'dxBarButton26'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton28'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton48'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton30'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton23'
      end>
    UseOwnFont = False
    Left = 40
    Top = 264
  end
  object pmInvoiceGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton38'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton47'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton41'
      end
      item
        Visible = True
        ItemName = 'dxBarButton42'
      end>
    UseOwnFont = False
    Left = 112
    Top = 616
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 248
    Top = 392
    Bitmap = {
      494C01010E0011000C0018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
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
      0000527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000000000000000000000000000000000000000
      0000527BC6001873F700527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF0073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD60029ADD60073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000527BC6000073FF000073F700296BC600527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF0029ADD60073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000527BC6000073FF00007BFF000073F700186BD600527BC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFFFF0029ADD60073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000527BC6000084FF000084FF000084FF000084FF00107BEF00527BC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFFFF008CF7FF0029AD
      D60073DEF70029ADD60000000000000000000000000000000000000000000000
      000000000000527BC600009CFF00008CFF00008CFF00008CFF000884F700527B
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF008CF7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70073DEF70073DEF70029ADD6008CF7FF008CF7FF008CF7FF008CF7
      FF0029ADD60029ADD60000000000000000000000000000000000000000000000
      00000000000000000000527BC60000B5FF00009CFF00008CFF000094FF000894
      F700527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00313131007B5A4A00B5B5
      B5008CEFFF0073DEF70073DEF70029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC60000C6FF0000B5FF000094FF00009C
      FF00009CFF001084EF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF007B5A4A00392918002963
      7B0052636B0073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527BC60000D6FF0008C6FF0000A5
      FF00009CFF00009CFF000894F700527BC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF00D6D6D6008CB5C6008CF7
      FF002973F70021526B0073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC60000E7FF0018DE
      FF0008BDFF0000ADFF0000A5FF00009CFF00527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF0010A5D6008CF7
      FF002973F7002973F700084263008CEFFF008CEFFF0073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC60008F7
      FF0029F7FF0021D6FF0000B5FF0000A5FF0000A5FF00527BC6004A7BB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00847B7B00847B7B0010A5
      D60042E7F7002973F7002973F70021526B00847B7B00847B7B00847B7B00847B
      7B0073DEF70029ADD60000000000000000000000000000000000000000000000
      000000000000527BC600527BC600527BC600527BC600527BC600527BC60000EF
      FF0008FFFF0031F7FF0039E7FF0010BDFF0000ADFF0000A5FF000894F700527B
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7
      FF0010A5D60042E7F7002973F7002973F70018425A008CEFFF008CEFFF0073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      000000000000527BC60029ADFF0000C6FF0000DEFF0000EFFF0000F7FF0000E7
      FF0000F7FF0000FFFF0021FFFF004AEFFF0018CEFF0000ADFF0000A5FF00009C
      FF00527BC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7
      FF008CF7FF0010A5D60042E7F7002973F7002973F70021526B008CEFFF008CEF
      FF0073DEF70029ADD60000000000000000000000000000000000000000000000
      000000000000527BC60031ADFF0000C6FF0000DEFF0000F7FF0000FFFF0000F7
      FF0000E7FF0000F7FF0000FFFF0008FFFF0039FFFF0029DEFF0000B5FF0000A5
      FF000094FF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7
      FF008CF7FF008CF7FF0010A5D60042E7F7002973F7002973F700084263008CEF
      FF008CEFFF0029ADD60000000000000000000000000000000000000000000000
      000000000000527BC60039A5FF0000C6FF0000DEFF0000EFFF0000F7FF0000F7
      FF0000EFFF0000DEFF0000FFFF0000FFFF0000FFFF0021FFFF0039EFFF0008C6
      FF00009CFF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60010A5D60042E7F7002973F7003139BD003131
      310029ADD60029ADD60000000000000000000000000000000000000000000000
      000000000000527BC6006BB5FF0008C6FF0018E7FF0039E7FF004AEFFF005AF7
      FF0042F7FF0018FFFF0008FFFF0000FFFF0000FFFF0000FFFF0008FFFF0021FF
      FF0010D6FF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010A5D60042A5DE008C847B008484
      7B00313131000000000000000000000000000000000000000000000000000000
      00000000000000000000527BC600527BC60084B5FF0018DEFF0008F7FF0008FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000F7FF0000EFFF0018DE
      F70063DEF700527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000846B5A00FFFFFF00F7EF
      E7007363520021214A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527BC600527BC60084B5FF0031D6
      FF0008F7FF0000FFFF0000FFFF0000F7FF0000D6FF0000BDFF0000B5FF0018A5
      F700527BC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C948C00E7CE
      B50029637B002973F7003139BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC600527B
      C600527BC60084B5FF0018E7FF0000F7FF0000EFFF0000CEFF0000ADFF0000A5
      FF0010A5FF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A6B
      9C00299CEF002973F7003139BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000527BC600527BC60084B5FF0029DEFF0000EFFF0000DEFF0000B5
      FF0000A5FF0084B5FF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000010E7000010E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC600527BC60084B5FF0042DEFF0010D6
      FF0000B5FF005AA5FF00527BC600000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000527BC600527BC60084B5
      FF006BC6FF0052A5FF00527BC600000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000527B
      C600527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7EFD600EFDECE008C5A5A00000000000000000000000000000000000000
      00009C9C9C008C8C8C008C8C8C00949494008484840073737300737373006B6B
      6B00636363005A5A5A005A5A5A0052525200525252005A5A5A005A5A5A008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00EFE7
      D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A0000000000000000000000000000000000A5A5
      A50094949400A5A5A500A5A5A500949494008C8C8C007B7B7B007B7B7B007373
      7300636363005A5A5A005A5A5A0052525200424242004A4A4A004A4A4A004A4A
      4A00848484000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000CE630000FFFFFF00FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFEFD600FFEFD600FFE7C600FFE7C600FFDEB500FFD6AD00FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDED600F7EFE700EFE7
      DE00EFE7DE00EFE7D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A00000000000000000000000000000000009494
      940094949400848484009C9C9C009C9C9C008C8C8C0052525200848484007373
      73006B6B6B00525252007B7B7B005252520042424200525252007B7B7B005252
      5200424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7C600FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700F7DE
      C600FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00F7DE
      BD00EFE7D600EFDECE008C5A5A0000000000000000000000000000000000ADAD
      FD009C9C9C00848484009C9C9C009C9C9C00949494004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFEFD600FFE7C600FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700FFE7
      CE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
      C600EFE7D600EFDECE008C5A5A0000000000000000000000000000000000ADAD
      FD009C9C9C00848484009C9C9C009C9C9C00949494004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7
      C600FFDEB500CE630000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300B5847300EFE7DE00FFF7EF00F7EF
      DE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600EFE7D600EFE7
      D600F7E7D600EFDECE009C6B630000000000000000000000000000000000ADAD
      FD009C9C9C00848484009C9C9C00A5A5A500949494004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000000000000000
      0000CE630000FFFFFF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000A57B7300EFDECE00F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600BD8C8400EFE7DE00FFF7EF00F7DE
      BD00FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      BD00F7E7DE00EFDECE009C6B630000000000000000000000000000000000ADAD
      FD00A5A5A500848484009C9C9C00A5A5A5009C9C9C004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000000000000000
      0000CE630000FFFFFF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEF
      D600FFEFD600CE630000000000000000000000000000A57B7300EFDECE00F7EF
      DE00EFE7D600EFE7D600EFE7D600EFE7D600BD8C8400EFE7DE00FFF7F700F7EF
      E700F7EFDE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7DE00EFDECE009C6B630000000000000000000000000000000000ADAD
      FD00A5A5A500848484009C9C9C00ADADAD009C9C9C004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000000000000000
      0000CE630000FFFFFF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600CE630000000000000000000000000000A57B7300EFDED600F7EF
      E700EFE7DE00EFE7DE00EFE7D600EFE7D600CE9C8400EFE7E700FFFFF700F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600FFE7CE00F7DEC600F7E7
      D600F7EFDE00EFDED600A57B730000000000000000000000000000000000ADAD
      FD00A5A5A500848484009C9C9C00ADADAD009C9C9C004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000CE63
      0000CE630000FFFFFF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFF7E700CE630000000000000000000000000000B5847300EFDED600F7EF
      E700F7DEC600FFD6AD00FFD6AD00FFD6AD00CE9C8400F7EFE700FFFFFF00FFDE
      C600FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      C600F7EFE700EFE7D600A57B730000000000000000000000000000000000ADAD
      FD00A5A5A500848484009C9C9C00ADADAD009C9C9C004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00CE630000FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700CE630000000000000000000000000000B5847300EFDED600F7EF
      E700FFE7CE00F7DEBD00F7DEBD00F7DEBD00DEAD8400F7EFEF00FFFFFF00FFF7
      F700FFF7EF00FFF7EF00F7EFEF00F7EFE700F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700DED6CE00A57B730000000000000000000000000000000000ADAD
      FD00A5A5A500848484009C9C9C00A5A5A5009C9C9C004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00CE630000FFFFFF00DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE630000000000000000000000000000B5847300EFE7DE00FFF7
      EF00F7EFDE00F7E7DE00F7E7DE00F7E7D600DEAD8400F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7F700EFE7
      E700D6D6D600BDBDBD00B584730000000000000000000000000000000000ADAD
      FD009C9C9C00848484009C9C9C00A5A5A500949494004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      00007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00CE630000FFFFFF00CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000000000000000000000000000BD8C8400EFE7DE00FFF7
      EF00F7DEBD00FFD6A500FFD6A500FFD6A500E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B5847300B584
      7300B5847300B5847300B584730000000000000000000000000000000000ADAD
      FD009C9C9C00848484009C9C9C00A5A5A500949494004A4A4A00848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      0000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00CE630000FFFFFF00FFFFFF00D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D673100000000000000000000000000000000000BD8C8400EFE7DE00FFF7
      F700F7EFE700F7EFDE00F7E7DE00F7E7DE00E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B5847300E7AD
      7300EFAD5A00E79C4200BD848400000000000000000000000000000000009C9C
      9C009C9C9C007B7B7B009C9C9C009C9C9C009494940042424200848484007B7B
      7B006B6B6B004A4A4A007B7B7B0052525200424242004A4A4A007B7B7B004A4A
      4A00424242000000000000000000000000000000000000000000000000000000
      0000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00DE7B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700CE63
      00000000000000000000000000000000000000000000CE9C8400EFE7E700FFFF
      F700F7EFDE00F7E7D600F7E7D600F7E7D600EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300F7C6
      7B00EFAD5A00BD84840000000000000000000000000000000000BDBDBD009494
      9400A5A5A5005A5A5A009C9C9C009C9C9C008C8C8C005A5A5A00848484007373
      73006B6B6B005A5A5A007B7B7B00525252004A4A4A005A5A5A007B7B7B003131
      3100424242007B7B7B00000000000000000000000000298CBD000873B5000873
      B500085A940042B5F70042B5F7000873B5000873B500085A94007B8CC600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000CE63
      00000000000000000000000000000000000000000000CE9C8400F7EFE700FFFF
      FF00FFDEC600FFD6A500FFD6A500FFD6A500EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300E7B5
      7B00BD84840000000000000000000000000000000000000000007B7B7B008C8C
      8C009C9C9C009C9C9C009C9C9C0094949400848484007B7B7B007B7B7B007373
      7300636363005A5A5A005A5A5A00525252004A4A4A0042424200424242003131
      310042424200313131000000000000000000000000000873B5008CD6F70042B5
      F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      00000000000000000000000000000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFF7F700FFF7EF00FFF7EF00F7EFEF00EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B5847300BD84
      84000000000000000000000000000000000000000000000000007B7B7B008C8C
      8C009C9C9C009C9C9C009C9C9C0094949400848484007B7B7B007B7B7B007373
      7300636363005A5A5A005A5A5A00525252004A4A4A0042424200424242003131
      31004242420031313100000000000000000000000000216BF700B5DEF700B5DE
      F700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216BF700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D67310000000
      00000000000000000000000000000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7
      F700EFE7E700D6D6D600BDBDBD00B58473000000000000000000000000000000
      00000000000000000000000000000000000000000000848484007B7B7B007373
      73006363630063636300636363006B6B6B006363630063636300636363005A5A
      5A005252520052525200525252004A4A4A004A4A4A0031313100313131003131
      3100313131005A5A5A008484840000000000000000005AB5E7003184FF003184
      FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5E700D6D6
      D600D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B58484000000000000000000000000000000000000000000DE7B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700CE630000000000000000
      00000000000000000000000000000000000000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B584
      7300B5847300B5847300B5847300B58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949494009494
      94009C9C9C009494940094949400949494008C8C8C0084848400848484008484
      84007B7B7B0073737300737373006B6B6B006B6B6B0063636300636363005A5A
      5A005A5A5A00B5B5B50000000000000000000000000000000000000000000000
      00003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      8400000000000000000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000CE630000000000000000
      00000000000000000000000000000000000000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B584
      7300E7AD7300EFAD5A00E79C4200BD8484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD009C9C9C008C8C8C008C8C8C00949494008C8C8C0084848400848484008484
      84007B7B7B0073737300737373006B6B6B007373730084848400848484005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      00003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300F7C67B00EFAD5A00BD848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C008C8C8C008C8C8C00949494008C8C8C0084848400848484008484
      84007B7B7B0073737300737373006B6B6B0073737300848484005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AB5E7003184FF003184FF005AB5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D673100000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300E7B57B00BD84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484009494940000000000000000000000
      000000000000BDBDBD0052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300BD8484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484009494940063636300636363006363
      6300636363006363630052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
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
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B59C9C008C736B00AD5252009C5A5A00B59C9C000000
      0000000000000000000000000000000000000000000000FFFF00000000007B7B
      7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B7B0000FFFF000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
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
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
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
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000000000000000ADAD
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
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500CECECE00F7F7
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
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500EFEFEF00F7F7
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
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500E7E7E700DED6
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
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500B5ADAD00A5A5
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
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500BDBDBD00D6D6
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
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500D6D6D600D6D6
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
      00007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF000000000000000000BDBDBD00DEDE
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
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00000000000000000000000000B5B5
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
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
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
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
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
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
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
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
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
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
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
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
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
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
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
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
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
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
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
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
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
      FF007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
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
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
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
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B000000000000000000000000008C63
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
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300B55A
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
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300C65A
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
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300C65A
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
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE63
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
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300CE63
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
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE6B
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
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
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
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300D673
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
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
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
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300DE7B
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
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300DE7B
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
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300FF84
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
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
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
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      18000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      10000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
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
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
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
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFFFFF3
      FFFF000000000000800003F1FFFF000000000000800003F07FFF000000000000
      800003F03FFF000000000000800003F01FFF000000000000800003F80FFF0000
      00000000800003FC03FF000000000000800003FE01FF000000000000800003FF
      00FF000000000000800003FF807F000000000000800003FFC01F000000000000
      800003F8000F000000000000800003F80007000000000000800003F800030000
      00000000800003F80003000000000000800003F80003000000000000FFFF07FC
      0003000000000000FFFF83FF0007000000000000FFFFC1FFC003000000000000
      FFFFE1FFF801000000000000FFFFF3FFFE01000000000000FFFFFFFFFF810000
      00000000FFFFFFFFFFE3000000000000FF0001FFFFFFFFFFFFFFFFFFFF0001F0
      000FFFFFFFFC0003FF0001E00007FC0007FC0003FF0001E00007FC0007FC0003
      FF0001E00007FC0007FC0003FF0001E00007FC0007F00003800001E00007FC00
      07F00003800001E00007FC0007F00003800001E00007FC0007F00003800001E0
      0007FC0007C00003800001E00007FC0007C00003800001E00007FC0007C00003
      800001E00007F00007C00003800001E00007F00007C00007800001E00007F000
      07C0000F800003C00003800007C0000F800007C00003800007C0000F80000FC0
      0003800007C0001F8000FF800001800007C0003F8000FFC00003F0000FC0003F
      8000FFE0000FF0001FC0003F8001FFF0001FF0FFFFE0007F8003FFFE79FFFFFF
      FFFFFFFF8007FFFE01FFFFFFFFFFFFFFFDE9DCFFFFFFFFFFFFFFFE3FFDE9DCFF
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
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 208
    Top = 272
  end
  object pmShortCuts: TPopupMenu
    AutoPopup = False
    Left = 712
    Top = 312
    object Uppdatera1: TMenuItem
      Action = acRefresh
    end
    object SnabbfakturaF21: TMenuItem
      Action = acOpenInvoice
    end
    object SnabbfakturaF22: TMenuItem
      Action = acQuickInvoice
    end
    object abortF51: TMenuItem
      Action = acDeleteInvoice
    end
    object SkrivutF81: TMenuItem
      Action = acPrintMeny
    end
    object KrediteraShiftF21: TMenuItem
      Action = acCreditInvoice
    end
    object SamlingsfakturaF101: TMenuItem
      Action = acGroupedInvoice
    end
    object AttesteratjnsterShiftF101: TMenuItem
      Action = acAttestInvoice
    end
    object ExporterafakturaspecF111: TMenuItem
      Action = acExportInvoiceSpec
    end
    object StngF121: TMenuItem
      Action = acClose
    end
    object acGotoLOnr1: TMenuItem
      Action = acGotoLOnr
    end
    object Sparamall2: TMenuItem
      Action = acSaveMall
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 112
    Top = 408
  end
  object pmKredit: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton31'
      end
      item
        Visible = True
        ItemName = 'dxBarButton32'
      end>
    UseOwnFont = False
    Left = 112
    Top = 472
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdFaktura
    PopupMenus = <>
    Left = 112
    Top = 544
  end
  object mtSelectedInvoices: TkbmMemTable
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
    Left = 432
    Top = 160
    object mtSelectedInvoicesInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object mtSelectedInvoicesInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object mtSelectedInvoicesCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtSelectedInvoicesInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
  end
  object cds_mall: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      'AND ((LOObjectType = :LOObjectType) or (0 = :LOObjectType))')
    Left = 368
    Top = 256
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LOOBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOOBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_mallUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_mallForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_mallVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_mallOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_mallLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_mallName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object ds_mall: TDataSource
    DataSet = cds_mall
    Left = 368
    Top = 312
  end
  object cds_PropsInv: TFDQuery
    AfterInsert = cds_PropsInvAfterInsert
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_PropsInvPKey'
        Fields = 'Form;UserID'
      end>
    IndexName = 'cds_PropsInvPKey'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.userprops'
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      'AND ((LOObjectType = :LOObjectType) or (0 = :LOObjectType))'
      'AND Form = :Form')
    Left = 296
    Top = 256
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LOOBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOOBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsInvUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsInvForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cds_PropsInvName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsInvVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_PropsInvLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsInvFilterOrderDateChange
    end
    object cds_PropsInvStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsInvClientNoChange
    end
    object cds_PropsInvSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvMarknad: TStringField
      FieldKind = fkLookup
      FieldName = 'Marknad'
      LookupDataSet = dmsContact.cds_Market
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_PropsInvKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.sp_Customers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsInvSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsInvSaljgrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Saljgrupp'
      LookupDataSet = dmsContact.cds_SalesGrp
      LookupKeyFields = 'SalesGroupNo'
      LookupResultField = 'SalesGroupName'
      KeyFields = 'SalesPersonNo'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
    object cds_PropsInvVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsInvShipper: TStringField
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupDataSet = dmsContact.cds_Shippers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsInvBokningstyp: TStringField
      FieldKind = fkLookup
      FieldName = 'Bokningstyp'
      LookupDataSet = dmsSystem.cdsBookingType
      LookupKeyFields = 'BookingTypeNo'
      LookupResultField = 'BookingType'
      KeyFields = 'BookingTypeNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_PropsInvLaststalle: TStringField
      FieldKind = fkLookup
      FieldName = 'Laststalle'
      LookupDataSet = dmsContact.cdsCities
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'LoadingLocationNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_PropsInvAgentNamn: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentNamn'
      LookupDataSet = dmsContact.sp_Agent
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'AgentNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_PropsInv
    Left = 296
    Top = 312
  end
  object pmMallar: TPopupMenu
    Left = 552
    Top = 304
    object ppnamall1: TMenuItem
      Action = acOpenMall
    end
    object Sparamall1: TMenuItem
      Action = acSaveMall
    end
    object Sparamallsom1: TMenuItem
      Action = acSaveMallAs
    end
    object Sattsomstandardmall1: TMenuItem
      Action = acSetMallAsStrd
    end
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 120
    Top = 248
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer3Timer
    Left = 120
    Top = 296
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer4Timer
    Left = 120
    Top = 352
  end
  object SaveDialog2: TSaveDialog
    Left = 176
    Top = 320
  end
  object pmExport: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem2'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton37'
      end
      item
        Visible = True
        ItemName = 'dxBarButton39'
      end
      item
        Visible = True
        ItemName = 'dxBarButton40'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton49'
      end>
    UseOwnFont = False
    Left = 312
    Top = 392
  end
  object TimerKontraktnr: TTimer
    Interval = 200
    OnTimer = TimerKontraktnrTimer
    Left = 168
    Top = 416
  end
  object siLangLinked_frmInvoiceList: TsiLangLinked
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
    Left = 560
    Top = 416
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0049006E0076006F006900630065004C00
      6900730074000100660072006D0049006E0076006F006900630065004C006900
      73007400010001000D000A00500061006E0065006C0036000100500061006E00
      65006C003600010001000D000A004C006100620065006C00330001004C004F00
      6E007200010001000D000A004C006100620065006C0031000100460061006B00
      74007500720061006E0072003A00010001000D000A004C006100620065006C00
      340001004C006100730074006E007200010001000D000A004C00610062006500
      6C0035000100530065007200690065003A00010001000D000A004C0061006200
      65006C003600010042006500740061006C007300740061007400750073003A00
      010001000D000A004C006100620065006C00370001005300E4006C006A006700
      72007500700070003A00010001000D000A004C006100620065006C0038000100
      460061006B0074007500720061007400790070003A00010001000D000A004C00
      6100620065006C00390001004B006F006E0074006F003A00010001000D000A00
      4C006100620065006C00310030000100560061007200750073006C0061006700
      3A00010001000D000A004C006100620065006C00310031000100520065006700
      69006F006E003A00010001000D000A004C006100620065006C00310032000100
      4B006C00690065006E0074003A00010001000D000A004C006100620065006C00
      3100330001004F00720067002E006E0072003A00010001000D000A004C006100
      620065006C00310034000100D6007600650072006600F600720061003A000100
      01000D000A004C006100620065006C00320001004B006F006E00740072006100
      6B0074006E0072003A00010001000D000A006200530070006100720061004400
      7500650044006100740065000100530070006100720061002000640075006500
      64006100740065002000E4006E006400720069006E0067006100720001000100
      0D000A0062004D0061006C006C006100720001004D0061006C006C0061007200
      010001000D000A0063006200460069006C006C007400650072004F006E004900
      6E0076006F006900630065004400610074006500010050006500720069006F00
      64003A00010001000D000A0063006200440065006C004B007200650064006900
      74000100450078006B006C00750064006500720061002000640065006C006B00
      72006500640069007400010001000D000A006300780044004200430068006500
      63006B0042006F00780031000100450078006B006C0075006400650072006100
      20007000720065006C0069006D0069006E00E40072006100010001000D000A00
      630078004C006100620065006C0031000100630078004C006100620065006C00
      3100010001000D000A00670072006400460061006B0074007500720061004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310049004E0054005F0049004E0056004E004F00010049006E00740065007200
      6E006E007200010001000D000A00670072006400460061006B00740075007200
      610044004200420061006E006400650064005400610062006C00650056006900
      65007700310049004E0056005F0044004100540045000100460061006B007400
      750072006500720061006400010001000D000A00670072006400460061006B00
      740075007200610044004200420061006E006400650064005400610062006C00
      65005600690065007700310049004E0056004F004900430045005F004E004F00
      0100460061006B0074007500720061006E007200010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C0065005600690065007700310049004E0056004F0049004300
      45005F005400590050004500010053006500720069006500010001000D000A00
      670072006400460061006B00740075007200610044004200420061006E006400
      650064005400610062006C0065005600690065007700310049004E0056004F00
      4900430045005F004B004F004E0054004F0001004B006F006E0074006F000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031004400
      7500650044006100740065000100440075006500640061007400650001000100
      0D000A00670072006400460061006B0074007500720061004400420042006100
      6E006400650064005400610062006C0065005600690065007700310043006F00
      75006E007400720079004E0061006D0065000100530074006100740069007300
      740069006B006C0061006E006400010001000D000A0067007200640046006100
      6B00740075007200610044004200420061006E00640065006400540061006200
      6C0065005600690065007700310051007500690063006B0049006E0076006F00
      690063006500010053006E00610062006200660061006B007400750072006100
      010001000D000A00670072006400460061006B00740075007200610044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      43005500530054004F004D004500520001004B0075006E006400010001000D00
      0A00670072006400460061006B00740075007200610044004200420061006E00
      6400650064005400610062006C006500560069006500770031004B0055005200
      530001004B00750072007300010001000D000A00670072006400460061006B00
      740075007200610044004200420061006E006400650064005400610062006C00
      650056006900650077003100430055005200520045004E004300590001005600
      61006C00750074006100010001000D000A00670072006400460061006B007400
      75007200610044004200420061006E006400650064005400610062006C006500
      560069006500770031004100470045004E00540001004100670065006E007400
      010001000D000A00670072006400460061006B00740075007200610044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      540052004100440049004E0047000100540072006100640069006E0067000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031004600
      720073006C006A004F00720067004E00720001004600F60072007300E4006C00
      6A002E006F00720067002E006E007200010001000D000A006700720064004600
      61006B00740075007200610044004200420061006E0064006500640054006100
      62006C006500560069006500770031005600450043004B004100010056006500
      63006B006100010001000D000A00670072006400460061006B00740075007200
      610044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C0041004E00440001004C0061006E0064002800660061006B00
      74007500720061006100640072006500730073002900010001000D000A006700
      72006400460061006B00740075007200610044004200420061006E0064006500
      64005400610062006C006500560069006500770031004600720073006C006A00
      52006500670001004600F60072007300E4006C006A002E007200650067006900
      6F006E00010001000D000A00670072006400460061006B007400750072006100
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310053006C006A004700720075007000700001005300E4006C006A006700
      7200750070007000010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      690065007700310043007500730074006F006D00650072004E006F0001004300
      7500730074006F006D00650072004E006F00010001000D000A00670072006400
      460061006B00740075007200610044004200420061006E006400650064005400
      610062006C0065005600690065007700310049006E0076006F00690063006500
      5400790070006500010049006E0076006F006900630065005400790070006500
      010001000D000A00670072006400460061006B00740075007200610044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C004F0001004C004F00010001000D000A00670072006400460061006B007400
      75007200610044004200420061006E006400650064005400610062006C006500
      560069006500770031004B00760061006E007400690074006500740001004B00
      760061006E0074006900740065007400010001000D000A006700720064004600
      61006B00740075007200610044004200420061006E0064006500640054006100
      62006C0065005600690065007700310041004D003300010041004D0033000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031004E00
      4D0033005F0049006E00740001004E004D003300280069006E00740029000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031004E00
      4D0033005F0045007800740001004E004D003300280065007800740029000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      61006B00650074000100500061006B0065007400010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C006500560069006500770031006D006F006D00730076006100
      72006400650001004D006F006D007300010001000D000A006700720064004600
      61006B00740075007200610044004200420061006E0064006500640054006100
      62006C00650056006900650077003100500072006F00640075006B0074007600
      610072006400650001005600E400720064006500010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500072006F00640075006B00
      740056006100720064006500530045004B0001005600E4007200640065002000
      530045004B00010001000D000A00670072006400460061006B00740075007200
      610044004200420061006E006400650064005400610062006C00650056006900
      650077003100500072006F00640075006B007400760061007200640065005500
      740061006E004600720061006B0074000100500072006F00640075006B007400
      7600E400720064006500200028006E006F0020006600720061006B0074002900
      010001000D000A00670072006400460061006B00740075007200610044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500072006F00640075006B007400560061007200640065005500740061006E00
      4600720061006B007400530045004B000100500072006F00640075006B007400
      7600E4007200640065002000530045004B00200028006E006F00200066007200
      61006B0074002900010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      69006500770031004600720061006B007400560061006C007500740061000100
      4600720061006B007400560061006C00750074006100010001000D000A006700
      72006400460061006B00740075007200610044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C00650076004F005200
      540001004C00650076002E006F0072007400010001000D000A00670072006400
      460061006B00740075007200610044004200420061006E006400650064005400
      610062006C006500560069006500770031004500720052006500660065007200
      65006E00730001004500720020007200650066006500720065006E0073000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031004F00
      72006400650072006E00720001004F0072006400650072006E00720001000100
      0D000A00670072006400460061006B0074007500720061004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053004800
      490050005000450052000100530070006500640069007400F600720001000100
      0D000A00670072006400460061006B0074007500720061004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050006F00
      7300740069007400010050006F007300740069007400010001000D000A006700
      72006400460061006B00740075007200610044004200420061006E0064006500
      64005400610062006C0065005600690065007700310050004F005F0070007200
      6500660069007800010049006E006B00F6007000730070007200650066006900
      7800010001000D000A00670072006400460061006B0074007500720061004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310053006B0061007400740065007500700070006C0061006700010053006B00
      61007400740065007500700070006C0061006700010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C0065005600690065007700310056006100720075006B006F00
      6E0074006F00010056006100720075006B006F006E0074006F00010001000D00
      0A00670072006400460061006B00740075007200610044004200420061006E00
      6400650064005400610062006C00650056006900650077003100460072006100
      6B0074006B006F006E0074006F0001004600720061006B0074006B006F006E00
      74006F00010001000D000A00670072006400460061006B007400750072006100
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004D006F006D0073006B006F006E0074006F0001004D006F006D007300
      6B006F006E0074006F00010001000D000A00670072006400460061006B007400
      75007200610044004200420061006E006400650064005400610062006C006500
      560069006500770031004D006F006D0073006B006F00640001004D006F006D00
      73006B006F006400010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      69006500770031004600720061006B007400560061006C007500740061005300
      45004B0001004600720061006B0074002C002000530045004B00010001000D00
      0A00670072006400460061006B00740075007200610044004200420061006E00
      6400650064005400610062006C00650056006900650077003100410072007400
      690063006C0065004E0061006D006500010041007200740069006B0065006C00
      010001000D000A00670072006400460061006B00740075007200610044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      440065006C004B00720065006400690074000100440065006C006B0072006500
      640069007400010001000D000A00670072006400460061006B00740075007200
      610044004200420061006E006400650064005400610062006C00650056006900
      65007700310041006400640072006500730073004C0069006E00650031000100
      41006400640072006500730073004C0069006E0065003100010001000D000A00
      610063004F00700065006E0049006E0076006F006900630065000100D6007000
      70006E006100200046003900010001000D000A00610063005200650066007200
      6500730068000100550070007000640061007400650072006100200046003600
      010001000D000A006100630051007500690063006B0049006E0076006F006900
      63006500010053006E00610062006200660061006B0074007500720061002000
      46003200010001000D000A0061006300440065006C0065007400650049006E00
      76006F00690063006500010054006100200062006F0072007400200046003500
      010001000D000A006100630043007200650064006900740049006E0076006F00
      6900630065000100460075006C006C006B007200650064006900740001000100
      0D000A0061006300470072006F00750070006500640049006E0076006F006900
      630065000100530061006D006C0069006E0067007300660061006B0074007500
      72006100200046003700010001000D000A006100630041007400740065007300
      740049006E0076006F0069006300650001004100740074002E00200074006A00
      E4006E0073007400650072002000530068006900660074002B00460031003000
      010001000D000A0061006300440065006C0065007400650049006E0076006F00
      69006300650057006900740068004E0075006D00620065007200010054006100
      200062006F00720074002000460061006B007400750072006100010001000D00
      0A00610063005000720069006E00740043006C00690065006E00740073004900
      6E0076006F00690063006500010053006B007200690076002000750074002000
      4B006C00690065006E007400660061006B007400750072006100200031007300
      7400010001000D000A006100630043006C00690065006E007400500061006300
      6B00610067006500530070006500630069006600690063006100740069006F00
      6E00010053006B0072006900760020007500740020004B006C00690065006E00
      740073007000650063006900660069006B006100740069006F006E0020003100
      73007400010001000D000A0061006300460061006B0074007500720061005300
      760065006E0073006B000100460061006B007400750072006100200053007600
      65006E0073006B00010001000D000A0061006300460061006B00740075007200
      610045006E00670065006C0073006B000100460061006B007400750072006100
      200045006E00670065006C0073006B00010001000D000A006100630046006100
      6B00740075007200610045006E00670065006C0073006B004C0061006E006700
      64000100460061006B007400750072006100200045006E00670065006C007300
      6B0020004C00E4006E0067006400010001000D000A0061006300530070006500
      630069006600690063006100740069006F006E005300760065006E0073006B00
      0100530070006500630069006600690063006100740069006F006E0020005300
      760065006E0073006B00010001000D000A006100630053007000650063006900
      6600690063006100740069006F006E0045006E00670065006C0073006B000100
      53007000650063006900660069006B006100740069006F006E00200045006E00
      670065006C0073006B00010001000D000A006100630053007000650063006900
      6600690063006100740069006F006E0045006E00670065006C0073006B004D00
      65006400500072006F0064007500630065006E00740001005300700065006300
      69006600690063006100740069006F006E00200045006E00670065006C007300
      6B0020006D00650064002000700072006F0064007500630065006E0074000100
      01000D000A006100630053007000650063006900660069006B00610074006900
      6F006E0045006E00670065006C0073006B0041006B007400750065006C006C00
      440069006D0065006E00730069006F006E000100530070006500630069006600
      69006B006100740069006F006E00200045006E00670065006C0073006B002000
      2D00200041006B007400750065006C006C002000640069006D0065006E007300
      69006F006E00010001000D000A00610063005400720070004200720065007600
      01004600F6007200680061006E00640073006700720061006E0073006B006100
      20005400720061006E00730070006F0072007400620072006500760001000100
      0D000A006100630053007000650063006900660069006B006100740069006E00
      5500740061006E00500061006B00650074004E00720001005300700065006300
      6900660069006B006100740069006E0020007500740061006E00200070006100
      6B00650074006E007200010001000D000A006100630053007000650063006900
      660069006B006100740069006F006E0049006400610068006F00530074007900
      6C006500010053007000650063006900660069006B006100740069006F006E00
      2000280049006400610068006F0020007300740079006C006500290001000100
      0D000A0061006300460061006B00740075007200610045006E00670065006C00
      73006B00410067007500730074000100460061006B0074007500720061002000
      45006E00670065006C0073006B00200028006600F60072002000410067007500
      730074002900010001000D000A0061006300460061006B007400750072006100
      45006E00670065006C0073006B004C0065006E0067007400680050006C007500
      73004E004D0033000100460061006B007400750072006100200045006E006700
      65006C0073006B0020002D0020004C00E4006E0067006400200028002B002000
      4E004D0033002900010001000D000A0061006300460061006B00740075007200
      610045006E00670065006C0073006B004C0061006E0067006400500065007200
      500061006B00650074007400790070000100460061006B007400750072006100
      200045006E00670065006C0073006B0020002D0020004C00E4006E0067006400
      200028007000650072002000700061006B006500740074007900700029000100
      01000D000A0061006300460061006B0074007500720061005300760065006E00
      73006B005500740061006E004D006F006D0073005F0044004B00010046006100
      6B00740075007200610020005300760065006E0073006B0020002D0020007500
      740061006E0020006D006F006D0073002000280064006B002900010001000D00
      0A0061006300460061006B00740075007200610045006E00670065006C007300
      6B005F0044004B000100460061006B007400750072006100200045006E006700
      65006C0073006B002000280064006B002900010001000D000A00610063005300
      7000650063006900660069006B006100740069006F006E005300760065006E00
      73006B005F0044004B00010053007000650063006900660069006B0061007400
      69006F006E0020005300760065006E0073006B002000280064006B0029000100
      01000D000A006100630053007000650063006900660069006B00610074006900
      6B006F006E0045006E00670065006C0073006B005F0044004B00010053007000
      650063006900660069006B006100740069006B006F006E00200045006E006700
      65006C0073006B002000280064006B002900010001000D000A00610063005400
      7200700042007200760054006500730074000100540072007000420072007600
      5400650073007400010001000D000A006100630043006C006F00730065000100
      53007400E4006E0067002000460031003200010001000D000A00610063004300
      680061006E00670065004C00610079006F00750074000100C4006E0064007200
      610020006C00610079006F0075007400010001000D000A006100630050007200
      69006E00740043006C00690065006E00740049006E0076006F00690063006500
      41006E006400530070006500630069006600690063006100740069006F006E00
      010053006B0072006900760020007500740020004B006C00690065006E007400
      660061006B00740075007200610020002B0020004B006C00690065006E007400
      7300700065006300010001000D000A006100630045006D00610069006C004600
      61006B00740075007200610041006E0064005300700065006300010045006D00
      610069006C00610020004B006C00690065006E007400660061006B0074007500
      7200610020002B0020004B006C00690065006E00740073007000650063000100
      01000D000A00610063005000720069006E0074005400520050004F0072006400
      650072000100610063005000720069006E0074005400520050004F0072006400
      65007200010001000D000A00610063005000720069006E007400540072007000
      4F00720064006500720041006E0064005300700065006300010053006B007200
      6900760020007500740020005400720070002000620072006500760020002B00
      20004B006C00690065006E007400730070006500630020003100730074000100
      01000D000A00610063004500780070006F007200740049006E0076006F006900
      63006500530070006500630001004500780070002E002000660061006B007400
      75007200610073007000650063002000460031003100010001000D000A006100
      630045006D00610069006C006100540072007000420072006500760001004500
      6D00610069006C00610020007400720061006E00730070006F00720074006200
      72006500760020002B002000700061006B006500740073007000650063000100
      01000D000A00610063005300700065006300530056005F00470072006F007500
      7000420079004C006F00610064004E006F000100530070006500630069006600
      69006B006100740069006F006E00200067007200750070007000650072006100
      6400200070006500720020004600530020005300760065006E0073006B000100
      01000D000A0061006300500072006500560069006500770049006E0076006F00
      69006300650001004600F6007200680061006E00640073006700720061006E00
      73006B00610020006B006C00690065006E007400660061006B00740075007200
      6100010001000D000A00610063005000720069006E0074004300720065006400
      6900740049006E0076006F006900630065007300010053006B00720069007600
      20007500740020006B0072006500640069007400660061006B00740075007200
      6F00720020006600F600720020003200300030003800010001000D000A006100
      63005000720069006E0074004D0065006E007900010053006B00720069007600
      200075007400200046003800010001000D000A00610063004B0075006E006400
      53007000650063006900660069006B00610001004B0075006E00640073007000
      650063006900660069006B006100200072006100700070006F00720074006500
      7200010001000D000A0061006300440065006C004B0072006500640069007400
      0100440065006C006B0072006500640069007400010001000D000A0061006300
      5300610076006500010053007000610072006100010001000D000A0061006300
      45004D00610069006C0061004B0075006E0064004F0063006800410067006500
      6E007400460061006B0074007500720061004F00630068005300700065006300
      010045006D00610069006C00610020006B0075006E0064002600260041006700
      65006E0074002000660061006B00740075007200610020002B00200073007000
      65006300010001000D000A00610063005400720061006E007300660065007200
      49006E0076006F0069006300650073000100D6007600650072006600F6007200
      2000740069006C006C00200045006B006F006E002E00010001000D000A006100
      630053006100760065004D0061006C006C000100530070006100720061002000
      6D0061006C006C00010001000D000A006100630053006100760065004D006100
      6C006C004100730001004E00790020006D0061006C006C00010001000D000A00
      610063004F00700065006E004D0061006C006C000100D600700070006E006100
      20006D0061006C006C00010001000D000A00610063005300650074004D006100
      6C006C0041007300530074007200640001005300610074007400200073006F00
      6D0020007300740061006E00640061007200640020006D0061006C006C000100
      01000D000A006100630047006F0074006F004C004F006E007200010061006300
      47006F0074006F004C004F006E007200010001000D000A006100630050007200
      69006E0074004600520049006E0076006F006900630065000100460061006B00
      740075007200610020002800660072002900010001000D000A00610063004500
      780070006F007200740058004C005300010054006100620065006C006C002000
      2D003E00200065007800630065006C00010001000D000A006100630053006800
      6F0077005600650072006900660069006B00610074004C006F00670067000100
      5600650072006900660069006B00610074006C006F0067006700010001000D00
      0A006100630052006500430061006C00630049006E0076006F00690063006500
      01004B0061006C006B0079006C00650072006100010001000D000A0061006300
      4700650074004B006F006E0074006F004E00720001004B006F006E0074006F00
      6E007200010001000D000A0061006300460069006C007400650072004F006E00
      4C004F0001004700F6007200200075007200760061006C0020007000E5002000
      4C004F006E007200010001000D000A0061006300410073007300690067006E00
      4D0069007300730069006E0067004C006F006100640073000100610063004100
      73007300690067006E004D0069007300730069006E0067004C006F0061006400
      7300010001000D000A00610063004C0065006E0061004500780070006F007200
      740001004C0065006E00610027007300200065007800630065006C0001000100
      0D000A0061006300530065006E0064004500440049004D006500730073006100
      67006500010053006B00690063006B0061002000450044004900010001000D00
      0A00610063004C0069006E006400610073004500780070006F00720074000100
      4C0069006E006400610027007300200065007800630065006C00010001000D00
      0A00610063004E006500770051007500690063006B0049006E0076006F006900
      63006500010053006E00610062006200660061006B0074007500720061000100
      01000D000A00610063005500700067007200610064006500500072006F006400
      75006300740043006F006400650049006E0066006F0001005500700070006400
      610074006500720061002000700072006F00640075006B0074006B006F006400
      69006E0066006F002C002000700072006F00640075006B0074006B006F006400
      20002B00200073007400610074006B006F006400010001000D000A0061006300
      5500700067007200610064006500500072006F00640075006300740043006F00
      6400650049006E0066006F004E006F0053007400610074000100550070007000
      6400610074006500720061002000700072006F00640075006B0074006B006F00
      640069006E0066006F002C002000700072006F00640075006B0074006B006F00
      6400010001000D000A0061006300430061006E00630065006C00500072006F00
      66006F0072006D00610049006E0076006F006900630065000100C5006E006700
      720061002000700072006F0066006F0072006D0061002000660061006B007400
      750072006100010001000D000A00610063005000720065007600690065007700
      50006B006700530070006500630001004600F6007200680061006E0064007300
      6700720061006E0073006B00610020006B006C00690065006E00740073007000
      650063006900660069006B006100740069006F006E00010001000D000A006100
      63004100750073007400720061006C00690061004500780070006F0072007400
      01004500780070006F0072007400200028004100750073007400720061006C00
      690065006E002900010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003100010043007500730074006F006D00
      20003100010001000D000A00640078004200610072004D0061006E0061006700
      6500720031004200610072003200010043007500730074006F006D0020003200
      010001000D000A00640078004200610072004C00610072006700650042007500
      740074006F006E00360001004B00720065006400690074006500720061000100
      01000D000A00640078004200610072004C006100720067006500420075007400
      74006F006E003100300001004500780070006F00720074006500720061000100
      01000D000A00640078004200610072004C006100720067006500420075007400
      74006F006E00310031000100D6007600650072006600F6007200200074006900
      6C006C00200058004F005200010001000D000A00640078004200610072004200
      7500740074006F006E0033003700010057006F006F0064005800200066006100
      6B00740075007200610073007000650063002000460031003100010001000D00
      0A00640078004200610072005300750062004900740065006D00320001004500
      7800630065006C002000700061006B00650074006E007200660069006C000100
      01000D000A006400780042006100720042007500740074006F006E0034003300
      01004D006500640020006B00760061006C006900740065007400010001000D00
      0A006400780042006100720042007500740074006F006E003400340001005500
      740061006E0020006B00760061006C006900740065007400010001000D000A00
      640078004200610072005300750062004900740065006D003300010045007800
      630065006C002000700061006B00650074006E007200660069006C0020006D00
      65006400200022004300220020006600720061006D006600F600720020007000
      61006B00650074006E007200010001000D000A00640078004200610072004200
      7500740074006F006E003400350001004D006500640020006B00760061006C00
      6900740065007400010001000D000A0064007800420061007200420075007400
      74006F006E003400360001005500740061006E0020006B00760061006C006900
      740065007400010001000D000A00640078004200610072004200750074007400
      6F006E0031003200010053007000650063006900660069006B00610074006900
      6F006E0020007500740061006E002000700061006B00650074006E0072000100
      01000D000A006400780042006100720042007500740074006F006E0031003400
      01004E006500770020004900740065006D00010001000D000A00640078004200
      6100720042007500740074006F006E00310038000100460061006B0074007500
      7200610020005300760065006E0073006B002000280064006B00290001000100
      0D000A00640078004200610072005300750062004900740065006D0031000100
      D60076007200690067006100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0061006300450078007000
      6F007200740049006E0076006F00690063006500530070006500630001004500
      780070006F00720074006500720061002000660061006B007400750072006100
      6E00200065006E006C00690067007400200077006F006F006400580020006600
      6F0072006D0061007400010001000D000A00640078004200610072004C006100
      72006700650042007500740074006F006E00360001004B007200650064006900
      7400650072006100010001000D000A00640078004200610072004C0061007200
      6700650042007500740074006F006E003100300001004500780070006F007200
      74006500720061002000660061006B0074007500720061006E00200065006E00
      6C00690067007400200077006F006F0064005800200066006F0072006D006100
      7400010001000D000A006400780042006100720042007500740074006F006E00
      3400330001004D006500640020006B00760061006C0069007400650074000100
      01000D000A006400780042006100720042007500740074006F006E0034003400
      01005500740061006E0020006B00760061006C00690074006500740001000100
      0D000A006400780042006100720042007500740074006F006E00340035000100
      4D006500640020006B00760061006C006900740065007400010001000D000A00
      6400780042006100720042007500740074006F006E0034003600010055007400
      61006E0020006B00760061006C006900740065007400010001000D000A006400
      780042006100720042007500740074006F006E003100340001004E0065007700
      20004900740065006D00010001000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A006D007400530065006C006500630074006500640049006E0076006F00
      690063006500730049006E0076006F006900630065004E006F00010049006E00
      76006F006900630065004E006F00010001000D000A006D007400530065006C00
      6500630074006500640049006E0076006F00690063006500730049006E007400
      650072006E0061006C0049006E0076006F006900630065004E006F0001004900
      6E007400650072006E0061006C0049006E0076006F006900630065004E006F00
      010001000D000A006D007400530065006C006500630074006500640049006E00
      76006F00690063006500730043007500730074006F006D00650072004E006F00
      010043007500730074006F006D00650072004E006F00010001000D000A006D00
      7400530065006C006500630074006500640049006E0076006F00690063006500
      730049006E0076006F006900630065005400790070006500010049006E007600
      6F006900630065005400790070006500010001000D000A006300640073005F00
      6D0061006C006C00550073006500720049004400010055007300650072004900
      4400010001000D000A006300640073005F006D0061006C006C0046006F007200
      6D00010046006F0072006D00010001000D000A006300640073005F006D006100
      6C006C005600650072006B004E006F0001005600650072006B004E006F000100
      01000D000A006300640073005F006D0061006C006C004F0077006E0065007200
      4E006F0001004F0077006E00650072004E006F00010001000D000A0063006400
      73005F006D0061006C006C004C004F004F0062006A0065006300740054007900
      7000650001004C004F004F0062006A0065006300740054007900700065000100
      01000D000A006300640073005F00500072006F007000730049006E0076005500
      730065007200490044000100550073006500720049004400010001000D000A00
      6300640073005F00500072006F007000730049006E00760046006F0072006D00
      010046006F0072006D00010001000D000A006300640073005F00500072006F00
      7000730049006E0076005600650072006B004E006F0001005600650072006B00
      4E006F00010001000D000A006300640073005F00500072006F00700073004900
      6E0076004F0077006E00650072004E006F0001004F0077006E00650072004E00
      6F00010001000D000A006300640073005F00500072006F007000730049006E00
      76005000490050004E006F0001005000490050004E006F00010001000D000A00
      6300640073005F00500072006F007000730049006E0076004C00490050004E00
      6F0001004C00490050004E006F00010001000D000A006300640073005F005000
      72006F007000730049006E00760049006E007000750074004F00700074006900
      6F006E00010049006E007000750074004F007000740069006F006E0001000100
      0D000A006300640073005F00500072006F007000730049006E00760052006500
      670050006F0069006E0074004E006F00010052006500670050006F0069006E00
      74004E006F00010001000D000A006300640073005F00500072006F0070007300
      49006E0076005200650067004400610074006500010052006500670044006100
      74006500010001000D000A006300640073005F00500072006F00700073004900
      6E00760043006F0070007900500063007300010043006F007000790050006300
      7300010001000D000A006300640073005F00500072006F007000730049006E00
      7600520075006E004E006F000100520075006E004E006F00010001000D000A00
      6300640073005F00500072006F007000730049006E007600500072006F006400
      75006300650072004E006F000100500072006F00640075006300650072004E00
      6F00010001000D000A006300640073005F00500072006F007000730049006E00
      76004100750074006F0043006F006C0057006900640074006800010041007500
      74006F0043006F006C0057006900640074006800010001000D000A0063006400
      73005F00500072006F007000730049006E00760053007500700070006C006900
      6500720043006F0064006500010053007500700070006C006900650072004300
      6F0064006500010001000D000A006300640073005F00500072006F0070007300
      49006E0076004C0065006E006700740068004F007000740069006F006E000100
      4C0065006E006700740068004F007000740069006F006E00010001000D000A00
      6300640073005F00500072006F007000730049006E0076004C0065006E006700
      74006800470072006F00750070004E006F0001004C0065006E00670074006800
      470072006F00750070004E006F00010001000D000A006300640073005F005000
      72006F007000730049006E0076004E00650077004900740065006D0052006F00
      770001004E00650077004900740065006D0052006F007700010001000D000A00
      6300640073005F00500072006F007000730049006E007600530061006C006500
      730052006500670069006F006E004E006F000100530061006C00650073005200
      6500670069006F006E004E006F00010001000D000A006300640073005F005000
      72006F007000730049006E0076004D00610072006B0065007400520065006700
      69006F006E004E006F0001004D00610072006B00650074005200650067006900
      6F006E004E006F00010001000D000A006300640073005F00500072006F007000
      730049006E0076004F00720064006500720054007900700065004E006F000100
      4F00720064006500720054007900700065004E006F00010001000D000A006300
      640073005F00500072006F007000730049006E00760053007400610074007500
      73000100530074006100740075007300010001000D000A006300640073005F00
      500072006F007000730049006E007600460069006C007400650072004F007200
      64006500720044006100740065000100460069006C007400650072004F007200
      6400650072004400610074006500010001000D000A006300640073005F005000
      72006F007000730049006E007600530074006100720074005000650072006900
      6F00640001005300740061007200740050006500720069006F00640001000100
      0D000A006300640073005F00500072006F007000730049006E00760045006E00
      640050006500720069006F006400010045006E00640050006500720069006F00
      6400010001000D000A006300640073005F00500072006F007000730049006E00
      760043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F00010001000D000A006300640073005F00500072006F00700073004900
      6E007600530061006C006500730050006500720073006F006E004E006F000100
      530061006C006500730050006500720073006F006E004E006F00010001000D00
      0A006300640073005F00500072006F007000730049006E007600560065007200
      6B0053007500700070006C006900650072004E006F0001005600650072006B00
      53007500700070006C006900650072004E006F00010001000D000A0063006400
      73005F00500072006F007000730049006E0076005600650072006B004B007500
      6E0064004E006F0001005600650072006B004B0075006E0064004E006F000100
      01000D000A006300640073005F00500072006F007000730049006E0076004C00
      4F004F0062006A00650063007400540079007000650001004C004F004F006200
      6A006500630074005400790070006500010001000D000A006300640073005F00
      500072006F007000730049006E00760042006100720043006F00640065004E00
      6F00010042006100720043006F00640065004E006F00010001000D000A006300
      640073005F00500072006F007000730049006E00760047007200610064006500
      5300740061006D0070004E006F00010047007200610064006500530074006100
      6D0070004E006F00010001000D000A006300640073005F00500072006F007000
      730049006E00760056006F006C0075006D00650055006E00690074004E006F00
      010056006F006C0075006D00650055006E00690074004E006F00010001000D00
      0A006300640073005F00500072006F007000730049006E0076004C0065006E00
      67007400680046006F0072006D00610074004E006F0001004C0065006E006700
      7400680046006F0072006D00610074004E006F00010001000D000A0063006400
      73005F00500072006F007000730049006E0076004C0065006E00670074006800
      56006F006C0055006E00690074004E006F0001004C0065006E00670074006800
      56006F006C0055006E00690074004E006F00010001000D000A00630064007300
      5F00500072006F007000730049006E007600470072006F007500700042007900
      42006F0078000100470072006F00750070004200790042006F00780001000100
      0D000A006300640073005F00500072006F007000730049006E00760047007200
      6F0075007000530075006D006D006100720079000100470072006F0075007000
      530075006D006D00610072007900010001000D000A006300640073005F005000
      72006F007000730049006E0076004100670065006E0074004E006F0001004100
      670065006E0074004E006F00010001000D000A006300640073005F0050007200
      6F007000730049006E0076004C006F006100640069006E0067004C006F006300
      6100740069006F006E004E006F0001004C006F006100640069006E0067004C00
      6F0063006100740069006F006E004E006F00010001000D000A00630064007300
      5F00500072006F007000730049006E0076005300680069007000700065007200
      4E006F00010053006800690070007000650072004E006F00010001000D000A00
      6300640073005F00500072006F007000730049006E00760042006F006F006B00
      69006E00670054007900700065004E006F00010042006F006F006B0069006E00
      670054007900700065004E006F00010001000D000A006300640073005F005000
      72006F007000730049006E00760043007500730074006F006D00650072004E00
      6F00010043007500730074006F006D00650072004E006F00010001000D000A00
      6300640073005F00500072006F007000730049006E007600530068006F007700
      500072006F0064007500630074000100530068006F007700500072006F006400
      750063007400010001000D000A006300640073005F00500072006F0070007300
      49006E0076004D00610072006B006E006100640001004D00610072006B006E00
      61006400010001000D000A006300640073005F00500072006F00700073004900
      6E0076004B0075006E00640001004B0075006E006400010001000D000A006300
      640073005F00500072006F007000730049006E00760053005200010053005200
      010001000D000A006300640073005F00500072006F007000730049006E007600
      530061006C006A00670072007500700070000100530061006C006A0067007200
      750070007000010001000D000A006300640073005F00500072006F0070007300
      49006E0076005600650072006B0001005600650072006B00010001000D000A00
      6300640073005F00500072006F007000730049006E0076005300680069007000
      70006500720001005300680069007000700065007200010001000D000A006300
      640073005F00500072006F007000730049006E00760042006F006B006E006900
      6E0067007300740079007000010042006F006B006E0069006E00670073007400
      79007000010001000D000A006300640073005F00500072006F00700073004900
      6E0076004C006100730074007300740061006C006C00650001004C0061007300
      74007300740061006C006C006500010001000D000A006300640073005F005000
      72006F007000730049006E0076004100670065006E0074004E0061006D006E00
      01004100670065006E0074004E0061006D006E00010001000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      660072006D0049006E0076006F006900630065004C0069007300740001004D00
      53002000530061006E007300200053006500720069006600010001000D000A00
      640078004200610072004D0061006E0061006700650072003100010053006500
      67006F006500200055004900010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200310001005300650067006F00
      6500200055004900010001000D000A00640078004200610072004D0061006E00
      61006700650072003100420061007200320001005300650067006F0065002000
      55004900010001000D000A0070006D005000720069006E007400010053006500
      67006F006500200055004900010001000D000A0070006D0049006E0076006F00
      690063006500470072006900640001005300650067006F006500200055004900
      010001000D000A0070006D004B00720065006400690074000100530065006700
      6F006500200055004900010001000D000A0070006D004500780070006F007200
      740001005300650067006F006500200055004900010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A00640078004200610072004D0061006E006100670065007200
      31002E00430061007400650067006F0072006900650073000100440065006600
      610075006C0074002C005000720069006E0074002C0049006E0076006F006900
      6300650047007200690064002C004D0061006C006C0061007200010001000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006C00630053006100
      6C006A00670072007500700070002E00500072006F0070006500720074006900
      650073002E004B00650079004600690065006C0064004E0061006D0065007300
      0100530061006C0065007300470072006F00750070004E006F00010001000D00
      0A006C006300530061006C006A00670072007500700070002E00500072006F00
      70006500720074006900650073002E004C006900730074004600690065006C00
      64004E0061006D00650073000100530061006C0065007300470072006F007500
      70004E0061006D006500010001000D000A0063006300620049006E0076006F00
      69006300650054007900700065002E00500072006F0070006500720074006900
      650073002E00440065006C0069006D00690074006500720001003B0001000100
      0D000A0063006300620049006E0076006F006900630065005400790070006500
      2E00500072006F0070006500720074006900650073002E0045006D0070007400
      7900530065006C0065006300740069006F006E00540065007800740001004E00
      6F006E0065002000730065006C0065006300740065006400010001000D000A00
      6C006300530052002E00500072006F0070006500720074006900650073002E00
      4B00650079004600690065006C0064004E0061006D0065007300010043006C00
      690065006E0074004E006F00010001000D000A006C006300530052002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D0065007300010043006C00690065006E0074004E00
      61006D006500010001000D000A006C0063004B0075006E0064002E0050007200
      6F0070006500720074006900650073002E004B00650079004600690065006C00
      64004E0061006D0065007300010043006C00690065006E0074004E006F000100
      01000D000A006C0063004B0075006E0064002E00500072006F00700065007200
      74006900650073002E004C006900730074004600690065006C0064004E006100
      6D0065007300010043006C00690065006E0074004E0061006D00650001000100
      0D000A0063006200460069006C006C007400650072004F006E0049006E007600
      6F0069006300650044006100740065002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790043006800650063006B00
      6500640001005400720075006500010001000D000A0063006200460069006C00
      6C007400650072004F006E0049006E0076006F00690063006500440061007400
      65002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790055006E0063006800650063006B0065006400010046006100
      6C0073006500010001000D000A0063006200440065006C004B00720065006400
      690074002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790043006800650063006B00650064000100540072007500
      6500010001000D000A0063006200440065006C004B0072006500640069007400
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790055006E0063006800650063006B00650064000100460061006C00
      73006500010001000D000A00630078004400420043006800650063006B004200
      6F00780031002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790043006800650063006B0065006400010054007200
      75006500010001000D000A00630078004400420043006800650063006B004200
      6F00780031002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790055006E0063006800650063006B00650064000100
      460061006C0073006500010001000D000A00670072006400460061006B007400
      75007200610044004200420061006E006400650064005400610062006C006500
      5600690065007700310049004E0054005F0049004E0056004E004F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400460061006B007400
      75007200610044004200420061006E006400650064005400610062006C006500
      5600690065007700310049004E0056005F0044004100540045002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      690065007700310049004E0056004F004900430045005F004E004F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400460061006B007400
      75007200610044004200420061006E006400650064005400610062006C006500
      5600690065007700310049004E0056004F004900430045005F00540059005000
      45002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004600
      61006B00740075007200610044004200420061006E0064006500640054006100
      62006C0065005600690065007700310049004E0056004F004900430045005F00
      4B004F004E0054004F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400460061006B00740075007200610044004200420061006E006400
      650064005400610062006C006500560069006500770031004400750065004400
      6100740065002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780044006100740065004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A00670072006400460061006B00740075007200610044004200420061006E00
      6400650064005400610062006C0065005600690065007700310043006F007500
      6E007400720079004E0061006D0065002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031005100
      7500690063006B0049006E0076006F006900630065002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790043006800
      650063006B006500640001005400720075006500010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C0065005600690065007700310051007500690063006B004900
      6E0076006F006900630065002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790055006E0063006800650063006B00
      650064000100460061006C0073006500010001000D000A006700720064004600
      61006B00740075007200610044004200420061006E0064006500640054006100
      62006C0065005600690065007700310051007500690063006B0049006E007600
      6F006900630065002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004300680065006300
      6B0042006F007800500072006F00700065007200740069006500730001000100
      0D000A00670072006400460061006B0074007500720061004400420042006100
      6E006400650064005400610062006C0065005600690065007700310043005500
      530054004F004D00450052002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400460061006B00740075007200610044004200420061006E00
      6400650064005400610062006C006500560069006500770031004B0055005200
      53002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004600
      61006B00740075007200610044004200420061006E0064006500640054006100
      62006C00650056006900650077003100430055005200520045004E0043005900
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640046006100
      6B00740075007200610044004200420061006E00640065006400540061006200
      6C006500560069006500770031004100470045004E0054002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00670072006400460061006B00740075007200
      610044004200420061006E006400650064005400610062006C00650056006900
      650077003100540052004100440049004E0047002E00500072006F0070006500
      720074006900650073002E0044006900730070006C0061007900430068006500
      63006B006500640001005400720075006500010001000D000A00670072006400
      460061006B00740075007200610044004200420061006E006400650064005400
      610062006C00650056006900650077003100540052004100440049004E004700
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790055006E0063006800650063006B00650064000100460061006C00
      73006500010001000D000A00670072006400460061006B007400750072006100
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100540052004100440049004E0047002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780043006800650063006B0042006F007800500072006F007000650072007400
      690065007300010001000D000A00670072006400460061006B00740075007200
      610044004200420061006E006400650064005400610062006C00650056006900
      6500770031004600720073006C006A004F00720067004E0072002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      69006500770031005600450043004B0041002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400460061006B00740075007200610044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C0041004E0044002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400460061006B00740075007200610044004200420061006E0064006500
      64005400610062006C006500560069006500770031004600720073006C006A00
      5200650067002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C0065005600690065007700310053006C006A00470072007500
      700070002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      460061006B00740075007200610044004200420061006E006400650064005400
      610062006C0065005600690065007700310043007500730074006F006D006500
      72004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C0065005600690065007700310049006E0076006F0069006300
      650054007900700065002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400460061006B00740075007200610044004200420061006E006400
      650064005400610062006C006500560069006500770031004C004F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400460061006B007400
      75007200610044004200420061006E006400650064005400610062006C006500
      560069006500770031004B00760061006E00740069007400650074002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400460061006B007400
      75007200610044004200420061006E006400650064005400610062006C006500
      5600690065007700310041004D0033002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031004E00
      4D0033005F0049006E0074002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400460061006B00740075007200610044004200420061006E00
      6400650064005400610062006C006500560069006500770031004E004D003300
      5F004500780074002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400460061006B00740075007200610044004200420061006E0064006500
      64005400610062006C00650056006900650077003100500061006B0065007400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640046006100
      6B00740075007200610044004200420061006E00640065006400540061006200
      6C006500560069006500770031006D006F006D00730076006100720064006500
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640046006100
      6B00740075007200610044004200420061006E00640065006400540061006200
      6C00650056006900650077003100500072006F00640075006B00740076006100
      7200640065002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500072006F00640075006B00
      740056006100720064006500530045004B002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400460061006B00740075007200610044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500072006F00640075006B007400760061007200640065005500740061006E00
      4600720061006B0074002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400460061006B00740075007200610044004200420061006E006400
      650064005400610062006C00650056006900650077003100500072006F006400
      75006B007400560061007200640065005500740061006E004600720061006B00
      7400530045004B002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400460061006B00740075007200610044004200420061006E0064006500
      64005400610062006C006500560069006500770031004600720061006B007400
      560061006C007500740061002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400460061006B00740075007200610044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C0065007600
      4F00520054002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400460061006B00740075007200610044004200420061006E00640065006400
      5400610062006C00650056006900650077003100450072005200650066006500
      720065006E0073002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400460061006B00740075007200610044004200420061006E0064006500
      64005400610062006C006500560069006500770031004F007200640065007200
      6E0072002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      460061006B00740075007200610044004200420061006E006400650064005400
      610062006C006500560069006500770031005300480049005000500045005200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640046006100
      6B00740075007200610044004200420061006E00640065006400540061006200
      6C0065005600690065007700310050006F0073007400690074002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      690065007700310050004F005F007000720065006600690078002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      690065007700310053006B0061007400740065007500700070006C0061006700
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790043006800650063006B0065006400010054007200750065000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031005300
      6B0061007400740065007500700070006C00610067002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790055006E00
      63006800650063006B00650064000100460061006C0073006500010001000D00
      0A00670072006400460061006B00740075007200610044004200420061006E00
      6400650064005400610062006C0065005600690065007700310053006B006100
      7400740065007500700070006C00610067002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780043006800650063006B0042006F007800500072006F007000650072007400
      690065007300010001000D000A00670072006400460061006B00740075007200
      610044004200420061006E006400650064005400610062006C00650056006900
      65007700310056006100720075006B006F006E0074006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00670072006400460061006B00740075007200
      610044004200420061006E006400650064005400610062006C00650056006900
      6500770031004600720061006B0074006B006F006E0074006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      69006500770031004D006F006D0073006B006F006E0074006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      69006500770031004D006F006D0073006B006F0064002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00670072006400460061006B007400750072006100
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004600720061006B007400560061006C00750074006100530045004B00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640046006100
      6B00740075007200610044004200420061006E00640065006400540061006200
      6C00650056006900650077003100410072007400690063006C0065004E006100
      6D0065002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      460061006B00740075007200610044004200420061006E006400650064005400
      610062006C00650056006900650077003100440065006C004B00720065006400
      690074002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790043006800650063006B00650064000100540072007500
      6500010001000D000A00670072006400460061006B0074007500720061004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100440065006C004B00720065006400690074002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C0073006500010001000D000A00
      670072006400460061006B00740075007200610044004200420061006E006400
      650064005400610062006C00650056006900650077003100440065006C004B00
      720065006400690074002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800430068006500
      63006B0042006F007800500072006F0070006500720074006900650073000100
      01000D000A00670072006400460061006B007400750072006100440042004200
      61006E006400650064005400610062006C006500560069006500770031004100
      6400640072006500730073004C0069006E00650031002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031002E004F006C0064004E0061006D0065000100
      43007500730074006F006D0020003100010001000D000A006400780042006100
      72004D0061006E006100670065007200310042006100720032002E004F006C00
      64004E0061006D006500010043007500730074006F006D002000320001000100
      0D000A006D007400530065006C006500630074006500640049006E0076006F00
      69006300650073002E00560065007200730069006F006E00010037002E003600
      33002E003000300020005300740061006E006400610072006400200045006400
      6900740069006F006E00010001000D000A006300640073005F006D0061006C00
      6C002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      0100560049005300010001000D000A006300640073005F006D0061006C006C00
      5500730065007200490044002E004F0072006900670069006E00010055007300
      6500720049004400010001000D000A006300640073005F006D0061006C006C00
      46006F0072006D002E004F0072006900670069006E00010046006F0072006D00
      010001000D000A006300640073005F006D0061006C006C005600650072006B00
      4E006F002E004F0072006900670069006E0001005600650072006B004E006F00
      010001000D000A006300640073005F006D0061006C006C004F0077006E006500
      72004E006F002E004F0072006900670069006E0001004F0077006E0065007200
      4E006F00010001000D000A006300640073005F006D0061006C006C004C004F00
      4F0062006A0065006300740054007900700065002E004F007200690067006900
      6E0001004C004F004F0062006A00650063007400540079007000650001000100
      0D000A006300640073005F006D0061006C006C004E0061006D0065002E004F00
      72006900670069006E0001004E0061006D006500010001000D000A0063006400
      73005F00500072006F007000730049006E0076002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000D00
      0A006300640073005F00500072006F007000730049006E007600550073006500
      7200490044002E004F0072006900670069006E00010055007300650072004900
      4400010001000D000A006300640073005F00500072006F007000730049006E00
      760046006F0072006D002E004F0072006900670069006E00010046006F007200
      6D00010001000D000A006300640073005F00500072006F007000730049006E00
      76004E0061006D0065002E004F0072006900670069006E0001004E0061006D00
      6500010001000D000A006300640073005F00500072006F007000730049006E00
      76005600650072006B004E006F002E004F0072006900670069006E0001005600
      650072006B004E006F00010001000D000A006300640073005F00500072006F00
      7000730049006E0076004F0077006E00650072004E006F002E004F0072006900
      670069006E0001004F0077006E00650072004E006F00010001000D000A006300
      640073005F00500072006F007000730049006E0076005000490050004E006F00
      2E004F0072006900670069006E0001005000490050004E006F00010001000D00
      0A006300640073005F00500072006F007000730049006E0076004C0049005000
      4E006F002E004F0072006900670069006E0001004C00490050004E006F000100
      01000D000A006300640073005F00500072006F007000730049006E0076004900
      6E007000750074004F007000740069006F006E002E004F007200690067006900
      6E00010049006E007000750074004F007000740069006F006E00010001000D00
      0A006300640073005F00500072006F007000730049006E007600520065006700
      50006F0069006E0074004E006F002E004F0072006900670069006E0001005200
      6500670050006F0069006E0074004E006F00010001000D000A00630064007300
      5F00500072006F007000730049006E0076005200650067004400610074006500
      2E004F0072006900670069006E00010052006500670044006100740065000100
      01000D000A006300640073005F00500072006F007000730049006E0076004300
      6F00700079005000630073002E004F0072006900670069006E00010043006F00
      70007900500063007300010001000D000A006300640073005F00500072006F00
      7000730049006E007600520075006E004E006F002E004F007200690067006900
      6E000100520075006E004E006F00010001000D000A006300640073005F005000
      72006F007000730049006E007600500072006F00640075006300650072004E00
      6F002E004F0072006900670069006E000100500072006F006400750063006500
      72004E006F00010001000D000A006300640073005F00500072006F0070007300
      49006E0076004100750074006F0043006F006C00570069006400740068002E00
      4F0072006900670069006E0001004100750074006F0043006F006C0057006900
      640074006800010001000D000A006300640073005F00500072006F0070007300
      49006E00760053007500700070006C0069006500720043006F00640065002E00
      4F0072006900670069006E00010053007500700070006C006900650072004300
      6F0064006500010001000D000A006300640073005F00500072006F0070007300
      49006E0076004C0065006E006700740068004F007000740069006F006E002E00
      4F0072006900670069006E0001004C0065006E006700740068004F0070007400
      69006F006E00010001000D000A006300640073005F00500072006F0070007300
      49006E0076004C0065006E00670074006800470072006F00750070004E006F00
      2E004F0072006900670069006E0001004C0065006E0067007400680047007200
      6F00750070004E006F00010001000D000A006300640073005F00500072006F00
      7000730049006E0076004E00650077004900740065006D0052006F0077002E00
      4F0072006900670069006E0001004E00650077004900740065006D0052006F00
      7700010001000D000A006300640073005F00500072006F007000730049006E00
      7600530061006C006500730052006500670069006F006E004E006F002E004F00
      72006900670069006E000100530061006C006500730052006500670069006F00
      6E004E006F00010001000D000A006300640073005F00500072006F0070007300
      49006E0076004D00610072006B006500740052006500670069006F006E004E00
      6F002E004F0072006900670069006E0001004D00610072006B00650074005200
      6500670069006F006E004E006F00010001000D000A006300640073005F005000
      72006F007000730049006E0076004F0072006400650072005400790070006500
      4E006F002E004F0072006900670069006E0001004F0072006400650072005400
      7900700065004E006F00010001000D000A006300640073005F00500072006F00
      7000730049006E0076005300740061007400750073002E004F00720069006700
      69006E000100530074006100740075007300010001000D000A00630064007300
      5F00500072006F007000730049006E007600460069006C007400650072004F00
      720064006500720044006100740065002E004F0072006900670069006E000100
      460069006C007400650072004F00720064006500720044006100740065000100
      01000D000A006300640073005F00500072006F007000730049006E0076005300
      740061007200740050006500720069006F0064002E004F007200690067006900
      6E0001005300740061007200740050006500720069006F006400010001000D00
      0A006300640073005F00500072006F007000730049006E00760045006E006400
      50006500720069006F0064002E004F0072006900670069006E00010045006E00
      640050006500720069006F006400010001000D000A006300640073005F005000
      72006F007000730049006E00760043006C00690065006E0074004E006F002E00
      4F0072006900670069006E00010043006C00690065006E0074004E006F000100
      01000D000A006300640073005F00500072006F007000730049006E0076005300
      61006C006500730050006500720073006F006E004E006F002E004F0072006900
      670069006E000100530061006C006500730050006500720073006F006E004E00
      6F00010001000D000A006300640073005F00500072006F007000730049006E00
      76005600650072006B0053007500700070006C006900650072004E006F002E00
      4F0072006900670069006E0001005600650072006B0053007500700070006C00
      6900650072004E006F00010001000D000A006300640073005F00500072006F00
      7000730049006E0076005600650072006B004B0075006E0064004E006F002E00
      4F0072006900670069006E0001005600650072006B004B0075006E0064004E00
      6F00010001000D000A006300640073005F00500072006F007000730049006E00
      76004C004F004F0062006A0065006300740054007900700065002E004F007200
      6900670069006E0001004C004F004F0062006A00650063007400540079007000
      6500010001000D000A006300640073005F00500072006F007000730049006E00
      760042006100720043006F00640065004E006F002E004F007200690067006900
      6E00010042006100720043006F00640065004E006F00010001000D000A006300
      640073005F00500072006F007000730049006E00760047007200610064006500
      5300740061006D0070004E006F002E004F0072006900670069006E0001004700
      72006100640065005300740061006D0070004E006F00010001000D000A006300
      640073005F00500072006F007000730049006E00760056006F006C0075006D00
      650055006E00690074004E006F002E004F0072006900670069006E0001005600
      6F006C0075006D00650055006E00690074004E006F00010001000D000A006300
      640073005F00500072006F007000730049006E0076004C0065006E0067007400
      680046006F0072006D00610074004E006F002E004F0072006900670069006E00
      01004C0065006E0067007400680046006F0072006D00610074004E006F000100
      01000D000A006300640073005F00500072006F007000730049006E0076004C00
      65006E0067007400680056006F006C0055006E00690074004E006F002E004F00
      72006900670069006E0001004C0065006E0067007400680056006F006C005500
      6E00690074004E006F00010001000D000A006300640073005F00500072006F00
      7000730049006E007600470072006F00750070004200790042006F0078002E00
      4F0072006900670069006E000100470072006F00750070004200790042006F00
      7800010001000D000A006300640073005F00500072006F007000730049006E00
      7600470072006F0075007000530075006D006D006100720079002E004F007200
      6900670069006E000100470072006F0075007000530075006D006D0061007200
      7900010001000D000A006300640073005F00500072006F007000730049006E00
      76004100670065006E0074004E006F002E004F0072006900670069006E000100
      4100670065006E0074004E006F00010001000D000A006300640073005F005000
      72006F007000730049006E0076004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F002E004F0072006900670069006E000100
      4C006F006100640069006E0067004C006F0063006100740069006F006E004E00
      6F00010001000D000A006300640073005F00500072006F007000730049006E00
      760053006800690070007000650072004E006F002E004F007200690067006900
      6E00010053006800690070007000650072004E006F00010001000D000A006300
      640073005F00500072006F007000730049006E00760042006F006F006B006900
      6E00670054007900700065004E006F002E004F0072006900670069006E000100
      42006F006F006B0069006E00670054007900700065004E006F00010001000D00
      0A006300640073005F00500072006F007000730049006E007600430075007300
      74006F006D00650072004E006F002E004F0072006900670069006E0001004300
      7500730074006F006D00650072004E006F00010001000D000A00630064007300
      5F00500072006F007000730049006E007600530068006F007700500072006F00
      64007500630074002E004F0072006900670069006E000100530068006F007700
      500072006F006400750063007400010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A006C006300530061006C006A00670072007500700070002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      530061006C0065007300470072006F00750070004E0061006D00650001000100
      0D000A006900630042006500740061006C005300740061007400750073002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0030005D002E004400650073006300720069007000740069006F006E000100
      41004C004C004100010001000D000A006900630042006500740061006C005300
      740061007400750073002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0031005D002E00440065007300630072006900
      7000740069006F006E000100440045004C0020004F004300480020004F004200
      4500540041004C0044004100010001000D000A00690063004200650074006100
      6C005300740061007400750073002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0032005D002E004400650073006300
      720069007000740069006F006E00010045004E00440041005300540020004400
      45004C00200042004500540041004C0044004100010001000D000A0069006300
      42006500740061006C005300740061007400750073002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0033005D002E00
      4400650073006300720069007000740069006F006E000100460055004C004C00
      200042004500540041004C0044004100010001000D000A006300620054007900
      70002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E004400650073006300720069007000740069006F00
      6E0001004E006F0072006D0061006C006100010001000D000A00630062005400
      790070002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0031005D002E00440065007300630072006900700074006900
      6F006E00010053006E00610062006200010001000D000A006300620054007900
      70002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0032005D002E004400650073006300720069007000740069006F00
      6E00010041006C006C006100010001000D000A00630062004B006F006E007400
      6F002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E004400650073006300720069007000740069006F00
      6E00010044006500620065007400010001000D000A00630062004B006F006E00
      74006F002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0031005D002E00440065007300630072006900700074006900
      6F006E0001004B0072006500640069007400010001000D000A00630062004B00
      6F006E0074006F002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0032005D002E004400650073006300720069007000
      740069006F006E00010041006C006C006100010001000D000A00630062005600
      61007200750053006C00610067002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0030005D002E004400650073006300
      720069007000740069006F006E00010054007200E4007600610072006F007200
      010001000D000A0063006200560061007200750053006C00610067002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      31005D002E004400650073006300720069007000740069006F006E0001005300
      74006F006C0070002600700061006C006C00010001000D000A00630062005600
      61007200750053006C00610067002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0032005D002E004400650073006300
      720069007000740069006F006E00010041006C006C006100010001000D000A00
      6C006300530052002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0030005D002E004300
      61007000740069006F006E00010043006C00690065006E0074004E0061006D00
      6500010001000D000A00690063005400720061006E0073006600650072007200
      650064005300740061007400750073002E00500072006F007000650072007400
      6900650073002E004900740065006D0073005B0030005D002E00440065007300
      6300720069007000740069006F006E00010041006C006C006100010001000D00
      0A00690063005400720061006E00730066006500720072006500640053007400
      61007400750073002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0031005D002E004400650073006300720069007000
      740069006F006E00010045006A002000F6007600650072006600F60072006400
      6100010001000D000A00690063005400720061006E0073006600650072007200
      650064005300740061007400750073002E00500072006F007000650072007400
      6900650073002E004900740065006D0073005B0032005D002E00440065007300
      6300720069007000740069006F006E000100D6007600650072006600F6007200
      64006100010001000D000A006C0063004B0075006E0064002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001004300
      6C00690065006E0074004E0061006D006500010001000D000A00670072006400
      460061006B00740075007200610044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      30005D002E00430061007000740069006F006E000100460061006B0074007500
      720061006E007200010001000D000A00670072006400460061006B0074007500
      7200610044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0031005D002E0043006100
      7000740069006F006E00010056006F006C0079006D0026007600E40072006400
      6500010001000D000A006300640073005F00500072006F007000730049006E00
      76002E0049006E00640065007800650073005B0030005D002E00460069006500
      6C0064007300010046006F0072006D003B005500730065007200490044000100
      01000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A005400660072006D0049006E0076006F006900
      630065004C006900730074000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00640078004200610072004D00
      61006E00610067006500720031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720031000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      32000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0070006D005000720069006E0074000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      70006D0049006E0076006F006900630065004700720069006400010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A0070006D004B00720065006400690074000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A0070006D004500
      780070006F00720074000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00}
  end
end
