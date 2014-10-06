object fCountry: TfCountry
  Left = 288
  Top = 181
  Caption = 'LAND'
  ClientHeight = 440
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 42
    Width = 495
    Height = 398
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    ExplicitTop = 40
    ExplicitWidth = 503
    ExplicitHeight = 411
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Cancel.Visible = True
      DataController.DataSource = dmsContact.ds_Country
      DataController.KeyFieldNames = 'CountryNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CountryName: TcxGridDBColumn
        DataBinding.FieldName = 'CountryName'
        PropertiesClassName = 'TcxMaskEditProperties'
        SortIndex = 0
        SortOrder = soAscending
        Width = 249
      end
      object cxGrid1DBTableView1CountryCode: TcxGridDBColumn
        DataBinding.FieldName = 'CountryCode'
        PropertiesClassName = 'TcxMaskEditProperties'
        Width = 108
      end
      object cxGrid1DBTableView1CountryPhoneCode: TcxGridDBColumn
        DataBinding.FieldName = 'CountryPhoneCode'
        PropertiesClassName = 'TcxMaskEditProperties'
        Width = 137
      end
      object cxGrid1DBTableView1MarketRegionNo: TcxGridDBColumn
        DataBinding.FieldName = 'MarketRegionNo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1CountryNo: TcxGridDBColumn
        DataBinding.FieldName = 'CountryNo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1ModifiedUser: TcxGridDBColumn
        DataBinding.FieldName = 'ModifiedUser'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1SequenceNo: TcxGridDBColumn
        DataBinding.FieldName = 'SequenceNo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 495
    Height = 42
    Align = dalTop
    BarManager = dxBarManager1
  end
  object ActionList1: TActionList
    Left = 304
    Top = 176
    object Delete_UT: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Ta bort F5'
      ImageIndex = 0
      ShortCut = 116
      OnExecute = Delete_UTExecute
      DataSource = dmsContact.ds_Country
    end
    object acExit: TAction
      Category = 'Dataset'
      Caption = 'St'#228'ng F12'
      ImageIndex = 5
      ShortCut = 123
      OnExecute = acExitExecute
    end
    object acSave: TAction
      Category = 'Dataset'
      Caption = 'Spara F3'
      ImageIndex = 2
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancel: TAction
      Category = 'Dataset'
      Caption = #197'ngra F4'
      ImageIndex = 3
      ShortCut = 115
      OnExecute = acCancelExecute
      OnUpdate = acCancelUpdate
    end
    object acAddCountry: TAction
      Category = 'Dataset'
      Caption = 'Nytt land F2'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acAddCountryExecute
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 248
    Top = 200
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
      Action = acAddCountry
      Category = 0
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
      Action = acCancel
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
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 80
    Top = 112
    object NyttlandF21: TMenuItem
      Action = acAddCountry
    end
    object ngraF41: TMenuItem
      Action = acCancel
    end
    object StngF121: TMenuItem
      Action = acExit
    end
    object SparaF31: TMenuItem
      Action = acSave
    end
    object abortF51: TMenuItem
      Action = Delete_UT
    end
  end
end
