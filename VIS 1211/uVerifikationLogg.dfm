object fVerifikationLogg: TfVerifikationLogg
  Left = 197
  Top = 107
  Caption = 'Verifikatlogg'
  ClientHeight = 618
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 57
    Align = alTop
    TabOrder = 0
    DesignSize = (
      982
      57)
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 89
      Height = 43
      Action = acPrint
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 889
      Top = 8
      Width = 88
      Height = 43
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 565
    Width = 982
    Height = 53
    Align = alBottom
    TabOrder = 1
  end
  object grdVerifikationLogg: TcxGrid
    Left = 0
    Top = 57
    Width = 982
    Height = 508
    Align = alClient
    TabOrder = 2
    object grdVerifikationLoggDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dmVidaInvoice.ds_VerLogg
      DataController.KeyFieldNames = 'RadOrder'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'Debet'
          Column = grdVerifikationLoggDBTableView1Debet
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'Kredit'
          Column = grdVerifikationLoggDBTableView1Kredit
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'UtlandsBelopp'
          Column = grdVerifikationLoggDBTableView1UtlandsBelopp
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdVerifikationLoggDBTableView1Konto: TcxGridDBColumn
        DataBinding.FieldName = 'Konto'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 87
      end
      object grdVerifikationLoggDBTableView1Namn: TcxGridDBColumn
        DataBinding.FieldName = 'Namn'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 126
      end
      object grdVerifikationLoggDBTableView1Valuta: TcxGridDBColumn
        DataBinding.FieldName = 'Valuta'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 54
      end
      object grdVerifikationLoggDBTableView1Kurs: TcxGridDBColumn
        DataBinding.FieldName = 'Kurs'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 61
      end
      object grdVerifikationLoggDBTableView1UtlandsBelopp: TcxGridDBColumn
        DataBinding.FieldName = 'UtlandsBelopp'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###,###,###.00'
        Options.Sorting = False
        Width = 82
      end
      object grdVerifikationLoggDBTableView1Debet: TcxGridDBColumn
        DataBinding.FieldName = 'Debet'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###,###,###.00'
        Options.Sorting = False
        Width = 81
      end
      object grdVerifikationLoggDBTableView1Kredit: TcxGridDBColumn
        DataBinding.FieldName = 'Kredit'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###,###,###.00'
        Options.Sorting = False
        Width = 96
      end
      object grdVerifikationLoggDBTableView1Text: TcxGridDBColumn
        DataBinding.FieldName = 'Text'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 265
      end
      object grdVerifikationLoggDBTableView1RadOrder: TcxGridDBColumn
        DataBinding.FieldName = 'RadOrder'
        PropertiesClassName = 'TcxLabelProperties'
        SortIndex = 0
        SortOrder = soAscending
        Width = 91
      end
      object grdVerifikationLoggDBTableView1VatCode: TcxGridDBColumn
        DataBinding.FieldName = 'VatCode'
      end
      object grdVerifikationLoggDBTableView1Avdelning: TcxGridDBColumn
        DataBinding.FieldName = 'Avdelning'
      end
      object grdVerifikationLoggDBTableView1Volym: TcxGridDBColumn
        DataBinding.FieldName = 'Volym'
      end
    end
    object grdVerifikationLoggLevel1: TcxGridLevel
      GridView = grdVerifikationLoggDBTableView1
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 408
    Top = 136
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      OnExecute = acCloseExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      ImageIndex = 5
      OnExecute = acPrintExecute
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdVerifikationLogg
    PopupMenus = <>
    Left = 600
    Top = 96
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 240
    Top = 160
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdVerifikationLogg
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Verifikatlogg')
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
