object frmPackagePicker: TfrmPackagePicker
  Left = 218
  Top = 210
  ActiveControl = grdPkgs
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  ClientHeight = 204
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 162
    Width = 892
    Height = 42
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 154
    ExplicitWidth = 766
    object btnOK: TBitBtn
      Left = 381
      Top = 1
      Width = 72
      Height = 39
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 459
      Top = 1
      Width = 72
      Height = 39
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 162
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 766
    ExplicitHeight = 154
    object grdPkgs: TcxGrid
      Left = 1
      Top = 1
      Width = 890
      Height = 160
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 764
      ExplicitHeight = 152
      object grdPackages: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.KeyFieldNames = 'PackageNo;SupplierCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdPackagesPackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 65
        end
        object grdPackagesSupplierCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SupplierCode'
          Width = 54
        end
        object grdPackagesProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          Width = 468
        end
        object grdPackagesSupplierNo: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierNo'
          Visible = False
        end
        object grdPackagesLengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngd'
          DataBinding.FieldName = 'LengthDescription'
          Width = 289
        end
        object grdPackagesProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          Visible = False
        end
        object grdPackagesNoOfLengths: TcxGridDBColumn
          DataBinding.FieldName = 'NoOfLengths'
          Visible = False
        end
        object grdPackagesProductLengthNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthNo'
          Visible = False
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPackages
      end
    end
  end
  object siLangLinked_frmPackagePicker: TsiLangLinked
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
    Left = 440
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D005000610063006B006100670065005000
      690063006B00650072000100500061006B00650074006E007200200064007500
      62006C00650074007400010001000D000A00620074006E004F004B0001004F00
      4B00010001000D000A00620074006E00430061006E00630065006C0001004300
      61006E00630065006C00010001000D000A006700720064005000610063006B00
      61006700650073005000610063006B006100670065004E006F00010050006100
      6B00650074006E007200010001000D000A006700720064005000610063006B00
      610067006500730053007500700070006C0069006500720043006F0064006500
      0100500072006500660069007800010001000D000A0067007200640050006100
      63006B006100670065007300500072006F006400750063007400440069007300
      70006C00610079004E0061006D0065000100500072006F00640075006B007400
      010001000D000A006700720064005000610063006B0061006700650073005300
      7500700070006C006900650072004E006F00010053007500700070006C006900
      650072004E006F00010001000D000A006700720064005000610063006B006100
      6700650073004C0065006E006700740068004400650073006300720069007000
      740069006F006E0001004C00E4006E0067006400010001000D000A0067007200
      64005000610063006B006100670065007300500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F00010001000D000A00
      6700720064005000610063006B0061006700650073004E006F004F0066004C00
      65006E00670074006800730001004E006F004F0066004C0065006E0067007400
      68007300010001000D000A006700720064005000610063006B00610067006500
      7300500072006F0064007500630074004C0065006E006700740068004E006F00
      0100500072006F0064007500630074004C0065006E006700740068004E006F00
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      660072006D005000610063006B006100670065005000690063006B0065007200
      01004D0053002000530061006E00730020005300650072006900660001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      72006D005000610063006B006100670065005000690063006B00650072000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00}
  end
end
