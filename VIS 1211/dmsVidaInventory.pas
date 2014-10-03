unit dmsVidaInventory;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DB, SqlExpr;

type
  TdmsInventory = class(TDataModule)
    sp_PksByInvOwner: TSQLStoredProc;
    provPkgsByInvOwner: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }

    // Find all packages with a specific package number that are located in inventories
    // owned by a specified supplier. This is used when checking the package numbers
    // input on the Load Entry form.
    procedure getPkgsByInvOwner( PkgNo : Integer; InventoryOwner : Integer );

  end;

var
  dmsInventory: TdmsInventory;

implementation

{$R *.dfm}

{ TdmsInventory }

procedure TdmsInventory.getPkgsByInvOwner(PkgNo, InventoryOwner: Integer);
begin
  sp_PksByInvOwner.Close;
  sp_PksByInvOwner.ParamByName('PkgNo').AsInteger    := PkgNo;
  sp_PksByInvOwner.ParamByName('InvOwner').AsInteger := InventoryOwner;
  sp_PksByInvOwner.Open;
end;

end.
