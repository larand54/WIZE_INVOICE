unit dmcVidaProduct;

interface

uses
  Classes,
  SysUtils,

  VidaType, DB, DBClient;

type
  TdmcProduct = class(TDataModule)
    cdsPackageType: TClientDataSet;
    dsrcPackageType: TDataSource;
    cdsPackageTypePhyInvPointNameNo: TIntegerField;
    cdsPackageTypeLogicalInventoryPointNo: TIntegerField;
    cdsPackageTypeSupplierNo: TIntegerField;
    cdsPackageTypeOnSticks: TIntegerField;
    cdsPackageTypeMiniBundled: TIntegerField;
    cdsPackageTypeGradeStamp: TIntegerField;
    cdsPackageTypeBarCodeID: TIntegerField;
    cdsPackageTypePackageHeight: TIntegerField;
    cdsPackageTypePackageWidth: TIntegerField;
    cdsPackageTypeWrapType: TIntegerField;
    cdsProductGroups: TClientDataSet;
    dsrcProductGroups: TDataSource;
    cdsProductGroupsProductGroupNo: TIntegerField;
    cdsProductGroupsProductCategoryName: TStringField;
    cdsProductGroupsSpeciesName: TStringField;
    cdsProductGroupsSurfacingName: TStringField;
    cdsProductGroupsActualThicknessMM: TFloatField;
    cdsProductGroupsActualWidthMM: TFloatField;
    cdsProductGroupsNominalThicknessMM: TFloatField;
    cdsProductGroupsNominalWidthMM: TFloatField;
    cdsPackages: TClientDataSet;
    dsrcPackages: TDataSource;
    cdsPackagesPackageNo: TIntegerField;
    cdsPackagesBoolOnSticks: TBooleanField;
    cdsPackagesProductDisplayName: TStringField;
    cdsPackagesTotalNoOfPieces: TIntegerField;
    cdsPackagesTotalM3Actual: TFloatField;
    cdsPackagesPhysicalInventoryPointNo: TIntegerField;
    cdsPackagesLogicalInventoryPointNo: TIntegerField;
    cdsPackagesGradeStamp: TIntegerField;
    cdsPackagesBarCodeID: TIntegerField;
    cdsPackagesWrapType: TIntegerField;
    cdsPackagesPackageHeight: TIntegerField;
    cdsPackagesPackageWidth: TIntegerField;
    cdsPackagesboolMiniBundled: TBooleanField;
    cdsPackagesboolShrinkWrap: TBooleanField;
  private
    FPackagePhysInvFilter: Integer;
    FPackageLogInvFilter: Integer;

    procedure setPackagePhysInvFilter(const Value: Integer);
    procedure setPackageLogInvFilter(const Value: Integer);
  public


    procedure GetValidLengths( LOList : TList; LengthList : TStringList );
    procedure OpenPackages;
    procedure OpenpackageTypes;
    procedure OpenProductGroups;
    function  PackageNumberExists(PkgNo : Integer; SupplierCode : String3) : Boolean;

    function  ProductGroupDesc(ProductGroupNo : Integer) : string;
    function  ProductInstruction( ProdInstruNo : Integer ) : TProdInstruRec;
    procedure SavePackages(PkgList : TList);

    procedure LoadGroupLengths(GroupNo : Integer; GrpLengths : TStrings);

    property PackagePhysInvFilter : Integer read FPackagePhysInvFilter write setPackagePhysInvFilter;
    property PackageLogInvFilter  : Integer read FPackageLogInvFilter  write setPackageLogInvFilter;

  end;

var
  dmcProduct: TdmcProduct;

implementation

uses dmsVidaProduct;

{$R *.dfm}

{ TDataModule1 }


procedure TdmcProduct.GetValidLengths(LOList: TList; LengthList: TStringList);
begin
  dmsProduct.GetValidPackageLengths(LOList, LengthList);
end;

procedure TdmcProduct.OpenPackages;
begin
  dmsProduct.OpenPackages;
  cdsPackages.SetProvider(dmsProduct.provPackages);
  cdsPackages.Open;
end;

procedure TdmcProduct.OpenpackageTypes;
begin
  dmsProduct.OpenPackageTypes;
  cdsPackageType.setProvider(dmsProduct.provPackageType);
  cdsPackageType.Open;
//  cdsPackageType.first;
//  while not cdsPackageType.Eof do
//    cdsPackageType.Next;
  cdsPackageType.Append;
end;

procedure TdmcProduct.OpenProductGroups;
begin
  cdsProductGroups.Close;
  dmsProduct.OpenProductGroups;
  cdsProductGroups.SetProvider(dmsProduct.provProductGroups);
  cdsProductGroups.Open;
end;


function TdmcProduct.ProductGroupDesc(ProductGroupNo: Integer): string;
begin
  Result := dmsProduct.ProductGroupDesc(ProductGroupNo);
end;

function TdmcProduct.ProductInstruction( ProdInstruNo: Integer ) : TProdInstruRec;
begin
  //
end;

procedure TdmcProduct.setPackageLogInvFilter(const Value: Integer);
begin
  FPackageLogInvFilter := Value;
  dmsProduct.PackageLogInvFilter := Value;
end;

procedure TdmcProduct.setPackagePhysInvFilter(const Value: Integer);
begin
  FPackagePhysInvFilter := Value;
  dmsProduct.PackagePhysInvFilter := Value;
end;

procedure TdmcProduct.SavePackages(PkgList: TList);
begin
  dmsProduct.SavePackages(PkgList);
end;

function TdmcProduct.PackageNumberExists(PkgNo: Integer; SupplierCode : String3): Boolean;
begin
  Result := dmsProduct.PackageNumberExists(PkgNo,SupplierCode);
end;

procedure TdmcProduct.LoadGroupLengths(GroupNo : Integer; GrpLengths: TStrings);
begin
  dmsProduct.LoadGroupLengths(GroupNo,GrpLengths);
end;

end.
