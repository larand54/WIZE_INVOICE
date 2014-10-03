object Form1: TForm1
  Left = 189
  Top = 230
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 688
    Height = 44
    Align = dalTop
    BarManager = dxBarManager1
  end
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 688
    Height = 409
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 5
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        Caption = 'Custom 1'
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
            Item = beSearchLO
            Visible = True
          end
          item
            Item = bcCompany
            Visible = True
          end
          item
            Item = beSearchLO
            Visible = True
          end>
        Name = 'Custom 1'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'Custom 2'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 321
        DockedTop = 0
        FloatLeft = 239
        FloatTop = 346
        FloatClientWidth = 197
        FloatClientHeight = 120
        ItemLinks = <
          item
            Item = lbUndoConfirm
            Visible = True
          end
          item
            Item = lbDeleteLoad
            Visible = True
          end
          item
            Item = lbConfirmLoad
            Visible = True
          end
          item
            Item = lbPrintLoad
            Visible = True
          end
          item
            Item = lbRefresh
            Visible = True
          end
          item
            Item = lbExit
            Visible = True
          end>
        Name = 'Custom 2'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 232
    Top = 40
    DockControlHeights = (
      0
      0
      0
      0)
    object bcCompany: TdxBarCombo
      Caption = 'Company'
      Category = 0
      Hint = 'Company'
      Visible = ivAlways
      Width = 100
      ItemIndex = -1
    end
    object bcConfirmed: TdxBarCombo
      Caption = 'Confirmed'
      Category = 0
      Hint = 'Confirmed'
      Visible = ivAlways
      Width = 100
      ItemIndex = -1
    end
    object beSearchLO: TdxBarEdit
      Caption = 'Search LO'
      Category = 0
      Hint = 'Search LO'
      Visible = ivAlways
      Width = 100
    end
    object lbExit: TdxBarLargeButton
      Caption = 'Exit'
      Category = 0
      Hint = 'Exit'
      Visible = ivAlways
    end
    object lbRefresh: TdxBarLargeButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
    end
    object lbConfirmLoad: TdxBarLargeButton
      Caption = 'Confirm Load'
      Category = 0
      Hint = 'Confirm Load'
      Visible = ivAlways
    end
    object lbDeleteLoad: TdxBarLargeButton
      Caption = 'Delete Load'
      Category = 0
      Hint = 'Delete Load'
      Visible = ivAlways
    end
    object lbPrintLoad: TdxBarLargeButton
      Caption = 'Print Load'
      Category = 0
      Hint = 'Print Load'
      Visible = ivAlways
    end
    object lbUndoConfirm: TdxBarLargeButton
      Caption = 'Undo Confirm'
      Category = 0
      Hint = 'Undo Confirm'
      Visible = ivAlways
    end
  end
end
