object fMainGrade: TfMainGrade
  Left = 192
  Top = 107
  Width = 793
  Height = 571
  Caption = 'Koppla kundkvalitet till internkvalitet '
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
    Top = 89
    Width = 785
    Height = 455
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 356
      Height = 455
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 356
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Kundkvalitet'
        TabOrder = 0
      end
      object grdGrades: TdxDBGrid
        Left = 0
        Top = 41
        Width = 356
        Height = 414
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = dmsSystem.ds_Grade
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        object grdGradesGradeName: TdxDBGridMaskColumn
          Caption = 'KUNDKVALITET'
          Width = 138
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GradeName'
        end
        object grdGradesMainGradeName: TdxDBGridMaskColumn
          Caption = 'INTERNKVALITET'
          Width = 184
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MainGradeName'
        end
        object grdGradesMainGradeNo: TdxDBGridMaskColumn
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MainGradeNo'
        end
        object grdGradesGradeNo: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GradeNo'
        end
        object grdGradesLanguageCode: TdxDBGridMaskColumn
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LanguageCode'
        end
        object grdGradesSequenceNo: TdxDBGridMaskColumn
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SequenceNo'
        end
        object grdGradesCreatedUser: TdxDBGridMaskColumn
          Width = 65
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CreatedUser'
        end
        object grdGradesModifiedUser: TdxDBGridMaskColumn
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ModifiedUser'
        end
        object grdGradesDateCreated: TdxDBGridColumn
          Width = 208
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DateCreated'
        end
      end
    end
    object Panel4: TPanel
      Left = 356
      Top = 0
      Width = 96
      Height = 455
      Align = alLeft
      TabOrder = 1
      object bbKopplaKvalitet: TBitBtn
        Left = 8
        Top = 192
        Width = 81
        Height = 25
        Caption = 'Koppla kvalitet'
        TabOrder = 0
        OnClick = bbKopplaKvalitetClick
      end
      object bbAngraKoppling: TBitBtn
        Left = 8
        Top = 232
        Width = 81
        Height = 25
        Caption = #197'ngra '#228'ndringar'
        TabOrder = 1
        OnClick = bbAngraKopplingClick
      end
      object bbApplyUpdates: TBitBtn
        Left = 8
        Top = 272
        Width = 81
        Height = 25
        Caption = 'Spara '#228'ndringar'
        TabOrder = 2
        OnClick = bbApplyUpdatesClick
      end
    end
    object Panel5: TPanel
      Left = 452
      Top = 0
      Width = 333
      Height = 455
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 2
      object Panel7: TPanel
        Left = 0
        Top = 41
        Width = 333
        Height = 41
        Align = alTop
        TabOrder = 0
        object bbAdd: TBitBtn
          Left = 16
          Top = 8
          Width = 75
          Height = 25
          Caption = 'L'#228'gg till'
          TabOrder = 0
          OnClick = bbAddClick
        end
        object bbRemove: TBitBtn
          Left = 104
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Ta bort'
          TabOrder = 1
          OnClick = bbRemoveClick
        end
        object bbSpara: TBitBtn
          Left = 200
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Spara'
          TabOrder = 2
          OnClick = bbSparaClick
        end
      end
      object grdBaseGrade: TdxDBGrid
        Left = 0
        Top = 82
        Width = 333
        Height = 373
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'MainGradeNo'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = dmsSystem.ds_MainGrade
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        object grdBaseGradeMainGradeName: TdxDBGridMaskColumn
          Caption = 'INTERNKVALITET'
          Width = 323
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MainGradeName'
        end
        object grdBaseGradeMainGradeNo: TdxDBGridMaskColumn
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MainGradeNo'
        end
        object grdBaseGradeCreatedUser: TdxDBGridMaskColumn
          Width = 65
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CreatedUser'
        end
        object grdBaseGradeModifiedUser: TdxDBGridMaskColumn
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ModifiedUser'
        end
        object grdBaseGradeDateCreated: TdxDBGridColumn
          Width = 208
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DateCreated'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 333
        Height = 41
        Align = alTop
        Caption = 'Internkvalitet'
        TabOrder = 2
      end
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 785
    Height = 89
    Align = alTop
    Lines.Strings = (
      
        'V'#228'lj en eller flera kundkvaliteter i den v'#228'nstra tabellen, v'#228'lj ' +
        'en internkvalitet i den h'#246'gra tabellen.'
      'Klicka knappen "Koppla kvalitet" f'#246'r att g'#246'ra kopplingen.'
      
        'Klicka knappen "Spara '#228'ndringar" om du vill spara kopplingarna e' +
        'ller knappen "'#197'ngra '#228'ndringar" om du '#229'ngrar gjorda kopplingar.')
    TabOrder = 1
  end
end
