object dmFR: TdmFR
  OldCreateOrder = False
  Height = 442
  Width = 824
  object sp_vis_FR_Invoice: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vis_FR_Invoice'
    Left = 56
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSource1: TDataSource
    DataSet = sp_vis_FR_Invoice
    Left = 56
    Top = 80
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Invoice'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 152
    Top = 32
  end
  object frxPDFExport2: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 232
    Top = 80
  end
  object frxRichObject1: TfrxRichObject
    Left = 232
    Top = 32
  end
  object frxReport1: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40388.622733101800000000
    ReportOptions.LastChange = 40416.260262766210000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure frxDBDataset2INV_TEXTOnBeforePrint(Sender: TfrxCompone' +
        'nt);'
      'begin'
      ''
      'end;'
      ''
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                            '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '      '
      'end;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if engine.freespace > reportsummary1.height then'
      ' begin'
      
        '  Engine.CurY := Engine.PageHeight -reportsummary1.height -pagef' +
        'ooter1.Height - 1;'
      ' end;  '
      'end;'
      ''
      'begin'
      '          '
      '     '
      'end.')
    Left = 328
    Top = 32
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'Invoice'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'TestField'
        Value = '<Invoice."INV_NO">'
      end>
    Style = <
      item
        Name = 'Arial9'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Arial7Bold'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      TitleBeforeHeader = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Rich1: TfrxRichView
          Left = 22.677180000000000000
          Top = 83.149660000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313035337B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A7B5C2A5C67656E657261746F72204D736674
            6564697420352E34312E32312E323531303B7D5C766965776B696E64345C7563
            315C706172645C66305C66733136205B496E766F6963652E22494E565F544558
            54225D5C7061720D0A7D0D0A00}
        end
        object Memo2: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAKTURA'
            'ADRESS')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object frxDBDataset1CustomerName: TfrxMemoView
          Left = 438.425480000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CustomerName'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."CustomerName"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object frxDBDataset1AddressLine1: TfrxMemoView
          Left = 438.425480000000000000
          Top = 18.897650000000010000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AddressLine1'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."AddressLine1"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object Memo5: TfrxMemoView
          Left = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Agent')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object frxDBDataset2VAT: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 86.929190000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."VAT"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MOMS REG')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo10: TfrxMemoView
          Left = 22.677180000000000000
          Top = 41.574830000000010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LEV VILLK.')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo11: TfrxMemoView
          Left = 22.677180000000000000
          Top = 60.472479999999810000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BET VILLK.')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object frxDBDataset2AddressLine2: TfrxMemoView
          Left = 438.425480000000000000
          Top = 37.795300000000010000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."AddressLine2"]')
          ParentFont = False
        end
        object frxDBDataset2AddressLine3: TfrxMemoView
          Left = 438.425480000000000000
          Top = 56.692950000000010000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."AddressLine3"]')
          ParentFont = False
        end
        object frxDBDataset2AddressLine4: TfrxMemoView
          Left = 438.425480000000000000
          Top = 75.590600000000010000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."AddressLine4"]')
          ParentFont = False
        end
        object frxDBDataset2PaymentDescription: TfrxMemoView
          Left = 86.929190000000000000
          Top = 60.472480000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."PaymentDescription"]')
          ParentFont = False
        end
        object frxDBDataset2PostalCode: TfrxMemoView
          Left = 438.425480000000000000
          Top = 94.488250000000010000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."CityName"] [Invoice."StateOrProvince"]')
          ParentFont = False
        end
        object frxDBDataset2CountryName: TfrxMemoView
          Left = 438.425480000000000000
          Top = 117.165430000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."CountryName"]')
          ParentFont = False
        end
        object frxDBDataset2AgentName1: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 86.929190000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."AgentName"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 22.677180000000000000
          Top = 136.063080000000000000
          Width = 684.094930000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
        object InvoiceLevVillkor: TfrxMemoView
          Left = 86.929190000000000000
          Top = 41.574830000000010000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LevVillkor'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Memo.UTF8W = (
            '[Invoice."LevVillkor"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 291.023810000000000000
          Top = 3.779529999999990000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Faktura')
          ParentFont = False
        end
        object frxDBDataset2INV_NO: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000001000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."INV_NO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAKTURA NR')
          ParentFont = False
        end
        object frxDBDataset2INV_DATE: TfrxMemoView
          Left = 566.929500000000000000
          Top = 26.456710000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'yyyy-mm-dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."INV_DATE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 434.645950000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAKTURA DATUM')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 434.645950000000000000
          Top = 49.133889999999990000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Kund')
          ParentFont = False
        end
        object frxDBDataset2SearchName: TfrxMemoView
          Left = 566.929500000000000000
          Top = 49.133889999999990000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."SearchName"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 22.677180000000000000
          Top = 71.811070000000000000
          Width = 684.094930000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338590000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'Invoice'
        RowCount = 0
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 83.149660000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        Condition = 'Invoice."ourReference"'
        object frxDBDataset1OurReference: TfrxMemoView
          Left = 102.047310000000000000
          Top = 7.559060000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'OurReference'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."OurReference"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object frxDBDataset2CUSTREF: TfrxMemoView
          Left = 102.047310000000000000
          Top = 26.456709999999870000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."CUSTREF"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object frxDBDataset2OrderNoText: TfrxMemoView
          Left = 102.047310000000000000
          Top = 45.354359999999870000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."OrderNoText"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object frxDBDataset2SalesMan: TfrxMemoView
          Left = 102.047310000000000000
          Top = 64.252009999999920000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."SalesMan"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object frxDBDataset2Shipper: TfrxMemoView
          Left = 370.393940000000000000
          Top = 7.559059999999875000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."Shipper"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object frxDBDataset2BookingNo: TfrxMemoView
          Left = 370.393940000000000000
          Top = 26.456709999999870000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."BookingNo"] / [Invoice."SHIPCOMPBOOKID"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object frxDBDataset1TRPID_1: TfrxMemoView
          Left = 370.393940000000000000
          Top = 45.354359999999870000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."TRPID_1"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object Memo3: TfrxMemoView
          Left = 22.677180000000000000
          Top = 11.338590000000010000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'V'#197'R REF')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo4: TfrxMemoView
          Left = 22.677180000000000000
          Top = 30.236240000000010000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ER REF')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 22.677180000000000000
          Top = 52.913419999999920000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KONTRAKT')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 22.677180000000000000
          Top = 71.811069999999970000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'S'#196'LJARE')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 309.921460000000000000
          Top = 11.338590000000120000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SPEDIT'#214'R')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo15: TfrxMemoView
          Left = 309.921460000000000000
          Top = 30.236240000000120000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BOKN. NR.')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo16: TfrxMemoView
          Left = 309.921460000000000000
          Top = 49.133890000000120000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TRP. ID.')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo17: TfrxMemoView
          Left = 529.134200000000000000
          Top = 11.338590000000120000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FARTYG')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object frxDBDataset1VESSEL: TfrxMemoView
          Left = 578.268090000000000000
          Top = 7.559059999999875000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."VESSEL"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object Memo18: TfrxMemoView
          Left = 529.134200000000000000
          Top = 30.236240000000120000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ETD')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object frxDBDataset1ETD: TfrxMemoView
          Left = 578.268090000000000000
          Top = 26.456709999999870000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."ETD_1"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object Memo19: TfrxMemoView
          Left = 529.134200000000000000
          Top = 49.133890000000120000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ETA')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object frxDBDataset1ETA: TfrxMemoView
          Left = 578.268090000000000000
          Top = 45.354359999999870000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."ETA_1"]')
          ParentFont = False
          Style = 'Arial9'
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 109.606370000000000000
        Top = 971.339210000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Left = 279.685220000000000000
          Top = 79.370129999999750000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 26.456710000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VIDA Wood AB')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 113.385900000000000000
          Top = 22.677179999999640000
          Width = 585.827150000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object InvoiceAdress: TfrxMemoView
          Left = 26.456710000000000000
          Top = 41.574829999999510000
          Width = 143.622140000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Adress'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."Adress"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 192.756030000000000000
          Top = 41.574830000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."TelefonFax"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 347.716760000000000000
          Top = 41.574829999999510000
          Width = 143.622140000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."Internet"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 506.457020000000000000
          Top = 41.574830000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."OrgVatNr"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 102.047310000000000000
        Top = 582.047620000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'Invoice'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Subreport1: TfrxSubreport
          Left = 22.677180000000000000
          Top = 49.133890000000000000
          Width = 680.315400000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Page = frxReport1.Page2
        end
        object frxDBDataset2ProductDescription: TfrxMemoView
          Left = 105.826840000000000000
          Top = 7.559060000000045000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."ProductDescription"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object frxDBDataset2LengthDescription: TfrxMemoView
          Left = 105.826840000000000000
          Top = 26.456710000000160000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."LengthDescription"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object InvoiceNoOfPkgs: TfrxMemoView
          Left = 366.614410000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NoOfPkgs'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Invoice."NoOfPkgs"]')
          ParentFont = False
        end
        object InvoiceVolume_OrderUnit: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Invoice."Volume_OrderUnit"] [Invoice."PrisEnhet"]')
          ParentFont = False
        end
        object InvoicePrice: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Invoice."CURRENCY"] [Invoice."Price"]')
          ParentFont = False
        end
        object InvoiceProductValue: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Invoice."CURRENCY"] [Invoice."ProductValue"]')
          ParentFont = False
        end
        object InvoiceKR_REF: TfrxMemoView
          Left = 22.677180000000000000
          Top = 7.559060000000045000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KR_REF'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."KR_REF"]')
          ParentFont = False
          Style = 'Arial9'
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        Condition = 'Invoice."SHIPREF"'
        object Memo21: TfrxMemoView
          Left = 22.677180000000000000
          Top = 22.677180000000250000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ADRESS:')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo20: TfrxMemoView
          Left = 22.677180000000000000
          Top = 7.559059999999931000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SKEPP. REF.:')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object InvoiceReference: TfrxMemoView
          Left = 98.267780000000000000
          Top = 3.779530000000136000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Reference'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."Reference"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object InvoiceAddressName: TfrxMemoView
          Left = 98.267780000000000000
          Top = 22.677180000000250000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[Invoice."AddressName"] [Invoice."AddressLine1_1"] [Invoice."Add' +
              'ressLine2_1"] [Invoice."AddressLine3_1"] [Invoice."AddressLine4_' +
              '1"] [Invoice."StateOrProvince_1"] [Invoice."PostalCode_1"] [Invo' +
              'ice."AddressCity"] [Invoice."AddressCountry"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 22.677180000000000000
          Top = 3.779530000000136000
          Width = 684.094930000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236240000000000000
        Top = 706.772110000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000022000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<Invoice."NoOfPkgs">,0,0)] PKT')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Line4: TfrxLineView
          Left = 22.677180000000000000
          Top = 3.779530000000022000
          Width = 676.535870000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Left = 211.653680000000000000
          Top = 3.779530000000022000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<Invoice."LinealMeter">,0,0)] M1')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo28: TfrxMemoView
          Left = 317.480520000000000000
          Top = 3.779530000000022000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<Invoice."ActualNetM3">,0,0)] AM3')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo37: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000022000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<Invoice."NominalM3">,0,0)] NM3')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo44: TfrxMemoView
          Left = 22.677180000000000000
          Top = 7.559060000000045000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SUM')
          ParentFont = False
          Style = 'Arial7Bold'
        end
      end
      object Header1: TfrxHeader
        Height = 34.015770000000000000
        Top = 525.354670000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Left = 366.614410000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PKT')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo25: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VOLYM')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo26: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PRIS')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo27: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V'#196'RDE')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo29: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000022000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PKT M'#196'RKN.')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo43: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000022000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUKT')
          ParentFont = False
          Style = 'Arial7Bold'
        end
      end
      object Footer1: TfrxFooter
        Top = 759.685530000000000000
        Width = 718.110700000000000000
      end
      object ReportSummary1: TfrxReportSummary
        Height = 128.504020000000000000
        Top = 820.158010000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        Stretched = True
        object InvoiceSUM_FreigthCost: TfrxMemoView
          Left = 196.535560000000000000
          Top = 18.897650000000090000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."SUM_FreigthCost"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object InvoiceTotal_Product_Value_No_Freight: TfrxMemoView
          Left = 196.535560000000000000
          Top = 37.795300000000090000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Total_Product_Value_No_Freight'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."Total_Product_Value_No_Freight"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object Memo31: TfrxMemoView
          Left = 22.677180000000000000
          Top = 18.897649999999980000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FRAKT')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo32: TfrxMemoView
          Left = 22.677180000000000000
          Top = 37.795299999999980000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'V'#196'RDE EXW')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo33: TfrxMemoView
          Left = 22.677180000000000000
          Top = 56.692949999999970000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KASSARABATT')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Memo34: TfrxMemoView
          Left = 22.677180000000000000
          Top = 71.811069999999950000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'F'#214'RFALLODAG')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object InvoiceCURRENCY: TfrxMemoView
          Left = 128.504020000000000000
          Top = 15.118119999999960000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CURRENCY'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."CURRENCY"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object Memo35: TfrxMemoView
          Left = 128.504020000000000000
          Top = 34.015770000000070000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CURRENCY'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."CURRENCY"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object Memo36: TfrxMemoView
          Left = 128.504020000000000000
          Top = 52.913419999999950000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CURRENCY'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."CURRENCY"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object InvoiceDiscount: TfrxMemoView
          Left = 196.535560000000000000
          Top = 52.913420000000070000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Discount'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."Discount"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object Memo39: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000090000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAKTURAV'#196'RDE EXKL. MOMS')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 306.141930000000000000
          Top = 34.015770000000070000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MOMS 25%')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 306.141930000000000000
          Top = 49.133889999999930000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FRAKT')
          ParentFont = False
          Style = 'Arial7Bold'
        end
        object Line5: TfrxLineView
          Left = 22.677180000000000000
          Top = 11.338589999999980000
          Width = 676.535870000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 676.535870000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 502.677490000000000000
          Top = 15.118119999999960000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CURRENCY'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."CURRENCY"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 502.677490000000000000
          Top = 30.236239999999940000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CURRENCY'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."CURRENCY"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 502.677490000000000000
          Top = 45.354360000000020000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CURRENCY'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."CURRENCY"]')
          ParentFont = False
        end
        object InvoiceTot_Inv_Inc_Freight_Extras: TfrxMemoView
          Left = 551.811380000000000000
          Top = 15.118119999999960000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Tot_Inv_Inc_Freight_Extras'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."Tot_Inv_Inc_Freight_Extras"]')
          ParentFont = False
        end
        object InvoiceVAT_Value: TfrxMemoView
          Left = 551.811380000000000000
          Top = 30.236240000000040000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VAT_Value'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."VAT_Value"]')
          ParentFont = False
        end
        object InvoiceInv_Value_To_Be_Paid_2: TfrxMemoView
          Left = 551.811380000000000000
          Top = 45.354360000000020000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Inv_Value_To_Be_Paid_2'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Invoice."Inv_Value_To_Be_Paid_2"]')
          ParentFont = False
        end
        object InvoicePAYMENT_TEXT: TfrxMemoView
          Left = 22.677180000000000000
          Top = 109.606370000000000000
          Width = 676.535870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'PAYMENT_TEXT'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."PAYMENT_TEXT"]')
          ParentFont = False
          Style = 'Arial9'
        end
        object InvoiceForfallodag: TfrxMemoView
          Left = 128.504020000000000000
          Top = 71.811069999999950000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Forfallodag'
          DataSet = frxDBDataset1
          DataSetName = 'Invoice'
          DisplayFormat.FormatStr = 'yyyy-mm-dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Invoice."Forfallodag"]')
          ParentFont = False
          Style = 'Arial9'
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object InvoiceCustomerName: TfrxMemoView
        Left = 60.472480000000000000
        Top = 41.574830000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'CustomerName'
        DataSet = frxDBDataset1
        DataSetName = 'Invoice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[Invoice."CustomerName"]')
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 56.692950000000000000
        Top = 7.559060000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'subreport')
        ParentFont = False
      end
    end
  end
end
