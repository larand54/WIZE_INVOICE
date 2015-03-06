inherited frmArrivingLoads: TfrmArrivingLoads
  Tag = 1
  Left = 194
  Top = 105
  Caption = 'frmArrivingLoads'
  ClientHeight = 607
  ClientWidth = 1028
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 52
    Width = 1028
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clBlack
    ParentColor = False
    ExplicitTop = 417
  end
  inherited Panel6: TPanel
    Width = 1028
    ExplicitWidth = 1028
    inherited Panel8: TPanel
      Width = 590
      ExplicitWidth = 590
    end
    inherited Panel9: TPanel
      Left = 958
      ExplicitLeft = 958
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 56
    Width = 1028
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    Caption = 'LOAD DETAILS'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
