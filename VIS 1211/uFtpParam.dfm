object fFtpParam: TfFtpParam
  Left = 258
  Top = 98
  Caption = 'FTP setup'
  ClientHeight = 809
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdFTP: TcxGrid
    Left = 0
    Top = 46
    Width = 1043
    Height = 221
    Align = alTop
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    object grdFTPDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Cancel.Visible = True
      DataController.DataSource = dmsSystem.ds_FtpParam
      DataController.KeyFieldNames = 'ConnectionNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsBehavior.IncSearch = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdFTPDBTableView1ConnectionName: TcxGridDBColumn
        DataBinding.FieldName = 'ConnectionName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 87
      end
      object grdFTPDBTableView1ConnectionNo: TcxGridDBColumn
        DataBinding.FieldName = 'ConnectionNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 77
      end
      object grdFTPDBTableView1Host: TcxGridDBColumn
        DataBinding.FieldName = 'Host'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 93
      end
      object grdFTPDBTableView1Port: TcxGridDBColumn
        DataBinding.FieldName = 'Port'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 62
      end
      object grdFTPDBTableView1UserName: TcxGridDBColumn
        DataBinding.FieldName = 'UserName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 59
      end
      object grdFTPDBTableView1Password: TcxGridDBColumn
        DataBinding.FieldName = 'Password'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.PasswordChar = '*'
        Width = 77
      end
      object grdFTPDBTableView1StartDir: TcxGridDBColumn
        Caption = 'Download dir'
        DataBinding.FieldName = 'StartDir'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 92
      end
      object grdFTPDBTableView1PassiveMode: TcxGridDBColumn
        DataBinding.FieldName = 'PassiveMode'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 75
      end
      object grdFTPDBTableView1AsciiMode: TcxGridDBColumn
        DataBinding.FieldName = 'AsciiMode'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 68
      end
      object grdFTPDBTableView1LocalDir: TcxGridDBColumn
        DataBinding.FieldName = 'LocalDir'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = grdFTPDBTableView1LocalDirPropertiesButtonClick
        Width = 180
      end
      object grdFTPDBTableView1StartDirUpload: TcxGridDBColumn
        Caption = 'Upload dir'
        DataBinding.FieldName = 'StartDirUpload'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 179
      end
    end
    object grdFTPLevel1: TcxGridLevel
      GridView = grdFTPDBTableView1
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1043
    Height = 46
    Align = dalTop
    BarManager = dxBarManager1
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 267
    Width = 1043
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = grdFTP
    Color = clMaroon
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 275
    Width = 1043
    Height = 534
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 7
    object cxLabel1: TcxLabel
      Left = 32
      Top = 16
      Caption = 'Namn'
    end
    object cxLabel2: TcxLabel
      Left = 32
      Top = 40
      Caption = 'Host'
    end
    object cxLabel3: TcxLabel
      Left = 32
      Top = 64
      Caption = 'Port'
    end
    object cxLabel4: TcxLabel
      Left = 32
      Top = 88
      Caption = 'User'
    end
    object cxLabel5: TcxLabel
      Left = 32
      Top = 112
      Caption = 'L'#246'sen'
    end
    object cxLabel6: TcxLabel
      Left = 32
      Top = 132
      Caption = 'Download dir'
    end
    object teConnectionName: TcxDBTextEdit
      Left = 136
      Top = 8
      DataBinding.DataField = 'ConnectionName'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      TabOrder = 6
      Width = 121
    end
    object teHost: TcxDBTextEdit
      Left = 136
      Top = 32
      DataBinding.DataField = 'Host'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      TabOrder = 7
      Width = 121
    end
    object tePort: TcxDBTextEdit
      Left = 136
      Top = 56
      DataBinding.DataField = 'Port'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      TabOrder = 8
      Width = 121
    end
    object teUserName: TcxDBTextEdit
      Left = 136
      Top = 80
      DataBinding.DataField = 'UserName'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      TabOrder = 9
      Width = 121
    end
    object tePassword: TcxDBTextEdit
      Left = 136
      Top = 104
      DataBinding.DataField = 'Password'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      TabOrder = 10
      Width = 121
    end
    object teStartDir: TcxDBTextEdit
      Left = 136
      Top = 128
      DataBinding.DataField = 'StartDir'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      TabOrder = 11
      Width = 321
    end
    object cbPassiveMode: TcxDBCheckBox
      Left = 136
      Top = 240
      Caption = 'Passive mode'
      DataBinding.DataField = 'PassiveMode'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 14
      Width = 121
    end
    object cbAsciiMode: TcxDBCheckBox
      Left = 136
      Top = 272
      Caption = 'Ascii mode'
      DataBinding.DataField = 'AsciiMode'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 15
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 40
      Top = 400
      Width = 161
      Height = 33
      Action = acImportMapp
      TabOrder = 16
      Visible = False
    end
    object cxLabel7: TcxLabel
      Left = 40
      Top = 440
      Caption = 'Lokal mapp'
      Visible = False
    end
    object cxLabelImportMapp: TcxLabel
      Left = 104
      Top = 440
      ParentColor = False
      Style.Color = clSilver
      Visible = False
    end
    object cxLabel8: TcxLabel
      Left = 32
      Top = 183
      Caption = 'Local dir'
    end
    object beLocalDir: TcxDBButtonEdit
      Left = 136
      Top = 179
      DataBinding.DataField = 'LocalDir'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = beLocalDirPropertiesButtonClick
      TabOrder = 13
      Width = 321
    end
    object Panel2: TPanel
      Left = 529
      Top = 0
      Width = 514
      Height = 534
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 20
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 514
        Height = 49
        Align = alTop
        TabOrder = 0
        object cxButton2: TcxButton
          Left = 8
          Top = 8
          Width = 98
          Height = 33
          Action = acTestConnection
          Caption = 'Testa Ftp'
          TabOrder = 0
        end
        object rgListRemoteDir: TcxRadioGroup
          Left = 296
          Top = 4
          Caption = 'Lista'
          Properties.Columns = 2
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Caption = 'Download dir'
              Value = 0
            end
            item
              Caption = 'Upload dir'
              Value = 1
            end>
          ItemIndex = 0
          TabOrder = 1
          Height = 41
          Width = 209
        end
        object cxButton3: TcxButton
          Left = 109
          Top = 8
          Width = 98
          Height = 33
          Action = acCloseFTP
          TabOrder = 2
        end
      end
      object memLog: TMemo
        Left = 0
        Top = 49
        Width = 514
        Height = 231
        Align = alTop
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 280
        Width = 514
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salTop
        Control = memLog
        Color = clMaroon
        ParentColor = False
      end
      object lbFiles: TListBox
        Left = 0
        Top = 288
        Width = 514
        Height = 246
        Align = alClient
        ItemHeight = 13
        Sorted = True
        TabOrder = 3
      end
    end
    object cxLabel9: TcxLabel
      Left = 32
      Top = 157
      Caption = 'Upload dir'
    end
    object tStartDirUpload: TcxDBTextEdit
      Left = 136
      Top = 153
      DataBinding.DataField = 'StartDirUpload'
      DataBinding.DataSource = dmsSystem.ds_FtpParam
      TabOrder = 12
      Width = 321
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 184
    Top = 152
    object Delete_UT: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Ta bort F5'
      ImageIndex = 6
      ShortCut = 116
      OnExecute = Delete_UTExecute
    end
    object acExit: TAction
      Category = 'Dataset'
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acExitExecute
    end
    object acSave: TAction
      Category = 'Dataset'
      Caption = 'Spara F3'
      ImageIndex = 15
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancelChanges: TAction
      Category = 'Dataset'
      Caption = #197'ngra F4'
      ImageIndex = 10
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acNewCity: TAction
      Caption = 'L'#228'gg till'
      ImageIndex = 1
      OnExecute = acNewCityExecute
    end
    object acImportMapp: TAction
      Caption = #196'ndra lokal mapp'
      ImageIndex = 2
      OnExecute = acImportMappExecute
    end
    object acTestConnection: TAction
      Caption = 'Testa'
      ImageIndex = 7
      OnExecute = acTestConnectionExecute
    end
    object acCloseFTP: TAction
      Caption = 'St'#228'ng FTP'
      ImageIndex = 6
      OnExecute = acCloseFTPExecute
    end
    object acGetFile: TAction
      Caption = 'H'#228'mta fil'
      OnExecute = acGetFileExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dmsConnector.imglistActions
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 176
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
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Ny F2'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 113
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = '&L'#228'gg till spr'#229'k'
      Category = 0
      Hint = 'L'#228'gg till spr'#229'k'
      Visible = ivAlways
      LargeImageIndex = 8
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = Delete_UT
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acExit
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acTestConnection
      Category = 0
    end
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 96
    Top = 88
    object ngraF41: TMenuItem
      Action = acCancelChanges
    end
    object StngF121: TMenuItem
      Action = acExit
    end
    object NyF21: TMenuItem
      Caption = 'Ny F2'
      ImageIndex = 1
      ShortCut = 113
    end
    object Lggtill1: TMenuItem
      Action = acNewCity
    end
    object SparaF31: TMenuItem
      Action = acSave
    end
    object abortF51: TMenuItem
      Action = Delete_UT
    end
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 472
    Top = 423
  end
end
