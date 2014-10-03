object fImportPkgStatusOfHampen: TfImportPkgStatusOfHampen
  Left = 125
  Top = 149
  Caption = 'Uppdatera paketstatus'
  ClientHeight = 726
  ClientWidth = 1206
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1206
    Height = 65
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 209
      Height = 41
      Caption = 'H'#228'mta paketfiler fr'#229'n HTF och uppdatera'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton10: TcxButton
      Left = 904
      Top = 8
      Width = 129
      Height = 41
      Action = acPrintLog
      TabOrder = 3
    end
    object deStart: TcxDateEdit
      Left = 712
      Top = 24
      TabOrder = 1
      Width = 177
    end
    object cxLabel1: TcxLabel
      Left = 712
      Top = 8
      Caption = 'Skriv ut logg fr'#229'n och med'
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 65
    Width = 1206
    Height = 661
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Properties.ActivePage = tsImportedPackages
    Properties.Style = 9
    ExplicitWidth = 1214
    ExplicitHeight = 672
    ClientRectBottom = 661
    ClientRectRight = 1206
    ClientRectTop = 23
    object tsImportedPackages: TcxTabSheet
      Caption = 'Paket'#246'verf'#246'ringar'
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdImportFileStatus: TcxGrid
        Left = 0
        Top = 105
        Width = 1214
        Height = 544
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        object grdImportFileStatusDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ds_HTFPkgStatus
          DataController.KeyFieldNames = 'RecordType;Paketnr;Prefix;FileName'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#######'
              Kind = skCount
              FieldName = 'Paketnr'
              Column = grdImportFileStatusDBTableView1Paketnr
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grdImportFileStatusDBTableView1RecordType: TcxGridDBColumn
            DataBinding.FieldName = 'RecordType'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 51
          end
          object grdImportFileStatusDBTableView1Prefix: TcxGridDBColumn
            DataBinding.FieldName = 'Prefix'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 48
          end
          object grdImportFileStatusDBTableView1Paketnr: TcxGridDBColumn
            DataBinding.FieldName = 'Paketnr'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 89
          end
          object grdImportFileStatusDBTableView1Styck: TcxGridDBColumn
            Caption = 'Nytt stycketal'
            DataBinding.FieldName = 'Styck'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 63
          end
          object grdImportFileStatusDBTableView1Status: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Modtaget'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Klar til produktion'
                Value = 2
              end
              item
                Description = 'Produktionsdato'
                Value = 3
              end
              item
                Description = 'Klar til afgang'
                Value = 4
              end
              item
                Description = 'Udleveret'
                Value = 5
              end
              item
                Description = 'Nytt HTF paket'
                Value = 6
              end>
            Width = 85
          end
          object grdImportFileStatusDBTableView1StatusDatum: TcxGridDBColumn
            DataBinding.FieldName = 'StatusDatum'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 95
          end
          object grdImportFileStatusDBTableView1OriginalStyck: TcxGridDBColumn
            Caption = 'Original stycketal'
            DataBinding.FieldName = 'OriginalStyck'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 69
          end
          object grdImportFileStatusDBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 24
          end
          object grdImportFileStatusDBTableView1DateCreated: TcxGridDBColumn
            DataBinding.FieldName = 'DateCreated'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 79
          end
          object grdImportFileStatusDBTableView1Complete: TcxGridDBColumn
            DataBinding.FieldName = 'Complete'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 72
          end
          object grdImportFileStatusDBTableView1FileName: TcxGridDBColumn
            Caption = 'Filnamn'
            DataBinding.FieldName = 'FileName'
            PropertiesClassName = 'TcxLabelProperties'
            SortIndex = 0
            SortOrder = soAscending
            Width = 92
          end
          object grdImportFileStatusDBTableView1LONo: TcxGridDBColumn
            Caption = 'LONr'
            DataBinding.FieldName = 'LONo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 53
          end
          object grdImportFileStatusDBTableView1HTF_FS: TcxGridDBColumn
            Caption = 'HTF f'#246'ljesedel'
            DataBinding.FieldName = 'HTF_FS'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 69
          end
          object grdImportFileStatusDBTableView1TotalNoOfPieces: TcxGridDBColumn
            Caption = 'Totalt styck'
            DataBinding.FieldName = 'TotalNoOfPieces'
            Width = 49
          end
          object grdImportFileStatusDBTableView1BarCodeID: TcxGridDBColumn
            DataBinding.FieldName = 'BarCodeID'
            Visible = False
            Width = 31
          end
          object grdImportFileStatusDBTableView1Gradestamp: TcxGridDBColumn
            DataBinding.FieldName = 'Gradestamp'
            Visible = False
            Width = 32
          end
          object grdImportFileStatusDBTableView1SurfacingNo: TcxGridDBColumn
            DataBinding.FieldName = 'SurfacingNo'
            Visible = False
            Width = 31
          end
          object grdImportFileStatusDBTableView1NominalThicknessMM: TcxGridDBColumn
            DataBinding.FieldName = 'NominalThicknessMM'
            Visible = False
            Width = 32
          end
          object grdImportFileStatusDBTableView1PackageTypeNo: TcxGridDBColumn
            DataBinding.FieldName = 'PackageTypeNo'
            Visible = False
            Width = 32
          end
          object grdImportFileStatusDBTableView1LoadNo: TcxGridDBColumn
            Caption = 'LastNr'
            DataBinding.FieldName = 'LoadNo'
            Width = 64
          end
          object grdImportFileStatusDBTableView1ProductCode: TcxGridDBColumn
            Caption = 'Produktkod'
            DataBinding.FieldName = 'ProductCode'
            Width = 174
          end
          object grdImportFileStatusDBTableView1ALMM: TcxGridDBColumn
            DataBinding.FieldName = 'ALMM'
            Width = 52
          end
          object grdImportFileStatusDBTableView1PEFC: TcxGridDBColumn
            DataBinding.FieldName = 'PEFC'
            Width = 61
          end
          object grdImportFileStatusDBTableView1DateAndTime: TcxGridDBColumn
            DataBinding.FieldName = 'DateAndTime'
            Visible = False
            Width = 43
          end
          object grdImportFileStatusDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            Width = 26
          end
        end
        object grdImportFileStatusLevel1: TcxGridLevel
          GridView = grdImportFileStatusDBTableView1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1214
        Height = 105
        Align = alTop
        TabOrder = 1
        object cxButton4: TcxButton
          Left = 24
          Top = 16
          Width = 193
          Height = 73
          Action = acVisaEjChangedPkgs
          TabOrder = 0
        end
        object cxButton5: TcxButton
          Left = 224
          Top = 16
          Width = 193
          Height = 73
          Action = acVisaAndradePaket
          TabOrder = 1
        end
        object cxButton9: TcxButton
          Left = 424
          Top = 16
          Width = 193
          Height = 73
          Action = acChangeVISPaketInCaseDifferentNoOfPiecesFromHTF
          TabOrder = 2
        end
        object cxButton11: TcxButton
          Left = 624
          Top = 16
          Width = 193
          Height = 73
          Action = acGetProductNoOfProductCode
          TabOrder = 3
        end
        object cxButton12: TcxButton
          Left = 824
          Top = 16
          Width = 193
          Height = 73
          Action = acDeleteRetrievedFiles
          TabOrder = 4
          WordWrap = True
        end
      end
    end
    object tsImportedLoads: TcxTabSheet
      Caption = 'Leveranser fr'#229'n Hampen'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1214
        Height = 105
        Align = alTop
        TabOrder = 0
        object cxButton2: TcxButton
          Left = 944
          Top = 16
          Width = 257
          Height = 65
          Action = acCreateLoad
          TabOrder = 0
          Visible = False
        end
        object cxButton3: TcxButton
          Left = 8
          Top = 16
          Width = 257
          Height = 65
          Action = acRefreshTransferFiles
          TabOrder = 1
        end
        object cbComplete: TcxComboBox
          Left = 320
          Top = 24
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'Prelimin'#228'ra'
            'Avslutade')
          TabOrder = 2
          Text = 'Avslutade'
          Width = 225
        end
      end
      object grdImportedLoads: TcxGrid
        Left = 0
        Top = 105
        Width = 1214
        Height = 544
        Align = alClient
        TabOrder = 1
        object grdImportedLoadsDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ds_TransferFiles
          DataController.KeyFieldNames = 'FileName'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdImportedLoadsDBTableView1FileName: TcxGridDBColumn
            DataBinding.FieldName = 'FileName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 108
          end
          object grdImportedLoadsDBTableView1TransferType: TcxGridDBColumn
            DataBinding.FieldName = 'TransferType'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 83
          end
          object grdImportedLoadsDBTableView1DateCreated: TcxGridDBColumn
            DataBinding.FieldName = 'DateCreated'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 197
          end
          object grdImportedLoadsDBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 120
          end
          object grdImportedLoadsDBTableView1Complete: TcxGridDBColumn
            DataBinding.FieldName = 'Complete'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 54
          end
          object grdImportedLoadsDBTableView1SendDate: TcxGridDBColumn
            DataBinding.FieldName = 'SendDate'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 173
          end
          object grdImportedLoadsDBTableView1LONo: TcxGridDBColumn
            DataBinding.FieldName = 'LONo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 50
          end
          object grdImportedLoadsDBTableView1HTF_FS: TcxGridDBColumn
            Caption = 'HTF f'#246'ljesedel'
            DataBinding.FieldName = 'HTF_FS'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 96
          end
          object grdImportedLoadsDBTableView1LoadNo: TcxGridDBColumn
            DataBinding.FieldName = 'LoadNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 49
          end
        end
        object grdImportedLoadsLevel1: TcxGridLevel
          GridView = grdImportedLoadsDBTableView1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Leveranser till Hampen'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1214
        Height = 105
        Align = alTop
        TabOrder = 0
        object cxButton6: TcxButton
          Left = 560
          Top = 16
          Width = 257
          Height = 65
          Action = acSendFileToHampen
          TabOrder = 0
        end
        object cxButton7: TcxButton
          Left = 8
          Top = 16
          Width = 257
          Height = 65
          Action = acUppdateraLasterTillHampen
          TabOrder = 1
        end
        object cxButton8: TcxButton
          Left = 280
          Top = 16
          Width = 257
          Height = 65
          Action = acShowSkickadeFilerTillHampen
          TabOrder = 2
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 105
        Width = 1214
        Height = 544
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ds_TransferFilesTillHTF
          DataController.KeyFieldNames = 'FileName'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'FileName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 108
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'TransferType'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 83
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'DateCreated'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 197
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 120
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Complete'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 54
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'SendDate'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 173
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'LONo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 50
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'HTF f'#246'ljesedel'
            DataBinding.FieldName = 'HTF_FS'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 96
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'LoadNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 49
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 416
    Top = 272
    object acImportPackageStatusOfHampen: TAction
      Caption = 'H'#228'mta paketstatus'
    end
    object acUpdatePackageStatus: TAction
      Caption = 'H'#228'mta && uppdatera paketstatus'
    end
    object acOpenFile: TAction
      Caption = 'acOpenFile'
    end
    object acCreateLoad: TAction
      Caption = 'Registrera levererade paket till leverans'
      OnExecute = acCreateLoadExecute
      OnUpdate = acCreateLoadUpdate
    end
    object acRefreshTransferFiles: TAction
      Caption = 'Uppdatera'
      OnExecute = acRefreshTransferFilesExecute
    end
    object acVisaEjChangedPkgs: TAction
      Caption = 'Visa paket felloggen'
      OnExecute = acVisaEjChangedPkgsExecute
    end
    object acVisaAndradePaket: TAction
      Caption = 'Visa sparade paket'
      OnExecute = acVisaAndradePaketExecute
    end
    object acUppdateraLasterTillHampen: TAction
      Caption = 'Visa ej s'#228'nda filer(laster)'
      OnExecute = acUppdateraLasterTillHampenExecute
    end
    object acSendFileToHampen: TAction
      Caption = 'S'#228'nd filer till Hampen'
      OnExecute = acSendFileToHampenExecute
    end
    object acShowSkickadeFilerTillHampen: TAction
      Caption = 'Visa s'#228'nda filer(laster)'
      OnExecute = acShowSkickadeFilerTillHampenExecute
    end
    object acChangeVISPaketInCaseDifferentNoOfPiecesFromHTF: TAction
      Caption = 'Justera paket i fellogen'
      OnExecute = acChangeVISPaketInCaseDifferentNoOfPiecesFromHTFExecute
    end
    object acGetProductNoOfProductCode: TAction
      Caption = 'Uppdatera produktnr'
      OnExecute = acGetProductNoOfProductCodeExecute
    end
    object acPaketinfo: TAction
      Caption = 'Paket info'
      OnExecute = acPaketinfoExecute
      OnUpdate = acPaketinfoUpdate
    end
    object acDeleteRetrievedFiles: TAction
      Caption = 'Ta bort nerladdade filer fr'#229'n ftp servern'
      OnExecute = acDeleteRetrievedFilesExecute
    end
    object acPrintLog: TAction
      Caption = 'Skriv ut logg'
      OnExecute = acPrintLogExecute
    end
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object dsImportPkgStatus: TDataSource
    Left = 376
    Top = 344
  end
  object ds_HTFPkgStatus: TDataSource
    DataSet = dmVidaInvoice.sq_HTFPkgStatus
    Left = 496
    Top = 328
  end
  object OpenDialog1: TOpenDialog
    Left = 336
    Top = 248
  end
  object ds_TransferFiles: TDataSource
    DataSet = dmVidaInvoice.sq_TransferFiles
    Left = 97
    Top = 281
  end
  object ds_TransferFilesTillHTF: TDataSource
    DataSet = dmVidaInvoice.sq_TransferFilesTillHTF
    Left = 497
    Top = 393
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdImportFileStatus
    PopupMenus = <>
    Left = 224
    Top = 248
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 312
    Top = 368
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 312
    Top = 408
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acPaketinfo
      Category = 0
    end
  end
end
