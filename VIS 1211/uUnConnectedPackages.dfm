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
    ExplicitTop = -6
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
    ExplicitLeft = 16
    ExplicitTop = 104
    ExplicitWidth = 1001
    ExplicitHeight = 465
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
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
