object fInvCtrlList: TfInvCtrlList
  Left = 235
  Top = 107
  Width = 702
  Height = 549
  Caption = 'Inventeringar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grdInvCtrlList: TcxGrid
    Left = 0
    Top = 0
    Width = 694
    Height = 469
    Align = alClient
    TabOrder = 0
    object grdInvCtrlListDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmInvCtrl.ds_InvCtrlList
      DataController.KeyFieldNames = 'IC_grpno'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object grdInvCtrlListDBTableView1IC_grpno: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpno'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 125
      end
      object grdInvCtrlListDBTableView1Inventeringsdatum: TcxGridDBColumn
        DataBinding.FieldName = 'Inventeringsdatum'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 149
      end
      object grdInvCtrlListDBTableView1Note: TcxGridDBColumn
        DataBinding.FieldName = 'Note'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = True
        Width = 132
      end
      object grdInvCtrlListDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 77
      end
      object grdInvCtrlListDBTableView1MaxDatum: TcxGridDBColumn
        DataBinding.FieldName = 'MaxDatum'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdInvCtrlListDBTableView1PhyInvPointNameNo: TcxGridDBColumn
        DataBinding.FieldName = 'PhyInvPointNameNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdInvCtrlListDBTableView1OwnerNo: TcxGridDBColumn
        DataBinding.FieldName = 'OwnerNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdInvCtrlListDBTableView1VerkNo: TcxGridDBColumn
        DataBinding.FieldName = 'VerkNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdInvCtrlListDBTableView1GrupperRapportPerTS: TcxGridDBColumn
        DataBinding.FieldName = 'GrupperRapportPerTS'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdInvCtrlListLevel1: TcxGridLevel
      GridView = grdInvCtrlListDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 469
    Width = 694
    Height = 53
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 280
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 368
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
