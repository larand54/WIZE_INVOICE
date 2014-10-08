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
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
      'ListField')
    Left = 344
    Top = 336
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004B0075006E006400730070006500630069006600
      69006B00610001004300720079007300740061006C0020007200610070007000
      6F007200740065007200010001000D000A006700720064004B0075006E006400
      73007000650063006900660069006B006100440042005400610062006C006500
      5600690065007700310044006F00630054007900700065004E0061006D006500
      0100540079007000200061007600200072006100700070006F00720074000100
      01000D000A006700720064004B0075006E006400730070006500630069006600
      69006B006100440042005400610062006C006500560069006500770031004400
      6F0063005400790070006500010044006F006300540079007000650001000100
      0D000A006700720064004B0075006E0064007300700065006300690066006900
      6B006100440042005400610062006C0065005600690065007700310052006500
      70006F00720074004E0061006D00650001004300720079007300740061006C00
      200072006100700070006F0072007400010001000D000A006700720064004B00
      75006E00640073007000650063006900660069006B0061004400420054006100
      62006C006500560069006500770031004200650073006B007200690076006E00
      69006E00670001004200650073006B007200690076006E0069006E0067000100
      01000D000A006700720064004B0075006E006400730070006500630069006600
      69006B006100440042005400610062006C006500560069006500770031005200
      650070006F00720074004E006F0001005200650070006F00720074004E006F00
      010001000D000A00610063004100640064005200650070006F00720074000100
      4C00E400670067002000740069006C006C00010001000D000A00610063005400
      610042006F0072007400010054006100200062006F0072007400010001000D00
      0A00610063005300610076006500010053007000610072006100010001000D00
      0A006100630043006C006F0073006500010053007400E4006E00670001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066004B00
      75006E00640073007000650063006900660069006B00610001004D0053002000
      530061006E007300200053006500720069006600010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006700
      720064004B0075006E00640073007000650063006900660069006B0061004400
      42005400610062006C0065005600690065007700310044006F00630054007900
      700065004E0061006D0065002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      44006F0063005400790070006500010001000D000A006700720064004B007500
      6E00640073007000650063006900660069006B00610044004200540061006200
      6C0065005600690065007700310044006F00630054007900700065004E006100
      6D0065002E00500072006F0070006500720074006900650073002E004C006900
      730074004600690065006C0064004E0061006D00650073000100520065007000
      6F00720074005400790070006500010001000D000A006700720064004B007500
      6E00640073007000650063006900660069006B00610044004200540061006200
      6C0065005600690065007700310044006F00630054007900700065004E006100
      6D0065002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006F006F006B0075007000
      43006F006D0062006F0042006F007800500072006F0070006500720074006900
      65007300010001000D000A006700720064004B0075006E006400730070006500
      63006900660069006B006100440042005400610062006C006500560069006500
      7700310044006F00630054007900700065002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004B0075006E00640073007000650063006900
      660069006B006100440042005400610062006C00650056006900650077003100
      5200650070006F00720074004E0061006D0065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780054006500780074004500640069007400500072006F00700065007200
      7400690065007300010001000D000A006700720064004B0075006E0064007300
      7000650063006900660069006B006100440042005400610062006C0065005600
      69006500770031004200650073006B007200690076006E0069006E0067002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800540065007800740045006400690074005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4B0075006E00640073007000650063006900660069006B006100440042005400
      610062006C006500560069006500770031005200650070006F00720074004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A006700720064004B0075006E006400730070006500630069006600
      69006B006100440042005400610062006C006500560069006500770031004400
      6F00630054007900700065004E0061006D0065002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E000100520065007000
      6F00720074005400790070006500010001000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      66004B0075006E00640073007000650063006900660069006B00610001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00}
  end
end
