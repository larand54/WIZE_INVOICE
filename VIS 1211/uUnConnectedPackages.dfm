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
      PageNumberFormat = pnfNumeral
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
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
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HelpFile'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'Origin'
      'PropertiesClassName')
    Left = 688
    Top = 320
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660055006E0043006F006E006E006500630074006500
      64005000610063006B006100670065007300010045006A0020006B006F007000
      70006C006100640065002000700061006B00650074000100010001000D000A00
      500061006E0065006C0031000100500061006B0065007400200073006F006D00
      2000730061006B006E006100720020006B006F00700070006C0069006E006700
      2000740069006C006C0020006100760072006F00700073007200610064000100
      010001000D000A006300780042007500740074006F006E003200010053007400
      E4006E0067000100010001000D000A0067007200640045006A004B006F007000
      70006C00610064006500500061006B0065007400440042005400610062006C00
      6500560069006500770031004C006F00610064004E006F0001004C0061007300
      74006E0072000100010001000D000A0067007200640045006A004B006F007000
      70006C00610064006500500061006B0065007400440042005400610062006C00
      6500560069006500770031005000610063006B006100670065004E006F000100
      500061006B00650074006E0072000100010001000D000A006700720064004500
      6A004B006F00700070006C00610064006500500061006B006500740044004200
      5400610062006C0065005600690065007700310053007500700070006C006900
      6500720043006F00640065000100500072006500660069007800010001000100
      0D000A0067007200640045006A004B006F00700070006C006100640065005000
      61006B0065007400440042005400610062006C00650056006900650077003100
      500072006F0064007500630074000100500072006F00640075006B0074000100
      010001000D000A0067007200640045006A004B006F00700070006C0061006400
      6500500061006B0065007400440042005400610062006C006500560069006500
      7700310041004C004D004D0001004C00E4006E00670064000100010001000D00
      0A0067007200640045006A004B006F00700070006C0061006400650050006100
      6B0065007400440042005400610062006C006500560069006500770031004400
      65006600610075006C007400430075007300740053006800690070004F006200
      6A006500630074004E006F000100440065006600610075006C00740043007500
      7300740053006800690070004F0062006A006500630074004E006F0001000100
      01000D000A0067007200640045006A004B006F00700070006C00610064006500
      500061006B0065007400440042005400610062006C0065005600690065007700
      3100500072006F0064007500630074004E006F000100500072006F0064007500
      630074004E006F000100010001000D000A0067007200640045006A004B006F00
      700070006C00610064006500500061006B006500740044004200540061006200
      6C00650056006900650077003100410054000100410054000100010001000D00
      0A0067007200640045006A004B006F00700070006C0061006400650050006100
      6B0065007400440042005400610062006C006500560069006500770031004100
      42000100410042000100010001000D000A0067007200640045006A004B006F00
      700070006C00610064006500500061006B006500740044004200540061006200
      6C0065005600690065007700310053007000650063006900650073004E006F00
      010053007000650063006900650073004E006F000100010001000D000A006700
      7200640045006A004B006F00700070006C00610064006500500061006B006500
      7400440042005400610062006C00650056006900650077003100530075007200
      66006100630069006E0067004E006F0001005300750072006600610063006900
      6E0067004E006F000100010001000D000A0067007200640045006A004B006F00
      700070006C00610064006500500061006B006500740044004200540061006200
      6C00650056006900650077003100470072006100640065004E006F0001004700
      72006100640065004E006F000100010001000D000A0067007200640045006A00
      4B006F00700070006C00610064006500500061006B0065007400440042005400
      610062006C00650056006900650077003100500072006F006400750063007400
      430061007400650067006F00720079004E006F000100500072006F0064007500
      63007400430061007400650067006F00720079004E006F000100010001000D00
      0A0067007200640045006A004B006F00700070006C0061006400650050006100
      6B0065007400440042005400610062006C006500560069006500770031004F00
      760065007200720069006400650052004C0001004F0076006500720072006900
      6400650052004C000100010001000D000A00610063005000720069006E007400
      010053006B007200690076002000750074000100010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B00310001004E00650077005200650070006F0072007400
      0100010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      5400660055006E0043006F006E006E0065006300740065006400500061006300
      6B00610067006500730001005400610068006F006D0061000100010001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B0031000100540069006D00650073002000
      4E0065007700200052006F006D0061006E000100010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0031002E00440065007300690067006E0065007200
      430061007000740069006F006E00010046006F0072006D006100740020005200
      650070006F00720074000100010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400660055006E0043006F006E006E00650063007400
      650064005000610063006B006100670065007300010044004500460041005500
      4C0054005F0043004800410052005300450054000100010001000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0031000100440045004600410055004C0054005F00
      43004800410052005300450054000100010001000D000A00}
  end
end
