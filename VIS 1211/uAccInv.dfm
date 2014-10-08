object fAccInv: TfAccInv
  Left = 229
  Top = 107
  Caption = 'Export'
  ClientHeight = 745
  ClientWidth = 1237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1237
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 434
      Height = 57
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 432
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel3: TPanel
      Left = 1165
      Top = 0
      Width = 72
      Height = 57
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
    object Panel4: TPanel
      Left = 434
      Top = 0
      Width = 731
      Height = 57
      Align = alClient
      TabOrder = 2
      object teInvoiceNo: TcxTextEdit
        Left = 80
        Top = 20
        Enabled = False
        TabOrder = 0
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 24
        Top = 24
        Caption = 'Fakturanr:'
      end
    end
  end
  object ssAccLager: TcxSpreadSheetBook
    Left = 0
    Top = 57
    Width = 1237
    Height = 688
    Align = alClient
    DefaultStyle.Font.Name = 'MS Sans Serif'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
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
    ImageOptions.Images = dmsConnector.imglistActions
    ImageOptions.LargeImages = dmsConnector.imglistActions
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 232
    Top = 208
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
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
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
          ItemName = 'dxBarLargeButton3'
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
      Action = acRefresh
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acPrint
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acParametrar
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acExportToExcel
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acEmailaFile
      Category = 0
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 352
    Top = 296
    object acRefresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = acRefreshExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = acPrintExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 5
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acParametrar: TAction
      Caption = 'Parametrar F11'
      ImageIndex = 7
      ShortCut = 122
    end
    object acExportToExcel: TAction
      Caption = 'Exportera (excel) F10'
      ImageIndex = 17
      ShortCut = 121
      OnExecute = acExportToExcelExecute
    end
    object acEmailaFile: TAction
      Caption = '   Maila   '
      ImageIndex = 16
      OnExecute = acEmailaFileExecute
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 432
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    Left = 280
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 400
    Top = 128
    object StngF121: TMenuItem
      Action = acClose
    end
    object ExporteraexcelF101: TMenuItem
      Action = acExportToExcel
    end
    object ParametrarF111: TMenuItem
      Action = acParametrar
    end
    object Uppdatera1: TMenuItem
      Caption = 'Uppdatera'
    end
    object SkrivutF81: TMenuItem
      Action = acPrint
    end
    object UppdateraF61: TMenuItem
      Action = acRefresh
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 152
    Top = 160
    object dxComponentPrinter1Link1: TdxSpreadSheetBookReportLink
      Component = ssAccLager
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object cds_ExportTyp1: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      'LD.SHIPPINGPLANNO,'
      ''
      'CASE WHEN :CET = 0 then'
      
        'isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') + '#39' '#39 +
        ' + Cast(LD.PackageNo AS Varchar(10))'
      'else'
      
        #39'C'#39' + isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39')' +
        ' + '#39' '#39' + Cast(LD.PackageNo AS Varchar(10))'
      'End AS PackageNo,'
      ''
      'OL.NominalThicknessMM AS NomThick,'
      'OL.NominalWidthMM AS NomWidth,'
      ''
      
        '(Select Max(ActualLengthMM)/100 FROM dbo.PackageTypeDetail    PT' +
        'D'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      
        'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo) AS MAXLE' +
        'NGTH,'
      ''
      '(CASE'
      'WHEN LS.NoOfLengths > 1 THEN'
      '(Select MIN(ActualLengthMM) FROM dbo.PackageTypeDetail    PTD'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo)'
      'ELSE'
      '0'
      'END)'
      'AS MINLENGTH,'
      'PT.TotalNoOfPieces AS Pcs,'
      'OL.Reference AS Mark,'
      ''
      'CASE WHEN IsNull(pin.StressGrade,0) = 1 then'
      #39'PEFC 105-32-7/V037'#39
      'ELSE'
      #39#39
      'END AS PEFC,'
      'PT.Totalm3Actual AS AM3'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.PackageType    PT '#9'ON  PT.PackageTypeNo         ' +
        '   = LD.PackageTypeNo'
      
        #9'INNER JOIN dbo.LengthSpec    LS '#9'ON  LS.LengthSpecNo           ' +
        ' = PT.LengthSpecNo'
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      
        #9'Left Outer Join dbo.Prodinstru pin on pin.ProdInstruNo = OL.Pro' +
        'dInstructNo'
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      ''
      
        #9'Left join dbo.PkgPrefix PkgFix on PkgFix.PkgPrefix = PN.Supplie' +
        'rCode'
      #9'and PkgFix.ReportStd = 1'
      '          '
      ''
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      '  AND     (IL.ShippingPlanNo      <> -1                )'
      ''
      '')
    Left = 224
    Top = 96
    ParamData = <
      item
        Name = 'CET'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ExportTyp1PackageNo: TStringField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ReadOnly = True
      Size = 15
    end
    object cds_ExportTyp1NomThick: TFloatField
      FieldName = 'NomThick'
      Origin = 'NomThick'
    end
    object cds_ExportTyp1NomWidth: TFloatField
      FieldName = 'NomWidth'
      Origin = 'NomWidth'
    end
    object cds_ExportTyp1MAXLENGTH: TFloatField
      FieldName = 'MAXLENGTH'
      Origin = 'MAXLENGTH'
      ReadOnly = True
    end
    object cds_ExportTyp1MINLENGTH: TFloatField
      FieldName = 'MINLENGTH'
      Origin = 'MINLENGTH'
      ReadOnly = True
    end
    object cds_ExportTyp1Pcs: TIntegerField
      FieldName = 'Pcs'
      Origin = 'Pcs'
    end
    object cds_ExportTyp1Mark: TStringField
      FieldName = 'Mark'
      Origin = 'Mark'
      Size = 50
    end
    object cds_ExportTyp1PEFC: TStringField
      FieldName = 'PEFC'
      Origin = 'PEFC'
      ReadOnly = True
      Required = True
      Size = 18
    end
    object cds_ExportTyp1SHIPPINGPLANNO: TIntegerField
      FieldName = 'SHIPPINGPLANNO'
      Origin = 'SHIPPINGPLANNO'
    end
    object cds_ExportTyp1AM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
  end
  object sp_ExportInvoiceData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_ExportInvoiceData'
    Left = 224
    Top = 352
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object siLangLinked_fAccInv: TsiLangLinked
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
    Left = 616
    Top = 376
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006300630049006E0076000100450078007000
      6F0072007400010001000D000A00630078004C006100620065006C0031000100
      460061006B0074007500720061006E0072003A00010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      43007500730074006F006D0020003100010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003200010043007500
      730074006F006D0020003200010001000D000A00610063005200650066007200
      6500730068000100550070007000640061007400650072006100200046003600
      010001000D000A00610063005000720069006E007400010053006B0072006900
      7600200075007400200046003800010001000D000A006100630043006C006F00
      73006500010053007400E4006E0067002000460031003200010001000D000A00
      6100630050006100720061006D00650074007200610072000100500061007200
      61006D00650074007200610072002000460031003100010001000D000A006100
      63004500780070006F007200740054006F0045007800630065006C0001004500
      780070006F00720074006500720061002000280065007800630065006C002900
      2000460031003000010001000D000A006100630045006D00610069006C006100
      460069006C00650001002000200020004D00610069006C006100200020002000
      010001000D000A00550070007000640061007400650072006100310001005500
      70007000640061007400650072006100010001000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B00310001004E00650077005200650070006F007200740001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A006300640073005F00
      4500780070006F007200740054007900700031005000610063006B0061006700
      65004E006F0001005000610063006B006100670065004E006F00010001000D00
      0A006300640073005F004500780070006F007200740054007900700031004E00
      6F006D0054006800690063006B0001004E006F006D0054006800690063006B00
      010001000D000A006300640073005F004500780070006F007200740054007900
      700031004E006F006D005700690064007400680001004E006F006D0057006900
      640074006800010001000D000A006300640073005F004500780070006F007200
      740054007900700031004D00410058004C0045004E0047005400480001004D00
      410058004C0045004E00470054004800010001000D000A006300640073005F00
      4500780070006F007200740054007900700031004D0049004E004C0045004E00
      47005400480001004D0049004E004C0045004E00470054004800010001000D00
      0A006300640073005F004500780070006F007200740054007900700031005000
      630073000100500063007300010001000D000A006300640073005F0045007800
      70006F007200740054007900700031004D00610072006B0001004D0061007200
      6B00010001000D000A006300640073005F004500780070006F00720074005400
      790070003100500045004600430001005000450046004300010001000D000A00
      6300640073005F004500780070006F0072007400540079007000310053004800
      49005000500049004E00470050004C0041004E004E004F000100530048004900
      5000500049004E00470050004C0041004E004E004F00010001000D000A006300
      640073005F004500780070006F0072007400540079007000310041004D003300
      010041004D003300010001000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A005400660041006300630049006E00
      760001004D0053002000530061006E0073002000530065007200690066000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      01005300650067006F006500200055004900010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001005300
      650067006F006500200055004900010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032000100530065006700
      6F006500200055004900010001000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      31000100540069006D006500730020004E0065007700200052006F006D006100
      6E00010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0064007800420061007200
      4D0061006E00610067006500720031002E00430061007400650067006F007200
      6900650073000100440065006600610075006C007400010001000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00640078004200610072004D00
      61006E006100670065007200310042006100720031002E004F006C0064004E00
      61006D006500010043007500730074006F006D0020003100010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      32002E004F006C0064004E0061006D006500010043007500730074006F006D00
      20003200010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B0031002E004400
      65007300690067006E0065007200430061007000740069006F006E0001004600
      6F0072006D006100740020005200650070006F0072007400010001000D000A00
      6300640073005F004500780070006F007200740054007900700031002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      5300010001000D000A006300640073005F004500780070006F00720074005400
      7900700031005000610063006B006100670065004E006F002E004F0072006900
      670069006E0001005000610063006B006100670065004E006F00010001000D00
      0A006300640073005F004500780070006F007200740054007900700031004E00
      6F006D0054006800690063006B002E004F0072006900670069006E0001004E00
      6F006D0054006800690063006B00010001000D000A006300640073005F004500
      780070006F007200740054007900700031004E006F006D005700690064007400
      68002E004F0072006900670069006E0001004E006F006D005700690064007400
      6800010001000D000A006300640073005F004500780070006F00720074005400
      7900700031004D00410058004C0045004E004700540048002E004F0072006900
      670069006E0001004D00410058004C0045004E00470054004800010001000D00
      0A006300640073005F004500780070006F007200740054007900700031004D00
      49004E004C0045004E004700540048002E004F0072006900670069006E000100
      4D0049004E004C0045004E00470054004800010001000D000A00630064007300
      5F004500780070006F007200740054007900700031005000630073002E004F00
      72006900670069006E000100500063007300010001000D000A00630064007300
      5F004500780070006F007200740054007900700031004D00610072006B002E00
      4F0072006900670069006E0001004D00610072006B00010001000D000A006300
      640073005F004500780070006F00720074005400790070003100500045004600
      43002E004F0072006900670069006E0001005000450046004300010001000D00
      0A006300640073005F004500780070006F007200740054007900700031005300
      480049005000500049004E00470050004C0041004E004E004F002E004F007200
      6900670069006E0001005300480049005000500049004E00470050004C004100
      4E004E004F00010001000D000A006300640073005F004500780070006F007200
      7400540079007000310041004D0033002E004F0072006900670069006E000100
      41004D003300010001000D000A00730070005F004500780070006F0072007400
      49006E0076006F0069006300650044006100740061002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      0D000A00730070005F004500780070006F007200740049006E0076006F006900
      6300650044006100740061002E00530074006F00720065006400500072006F00
      63004E0061006D0065000100640062006F002E007600690073005F0045007800
      70006F007200740049006E0076006F0069006300650044006100740061000100
      01000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      41006300630049006E0076000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00640078004200610072004D00
      61006E00610067006500720031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720031000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      32000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00}
  end
end
