object FormCRViewReport: TFormCRViewReport
  Left = 213
  Top = 83
  Caption = 'F'#246'rhandsgranska rapport'
  ClientHeight = 848
  ClientWidth = 1429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object CrystalActiveXReportViewer1: TCrystalActiveXReportViewer
    Left = 0
    Top = 0
    Width = 1429
    Height = 848
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    ControlData = {
      10070000FE770000364700000B00FFFF0B00FFFF0B00FFFF0B00FFFF0B00FFFF
      0B00FFFF0B00FFFF0B00FFFF0B0000000B00FFFF0B00FFFF0B00FFFF0B00FFFF
      0B0000000B00FFFF0B00FFFF0B00FFFF0B00FFFF08000200000000000B00FFFF
      0B00FFFF0B0000000B0000000B00FFFF0B00FFFF13001D040000}
  end
  object Application1: TApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 56
    Top = 152
  end
end
