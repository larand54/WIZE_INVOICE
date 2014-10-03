object formConfirmIntLoad: TformConfirmIntLoad
  Left = 232
  Top = 40
  Width = 1004
  Height = 730
  Caption = 'Ankomstregistrera intern last'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelKontraktHuvud: TPanel
    Left = 0
    Top = 44
    Width = 996
    Height = 153
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object dxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 996
      Height = 153
      ActivePage = dxTSMain
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabWidth = 150
      ClientRectBottom = 152
      ClientRectLeft = 1
      ClientRectRight = 995
      ClientRectTop = 21
      object dxTSMain: TcxTabSheet
        Caption = 'Last'
        object Label3: TLabel
          Left = 272
          Top = 36
          Width = 42
          Height = 13
          Caption = 'Utlastad:'
        end
        object Label4: TLabel
          Left = 272
          Top = 62
          Width = 34
          Height = 13
          Caption = 'Last id:'
        end
        object Label5: TLabel
          Left = 272
          Top = 89
          Width = 33
          Height = 13
          Caption = 'Status:'
        end
        object Label6: TLabel
          Left = 16
          Top = 36
          Width = 54
          Height = 13
          Caption = 'Fraktf'#246'rare:'
        end
        object Label7: TLabel
          Left = 16
          Top = 10
          Width = 32
          Height = 13
          Caption = 'Lastnr:'
        end
        object Label8: TLabel
          Left = 16
          Top = 62
          Width = 47
          Height = 13
          Caption = 'Lastst'#228'lle:'
        end
        object Label9: TLabel
          Left = 16
          Top = 89
          Width = 56
          Height = 13
          Caption = 'Destination:'
        end
        object dxDBGrid3: TdxDBGrid
          Left = 448
          Top = 8
          Width = 97
          Height = 118
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ShippingPlanNo'
          SummaryGroups = <>
          SummarySeparator = ', '
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsAvropNr
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dxDBGrid3LoadNo: TdxDBGridMaskColumn
            Caption = 'LOAD NO'
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LoadNo'
          end
          object dxDBGrid3ShippingPlanNo: TdxDBGridMaskColumn
            Caption = 'LO'
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ShippingPlanNo'
          end
          object dxDBGrid3Avrop_CustomerNo: TdxDBGridMaskColumn
            Visible = False
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Avrop_CustomerNo'
          end
          object dxDBGrid3LO_CustomerNo: TdxDBGridMaskColumn
            Visible = False
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LO_CustomerNo'
          end
        end
        object dxDBEdit1: TdxDBEdit
          Left = 73
          Top = 2
          Width = 64
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsFlat
          TabOrder = 1
          DataField = 'LoadNo'
          DataSource = dsLoadHead
          ReadOnly = True
          StyleController = dxEditStyleController1
          StoredValues = 64
        end
        object dxDBLookupEdit1: TdxDBLookupEdit
          Left = 73
          Top = 28
          Width = 160
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsFlat
          TabOrder = 2
          DataField = 'TransporterNo'
          DataSource = dsLoadHead
          ReadOnly = True
          ListFieldName = 'ClientName'
          KeyFieldName = 'ClientNo'
          ListSource = dmsContact.dsClient
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBLookupEdit3: TdxDBLookupEdit
          Left = 73
          Top = 54
          Width = 160
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsFlat
          TabOrder = 3
          DataField = 'LocalLoadingLocationNo'
          DataSource = dsLoadHead
          ReadOnly = True
          ListFieldName = 'CityName'
          KeyFieldName = 'CityNo'
          ListSource = dmsContact.dsCity
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBLookupEdit4: TdxDBLookupEdit
          Left = 73
          Top = 81
          Width = 160
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsFlat
          TabOrder = 4
          DataField = 'LocalDestinationNo'
          DataSource = dsLoadHead
          ReadOnly = True
          ListFieldName = 'CityName'
          KeyFieldName = 'CityNo'
          ListSource = dmsContact.dsCity
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 319
          Top = 28
          Width = 120
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsFlat
          TabOrder = 5
          DataField = 'LoadedDate'
          DataSource = dsLoadHead
          ReadOnly = True
          StyleController = dxEditStyleController1
          StoredValues = 64
        end
        object dxDBEdit9: TdxDBEdit
          Left = 319
          Top = 54
          Width = 122
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsFlat
          TabOrder = 6
          DataField = 'ExternalLoadID'
          DataSource = dsLoadHead
          ReadOnly = True
          StyleController = dxEditStyleController1
          StoredValues = 64
        end
        object dxDBImageEdit1: TdxDBImageEdit
          Left = 319
          Top = 81
          Width = 121
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsFlat
          TabOrder = 7
          DataField = 'SenderLoadStatus'
          DataSource = dsLoadHead
          ReadOnly = True
          Descriptions.Strings = (
            'PLANNED'
            'SHIPPED && PROBLEM'
            'SHIPPED')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            '0'
            '1'
            '2')
          StoredValues = 64
        end
        object Memo1: TMemo
          Left = 552
          Top = 15
          Width = 457
          Height = 106
          BorderStyle = bsNone
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
      end
      object dxTSNote: TcxTabSheet
        Caption = 'Note'
        DesignSize = (
          994
          131)
        object dxDBMemo1: TdxDBMemo
          Left = 5
          Top = 2
          Width = 984
          Style.BorderStyle = xbsFlat
          TabOrder = 0
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'InternalNote'
          DataSource = dsLoadHead
          Height = 62
        end
        object dxDBMemo2: TdxDBMemo
          Left = 5
          Top = 69
          Width = 984
          Style.BorderStyle = xbsFlat
          TabOrder = 1
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'NoteToTransporter'
          DataSource = dsLoadHead
          Height = 61
        end
      end
    end
  end
  object Panel35: TPanel
    Left = 0
    Top = 197
    Width = 996
    Height = 506
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 994
      Height = 504
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 0
      object Panel1: TPanel
        Left = 0
        Top = 220
        Width = 994
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 568
          Top = 9
          Width = 52
          Height = 13
          Caption = 'Lagerplats:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 776
          Top = 9
          Width = 57
          Height = 13
          Caption = 'Lagergrupp:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cmbPhysInv: TComboBox
          Left = 624
          Top = 5
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = cmbPhysInvChange
        end
        object cmbLogicalInv: TComboBox
          Left = 840
          Top = 5
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 254
        Width = 994
        Height = 250
        Align = alClient
        Caption = 'Panel6'
        TabOrder = 1
        object dxDBGrid4: TdxDBGrid
          Left = 1
          Top = 15
          Width = 992
          Height = 234
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'LoadDetailNo'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsLoadRemovedPackages
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dxDBGrid4PkgsRemoved: TdxDBGridCheckColumn
            ReadOnly = True
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PkgsRemoved'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dxDBGrid4ShippingPlanNo: TdxDBGridMaskColumn
            Caption = 'LO'
            ReadOnly = True
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LONo'
          end
          object dxDBGrid4ProductDescription: TdxDBGridMaskColumn
            Caption = 'PRODUKT'
            ReadOnly = True
            Width = 227
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRODUCT'
          end
          object dxDBGrid4PcsPerLength: TdxDBGridMaskColumn
            Caption = 'ANTAL/L'#196'NGD'
            ReadOnly = True
            Width = 153
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PcsPerLength'
          end
          object dxDBGrid4PackageNo: TdxDBGridMaskColumn
            Caption = 'PAKETNR'
            ReadOnly = True
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PACKAGENO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'PACKAGENO'
            SummaryField = 'PACKAGENO'
          end
          object dxDBGrid4SupplierCode: TdxDBGridMaskColumn
            Caption = 'LEV.KOD'
            ReadOnly = True
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SUPP_CODE'
          end
          object dxDBGrid4AktM3: TdxDBGridMaskColumn
            Caption = 'AM3'
            ReadOnly = True
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'M3_NET'
            SummaryFooterType = cstSum
            SummaryFooterField = 'M3_NET'
            SummaryFooterFormat = '#######.000'
            SummaryField = 'M3_NET'
          end
          object dxDBGrid4Pieces: TdxDBGridMaskColumn
            Caption = 'STYCKETAL'
            ReadOnly = True
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PCS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PCS'
            SummaryField = 'PCS'
          end
          object dxDBGrid4M3_NOM: TdxDBGridMaskColumn
            Caption = 'NM3'
            ReadOnly = True
            BandIndex = 0
            RowIndex = 0
            FieldName = 'M3_NOM'
            SummaryFooterType = cstSum
            SummaryFooterField = 'M3_NOM'
            SummaryFooterFormat = '#######.000'
            SummaryField = 'M3_NOM'
          end
          object dxDBGrid4KVM: TdxDBGridMaskColumn
            ReadOnly = True
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KVM'
            SummaryFooterType = cstSum
            SummaryFooterField = 'KVM'
            SummaryFooterFormat = '#######.000'
            SummaryField = 'KVM'
          end
          object dxDBGrid4LOPM: TdxDBGridMaskColumn
            Caption = 'L'#214'PM'
            ReadOnly = True
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LOPM'
            SummaryFooterType = cstSum
            SummaryFooterField = 'LOPM'
            SummaryFooterFormat = '#######.000'
            SummaryField = 'LOPM'
          end
          object dxDBGrid4Problem: TdxDBGridMaskColumn
            Caption = 'PKT.LOG'
            ReadOnly = True
            Visible = False
            Width = 266
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PKGLOG'
          end
          object dxDBGrid4LoadDetailStatus: TdxDBGridMaskColumn
            ReadOnly = True
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LoadDetailStatus'
          end
          object dxDBGrid4PackageOK: TdxDBGridCheckColumn
            Caption = 'PKT.OK'
            ReadOnly = True
            Visible = False
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PKG_OK'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dxDBGrid4RecId: TdxDBGridColumn
            ReadOnly = True
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LoadDetailNo'
          end
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 992
          Height = 14
          Align = alTop
          BevelOuter = bvNone
          Caption = 'FLYTTAS TILL ANGIVET LAGER'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 994
        Height = 220
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel8'
        TabOrder = 2
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 17
          Width = 994
          Height = 203
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'LoadDetailNo'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dmArrivingLoads.ds_LoadPackages
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dxDBGrid2Removed: TdxDBGridCheckColumn
            Caption = 'REMOVE'
            Visible = False
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Removed'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dxDBGrid2LONo: TdxDBGridMaskColumn
            Caption = 'LO'
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LONo'
          end
          object dxDBGrid2PRODUCT: TdxDBGridMaskColumn
            Caption = 'PRODUKT'
            Width = 220
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRODUCT'
          end
          object dxDBGrid2PcsPerLength: TdxDBGridMaskColumn
            Caption = 'ANTAL/L'#196'NGD'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PcsPerLength'
          end
          object dxDBGrid2PACKAGENO: TdxDBGridMaskColumn
            Caption = 'PAKETNR'
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PACKAGENO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'PACKAGENO'
            SummaryField = 'PACKAGENO'
          end
          object dxDBGrid2SUPP_CODE: TdxDBGridMaskColumn
            Caption = 'LEV.KOD'
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SUPP_CODE'
          end
          object dxDBGrid2PCS: TdxDBGridMaskColumn
            Caption = 'STYCKETAL'
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PCS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PCS'
            SummaryField = 'PCS'
          end
          object dxDBGrid2M3_NET: TdxDBGridMaskColumn
            Caption = 'AM3'
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'M3_NET'
            SummaryFooterType = cstSum
            SummaryFooterField = 'M3_NET'
            SummaryFooterFormat = '#######.000'
            SummaryField = 'M3_NET'
          end
          object dxDBGrid2M3_NOM: TdxDBGridMaskColumn
            Caption = 'NM3'
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'M3_NOM'
            SummaryFooterType = cstSum
            SummaryFooterField = 'M3_NOM'
            SummaryFooterFormat = '#######.000'
            SummaryField = 'M3_NOM'
          end
          object dxDBGrid2KVM: TdxDBGridMaskColumn
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KVM'
            SummaryFooterType = cstSum
            SummaryFooterField = 'KVM'
            SummaryFooterFormat = '#######.000'
            SummaryField = 'KVM'
          end
          object dxDBGrid2LOPM: TdxDBGridMaskColumn
            Caption = 'L'#214'PM'
            Width = 36
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LOPM'
            SummaryFooterType = cstSum
            SummaryFooterField = 'LOPM'
            SummaryFooterFormat = '#######.000'
            SummaryField = 'LOPM'
          end
          object dxDBGrid2PKG_OK: TdxDBGridMaskColumn
            Caption = 'PKT.OK'
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PKG_OK'
          end
          object dxDBGrid2PKGLOG: TdxDBGridMaskColumn
            Caption = 'PKT.LOG'
            Width = 137
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PKGLOG'
          end
          object dxDBGrid2LoadDetailNo: TdxDBGridMaskColumn
            Sorted = csUp
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LoadDetailNo'
          end
          object dxDBGrid2PACKAGETYPENO: TdxDBGridMaskColumn
            Visible = False
            Width = 121
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PACKAGETYPENO'
          end
          object dxDBGrid2ProductNo: TdxDBGridMaskColumn
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ProductNo'
          end
          object dxDBGrid2NOOFPKG: TdxDBGridMaskColumn
            Visible = False
            Width = 58
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOOFPKG'
          end
          object dxDBGrid2DefaultCustShipObjectNo: TdxDBGridMaskColumn
            Visible = False
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DefaultCustShipObjectNo'
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 994
          Height = 17
          Align = alTop
          BevelOuter = bvNone
          Caption = 'PAKET'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 996
    Height = 44
    Align = dalTop
    BarManager = dxBarManager22
  end
  object dxEditStyleController1: TdxEditStyleController
    Left = 616
    Top = 176
  end
  object dxMDLoadHead: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterInsert = dxMDLoadHeadAfterInsert
    Left = 536
    Top = 317
    object dxMDLoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object dxMDLoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object dxMDLoadHeadLoadedDate: TDateTimeField
      FieldName = 'LoadedDate'
    end
    object dxMDLoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
    end
    object dxMDLoadHeadExternalLoadID: TStringField
      FieldName = 'ExternalLoadID'
    end
    object dxMDLoadHeadNoteToTransporter: TMemoField
      FieldName = 'NoteToTransporter'
      BlobType = ftMemo
    end
    object dxMDLoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      BlobType = ftMemo
    end
    object dxMDLoadHeadPackageEntryOption: TStringField
      FieldName = 'PackageEntryOption'
    end
    object dxMDLoadHeadTransporterNo: TIntegerField
      FieldName = 'TransporterNo'
    end
    object dxMDLoadHeadLocalLoadingLocationNo: TIntegerField
      FieldName = 'LocalLoadingLocationNo'
    end
    object dxMDLoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
    end
    object dxMDLoadHeadCreatedBy: TStringField
      FieldName = 'CreatedBy'
      Size = 10
    end
    object dxMDLoadHeadModifiedBy: TStringField
      FieldName = 'ModifiedBy'
      Size = 10
    end
    object dxMDLoadHeadLoadCreated: TDateTimeField
      FieldName = 'LoadCreated'
    end
    object dxMDLoadHeadFS: TStringField
      FieldName = 'FS'
    end
    object dxMDLoadHeadOriginalSupplierNo: TStringField
      FieldName = 'OriginalSupplierNo'
    end
    object dxMDLoadHeadLoadModified: TDateTimeField
      FieldName = 'LoadModified'
    end
  end
  object dsLoadHead: TDataSource
    DataSet = dxMDLoadHead
    Left = 536
    Top = 349
  end
  object dxBarManager22: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        BorderStyle = bbsNone
        Caption = 'Custom 1'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 291
        FloatTop = 234
        FloatClientWidth = 78
        FloatClientHeight = 80
        IsMainMenu = True
        ItemLinks = <
          item
            Item = dxBarConfirmLoad
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarLargeButton3
            Visible = True
          end>
        MultiLine = True
        Name = 'Custom 1'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LargeImages = imglOutbar_large
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 216
    Top = 224
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivNever
      LargeImageIndex = 29
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object dxBarConfirmLoad: TdxBarLargeButton
      Action = acAR
      Category = 0
    end
  end
  object dsAvropNr: TDataSource
    DataSet = dmArrivingLoads.mtLoadShippingPlan
    Left = 576
    Top = 349
  end
  object imglOutbar_large: TImageList
    Height = 24
    Width = 24
    Left = 256
    Top = 72
    Bitmap = {
      494C010123002700040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000F000000001002000000000000068
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      00000000000000000000000000008484840042212100FFFFFF000000EF000000
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEBD00DECED6008C94
      E700DEC6CE00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      00004221210042212100424242000000EF00FFFFFF00FFFFFF000000EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD73
      8400F7E7D600F7EFDE00F7E7D600F7E7CE00F7DEC600ADADD600526BEF00294A
      FF00949CDE00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000008463
      6300FFFFFF00FFFFFF000000EF000000EF00FFFFFF0042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600CEC6DE006B84FF002952FF00294AFF002952
      FF00395AFF00DEC6CE00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B5848400000000000000000000000000000000000000EF000000
      EF00FFFFFF00FFFFFF000000EF0084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700C6BDCE00425AF7002942FF00395AFF009CA5DE006B7B
      EF002952FF007384E700F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE
      9400EFCE9400B58484000000000000000000FFFFFF00FFFFFF000000EF000000
      EF0084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      6300426363004263630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B584
      8400F7EFE700FFF7EF00CECEDE004A6BFF00637BF700CEC6DE00F7E7CE00D6CE
      DE00395AFF00315AFF00BDB5DE00F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE
      9C00EFCE9400B58484000000000000000000FFFFFF00FFFFFF0000000000C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      4200000000004263630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7
      CE008C94E7002952FF005273F700EFD6BD00F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100424242000021420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7
      CE00F7E7CE004263FF002952FF009CA5DE00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000000000004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      42004263A5000021420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7
      D600F7E7CE00ADA5DE002952FF004A6BFF00DEC6CE00F7D6B500F7D6AD00F7D6
      AD00EFCEA500B584840000000000000000000000000000000000000000008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A50042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFE700F7EF
      DE00F7E7D600F7E7CE00637BF700294AFF007384E700F7DEBD00F7D6B500F7D6
      AD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF0042638400004284004263A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EF
      E700F7EFDE00F7E7D600C6C6DE00425AF7007B8CEF00EFDED600F7DEBD00F7D6
      B500F7D6AD00B584840000000000000000000000000000000000000000000000
      0000000000004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF004263840000428400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EF
      E700F7EFE700F7EFDE00F7E7D600CEC6D600F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A500A57B840000000000000000000000000000000000000000000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF0042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00EFD6BD00CEBD
      AD00B5AD94009C7B840000000000000000000000000000000000000000000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B730000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
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
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      AD00FFEFD600CE63000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE6300000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE630000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000BD846B00A573
      6300C68C7300C68C7B00B5847300AD8C84009C847B00E7947300E79473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000000000000000000000000000CE846300D69C8400CE94
      7B00E7B59C00DEA58C00BD846B00BD8C7B00C6948400B5847300946B5200946B
      520073422900844A3900844A390084635A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B84
      630052734200319C3100319C3100319C3100319C3100319C3100319C31005263
      4200636B4A007B736300948C8400000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE630000000000000000000000000000BD846300DE9C8C00FFC6
      AD00FFE7C600E7BDA500CE8C7300DE947B00FFAD8C00F7A58400F7A58400F7A5
      8400B5847300A5847B009C7B73007B4A390084635A0000000000000000000000
      000000000000000000000000000000000000000000000000000073AD73001084
      100042CE420021A5210042BD420042BD420042BD420042BD4200107B1000319C
      31003194290021731800319C310021842100736B5A0000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F7006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE630000000000000000000000000000C6846B00DE9C8C00FFB5
      A500FFD6B500E7BDA500D69C8400F7B59400F7B59400C6846B00B56B5200E794
      7B00EFA58C00C6846B00CE7B6300BD846B009C6B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000298C290042CE
      420031AD310042BD42004ABD4A0052C65200B5E7A500399C39008CBD7B00399C
      39009CDE8C0042BD420042CE420042BD42004A42290000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE630000000000000000000000000000C6846B00DE9C8C00F7BD
      A500FFCEAD00EFC6AD00E7C6AD00FFD6BD00DEA58C00CE9C9400EFD6C600EFB5
      9C00E79C7B00E7A58C00E7947300DEA58C00B58C840000000000000000000000
      00000000000000000000000000000000000000000000000000003994390029AD
      290039B539004ABD4A005AC65A009CDE8C0052B5520073B56B00D6E7BD004AA5
      4200B5E7A50052C6520042BD420042CE42002184210000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C00527B
      C6008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE630000000000000000000000000000C6846B00DEA58C00FFBD
      A500FFCEB500EFC6A500DEAD9C00DEB59C00DEAD9400E7CEB500EFEFE700DEBD
      AD00DEAD9400EFBDA500EFB59400E7B59C00B58C7B0000000000000000000000
      00000000000000000000000000000000000000000000000000008CBD8C00299C
      29004ABD4A005AC65A006BCE6B00B5E7A50063A56300F7FFEF00F7FFEF0084BD
      7B00B5E7A50063CE630052C6520042BD42004A6B390000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00E7E7E700317B
      EF00527BC600296BC600F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F7006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000C6846300DEA58C00FFBD
      AD00FFDEBD00DEB59400B5735A00BD735A00F7C6A500E7CEAD00A57B6300DEB5
      9C00FFDEBD00DEBDA500EFC6A500E7BDA500B584730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000398C
      31004ABD4A0063CE6300B5E7A50052A54A00D6E7CE00FFFFFF00FFFFFF0084B5
      84009CDE8C0073CE73005AC65A00319C3100637B520000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00E7E7E700397B
      E700007BFF000073F700527BC600FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7006B6B6B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000BD846B00DEA59400FFC6
      B500FFD6BD00DEB59C00CE9C8400E7B59C00D6AD9400C68C7300C67B6300E7A5
      8C00DEAD9400C68C7B00DE9C7B00DEB59C00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000398C310052B552004A9C42009CB58C00BDC6C600BDC6C600E7DECE0094B5
      7B007BCE7B007BD67B0052B552005A5242005A5242005A5242005A5242005A52
      42005A524200000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C00009CFF00008CFF00008CFF00527BC6008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000C6846300DEA59400FFC6
      B500FFCEB500EFC6AD00E7CEB500FFEFCE00D6A59400D6948400FFD6BD00E7B5
      9C00CE947B00D6948400DE947B00DEAD9400B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A8C420018734A003984AD00217BBD00217BBD00428CAD004284
      630063BD6300399C3900528C4A00292921000000000000000000000000000000
      00005A524200000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFF7EF0000B5FF00008CFF000094FF00527BC600527BC6008C8C8C00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF008C8C8C00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF006B6B6B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6846300E7A59400FFC6
      B500FFD6B500EFCEAD00DEB5A500DEBDA500EFBDA500FFD6BD00F7EFDE00E7C6
      AD00E7B59C00F7C6AD00EFBD9C00DEBDA500B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A849C00187BC600218CE700298CE700298CE700218CE700107B
      B500296B520000000000000000001818180000000000000000000831FF00526B
      BD00524A4200000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFEFD600FFEFD60000B5FF0008C6FF00009CFF00009CFF00527BC600FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000C6846300E7A59400FFCE
      BD00FFE7C600DEB59400B57B6300BD7B6300F7C6A500EFC6A500AD7B6B00DEB5
      9C00FFD6B500FFC69400FFDE9C00FFCEAD00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000217BBD002994EF002994F7003194FF003194FF00319CF7002994
      EF00216B9C00000000000000000029292900000000000831FF00A5ADE7000831
      FF004A424A00000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C0000B5FF0008BDFF0000ADFF00009CFF00527B
      C6008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6846300E7AD9C00FFD6
      C600FFE7C600DEAD9400BD8C7B00DEAD9400E7BD9C00D6A58C00C68C7300FFBD
      8C00CEADAD007384AD008C94AD00CEBDB500CE9C840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000297BAD002994EF00399CFF00399CFF00399CFF00399CFF00399CFF00399C
      FF00298CE700106B9C0000000000181818000831FF0000000000000000004A6B
      E7000831FF00000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00527BC600527BC600527BC60000C6FF0008FFFF0031F7FF0010BDFF0000AD
      FF00527BC600527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE630000000000000000000000000000C6846300E7AD9C00FFD6
      C600FFDEBD00E7C6AD00DEC6B500FFEFCE00DEB5A500D6A59400FFDEBD00FFC6
      8C00948CA500086BE7001063D6009CADC600DEAD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002184C600399CFF0042A5FF0042A5FF0042A5FF0042A5FF0042A5FF0042A5
      FF00399CF700315A6B0000000000424242004242420042424200424239004242
      4A000831FF004A63CE000000000000000000000000008C8C8C00E7E7E7008C8C
      8C0029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FFFF004AEFFF0018CE
      FF0000A5FF00527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      AD00FFEFD600CE630000000000000000000000000000BD846300DEB5A500FFD6
      CE00FFD6BD00F7D6B500E7C6B500DEBDA500EFC6AD00EFCEB500DEC6B500FFC6
      9400B5B5B5004A9CF7005294F700BDB5D600DE9C730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      9C00399CF70042A5FF004AADFF004AADFF006BBDFF006BBDFF004AADFF004AAD
      FF0042A5F700316B840000000000000000000000000000000000000000000000
      0000000000000831FF000831FF004A63CE00000000008C8C8C008C8C8C008C8C
      8C0039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DEFF0000FFFF0000FF
      FF0039EFFF0008C6FF00527BC6008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE630000000000000000000000000000BD846300DEB5A500FFDE
      CE00FFDEC600FFD6B500EFC6A500F7CEAD00E7B59C00F7D6BD00EFDEC600FFE7
      C600E7DECE00A5CEDE00ADC6E700D6CECE00CE94730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006BA5
      C60042A5F7004AADFF004AB5FF006BBDFF0052B5FF006BBDFF0052B5FF006BBD
      FF004AADFF003973940000000000000000000000000000000000000000000000
      000000000000000000006B8CFF000831FF00000000008C8C8C00E7E7E7008C8C
      8C00FFEFD60008C6FF0039E7FF004AEFFF0042F7FF0018FFFF0000FFFF0000FF
      FF0008FFFF0021FFFF00527BC600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE630000000000000000000000000000C6846300DEB5A500FFDE
      D600FFDEC600F7C6A500F7CEAD00EFBD9C00F7CEAD00F7CEAD00F7CEAD00F7D6
      B500EFCEB500E7C6AD00EFD6B500EFD6C600C694840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005294
      BD0042A5EF0052B5FF006BC6FF006BC6FF006BC6FF0052B5F7004AB5EF0052B5
      F70052B5F70039738C00000000005A5242005A5242005A5242005A5242005A52
      42005A524200000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFEFD600FFEFD600FFEFD60031D6FF0008F7FF0000FFFF0000F7FF0000D6
      FF0000B5FF00527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE630000000000000000000000000000C6846300E7B5AD00FFE7
      DE00F7D6BD00E7AD8C00E79C7300F7A58400F7A58400F7A58400DE9C7B00DE9C
      7B00DE9C7B00EFAD8400F7B59400F7CEB500BD9C940000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063A5
      C600217BB500298CCE003194DE003194DE002184C600298CC600318CC6002984
      C6002994CE00106B9C0000000000080808000000000000000000000000000000
      00004242420000000000000000000000000000000000EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C210031D6FF0000F7FF0000EF
      FF0000ADFF0000A5FF00527BC600EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE630000000000000000000000000000C6846300E7BDB500FFEF
      E700F7DEC600EF9C7300EF844A00FF9C6300FFA56300FF9C6300FFA56B00FFA5
      6B00FFA57300FFAD7B00FFA57300EFBDA500BDA5940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      9C002173A500428CC6004A94C6006BADD6007BBDEF0063ADF7004A9CE700398C
      CE00216BA50000000000000000001818180000000000000000000831FF00526B
      BD005A5A5A0000000000000000000000000000000000EF9C2100E7A56300EF9C
      2100E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300EF9C210031D6
      FF0042DEFF0010D6FF005AA5FF00527BC600EF9C2100E7A56300E7A56300E7A5
      6300E7A56300E7A56300EF9C2100000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A56300000000000000000000000000C6846300E7B5AD00FFEF
      E700FFE7CE00EFAD8400E7734200EF7B4200EF7B4200EF7B4200EF844A00EF84
      4A00F78C5200FF8C5200EF7B4200E7A58C00BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002173A500318CC6006BADD6008CBDE7008CBDE70073BDE7005AADDE003994
      C600106B9C00000000000000000029292900000000000831FF00849CFF000831
      FF004A4A520000000000000000000000000000000000EF9C2100FFDEB500EF9C
      2100FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500EF9C2100FFDE
      B500FFDEB50031D6FF0052A5FF00527BC600EF9C2100FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500EF9C210000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B210000000000000000000000000000000000C6846300E7BDB500FFF7
      F700FFF7DE00F7D6B500E7AD8C00E7A57B00E79C7300E7947300DE946B00DE94
      6B00E78C6300F78C5A00E7845200E7B59400CEA5940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000428CB5004294C6006BADD6009CCEE7008CBDE7004294BD00106B
      9C00000000000000000000000000181818000831FF0000000000000000004A6B
      E7000831FF0000000000000000000000000000000000EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE846300F7D6CE00FFFF
      FF00FFFFF700FFFFDE00FFFFDE00FFFFDE00FFF7DE00FFFFDE00FFF7DE00FFF7
      DE00FFDEC600F7CEAD00FFD6B500FFEFD600DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BA5BD004A94B500529CBD004A8CAD0063849C000000
      0000000000000000000000000000292929004242420042424200424242003139
      52000831FF004A63CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEB59C00F7E7
      DE00F7E7CE00F7E7CE00F7EFD600F7EFDE00F7F7DE00F7EFDE00F7EFD600F7F7
      DE00F7EFD600F7E7D600FFFFDE00FFF7DE00DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000831FF000831FF004A63CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BD
      AD00E7C6B500E7C6B500E7C6BD00E7CEC600EFD6C600E7CEBD00DEC6B500EFD6
      C600F7EFD600FFF7DE00FFFFE700F7EFD600DEB5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B8CFF000831FF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFD6
      AD00FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFD6
      AD00FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEB500FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEB500FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFE7
      C600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFE7
      C600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7
      C600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7
      C600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEF
      D600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEF
      D600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      AD00FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE63000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE63000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00CE63000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE63000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000B5AD
      5A00CEAD2900CEAD29009CA529007B9C29005294290039943100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5B5
      630084F78400A5F79C00E7EFA500FFDE8C00FFD67300FFC64200DEAD21009C9C
      21007B942100528C2100398C3100429C42000000000000000000000000000000
      00000000000000000000000000000000000000000000B5735200C64A2900C642
      1800C6422100CE4A2100CE4A2900C64A2900C64A2900C64A29008C5242008473
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      6300FFFFFF00FFFFFF00A5F79C0084EF7B0084EF7B007BEF630063EF5200CEEF
      8C00F7DE7B00FFD66300FFCE4A00DEAD2100638C210000000000000000000000
      00000000000000000000000000000000000000000000C64A2900D64A2900F763
      4A00F7634A00FF7B6300FF7B6300EF634A00C6633100E75A3900EF5A4200C64A
      29008C4A290063735A00527B52002184210021842100319C3100319C3100319C
      31007BAD63007BAD63005A735A00000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5B5
      630084F7840084EF7B009CF78C00DEEF8400FFDE4A00F7DE5200B5DE4A00B5EF
      63008CEF5A0084EF630084EF630084EF5A00528C180000000000000000000000
      00000000000000000000000000000000000000000000CE4A2100F7634A00F763
      4A00FF7B6300FF7B6300FF8C6B00D66B4200EFC69400D66B4200FF8C6B00F763
      4A00D64A29005A7B210042AD420021842100319C31009CDE8C009CDE8C005AD6
      5A005AD65A0042CE42005AA55A00000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      6300FFFFFF00FFFFFF00F7FFDE00DEDE5200A5BD21009CB518008CBD1000B5C6
      2100CEC62100F7CE3100FFDE4A00FFDE5A008C9C2100529C3100399431003994
      390052AD520000000000000000000000000000000000CE4A2100F7634A00FF7B
      6300FF7B6300FF8C6B00DE6B4200EFB58400FFDEAD00DE7B4A00FF8C6B00FF8C
      6B00E75A39007B8C390052B5520084BD730063AD5A00B5E7A5009CDE8C008CDE
      73005AD65A005AD65A005AA55A0000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5B5
      630084EF7B0084EF7B008CEF7B00CED62900B5BD2100B5B52100A5B52100BDB5
      2900B5B521009CAD18009CAD18009CB51800B5AD2100E7CE4200F7CE4200E7CE
      4200A5BD390000000000000000000000000000000000D6846300EF634A00FF7B
      6300FF8C6B00E77B5200DE8C5A00FFD69C00FFD6A500DE8C5A00FF8C6B00FF8C
      6B00E75A39005AD65A0052B55200C6DEB500D6E7C6004AA54A00B5E7A5009CDE
      8C008CDE73005AD65A005AA55A0000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      630042636300000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      630042636300000000000000000000000000000000000000000000000000A5B5
      6300FFFFFF00FFFFFF00FFF7BD00F7CE3900BDC62100A5BD18008CB510009CB5
      18009CB518009CB510009CAD1800A5B52100A5941000A5AD3100A5AD3100B5AD
      3900E7CE42000000000000000000000000000000000000000000D66B4A00EF7B
      5A00EF7B5A00D66B4200DE9C8400DEA58C00FFBD8C00E78C5A00EF7B5A00FF8C
      6B00B56B310073D673005AAD5A00EFF7E700FFFFFF00A5CEA5005AB55A00B5E7
      A5009CDE8C009CDE8C005AA55A0000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      420042636300848484000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      420042636300848484000000000000000000000000000000000000000000A5B5
      63008CF78C0084EF7B00A5DE4A00BDC62100A5C61800A5C61800A5BD1800CEC6
      2100DEC62900CEBD2100BDBD2100A5B51800A5A51000B5B53100B5AD3100CEBD
      3900A5C64200000000000000000000000000000000000000000000000000A563
      42008C31180042215A00292994002929940042317300A5524A00C65A31009463
      210073D6730073D673005AA55A00FFF7E700FFF7E700F7EFDE007BAD63009CDE
      8C009CDE8C005AA55A0000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100846363000021420000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      210084636300002142000000000000000000000000000000000000000000A5B5
      6300B5FFB500DEFFCE00FFDE5A00F7CE3100E7CE3100CEC62100A5C61000B5C6
      1800A5BD1800A5BD1000A5BD10009CB51000A5A51000BDBD3100BDB53100E7CE
      42007BB5520000000000000000000000000000000000000000004A4A4A003131
      310008080800001039001031940010319400103194002929940063525A007BA5
      7B004AA54A0063BD63005A9C520094ADB5004A8CB500428CB5006394A5003184
      39005AA55A00000000000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000000000000000000000000000A5B5
      6300FFFFFF00B5EF8C00CED62900CECE1800BDCE1800B5C61000A5C61000BDCE
      1800CEC62100DEC62900DEC62900DEC62900BDAD1800CEC63100CEC63100E7CE
      42007BBD7300000000000000000000000000000000007B7B7B00313131000808
      080008214A00103994001842AD001842AD001842AD0010399C00292994000000
      0000000000008CBD9400187B7B002184D600218CDE00218CDE002184D6001073
      9C005A7373000000000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A50042424200000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A5004242420000000000000000000000000000000000A5B5
      63008CF78C00B5EF6300E7D62900F7D63100FFD63100F7D62100DECE2100F7CE
      2900DECE2100BDCE1800B5C61000B5C61000BDAD1000DECE3100E7CE3900A5C6
      420000000000000000000000000000000000000000004A4A4A00181818000810
      1800184AA5001852BD00185ABD00185ABD00185ABD001852BD0010318C00737B
      8C000000000000000000298CE7003194F7003194F7003194F7003194F7002994
      EF002173A5000000000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A50042424200000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A5004242420000000000000000000000000000000000B5B5
      6300FFFFFF00FFE77300E7DE3900DEDE2900CED62900CED61800BDCE1000CECE
      1800CECE1800BDCE1800CECE1800DECE2100DEB51000E7CE3100F7D6420084B5
      4A00000000000000000000000000000000000000000031313100212121001021
      3100185ABD00216BCE00216BCE00216BCE00216BCE002163CE00104AAD005A63
      840000000000529CCE00399CFF0052A5FF0052A5FF0039A5FF00399CFF00399C
      FF002994EF00426B7B000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000000000000000000A5B5
      63008CEF7B00CEDE3100CEDE3100DEDE3100E7DE3900E7DE3100DED62100FFD6
      3100FFD63100FFD62900F7D62100DECE1800DEBD1000F7CE3100F7D642007BBD
      6300000000000000000000000000000000000000000029292900313131002121
      2100216BC600297BDE00297BE7002984E700297BE700297BDE001863C6004A5A
      840000000000429CDE0042A5FF0042ADFF0042ADFF0042ADFF0042A5FF0042A5
      FF0039A5FF002973A5000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000000000000000000B5B5
      6300FFF7BD00FFDE4A00FFE76300F7DE5200E7DE4200DEDE3100BDDE2100CED6
      2900CED62900CED62100CED61800CECE1800E7C61000FFDE3900B5C642000000
      0000000000000000000000000000000000000000000031313100393939002929
      2900185ABD00298CF7005AADFF005AADFF00429CFF00298CF700216BCE00526B
      8C000000000042A5E7004AADFF006BBDFF006BBDFF006BBDFF006BBDFF004AAD
      FF0042A5FF00529CC6000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000000000000000000A5B5
      6300A5DE4A00CEDE4200CEE75200CEE74A00CEDE4200CEDE3900CEDE3100E7DE
      4200F7DE4200FFDE4200FFDE3900FFD63100F7C61800FFDE420084BD4A000000
      0000000000000000000000000000000000000000000031313100424242004A4A
      4A0018294200185ABD00297BDE00428CEF00429CFF003194F700216BC6007384
      9400000000004AA5E7006BBDFF006BC6FF006BC6FF006BC6FF006BC6FF0052B5
      FF004AADFF003194DE00000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000000000000000000000000000000000B5B5
      5A00FFDE6300FFE77B00FFEF8400FFE77B00FFE77300F7E75A00DEDE4A00E7E7
      4A00DEDE4200CEDE3100CEDE3100CED62900DEC62100F7D642007BBD63000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
      4A005A5A5A00525252003131420010215A0029299400292994004A4A4A000000
      00000000000052ADDE006BBDFF0042A5DE0042A5DE004AB5F7006BBDFF006BBD
      FF004AADF7002184BD0000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000000000000B5B5
      5A00DEDE3900CEEF7300CEEF7300CEEF6300CEEF5A00CEE75200B5DE4A00CEE7
      4A00CEDE4200DEDE4200DEDE4200E7DE4200F7CE2900BDCE4200000000000000
      0000000000000000000000000000000000000000000000000000393939005A5A
      5A006B6B6B009C9C9C00A5A5A5009C9C9C004A4A4A00313131004A4A4A000000
      000000000000529CC600187BB5003994C6004A9CCE00429CCE003194CE00298C
      CE002984BD00106B9C0000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000B5B5
      5A00FFE77B00FFF7A500FFF7A500FFF79C00FFF79C00F7EF8C00E7EF6300FFE7
      7B00FFE77B00F7E76300F7E75A00DEDE4200E7CE31008CBD4A00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B004242
      42007B7B7B007B7B7B009C9C9C009C9C9C005A5A5A0039393900000000000000
      00000000000000000000318CBD005AA5D6006BB5DE0094C6E700ADD6EF0073B5
      D600318CB500529CC60000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000B5B5
      5A00CEC6520042739400F7EFA500B5CE840042739400F7EF9C0084C67300BDDE
      8400FFEF8400BDDE8400FFEF8400FFE77B00E7CE31007BB55A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636363004A4A4A00424242004A4A4A007B7B7B0000000000000000000000
      000000000000000000008CBDD6005AA5D6008CC6E70094C6E7007BBDE70052A5
      D600529CC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      4A00B5AD5A00739CA5009CC67300CECE730063ADC600CED684009CC67B004273
      9400DED67B0042739400BDBDB500CECE73004273940094A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CC6DE008CBDD60094C6DE0084B5D6008CBD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BADBD0052C6D600A5ADBD00849CA5004AA5B500847B840094848C00529C
      AD00A57B84008C949C007B94A500C68484006B94A50000000000000000000000
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
      000039BDD600000000000000000039BDD600000000000000000039BDD6000000
      000039BDD600000000000000000039BDD6000000000000000000000000000000
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
      00000000000000000000AD632900000000000000000000000000000000000000
      0000AD632900000000000000000000000000000000000000000000000000AD63
      2900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD632900000000000000000000000000000000000000
      0000AD632900000000000000000000000000000000000000000000000000AD63
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD7B4200000000000000000000000000000000000000
      0000BD7B4200000000000000000000000000000000000000000000000000BD7B
      4200000000000000000000000000000000000000000000000000AD632900AD63
      2900AD632900AD632900AD632900AD632900AD632900AD632900AD632900AD63
      2900AD632900AD632900AD632900AD632900AD632900AD632900AD632900AD63
      2900AD632900AD632900AD632900000000000000000000000000AD632900AD63
      2900AD632900AD632900AD632900AD632900AD632900AD632900AD632900AD63
      2900AD632900AD632900AD632900AD632900AD632900AD632900AD632900AD63
      2900AD632900AD632900AD632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD7B4200BD7B
      4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B
      4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B
      4200BD7B4200BD7B4200BD7B4200000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      000000000000B56B3100B56B3100B56B31005A42310000000000000000005A8C
      AD005A8CAD005A8CAD005A8CAD0000000000000000004A319C004A319C004A31
      9C004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000B56B3100B56B3100B56B31005A42310000000000000000005A8C
      AD005A8CAD005A8CAD005A8CAD0000000000000000004A319C004A319C004A31
      9C004A319C000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000CE9452000000
      000000000000C6844A00C6844A00C6844A00735A4A00000000000000000073A5
      BD0073A5BD0073A5BD0073A5BD000000000000000000634AAD00634AAD00634A
      AD00634AAD0000000000000000000000000000000000AD632900C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C0000000000000000000000000000000000AD632900C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000BD7B4200CE9452000000
      000000000000CE8C4A00CE8C4A00CE8C4A00735A4A0000000000000000006BDE
      FF006BDEFF006BDEFF0073A5BD0000000000000000007363C6007363C6007363
      C600634AAD000000000000000000000000000000000000000000C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000CE9452000000
      000000000000CE8C4A00CE8C4A00CE8C4A00735A4A0000000000000000006BDE
      FF006BDEFF006BDEFF0073A5BD0000000000000000007363C6007363C6007363
      C600634AAD000000000000000000000000000000000000000000C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000CE9452000000
      000000000000CE8C4A00CE8C4A00CE8C4A00735A4A0000000000000000006BDE
      FF006BDEFF006BDEFF0073A5BD0000000000000000007363C6007363C6007363
      C600634AAD000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00C6733100D68C4A00AD63290000000000000000005AEF
      FF005AEFFF0052D6FF005A8CAD000000000000000000846BE7005A4AB500846B
      E7004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00C6733100D68C4A00AD63290000000000000000005AEF
      FF005AEFFF0052D6FF005A8CAD000000000000000000846BE7005A4AB500846B
      E7004A319C000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000CE9452000000
      000000000000DEA56300CE8C4A00DEA56300BD7B4200000000000000000073EF
      FF0073EFFF006BDEFF0073A5BD0000000000000000009C84E7007363C6009C84
      E700634AAD000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00AD63290000000000000000005AEF
      FF005AEFFF005AEFFF005A8CAD000000000000000000846BE700846BE700846B
      E7004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00AD63290000000000000000005AEF
      FF005AEFFF005AEFFF005A8CAD000000000000000000846BE700846BE700846B
      E7004A319C0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000DEA56300DEA56300DEA56300BD7B4200000000000000000073EF
      FF0073EFFF0073EFFF0073A5BD0000000000000000009C84E7009C84E7009C84
      E700634AAD0000000000000000000000000000000000AD632900C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00AD63290000000000000000005AEF
      FF005AEFFF005AEFFF005A9CA5000000000000000000846BE700846BE700846B
      E7005A4AB50000000000000000000000000000000000AD632900C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00AD63290000000000000000005AEF
      FF005AEFFF005AEFFF005A9CA5000000000000000000846BE700846BE700846B
      E7005A4AB5000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000BD7B4200CE9452000000
      000000000000DEA56300DEA56300DEA56300BD7B4200000000000000000073EF
      FF0073EFFF0073EFFF0073ADB50000000000000000009C84E7009C84E7009C84
      E7007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00FFC67300D68C4A00AD63290000000000000000005AF7
      F7005AF7F7005AEFFF0073A5AD000000000000000000846BE700846BE700846B
      E7005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00FFC67300D68C4A00AD63290000000000000000005AF7
      F7005AF7F7005AEFFF0073A5AD000000000000000000846BE700846BE700846B
      E7005A4AB50000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000CE9452000000
      000000000000DEA56300FFCE8C00DEA56300BD7B4200000000000000000073F7
      F70073F7F70073EFFF008CB5BD0000000000000000009C84E7009C84E7009C84
      E7007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFC67300FFC67300AD63290000000000000000005AF7
      F7005AF7F7005AF7F70073A5AD000000000000000000846BE700846BE700846B
      E7005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFC67300FFC67300AD63290000000000000000005AF7
      F7005AF7F7005AF7F70073A5AD000000000000000000846BE700846BE700846B
      E7005A4AB5000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000CE9452000000
      000000000000FFCE8C00FFCE8C00FFCE8C00BD7B4200000000000000000073F7
      F70073F7F70073F7F7008CB5BD0000000000000000009C84E7009C84E7009C84
      E7007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFC67300FFC67300AD632900000000000000000063F7
      FF0063F7FF0063F7FF0073A5AD0000000000000000008473EF00846BE7008473
      EF005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFC67300FFC67300AD632900000000000000000063F7
      FF0063F7FF0063F7FF0073A5AD0000000000000000008473EF00846BE7008473
      EF005A4AB5000000000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000FFCE8C00FFCE8C00FFCE8C00BD7B420000000000000000007BF7
      FF007BF7FF007BF7FF008CB5BD0000000000000000009C8CEF009C84E7009C8C
      EF007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFD69C00FFC67300B56B3100000000000000000063F7
      FF0063F7FF0063F7FF0073A5AD0000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFD69C00FFC67300B56B3100000000000000000063F7
      FF0063F7FF0063F7FF0073A5AD0000000000000000008473EF008473EF008473
      EF005A4AB500000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000FFCE8C00FFDEAD00FFCE8C00C6844A0000000000000000007BF7
      FF007BF7FF007BF7FF008CB5BD0000000000000000009C8CEF009C8CEF009C8C
      EF007363C60000000000000000000000000000000000AD632900C67B39000000
      000000000000FFD69C00FFD69C00FFD69C00B56B3100000000000000000052D6
      FF0073A5AD0073A5AD0073A5AD0000000000000000008473EF008473EF008473
      EF005A4AB50000000000000000000000000000000000AD632900C67B39000000
      000000000000FFD69C00FFD69C00FFD69C00B56B3100000000000000000052D6
      FF0073A5AD0073A5AD0073A5AD0000000000000000008473EF008473EF008473
      EF005A4AB50000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000BD7B4200CE9452000000
      000000000000FFDEAD00FFDEAD00FFDEAD00C6844A0000000000000000006BDE
      FF008CB5BD008CB5BD008CB5BD0000000000000000009C8CEF009C8CEF009C8C
      EF007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000FFD69C00F7E7A500FFD69C00B56B310000000000000000000000
      000000000000000000000000000000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000FFD69C00F7E7A500FFD69C00B56B310000000000000000000000
      000000000000000000000000000000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000CE9452000000
      000000000000FFDEAD00F7E7B500FFDEAD00C6844A0000000000000000000000
      000000000000000000000000000000000000000000009C8CEF009C8CEF009C8C
      EF007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000F7E7A500F7E7A500F7E7A500D68C4A0000000000000000000000
      000000000000000000000000000000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000F7E7A500F7E7A500F7E7A500D68C4A0000000000000000000000
      000000000000000000000000000000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000F7E7B500F7E7B500F7E7B500DEA5630000000000000000000000
      000000000000000000000000000000000000000000009C8CEF009C8CEF009C8C
      EF007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00D68C4A0000000000000000000000
      000000000000000000000000000000000000000000005A4AB5005A4AB5005A4A
      B5005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00D68C4A0000000000000000000000
      000000000000000000000000000000000000000000005A4AB5005A4AB5005A4A
      B5005A4AB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000DEA56300DEA56300DEA56300DEA5630000000000000000000000
      000000000000000000000000000000000000000000007363C6007363C6007363
      C6007363C6000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD632900C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD632900C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C6000000000000000000BD7B4200CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9452000000
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
      0000000000000000000000000000000000000000000000000000BD846B00A573
      6300C68C7300C68C7B00B5847300AD8C84009C847B00E7947300E79473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE846300D69C8400CE94
      7B00E7B59C00DEA58C00BD846B00BD8C7B00C6948400B5847300946B5200946B
      520073422900844A3900844A390084635A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE6300000000000000000000000000000000000000000000A54A
      0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A
      0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A
      0000A54A0000A54A000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD846300DE9C8C00FFC6
      AD00FFE7C600E7BDA500CE8C7300DE947B00FFAD8C00F7A58400F7A58400F7A5
      8400B5847300A5847B009C7B73007B4A390084635A0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000000000000639C
      9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C
      9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C
      9C00639C9C00A54A000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6846B00DE9C8C00FFB5
      A500FFD6B500E7BDA500D69C8400F7B59400F7B59400C6846B00B56B5200E794
      7B00EFA58C00C6846B00CE7B6300BD846B009C6B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFD6
      AD00FFD6A500CE63000000000000000000000000000000000000316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300639C9C00A54A000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      00000000000000000000000000000000000000000000C6846B00DE9C8C00F7BD
      A500FFCEAD00EFC6AD00E7C6AD00FFD6BD00DEA58C00CE9C9400EFD6C600EFB5
      9C00E79C7B00E7A58C00E7947300DEA58C00B58C840000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000000000006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      630031636300A54A00000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      00000000000000000000000000000000000000000000C6846B00DEA58C00FFBD
      A500FFCEB500EFC6A500DEAD9C00DEB59C00DEAD9400E7CEB500EFEFE700DEBD
      AD00DEAD9400EFBDA500EFB59400E7B59C00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEB500FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000639C9C009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE00639C9C00639C9C009C9C
      9C0031636300A54A00000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      63004263630000000000000000000000000000000000C6846300DEA58C00FFBD
      AD00FFDEBD00DEB59400B5735A00BD735A00F7C6A500E7CEAD00A57B6300DEB5
      9C00FFDEBD00DEBDA500EFC6A500E7BDA500B584730000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE6300000000000000000000000000000000000000000000639C
      9C009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE0031636300A54A00000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      42004263630084848400000000000000000000000000BD846B00DEA59400FFC6
      B500FFD6BD00DEB59C00CE9C8400E7B59C00D6AD9400C68C7300C67B6300E7A5
      8C00DEAD9400C68C7B00DE9C7B00DEB59C00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      21008463630000214200000000000000000000000000C6846300DEA59400FFC6
      B500FFCEB500EFC6AD00E7CEB500FFEFCE00D6A59400D6948400FFD6BD00E7B5
      9C00CE947B00D6948400DE947B00DEAD9400B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFE7
      C600FFE7C600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A00000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      42004221210000426300424242000000000000000000C6846300E7A59400FFC6
      B500FFD6B500EFCEAD00DEB5A500DEBDA500EFBDA500FFD6BD00F7EFDE00E7C6
      AD00E7B59C00F7C6AD00EFBD9C00DEBDA500B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7
      C600FFE7C600CE6300000000000000000000000000000000000000000000639C
      9C00B5DEDE00B5DEDE00B5DEDE0063009C0063319C0063319C0063319C006331
      9C00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE009CCE
      CE0063636300A54A000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A500424242000000000000000000C6846300E7A59400FFCE
      BD00FFE7C600DEB59400B57B6300BD7B6300F7C6A500EFC6A500AD7B6B00DEB5
      9C00FFD6B500FFC69400FFDE9C00FFCEAD00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEF
      D600FFE7C600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF0063319C00FFCEFF00FFCEFF00FFCEFF006331
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A500424242000000000000000000C6846300E7AD9C00FFD6
      C600FFE7C600DEAD9400BD8C7B00DEAD9400E7BD9C00D6A58C00C68C7300FFBD
      8C00CEADAD007384AD008C94AD00CEBDB500CE9C840000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF0063319C00FFCEFF00FFCEFF00FFCEFF006331
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A00000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      84000021840000218400424242000000000000000000C6846300E7AD9C00FFD6
      C600FFDEBD00E7C6AD00DEC6B500FFEFCE00DEB5A500D6A59400FFDEBD00FFC6
      8C00948CA500086BE7001063D6009CADC600DEAD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000639C
      9C00B5DEDE00B5DEDE00B5DEDE0063319C0063319C0063319C0063319C006331
      9C00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE009CCE
      CE0063636300A54A00000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      84000021840042424200424242000000000000000000BD846300DEB5A500FFD6
      CE00FFD6BD00F7D6B500E7C6B500DEBDA500EFC6AD00EFCEB500DEC6B500FFC6
      9400B5B5B5004A9CF7005294F700BDB5D600DE9C730000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFF7
      EF00FFEFD600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A00000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      42004242420000000000000000004200210000000000BD846300DEB5A500FFDE
      CE00FFDEC600FFD6B500EFC6A500F7CEAD00E7B59C00F7D6BD00EFDEC600FFE7
      C600E7DECE00A5CEDE00ADC6E700D6CECE00CE94730000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A0000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      00000000000042424200424242004242420000000000C6846300DEB5A500FFDE
      D600FFDEC600F7C6A500F7CEAD00EFBD9C00F7CEAD00F7CEAD00F7CEAD00F7D6
      B500EFCEB500E7C6AD00EFD6B500EFD6C600C694840000000000000000000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00CE6300000000000000000000000000000000000000000000639C
      9C009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE0031636300A54A000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A50000000000C6846300E7B5AD00FFE7
      DE00F7D6BD00E7AD8C00E79C7300F7A58400F7A58400F7A58400DE9C7B00DE9C
      7B00DE9C7B00EFAD8400F7B59400F7CEB500BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000000000003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      630031636300CE63000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A50000000000C6846300E7BDB500FFEF
      E700F7DEC600EF9C7300EF844A00FF9C6300FFA56300FF9C6300FFA56B00FFA5
      6B00FFA57300FFAD7B00FFA57300EFBDA500BDA5940000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE6300000000000000000000000000000000000000000000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A50000000000C6846300E7B5AD00FFEF
      E700FFE7CE00EFAD8400E7734200EF7B4200EF7B4200EF7B4200EF844A00EF84
      4A00F78C5200FF8C5200EF7B4200E7A58C00BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000000000000000000000000000000000000000000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A50000000000C6846300E7BDB500FFF7
      F700FFF7DE00F7D6B500E7AD8C00E7A57B00E79C7300E7947300DE946B00DE94
      6B00E78C6300F78C5A00E7845200E7B59400CEA5940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A5
      6300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A5
      6300E7A56300CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000424242004242420000000000CE846300F7D6CE00FFFF
      FF00FFFFF700FFFFDE00FFFFDE00FFFFDE00FFF7DE00FFFFDE00FFF7DE00FFF7
      DE00FFDEC600F7CEAD00FFD6B500FFEFD600DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242000000000000000000DEB59C00F7E7
      DE00F7E7CE00F7E7CE00F7EFD600F7EFDE00F7F7DE00F7EFDE00F7EFD600F7F7
      DE00F7EFD600F7E7D600FFFFDE00FFF7DE00DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BD
      AD00E7C6B500E7C6B500E7C6BD00E7CEC600EFD6C600E7CEBD00DEC6B500EFD6
      C600F7EFD600FFF7DE00FFFFE700F7EFD600DEB5A50000000000000000000000
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
      0000000000000031DE000031DE00000000000000000000000000000000000000
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
      00000031DE000031DE000031DE00000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE6300000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000000
      000084E7E7000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE6300000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000000
      000084E7E70084E7E70084E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7E70084E7E70084E7E70084E7E7000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE6300000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E700000000000000000084E7E70084E7E70084E7E70000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000000000000000000084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E7000000000084E7E70084E7E70084E7E70084E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E700000000000000000084E7E70084E7E70084E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E7000000000084E7E70084E7
      E70084E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7E70084E7E70084E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC6000000000000000000000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B5000000000000000000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E700000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000FFFFFF00000000000000000084E7E70000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E700000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70084E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E7000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E70000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E7000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000000000000000000031FF000031FF000031
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
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      940000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      630042636300000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      6300426363000000000000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009494
      940000000000000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      630042636300000000000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      420042636300848484000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      4200426363008484840000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      940000000000000000000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      4200426363008484840000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100846363000021420000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100846363000021420000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9C00000000000000000000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      210084636300002142000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000000000000000000000000000A5A5
      A500FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C
      2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00A5A5
      A50000000000000000000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      4200422121000042630042424200000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A50042424200000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A5004242420000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C
      2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A50042424200000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A50042424200000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A5004242420000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A5004242420000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000000000000000000ADAD
      AD00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C
      2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00ADAD
      AD0000000000000000000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      840000218400002184004242420000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000000000000000000ADAD
      AD00E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C
      2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700ADAD
      AD0000000000000000000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      840000218400424242004242420000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000000000000000000ADAD
      AD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100E7E7E700ADAD
      AD0000000000000000000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      42004242420000000000000000004200210000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADB5
      B5000000000000000000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      0000000000004242420042424200424242000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A5000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A5000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200424242000000000000000000000000000000
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
      0000000000000000000000000000424242000000000000000000000000000000
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
      2800000060000000F00000000100010000000000400B00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFE00003FFFFFF000000FFFFFFE0
      0003FFFFFF000000FF1FFFE00003FF8FFF000000F8000FE000037E0FFF000000
      E0000FE00003700FFF000000C0000FE0000360007F000000C0000FE000034000
      7F000000C0000FE00003000023000000C0000FE00003200003000000C0000FE0
      0003E00001000000C0000FE00003E00001000000C0000FE00003E00001000000
      C0000FE00003F80001000000C0000FE00003F80001000000C0000FE00003F800
      01000000C0000FE00003F80001000000C0000FE00003FC0001000000C0000FE0
      0003FE0001000000E0000FE00003FF8001000000F8000FE00007FFE007000000
      FE1FFFE0000FFFF81F000000FFFFFFE0001FFFFE7F000000FFFFFFE0003FFFFF
      FF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC00003C00003FFFFFFFFFFFFC00003C000038000FF8000FF
      C00003C0000380007F80007FC00003C0000380003F80003FC00003C000038000
      1F80001FC00003C0000380000F80000FC00003C00003800007800007C00003C0
      0003800003800003C00003C00003800001800001C00003C00003800001800001
      C00003C00003800001800001C00003C00003800001800001C00003C000038000
      01800001C00003C00003C00001C00001C00003C00003E00001E00001C00003C0
      0003F00001F00001C00003C00003F80001F80001C00003C00003FC0001FC0001
      E00007E00007FE0001FE0001FFFFFFFFFFFFFF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
      1FFFFFFFFFFFFFFFC000038000FFE001FF800001C0000380007FC0007F800001
      C0000380007FC0007F800001C0000380007FC0007F800001C0000380007FC000
      7F800001C0000380007FE0007F800001C0000380007FF00007800001C0000380
      007FF800F7800001C0000380007FF806C7800001C0000380007FF80687800001
      C0000380007FF00267800001C0000380007FF00203800001C0000380007FE003
      F8800001C0000380007FE003FC800001C0000380007FE00207800001C0000380
      007FE002F7800001C0000380007FE006C7800001C0000380007FF00687800001
      E0000780007FF80E67800001FFFFFF80007FFC1E03FFFFFFFFFFFFC0007FFFFF
      F8FFFFFFFFFFFFE0007FFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC00003C00003C00003C00003C00003C00003C00003C00003
      C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003C000
      03C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003C0
      0003C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003
      C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003C000
      03C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003C0
      0003C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003
      E00007E00007E00007E00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE03FFFFFFFFFFF9FFFFF9FFFE000FF800FFFFE0FFFFE0FFFE0007F
      800001F00FFFF00FFFE0007F800001E0007FE0007FE00007800001C0007FC000
      7FE00007800001C00027C00027E00007C00001400003400003E00007E0000320
      0003200003E00007C00007000001000001E00007801807000001000001E0000F
      800C07000001000001E0000F800803800001800001E0000F8008039800019800
      01E0001F800803980001980001E0001F800803C00001C00001E0001F801803F0
      0001F00001E0003FC01803FD0001FD0001E0003FC03C03FD6007FD6007E0003F
      F07C07FF781FFF781FE0003FFFFE0FFF7E7FFF7E7FF0007FFFFFFFFFFFFFFFFF
      FFF6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7EFFD
      F7EFFFFFFFFDF7EFC00001C00001FFFFFFC00001DFFFFFDFFFFF8000FFDFFFFF
      DFFFFFDFFFFF80007FDFFFFFD86187D8618780003FD861879861879861878000
      1F986187D86187D8618780000FD86187D86187D86187800007D86187D86187D8
      6187800003D86187D86187D86187800001D86187986187986187800001986187
      D86187D86187800001D86187D86187D86187800001D86187D86187D861878000
      01D86187D86187D86187C00001D86187986187986187E00001986187D87F87D8
      7F87F00001D87F87D87F87D87F87F80001D87F87D87F87D87F87FC0001D87F87
      DFFFFFDFFFFFFE0001DFFFFF9FFFFF9FFFFFFF00019FFFFFDFFFFFDFFFFFFFFF
      FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC01FFFFFFFFFFFFFFFFF9FFF8000FFC00003E00003FE0FFF80007FC00003
      E00003F00FFF80007FC00003C00003E0007F80007FC00003C00003C0007F8000
      7FC00003C00003C0002780007FC00003E0000340000380007FC00003E0000320
      000380007FC00003E0000300000180007FC00003E0000300000180007FC00003
      E0000300400180007FC00003E0000380600180007FC00003E000039838018000
      7FC00003E00003981C0680007FC00003E00003C00E1880007FC00003E00003F0
      0FE080007FC00003E00003FD0FE080007FC00003E00003FD7FE080007FC00003
      E00003FF7FF880007FE00007F00003FF7FFC80007FFFFFFFFFFFFFFFFFFEC000
      7FFFFFFFFFFFFFFFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFFFFFFFFFFFFFFFFFF1C00003FFFFFF8000FFC7FFE3C00003FFFFFF
      80007FC3FF87C000038007FF80003FC1FF0FC000038001FF80001FE0FE1FC000
      038000FF80000FF07C3FC0000380007F800007FC307FC0000380001F800003FE
      00FFC00003C0000F800001FF01FFC00003E00007800001FF83FFC00003F80001
      800001FF01FFC00003E00000800001FE00FFC00003C00000800001FC187FC000
      03C00000C00001F83C3FC00003C00000E00001F07F1FC00003E00000F00001E0
      FF8FC00003FFFE00F80001C1FFEFC00003FFFF00FC000183FFFFC00003FFFFC0
      FE000187FFFFE00007FFFFF0FF00018FFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE0000FFFFFFFFF9FFFFF9FFFE0000FFF9FFFFE0FFFFE0FFFE0000FFE0FFF
      F00FFFF00FFFE0000FF00FFFE0007FE0007FE0000FE0007FC0007FC0007FE000
      0FC0007FC00027C00027E0000FC00027400003400003E0000F40000320000320
      0003E0000F200003000001000001E0000F000001000001000001E0000F000001
      000001000001E0000F004001800001800001E0000F806001980001980001E000
      0F983801980001980001E0000F981C06C00001C00001E0000FC00E18F00001F0
      0001E0000FF00FE0FD0001FD0001E0000FFD0FE0FD6007FD6007E0000FFD7FE0
      FF781FFF781FFFFFFFFF7FF8FF7E7FFF7E7FFFFFFFFF7FFCFFFFFFFFFFFFFFFF
      FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsLoadRemovedPackages: TDataSource
    DataSet = dmArrivingLoads.mtLoadRemovedPackages
    Left = 280
    Top = 352
  end
  object ActionList1: TActionList
    Images = imglOutbar_large
    Left = 361
    Top = 298
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 32
      OnExecute = acCloseExecute
    end
    object acAR: TAction
      Caption = 'Ankomstregistrera last'
      ImageIndex = 34
      OnExecute = acARExecute
    end
  end
end
