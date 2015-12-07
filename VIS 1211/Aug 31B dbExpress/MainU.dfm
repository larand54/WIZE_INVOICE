object XMLImportExport: TXMLImportExport
  Left = 277
  Top = 206
  Caption = 'XML Import/Export'
  ClientHeight = 923
  ClientWidth = 1246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object PageControl1: TPageControl
    Left = 0
    Top = 85
    Width = 1246
    Height = 785
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = tsExport
    Align = alClient
    TabOrder = 0
    object tsImport: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&XML Import to DB'
      object Label2: TLabel
        Left = 0
        Top = 42
        Width = 133
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'XML file att importera:'
      end
      object sbOpenWoodXFileToImport: TSpeedButton
        Left = 872
        Top = 31
        Width = 29
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '...'
        OnClick = sbOpenWoodXFileToImportClick
      end
      object edtFileToImport: TEdit
        Left = 146
        Top = 31
        Width = 724
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 0
      end
      object btnImport: TButton
        Left = 262
        Top = 178
        Width = 105
        Height = 33
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Do &Import'
        TabOrder = 2
        Visible = False
        OnClick = btnImportClick
      end
      object btnValidateImportFile: TButton
        Left = 146
        Top = 63
        Width = 211
        Height = 32
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acValidateImportFile
        TabOrder = 1
      end
      object Button1: TButton
        Left = 377
        Top = 63
        Width = 210
        Height = 32
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acImportPkgs
        TabOrder = 3
      end
    end
    object tsExport: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&DB Export to XML'
      ImageIndex = 1
      object Label4: TLabel
        Left = 31
        Top = 42
        Width = 114
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'XML export mapp:'
      end
      object SpeedButton2: TSpeedButton
        Left = 872
        Top = 31
        Width = 29
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object btnExport: TButton
        Left = 146
        Top = 67
        Width = 337
        Height = 32
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acExportPkgsToXMLFile
        TabOrder = 1
      end
      object btnValidateExportFile: TButton
        Left = 490
        Top = 67
        Width = 211
        Height = 32
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acValidateExportXMLFile
        TabOrder = 2
      end
      object edtFileToExport: TEdit
        Left = 146
        Top = 31
        Width = 724
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 0
      end
      object btnClearEmptyNode: TButton
        Left = 709
        Top = 67
        Width = 140
        Height = 32
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Clear Empty Node'
        TabOrder = 3
        Visible = False
        OnClick = btnClearEmptyNodeClick
      end
      object cbEmaila: TcxCheckBox
        Left = 146
        Top = 199
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Emaila'
        Properties.ImmediatePost = True
        State = cbsChecked
        TabOrder = 4
        Width = 159
      end
      object Button2: TButton
        Left = 146
        Top = 107
        Width = 337
        Height = 33
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acExportPkgsToXMLFileToInternational
        TabOrder = 5
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1246
    Height = 85
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 10
      Top = 52
      Width = 125
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'XSD fil f'#246'r validering:'
    end
    object Label1: TLabel
      Left = 10
      Top = 21
      Width = 158
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'SQL Server Connect Info:'
      Visible = False
    end
    object SpeedButton3: TSpeedButton
      Left = 904
      Top = 42
      Width = 28
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '...'
      OnClick = SpeedButton3Click
    end
    object edtXSDFileName: TEdit
      Left = 178
      Top = 42
      Width = 723
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 2
    end
    object edtConnectionString: TEdit
      Left = 178
      Top = 10
      Width = 723
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 0
      Text = 
        'Initial Catalog=vis_vwab;Provider=SQLOLEDB.1;uid=sa;pwd=huggkubb' +
        ';Persist Security Info=False;Data Source=vida912'
      Visible = False
    end
    object btnConnection: TButton
      Left = 904
      Top = 9
      Width = 98
      Height = 29
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Connection'
      TabOrder = 1
      Visible = False
      OnClick = btnConnectionClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 870
    Width = 1246
    Height = 53
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 502
      Top = 10
      Width = 98
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'St'#228'ng'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 858
      Top = 10
      Width = 98
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      Visible = False
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=woods2011;Persist Security Info=Tru' +
      'e;User ID=Lars;Initial Catalog=vis_vida;Data Source=vis.vida.se'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = ADOConnection1BeforeConnect
    Left = 304
    Top = 193
  end
  object dsInfo: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 624
    Top = 193
  end
  object opd: TOpenDialog
    Filter = '*.xml|*.xml|*.*|*.*'
    Left = 388
    Top = 193
  end
  object svd: TSaveDialog
    Filter = '*.xml|*.xml|*.*|*.*'
    Left = 436
    Top = 193
  end
  object opdxs: TOpenDialog
    Filter = '*.xsd|*.xsd|*.*|*.*'
    Left = 492
    Top = 193
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 676
    Top = 193
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 384
    Top = 305
  end
  object ActionList1: TActionList
    Left = 620
    Top = 249
    object acValidateImportFile: TAction
      Caption = 'Validera XML fil'
      OnExecute = acValidateImportFileExecute
      OnUpdate = acValidateImportFileUpdate
    end
    object acImportPkgs: TAction
      Caption = 'Importera paket'
      OnExecute = acImportPkgsExecute
      OnUpdate = acImportPkgsUpdate
    end
    object acExportPkgsToXMLFile: TAction
      Caption = 'Exportera fakturapaketspec till woodx'
      OnExecute = acExportPkgsToXMLFileExecute
    end
    object acValidateExportXMLFile: TAction
      Caption = 'Validera XML fil'
      OnExecute = acValidateExportXMLFileExecute
      OnUpdate = acValidateExportXMLFileUpdate
    end
    object acExportPkgsToXMLFileToInternational: TAction
      Caption = 'Exportera fakturapaketspec till woodx (via BizTalk)'
      OnExecute = acExportPkgsToXMLFileToInternationalExecute
    end
  end
  object sq_GetLONos: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'InternalInvoiceNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select DeliveryMessageNumber FROM dbo.DeliveryMessageWoodHeader '
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    Left = 388
    Top = 241
    object sq_GetLONosDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 30
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 150
    OnTimer = Timer1Timer
    Left = 300
    Top = 241
  end
end
