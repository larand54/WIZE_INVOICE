object fAnkomstRegProgress: TfAnkomstRegProgress
  Left = 276
  Top = 134
  Width = 529
  Height = 238
  Caption = 'Progress'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBLabel1: TcxDBLabel
    Left = 184
    Top = 80
    DataBinding.DataField = 'LOADNO'
    DataBinding.DataSource = dmArrivingLoads.dsrcArrivingLoads
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 161
    AnchorX = 265
  end
  object cxLabel1: TcxLabel
    Left = 160
    Top = 40
    Caption = 'Ankomstregistrerar lastnr'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel2: TcxLabel
    Left = 160
    Top = 128
    AutoSize = False
    Caption = 'v'#228'nta...'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Height = 28
    Width = 209
    AnchorX = 265
  end
end
