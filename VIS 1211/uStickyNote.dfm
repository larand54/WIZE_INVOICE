object frmStickyNote: TfrmStickyNote
  Left = 321
  Top = 215
  BorderStyle = bsDialog
  Caption = 'POST IT!'
  ClientHeight = 133
  ClientWidth = 166
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object mStickyNote: TMemo
    Left = 0
    Top = 0
    Width = 166
    Height = 133
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clYellow
    Lines.Strings = (
      'mStickyNote')
    ReadOnly = True
    TabOrder = 0
  end
end
