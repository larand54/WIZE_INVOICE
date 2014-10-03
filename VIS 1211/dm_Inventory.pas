unit dm_Inventory;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, kbmMemTable, DBClient, Provider;

type
  TdmInventory = class(TDataModule)
    sq_Temp_Inventory: TSQLQuery;
    sq_Grades: TSQLQuery;
    sq_Species: TSQLQuery;
    sq_LogInvByOwnerCity: TSQLQuery;
    sq_LogInvByOwnerCityLogicalInventoryName: TStringField;
    sq_LogInvByOwnerCityLogicalInventoryPointNo: TIntegerField;
    sq_Specie: TSQLQuery;
    dspSpecies: TDataSetProvider;
    cdsSpecies: TClientDataSet;
    sq_Surfacing: TSQLQuery;
    dspSurfacing: TDataSetProvider;
    cdsSurfacing: TClientDataSet;
    sq_Grade: TSQLQuery;
    dsp_Grades: TDataSetProvider;
    cdsGrades: TClientDataSet;
    mtSpecies: TkbmMemTable;
    mtSpeciesSpeciesNo: TIntegerField;
    mtSpeciesSpeciesName: TStringField;
    ds_Species: TDataSource;
    mtGrade: TkbmMemTable;
    cdsGradesGradeName: TStringField;
    cdsGradesGradeNo: TIntegerField;
    cdsSpeciesSpeciesName: TStringField;
    cdsSpeciesSpeciesNo: TIntegerField;
    mtGradeGradeNo: TIntegerField;
    mtGradeGradeName: TStringField;
    ds_Grade: TDataSource;
    mtSurfacing: TkbmMemTable;
    cdsSurfacingSurfacingName: TStringField;
    cdsSurfacingSurfacingNo: TIntegerField;
    mtSurfacingSurfacingNo: TIntegerField;
    mtSurfacingSurfacingName: TStringField;
    ds_Surfacing: TDataSource;
    mtActThick: TkbmMemTable;
    sq_AThickMM: TSQLQuery;
    dsp_AThickMM: TDataSetProvider;
    cds_AThickMM: TClientDataSet;
    cds_AThickMMActualThicknessMM: TFloatField;
    ds_AThickMM: TDataSource;
    mtActThickThickness: TFloatField;
    mtAWidthMM: TkbmMemTable;
    ds_AWidthMM: TDataSource;
    mtAWidthMMWidth: TFloatField;
    mtActLengthMM: TkbmMemTable;
    ds_ActLength: TDataSource;
    mtActLengthMMActLengthMM: TFloatField;
    sq_MainGrade: TSQLQuery;
    dsp_MainGrades: TDataSetProvider;
    cdsMainGrades: TClientDataSet;
    mtMainGrade: TkbmMemTable;
    mtMainGradeGradeNo: TIntegerField;
    mtMainGradeGradeName: TStringField;
    ds_MainGrade: TDataSource;
    cdsMainGradesMainGradeName: TStringField;
    cdsMainGradesMainGradeNo: TIntegerField;
    sq_BarCode: TSQLQuery;
    dsp_BarCode: TDataSetProvider;
    cds_BarCode: TClientDataSet;
    mt_BarCode: TkbmMemTable;
    BarCodeNo: TIntegerField;
    BarCodeName: TStringField;
    ds_BarCode: TDataSource;
    cds_BarCodeBarCodeNo: TIntegerField;
    cds_BarCodeBarCode: TStringField;
    sq_GradeStamp: TSQLQuery;
    dsp_GradeStamp: TDataSetProvider;
    cds_GradeStamp: TClientDataSet;
    mt_GradeStamp: TkbmMemTable;
    GradeStampNo: TIntegerField;
    GradeStampName: TStringField;
    ds_GradeStamp: TDataSource;
    cds_GradeStampGradeStampNo: TIntegerField;
    cds_GradeStampGradeStamp: TStringField;
    mtIMP: TkbmMemTable;
    dsIMP: TDataSource;
    mtIMPImpNo: TIntegerField;
    sq_Imp: TSQLQuery;
    dsp_Imp: TDataSetProvider;
    cds_Imp: TClientDataSet;
    cds_ImpProductCategoryNo: TIntegerField;
    cds_ImpImp: TStringField;
    mtIMPIMP: TStringField;
    sq_RunNos: TSQLQuery;
    dsp_RunNos: TDataSetProvider;
    cds_RunNos: TClientDataSet;
    ds_RunNos: TDataSource;
    cds_RunNosKrdatum: TSQLTimeStampField;
    cds_RunNosKrNr: TIntegerField;
    cds_RunNosProdukt: TStringField;
    cds_RunNosOperation: TIntegerField;
    procedure ds_SpeciesDataChange(Sender: TObject; Field: TField);
    procedure ds_GradeStampDataChange(Sender: TObject; Field: TField);
    procedure ds_BarCodeDataChange(Sender: TObject; Field: TField);
    procedure ds_MainGradeDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    RoleType : Integer ;
    FilterChanged : Boolean ;
    procedure LoadGrades(Strings : TStrings);
    procedure LoadSpecies(Strings : TStrings);
    procedure LoadLogInvByOwnerCity(Strings : TStrings;OwnerNo, CityNo : Integer);
  end;

var
  dmInventory: TdmInventory;

implementation

uses dmsDataConn;

{$R *.dfm}


procedure TdmInventory.LoadGrades(Strings : TStrings);

begin
 sq_Grades.Open;
  try
    sq_Grades.First;
    while not sq_Grades.Eof do begin
      Strings.AddObject(
        sq_Grades.FieldByname('GradeName').AsString,
        TObject(sq_Grades.FieldByName('GradeNo').AsInteger)
        );
      sq_Grades.Next;
      end;
  finally
    sq_Grades.Close;
    end;
end;

procedure TdmInventory.LoadSpecies(Strings : TStrings);

begin
 sq_Species.Open;
  try
    sq_Species.First;
    while not sq_Species.Eof do begin
      Strings.AddObject(
        sq_Species.FieldByname('SpeciesName').AsString,
        TObject(sq_Species.FieldByName('SpeciesNo').AsInteger)
        );
      sq_Species.Next;
      end;
  finally
    sq_Species.Close;
    end;
end;



procedure TdmInventory.LoadLogInvByOwnerCity(Strings : TStrings;OwnerNo, CityNo : Integer);

begin
 sq_LogInvByOwnerCity.ParamByName('OwnerNo').AsInteger:= OwnerNo ;
 sq_LogInvByOwnerCity.ParamByName('CityNo').AsInteger:= CityNo ; 
 sq_LogInvByOwnerCity.Open;
  try
    sq_LogInvByOwnerCity.First;
    while not sq_LogInvByOwnerCity.Eof do begin
      Strings.AddObject(
        sq_LogInvByOwnerCityLogicalInventoryName.AsString,
        TObject(sq_LogInvByOwnerCityLogicalInventoryPointNo.AsInteger)
        );
      sq_LogInvByOwnerCity.Next;
      end;
  finally
    sq_LogInvByOwnerCity.Close;
    end;
end;


procedure TdmInventory.ds_SpeciesDataChange(Sender: TObject;
  Field: TField);
begin
 FilterChanged := True ;
end;

procedure TdmInventory.ds_GradeStampDataChange(Sender: TObject;
  Field: TField);
begin
 FilterChanged := True ;
end;

procedure TdmInventory.ds_BarCodeDataChange(Sender: TObject;
  Field: TField);
begin
 FilterChanged := True ;
end;

procedure TdmInventory.ds_MainGradeDataChange(Sender: TObject;
  Field: TField);
begin
 FilterChanged := True ;
end;

end.
