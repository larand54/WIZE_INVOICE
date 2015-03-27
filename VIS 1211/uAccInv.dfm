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
        Height = 45
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
        Height = 45
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
    Font.Height = -11
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
    UseSystemFont = False
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
      'ListField')
    Left = 616
    Top = 376
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006300630049006E0076000100450078007000
      6F00720074000100010001000D000A00630078004C006100620065006C003100
      0100460061006B0074007500720061006E0072003A000100010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      3100010043007500730074006F006D00200031000100010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003200
      010043007500730074006F006D00200032000100010001000D000A0061006300
      5200650066007200650073006800010055007000700064006100740065007200
      61002000460036000100010001000D000A00610063005000720069006E007400
      010053006B007200690076002000750074002000460038000100010001000D00
      0A006100630043006C006F0073006500010053007400E4006E00670020004600
      310032000100010001000D000A006100630050006100720061006D0065007400
      720061007200010050006100720061006D006500740072006100720020004600
      310031000100010001000D000A00610063004500780070006F00720074005400
      6F0045007800630065006C0001004500780070006F0072007400650072006100
      2000280065007800630065006C00290020004600310030000100010001000D00
      0A006100630045006D00610069006C006100460069006C006500010020002000
      20004D00610069006C0061002000200020000100010001000D000A0055007000
      7000640061007400650072006100310001005500700070006400610074006500
      720061000100010001000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0031000100
      4E00650077005200650070006F00720074000100010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A006300640073005F004500780070006F00
      7200740054007900700031005000610063006B006100670065004E006F000100
      5000610063006B006100670065004E006F00010001000D000A00630064007300
      5F004500780070006F007200740054007900700031004E006F006D0054006800
      690063006B0001004E006F006D0054006800690063006B00010001000D000A00
      6300640073005F004500780070006F007200740054007900700031004E006F00
      6D005700690064007400680001004E006F006D00570069006400740068000100
      01000D000A006300640073005F004500780070006F0072007400540079007000
      31004D00410058004C0045004E0047005400480001004D00410058004C004500
      4E00470054004800010001000D000A006300640073005F004500780070006F00
      7200740054007900700031004D0049004E004C0045004E004700540048000100
      4D0049004E004C0045004E00470054004800010001000D000A00630064007300
      5F004500780070006F0072007400540079007000310050006300730001005000
      63007300010001000D000A006300640073005F004500780070006F0072007400
      54007900700031004D00610072006B0001004D00610072006B00010001000D00
      0A006300640073005F004500780070006F007200740054007900700031005000
      45004600430001005000450046004300010001000D000A006300640073005F00
      4500780070006F00720074005400790070003100530048004900500050004900
      4E00470050004C0041004E004E004F0001005300480049005000500049004E00
      470050004C0041004E004E004F00010001000D000A006300640073005F004500
      780070006F0072007400540079007000310041004D003300010041004D003300
      010001000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660041006300630049006E00760001004D005300
      2000530061006E00730020005300650072006900660001004D00530020005300
      61006E00730020005300650072006900660001005400610068006F006D006100
      0D000A00640078004200610072004D0061006E00610067006500720031000100
      5300650067006F006500200055004900010001005400610068006F006D006100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      61007200310001005300650067006F0065002000550049000100010054006100
      68006F006D0061000D000A00640078004200610072004D0061006E0061006700
      650072003100420061007200320001005300650067006F006500200055004900
      010001005400610068006F006D0061000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0031000100540069006D006500730020004E0065007700200052006F006D00
      61006E00010001005400610068006F006D0061000D000A00730074004D007500
      6C00740069004C0069006E00650073005F0055006E00690063006F0064006500
      0D000A00640078004200610072004D0061006E00610067006500720031002E00
      430061007400650067006F007200690065007300010044006500660061007500
      6C007400010001000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720031002E004F006C0064004E0061006D006500010043007500730074006F00
      6D0020003100010001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720032002E004F006C0064004E0061006D006500
      010043007500730074006F006D0020003200010001000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B0031002E00440065007300690067006E006500720043006100
      7000740069006F006E00010046006F0072006D00610074002000520065007000
      6F0072007400010001000D000A006300640073005F004500780070006F007200
      740054007900700031002E0043006F006E006E0065006300740069006F006E00
      4E0061006D0065000100560049005300010001000D000A006300640073005F00
      4500780070006F007200740054007900700031005000610063006B0061006700
      65004E006F002E004F0072006900670069006E0001005000610063006B006100
      670065004E006F00010001000D000A006300640073005F004500780070006F00
      7200740054007900700031004E006F006D0054006800690063006B002E004F00
      72006900670069006E0001004E006F006D0054006800690063006B0001000100
      0D000A006300640073005F004500780070006F00720074005400790070003100
      4E006F006D00570069006400740068002E004F0072006900670069006E000100
      4E006F006D0057006900640074006800010001000D000A006300640073005F00
      4500780070006F007200740054007900700031004D00410058004C0045004E00
      4700540048002E004F0072006900670069006E0001004D00410058004C004500
      4E00470054004800010001000D000A006300640073005F004500780070006F00
      7200740054007900700031004D0049004E004C0045004E004700540048002E00
      4F0072006900670069006E0001004D0049004E004C0045004E00470054004800
      010001000D000A006300640073005F004500780070006F007200740054007900
      700031005000630073002E004F0072006900670069006E000100500063007300
      010001000D000A006300640073005F004500780070006F007200740054007900
      700031004D00610072006B002E004F0072006900670069006E0001004D006100
      72006B00010001000D000A006300640073005F004500780070006F0072007400
      540079007000310050004500460043002E004F0072006900670069006E000100
      5000450046004300010001000D000A006300640073005F004500780070006F00
      7200740054007900700031005300480049005000500049004E00470050004C00
      41004E004E004F002E004F0072006900670069006E0001005300480049005000
      500049004E00470050004C0041004E004E004F00010001000D000A0063006400
      73005F004500780070006F0072007400540079007000310041004D0033002E00
      4F0072006900670069006E00010041004D003300010001000D000A0073007000
      5F004500780070006F007200740049006E0076006F0069006300650044006100
      740061002E0043006F006E006E0065006300740069006F006E004E0061006D00
      65000100560049005300010001000D000A00730070005F004500780070006F00
      7200740049006E0076006F0069006300650044006100740061002E0053007400
      6F00720065006400500072006F0063004E0061006D0065000100640062006F00
      2E007600690073005F004500780070006F007200740049006E0076006F006900
      630065004400610074006100010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400660041006300630049006E007600010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006400
      78004200610072004D0061006E00610067006500720031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A00}
  end
  object sp_ExpInvContData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_ExpContInvData'
    Left = 216
    Top = 456
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
end
