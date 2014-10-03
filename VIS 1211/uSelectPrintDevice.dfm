object fSelectPrintDevice: TfSelectPrintDevice
  Left = 602
  Top = 276
  BorderStyle = bsDialog
  Caption = 'V'#228'lj enhet'
  ClientHeight = 347
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object bSkrivare: TcxButton
    Left = 24
    Top = 48
    Width = 200
    Height = 81
    Caption = 'Skrivare'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bSkrivareClick
  end
  object bBildskarm: TcxButton
    Left = 24
    Top = 144
    Width = 200
    Height = 81
    Caption = 'Bildsk'#228'rm'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bBildskarmClick
  end
  object bAngra: TcxButton
    Left = 24
    Top = 240
    Width = 200
    Height = 81
    Caption = #197'ngra'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bAngraClick
  end
  object seNoOfCopies: TcxDBSpinEdit
    Left = 104
    Top = 8
    DataBinding.DataField = 'CopyPcs'
    DataBinding.DataSource = dmcOrder.ds_Props
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 24
    Top = 16
    Caption = 'Kopior:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
end
