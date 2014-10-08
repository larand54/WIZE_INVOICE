object fBasMatPunkter: TfBasMatPunkter
  Left = 244
  Top = 106
  Caption = 'Bas m'#228'tpunkter'
  ClientHeight = 442
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 498
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 24
      Top = 16
      Width = 89
      Height = 25
      Action = acAdd
      Caption = 'L'#228'gg till'
      TabOrder = 0
    end
    object bbRemove: TBitBtn
      Left = 120
      Top = 16
      Width = 89
      Height = 25
      Action = acDelete
      Caption = 'Ta bort'
      TabOrder = 1
    end
    object bbApplyChanges: TBitBtn
      Left = 224
      Top = 16
      Width = 91
      Height = 25
      Action = acSave
      Caption = 'Spara'
      TabOrder = 2
    end
    object bbCancelChanges: TBitBtn
      Left = 328
      Top = 16
      Width = 89
      Height = 25
      Action = acCancelChanges
      Caption = #197'ngra'
      TabOrder = 3
    end
  end
  object grdRegPoints: TcxGrid
    Left = 0
    Top = 57
    Width = 498
    Height = 385
    Align = alClient
    TabOrder = 1
    object grdRegPointsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsContact.ds_RegPoints
      DataController.KeyFieldNames = 'RegPointNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdRegPointsDBTableView1RegPointName: TcxGridDBColumn
        DataBinding.FieldName = 'RegPointName'
        PropertiesClassName = 'TcxTextEditProperties'
        Options.Filtering = False
      end
      object grdRegPointsDBTableView1SequenceNo: TcxGridDBColumn
        DataBinding.FieldName = 'SequenceNo'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Filtering = False
      end
    end
    object grdRegPointsLevel1: TcxGridLevel
      GridView = grdRegPointsDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 152
    Top = 160
    object acAdd: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddExecute
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
      OnUpdate = acDeleteUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra'
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
  end
  object siLangLinked_fBasMatPunkter: TsiLangLinked
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
    Left = 240
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004200610073004D0061007400500075006E006B00
      740065007200010042006100730020006D00E4007400700075006E006B007400
      65007200010001000D000A0067007200640052006500670050006F0069006E00
      74007300440042005400610062006C0065005600690065007700310052006500
      670050006F0069006E0074004E0061006D006500010052006500670050006F00
      69006E0074004E0061006D006500010001000D000A0067007200640052006500
      670050006F0069006E0074007300440042005400610062006C00650056006900
      650077003100530065007100750065006E00630065004E006F00010053006500
      7100750065006E00630065004E006F00010001000D000A006100630041006400
      640001004C00E400670067002000740069006C006C00010001000D000A006100
      6300440065006C00650074006500010054006100200062006F00720074000100
      01000D000A0061006300430061006E00630065006C004300680061006E006700
      650073000100C5006E00670072006100010001000D000A006100630053006100
      76006500010053007000610072006100010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A00540066004200610073004D00610074005000
      75006E006B0074006500720001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A006700720064005200650067005000
      6F0069006E0074007300440042005400610062006C0065005600690065007700
      310052006500670050006F0069006E0074004E0061006D0065002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780054006500780074004500640069007400500072006F00
      7000650072007400690065007300010001000D000A0067007200640052006500
      670050006F0069006E0074007300440042005400610062006C00650056006900
      650077003100530065007100750065006E00630065004E006F002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      43006800650063006B006500640001005400720075006500010001000D000A00
      67007200640052006500670050006F0069006E00740073004400420054006100
      62006C00650056006900650077003100530065007100750065006E0063006500
      4E006F002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790055006E0063006800650063006B006500640001004600
      61006C0073006500010001000D000A0067007200640052006500670050006F00
      69006E0074007300440042005400610062006C00650056006900650077003100
      530065007100750065006E00630065004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780043006800650063006B0042006F007800500072006F00700065007200
      7400690065007300010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A00540066004200610073004D0061007400500075006E006B007400
      650072000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00}
  end
end
