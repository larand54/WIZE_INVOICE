object fKundspecifika: TfKundspecifika
  Left = 437
  Top = 139
  Caption = 'Crystal rapporter'
  ClientHeight = 668
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 56
    Align = alTop
    TabOrder = 0
    DesignSize = (
      707
      56)
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 42
      Action = acAddReport
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 42
      Action = acTaBort
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 192
      Top = 8
      Width = 75
      Height = 42
      Action = acSave
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 636
      Top = 8
      Width = 75
      Height = 42
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
  end
  object grdKundspecifika: TcxGrid
    Left = 0
    Top = 56
    Width = 707
    Height = 612
    Align = alClient
    TabOrder = 1
    object grdKundspecifikaDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.dsRptNames
      DataController.KeyFieldNames = 'ReportNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdKundspecifikaDBTableView1DocTypeName: TcxGridDBColumn
        DataBinding.FieldName = 'DocTypeName'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'DocType'
        Properties.ListColumns = <
          item
            FieldName = 'ReportType'
          end>
        Width = 126
      end
      object grdKundspecifikaDBTableView1DocType: TcxGridDBColumn
        DataBinding.FieldName = 'DocType'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 67
      end
      object grdKundspecifikaDBTableView1ReportName: TcxGridDBColumn
        DataBinding.FieldName = 'ReportName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 280
      end
      object grdKundspecifikaDBTableView1Beskrivning: TcxGridDBColumn
        DataBinding.FieldName = 'Beskrivning'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 177
      end
      object grdKundspecifikaDBTableView1ReportNo: TcxGridDBColumn
        DataBinding.FieldName = 'ReportNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 63
      end
    end
    object grdKundspecifikaLevel1: TcxGridLevel
      GridView = grdKundspecifikaDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 440
    Top = 128
    object acAddReport: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddReportExecute
    end
    object acTaBort: TAction
      Caption = 'Ta bort'
      OnExecute = acTaBortExecute
      OnUpdate = acTaBortUpdate
    end
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
  end
  object siLangLinked_fKundspecifika: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HelpFile'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'Origin'
      'PropertiesClassName')
    Left = 344
    Top = 336
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004B0075006E006400730070006500630069006600
      69006B00610001004300720079007300740061006C0020007200610070007000
      6F0072007400650072000100010001000D000A006700720064004B0075006E00
      640073007000650063006900660069006B006100440042005400610062006C00
      65005600690065007700310044006F00630054007900700065004E0061006D00
      65000100540079007000200061007600200072006100700070006F0072007400
      0100010001000D000A006700720064004B0075006E0064007300700065006300
      6900660069006B006100440042005400610062006C0065005600690065007700
      310044006F0063005400790070006500010044006F0063005400790070006500
      0100010001000D000A006700720064004B0075006E0064007300700065006300
      6900660069006B006100440042005400610062006C0065005600690065007700
      31005200650070006F00720074004E0061006D00650001004300720079007300
      740061006C00200072006100700070006F00720074000100010001000D000A00
      6700720064004B0075006E00640073007000650063006900660069006B006100
      440042005400610062006C006500560069006500770031004200650073006B00
      7200690076006E0069006E00670001004200650073006B007200690076006E00
      69006E0067000100010001000D000A006700720064004B0075006E0064007300
      7000650063006900660069006B006100440042005400610062006C0065005600
      69006500770031005200650070006F00720074004E006F000100520065007000
      6F00720074004E006F000100010001000D000A00610063004100640064005200
      650070006F007200740001004C00E400670067002000740069006C006C000100
      010001000D000A00610063005400610042006F00720074000100540061002000
      62006F00720074000100010001000D000A006100630053006100760065000100
      530070006100720061000100010001000D000A006100630043006C006F007300
      6500010053007400E4006E0067000100010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A00540066004B0075006E006400730070006500
      63006900660069006B00610001004D0053002000530061006E00730020005300
      650072006900660001004D0053002000530061006E0073002000530065007200
      6900660001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A006700720064004B0075006E006400730070006500630069006600
      69006B006100440042005400610062006C006500560069006500770031004400
      6F00630054007900700065004E0061006D0065002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E000100520065007000
      6F00720074005400790070006500010001000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      66004B0075006E00640073007000650063006900660069006B00610001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
