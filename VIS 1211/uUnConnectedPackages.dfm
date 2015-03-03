object fUnConnectedPackages: TfUnConnectedPackages
  Left = 0
  Top = 0
  Caption = 'Ej kopplade paket'
  ClientHeight = 646
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1029
    Height = 81
    Align = alTop
    Caption = 'Paket som saknar koppling till avropsrad'
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 16
      Top = 10
      Width = 153
      Height = 65
      Action = acPrint
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 576
    Width = 1029
    Height = 70
    Align = alBottom
    TabOrder = 1
    object cxButton2: TcxButton
      Left = 424
      Top = 8
      Width = 209
      Height = 57
      Caption = 'St'#228'ng'
      ModalResult = 8
      TabOrder = 0
    end
  end
  object grdEjKoppladePaket: TcxGrid
    Left = 0
    Top = 81
    Width = 1029
    Height = 495
    Align = alClient
    TabOrder = 2
    object grdEjKoppladePaketDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = ds_LdConnCtrl
      DataController.KeyFieldNames = 'LoadNo;PackageNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdEjKoppladePaketDBTableView1LoadNo: TcxGridDBColumn
        Caption = 'Lastnr'
        DataBinding.FieldName = 'LoadNo'
        Width = 58
      end
      object grdEjKoppladePaketDBTableView1PackageNo: TcxGridDBColumn
        Caption = 'Paketnr'
        DataBinding.FieldName = 'PackageNo'
        Width = 58
      end
      object grdEjKoppladePaketDBTableView1SupplierCode: TcxGridDBColumn
        Caption = 'Prefix'
        DataBinding.FieldName = 'SupplierCode'
        Width = 81
      end
      object grdEjKoppladePaketDBTableView1Product: TcxGridDBColumn
        Caption = 'Produkt'
        DataBinding.FieldName = 'Product'
        Width = 569
      end
      object grdEjKoppladePaketDBTableView1ALMM: TcxGridDBColumn
        Caption = 'L'#228'ngd'
        DataBinding.FieldName = 'ALMM'
        Width = 249
      end
      object grdEjKoppladePaketDBTableView1DefaultCustShipObjectNo: TcxGridDBColumn
        DataBinding.FieldName = 'DefaultCustShipObjectNo'
        Visible = False
      end
      object grdEjKoppladePaketDBTableView1ProductNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductNo'
        Visible = False
      end
      object grdEjKoppladePaketDBTableView1AT: TcxGridDBColumn
        DataBinding.FieldName = 'AT'
        Visible = False
      end
      object grdEjKoppladePaketDBTableView1AB: TcxGridDBColumn
        DataBinding.FieldName = 'AB'
        Visible = False
      end
      object grdEjKoppladePaketDBTableView1SpeciesNo: TcxGridDBColumn
        DataBinding.FieldName = 'SpeciesNo'
        Visible = False
      end
      object grdEjKoppladePaketDBTableView1SurfacingNo: TcxGridDBColumn
        DataBinding.FieldName = 'SurfacingNo'
        Visible = False
      end
      object grdEjKoppladePaketDBTableView1GradeNo: TcxGridDBColumn
        DataBinding.FieldName = 'GradeNo'
        Visible = False
      end
      object grdEjKoppladePaketDBTableView1ProductCategoryNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductCategoryNo'
        Visible = False
      end
      object grdEjKoppladePaketDBTableView1OverrideRL: TcxGridDBColumn
        DataBinding.FieldName = 'OverrideRL'
        Visible = False
      end
    end
    object grdEjKoppladePaketLevel1: TcxGridLevel
      GridView = grdEjKoppladePaketDBTableView1
    end
  end
  object ds_LdConnCtrl: TDataSource
    DataSet = dmVidaInvoice.sp_LdConnCtrl
    Left = 512
    Top = 248
  end
  object ActionList1: TActionList
    Left = 392
    Top = 200
    object acPrint: TAction
      Caption = 'Skriv ut'
      OnExecute = acPrintExecute
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 512
    Top = 168
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdEjKoppladePaket
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
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
    Left = 688
    Top = 320
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
