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
    ExplicitWidth = 802
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
        Height = 44
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
      ExplicitLeft = 730
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 70
        Height = 44
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
      ExplicitWidth = 296
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
    ExplicitWidth = 802
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
  object cds_ExportTyp1: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
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
  object sp_ExportInvoiceData: TADStoredProc
    Connection = dmsConnector.ADConnection1
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
end
