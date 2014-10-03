unit dmcVidaInventory;

interface

uses
  Classes,
  DB,
  DBClient,
  SysUtils,

  vidaType;

type

  TAmbiguityEvent = procedure(
    Sender : TObject;
    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer) of object;

  TdmcInventory = class(TDataModule)
    cdsPkgsByInvOwner: TClientDataSet;
    dsrcPkgsByInvOwner: TDataSource;
    cdsPkgsByInvOwnerPackageNo: TIntegerField;
    cdsPkgsByInvOwnerSupplierCode: TStringField;
    cdsPkgsByInvOwnerProductDisplayName: TStringField;
    cdsPkgsByInvOwnerSupplierNo: TIntegerField;
    cdsPkgsByInvOwnerLengthDescription: TStringField;
  private
    FOnAmbiguousPkgNo: TAmbiguityEvent;
    { Private declarations }
  public
    { Public declarations }

    // Function used when entering package numbers to Load Entry form.
    // We know the package number and the load supplier. Find a package with that number
    // that is currently located in an inventory owned by the supplier of the load, and
    // return the supplier code for that package.
    // If there is no such package, result is an empty string.
    // If multiple packages fit the bill, fire off an OnAmbiguousPkgNo event so GUI can
    // Allow the user to select the package to use.
    function PkgNoToSuppCode(
      PkgNo : Integer;
      InventoryOwner : Integer;
      var SupplierNo : Integer
      ) : string3;

    property OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmcInventory: TdmcInventory;

implementation

{$R *.dfm}

uses
  dmsVidaInventory;

{ TDataModule1 }

function TdmcInventory.PkgNoToSuppCode(
  PkgNo,
  InventoryOwner: Integer;
  var SupplierNo : Integer): string3;
var
  SuppCode : string3;
begin
  cdsPkgsByInvOwner.Close;
  dmsInventory.getPkgsByInvOwner(PkgNo, InventoryOwner);
  cdsPkgsByInvOwner.SetProvider(dmsInventory.provPkgsByInvOwner);
  cdsPkgsByInvOwner.Open;
  case cdsPkgsByInvOwner.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := cdsPkgsByInvOwner.FieldByName('SupplierCode').AsString;
           SupplierNo := cdsPkgsByInvOwner.FieldByName('SupplierNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.dsrcPkgsByInvOwner,SuppCode,SupplierNo);
           end;
    end;

  Result := SuppCode;
end;

end.
