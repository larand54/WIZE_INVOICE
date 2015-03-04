inherited frmLockLoads: TfrmLockLoads
  Caption = 'Reserverade laster'
  ExplicitWidth = 776
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanel
    inherited cxButton1: TcxButton
      Visible = False
    end
    inherited cxButton3: TcxButton
      Visible = False
    end
    inherited cxButton4: TcxButton
      Visible = False
    end
    inherited cxButton6: TcxButton
      Visible = False
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.KeyFieldNames = 'LoadNo;ResUserName'
      object cxGrid1DBTableView1LoadNo: TcxGridDBColumn
        DataBinding.FieldName = 'LoadNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object cxGrid1DBTableView1ResUserName: TcxGridDBColumn
        DataBinding.FieldName = 'ResUserName'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object cxGrid1DBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 280
    Top = 160
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Load_Res')
    object FDQuery1LoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1ResUserName: TStringField
      DisplayLabel = 'Reserverad av'
      FieldName = 'ResUserName'
      Origin = 'ResUserName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object FDQuery1DateCreated: TSQLTimeStampField
      DisplayLabel = 'Reserverad'
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object siLangLinked_frmLockLoads: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
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
      'ListField')
    Left = 448
    Top = 160
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D004C006F0063006B004C006F0061006400
      730001005200650073006500720076006500720061006400650020006C006100
      73007400650072000100010001000D000A006100740045007800690074000100
      53007400E4006E00670020004600310032000100010001000D000A0061006300
      4100640064005200650063006F007200640001004C00E4006700670020007400
      69006C006C002000460032000100010001000D000A0061006300440065006C00
      6500740065005200650063006F0072006400010054006100200062006F007200
      74002000460035000100010001000D000A006100630053006100760065000100
      530070006100720061002000460033000100010001000D000A00610063004300
      61006E00630065006C004300680061006E006700650073000100C5006E006700
      720061002000460034000100010001000D000A00610063005000720069006E00
      74005400610062006C006500010053006B007200690076002000750074002000
      460038000100010001000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0031000100
      4E00650077005200650070006F00720074000100010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      31004C006F00610064004E006F0001004C006100730074006E00720001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      65005600690065007700310052006500730055007300650072004E0061006D00
      6500010052006500730065007200760065007200610064002000610076000100
      010001000D000A00630078004700720069006400310044004200540061006200
      6C00650056006900650077003100440061007400650043007200650061007400
      6500640001005200650073006500720076006500720061006400010001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A006100740045007800690074000100450078006900740001000100
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A0046004400510075006500
      7200790031004C006F00610064004E006F0001004C006100730074006E007200
      010001000D000A00460044005100750065007200790031005200650073005500
      7300650072004E0061006D006500010052006500730065007200760065007200
      61006400200061007600010001000D000A004600440051007500650072007900
      3100440061007400650043007200650061007400650064000100520065007300
      6500720076006500720061006400010001000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660072006D00
      4C006F0063006B004C006F0061006400730001004D0053002000530061006E00
      730020005300650072006900660001004D0053002000530061006E0073002000
      5300650072006900660001005400610068006F006D0061000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0031000100540069006D006500730020004E0065007700
      200052006F006D0061006E00010001005400610068006F006D0061000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B0031002E00440065007300690067006E00
      65007200430061007000740069006F006E00010046006F0072006D0061007400
      20005200650070006F0072007400010001000D000A0046004400510075006500
      7200790031002E0043006F006E006E0065006300740069006F006E004E006100
      6D0065000100560049005300010001000D000A00630078004700720069006400
      3100440042005400610062006C006500560069006500770031004C006F006100
      64004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      310052006500730055007300650072004E0061006D0065002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00630078004700720069006400310044004200
      5400610062006C00650056006900650077003100440061007400650043007200
      650061007400650064002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      460044005100750065007200790031004C006F00610064004E006F002E004F00
      72006900670069006E0001004C006F00610064004E006F00010001000D000A00
      4600440051007500650072007900310052006500730055007300650072004E00
      61006D0065002E004F0072006900670069006E00010052006500730055007300
      650072004E0061006D006500010001000D000A00460044005100750065007200
      79003100440061007400650043007200650061007400650064002E004F007200
      6900670069006E00010044006100740065004300720065006100740065006400
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      660072006D004C006F0063006B004C006F006100640073000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00}
  end
end
