object fEnterLoadWeight: TfEnterLoadWeight
  Left = 197
  Top = 107
  Caption = 'Lastvikt'
  ClientHeight = 465
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 389
    Width = 601
    Height = 76
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 240
      Top = 16
      Width = 129
      Height = 41
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object grdLoadWeight: TcxGrid
    Left = 0
    Top = 41
    Width = 601
    Height = 348
    Align = alClient
    TabOrder = 2
    object grdLoadWeightDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dmsSystem.ds_LoadWeigth
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###.00'
          Kind = skSum
          FieldName = 'LoadWeightKG'
          Column = grdLoadWeightDBTableView1LoadWeightKG
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object grdLoadWeightDBTableView1LoadNo: TcxGridDBColumn
        DataBinding.FieldName = 'LoadNo'
        Width = 129
      end
      object grdLoadWeightDBTableView1Reference: TcxGridDBColumn
        Caption = 'Leveransadress'
        DataBinding.FieldName = 'Reference'
        Width = 336
      end
      object grdLoadWeightDBTableView1LoadWeightKG: TcxGridDBColumn
        DataBinding.FieldName = 'LoadWeightKG'
        Width = 142
      end
    end
    object grdLoadWeightLevel1: TcxGridLevel
      GridView = grdLoadWeightDBTableView1
    end
  end
  object siLangLinked_fEnterLoadWeight: TsiLangLinked
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
    Left = 296
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400650072004C006F00610064005700
      6500690067006800740001004C00610073007400760069006B00740001000100
      0D000A006300780042007500740074006F006E00310001004F004B0001000100
      0D000A006700720064004C006F00610064005700650069006700680074004400
      42005400610062006C006500560069006500770031004C006F00610064004E00
      6F0001004C006100730074006E007200010001000D000A006700720064004C00
      6F0061006400570065006900670068007400440042005400610062006C006500
      560069006500770031005200650066006500720065006E006300650001004C00
      650076006500720061006E007300610064007200650073007300010001000D00
      0A006700720064004C006F006100640057006500690067006800740044004200
      5400610062006C006500560069006500770031004C006F006100640057006500
      69006700680074004B0047000100560069006B0074002C0020006B0067000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      45006E007400650072004C006F00610064005700650069006700680074000100
      4D0053002000530061006E007300200053006500720069006600010001000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066004500
      6E007400650072004C006F006100640057006500690067006800740001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00}
  end
end
