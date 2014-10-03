unit UnitdmMaintenance;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TdmMaintenance = class(TDataModule)
    sq_SetNomSize: TSQLQuery;
    sq_SetIntPriceGroup: TSQLQuery;
    sq_Grades: TSQLQuery;
    dsp_Grades: TDataSetProvider;
    cdsGrades: TClientDataSet;
    sq_IntPriceGroup: TSQLQuery;
    dspIntPriceGroup: TDataSetProvider;
    cdsIntPriceGroup: TClientDataSet;
    sq_ProductGroup: TSQLQuery;
    sq_ProductGroupProductGroupNo: TIntegerField;
    sp_CalcPackageType: TSQLStoredProc;
    sq_NoOfProductGroups: TSQLQuery;
    sq_NoOfProductGroupsNoOfRecords: TIntegerField;
    sq_MarketRegions: TSQLQuery;
    sq_MarketRegionsClientNo: TIntegerField;
    sq_MarketRegionsClientName: TStringField;
    sq_MarketRegionsMarketRegionNo: TIntegerField;
    dsp_MarketRegions: TDataSetProvider;
    cdsMarketRegions: TClientDataSet;
    dsMarketRegions: TDataSource;
    cdsMarketRegionsClientNo: TIntegerField;
    cdsMarketRegionsClientName: TStringField;
    sq_MR_Names: TSQLQuery;
    sq_MR_NamesMarketRegionNo: TIntegerField;
    sq_MR_NamesMarketRegionName: TStringField;
    dspMR_Names: TDataSetProvider;
    cdsMR_Names: TClientDataSet;
    cdsMR_NamesMarketRegionNo: TIntegerField;
    cdsMR_NamesMarketRegionName: TStringField;
    cdsMarketRegionsMarket: TStringField;
    cdsMarketRegionsMarketRegionNo: TIntegerField;
    dsMR_Names: TDataSource;
    sq_Species: TSQLQuery;
    dspSpecies: TDataSetProvider;
    cdsSpecies: TClientDataSet;
    sq_Surfacing: TSQLQuery;
    dspSurfacing: TDataSetProvider;
    cdsSurfacing: TClientDataSet;
    sq_ResPkgs: TSQLQuery;
    dsp_ResPkgs: TDataSetProvider;
    cds_ResPkgs: TClientDataSet;
    ds_ResPkgs: TDataSource;
    sq_ResPkgsPackageNo: TIntegerField;
    sq_ResPkgsSupplierCode: TStringField;
    sq_ResPkgsUserID: TIntegerField;
    sq_ResPkgsUserName: TStringField;
    sq_ResPkgsDateCreated: TSQLTimeStampField;
    cds_ResPkgsPackageNo: TIntegerField;
    cds_ResPkgsSupplierCode: TStringField;
    cds_ResPkgsUserID: TIntegerField;
    cds_ResPkgsUserName: TStringField;
    cds_ResPkgsDateCreated: TSQLTimeStampField;
    sq_ResPkgsUniqueKey: TStringField;
    cds_ResPkgsUniqueKey: TStringField;
    sq_ClientTrpBrev: TSQLQuery;
    dsp_ClientTrpBrev: TDataSetProvider;
    sq_ClientTrpBrevClientNo: TIntegerField;
    sq_ClientTrpBrevTRP_BREV_Text: TMemoField;
    cds_ClientTrpBrev: TClientDataSet;
    cds_ClientTrpBrevClientNo: TIntegerField;
    cds_ClientTrpBrevTRP_BREV_Text: TMemoField;
    ds_ClientTrpBrev: TDataSource;
    procedure cdsMarketRegionsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsMR_NamesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsMarketRegionsDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cds_ClientTrpBrevAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LoadGrades(Strings : TStrings);
    procedure LoadSpecies(Strings : TStrings);
    procedure LoadSurfacing(Strings : TStrings);
    procedure LoadPriceGroups(Strings : TStrings);
  public
    { Public declarations }
    procedure GetGrades(Strings : TStrings);
    procedure GetSpecies(Strings : TStrings);
    procedure GetSurfacing(Strings : TStrings);
    procedure GetPriceGroups(Strings : TStrings);
  end;

var
  dmMaintenance: TdmMaintenance;

implementation

uses recerror, dmsDataConn;

{$R *.dfm}

procedure TdmMaintenance.GetGrades(Strings : TStrings);
begin
  LoadGrades(Strings);
  cdsGrades.Open;
end;

procedure TdmMaintenance.LoadGrades(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
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

procedure TdmMaintenance.GetSpecies(Strings : TStrings);
begin
  LoadSpecies(Strings);
  cdsSpecies.Open;
end;

procedure TdmMaintenance.LoadSpecies(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
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

procedure TdmMaintenance.GetSurfacing(Strings : TStrings);
begin
  LoadSurfacing(Strings);
  cdsSurfacing.Open;
end;

procedure TdmMaintenance.LoadSurfacing(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
 sq_Surfacing.Open;
  try
    sq_Surfacing.First;
    while not sq_Surfacing.Eof do begin
      Strings.AddObject(
        sq_Surfacing.FieldByname('SurfacingName').AsString,
        TObject(sq_Surfacing.FieldByName('SurfacingNo').AsInteger)
        );
      sq_Surfacing.Next;
      end;
  finally
    sq_Surfacing.Close;
    end;
end;

procedure TdmMaintenance.GetPriceGroups(Strings : TStrings);

begin
  LoadPriceGroups(Strings);
  cdsIntPriceGroup.Open;
end;

procedure TdmMaintenance.LoadPriceGroups(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
 sq_IntPriceGroup.Open;
  try
    sq_IntPriceGroup.First;
    while not sq_IntPriceGroup.Eof do begin
      Strings.AddObject(
        sq_IntPriceGroup.FieldByname('PriceGroupName').AsString,
        TObject(sq_IntPriceGroup.FieldByName('InteralPriceGroupNo').AsInteger)
        );
      sq_IntPriceGroup.Next;
      end;
  finally
    sq_IntPriceGroup.Close;
    end;
end;

procedure TdmMaintenance.cdsMarketRegionsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdmMaintenance.cdsMR_NamesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdmMaintenance.dsMarketRegionsDataChange(Sender: TObject;
  Field: TField);
begin
 cds_ClientTrpBrev.Filter:= 'ClientNo = '+cdsMarketRegionsClientNo.AsString ;
end;

procedure TdmMaintenance.DataModuleCreate(Sender: TObject);
begin
 cds_ClientTrpBrev.Active:= True ;
 cds_ClientTrpBrev.Filter:= 'ClientNo = -1' ;
 cds_ClientTrpBrev.Filtered:= True ;
end;

procedure TdmMaintenance.DataModuleDestroy(Sender: TObject);
begin
  cds_ClientTrpBrev.Active:= False ;
end;

procedure TdmMaintenance.cds_ClientTrpBrevAfterInsert(DataSet: TDataSet);
begin
 cds_ClientTrpBrevClientNo.AsInteger:= cdsMarketRegionsClientNo.AsInteger ;
end;

end.
