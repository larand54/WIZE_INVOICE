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
    Left = 240
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004200610073004D0061007400500075006E006B00
      740065007200010042006100730020006D00E4007400700075006E006B007400
      650072000100010001000D000A0067007200640052006500670050006F006900
      6E0074007300440042005400610062006C006500560069006500770031005200
      6500670050006F0069006E0074004E0061006D00650001005200650067005000
      6F0069006E0074004E0061006D0065000100010001000D000A00670072006400
      52006500670050006F0069006E0074007300440042005400610062006C006500
      56006900650077003100530065007100750065006E00630065004E006F000100
      530065007100750065006E00630065004E006F000100010001000D000A006100
      630041006400640001004C00E400670067002000740069006C006C0001000100
      01000D000A0061006300440065006C0065007400650001005400610020006200
      6F00720074000100010001000D000A0061006300430061006E00630065006C00
      4300680061006E006700650073000100C5006E00670072006100010001000100
      0D000A0061006300530061007600650001005300700061007200610001000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      4200610073004D0061007400500075006E006B0074006500720001004D005300
      2000530061006E00730020005300650072006900660001004D00530020005300
      61006E00730020005300650072006900660001005400610068006F006D006100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      4200610073004D0061007400500075006E006B00740065007200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
