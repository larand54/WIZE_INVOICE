// =============================================================================
//
//  FILE           :  dmcVidaContact.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Client-side data module, provides access to
//                    contact-related data.
//                    All access to the server-side module,
//                    dmsVidaContact.pas, should go via this module.
//
//
//  NOTES          :  If the app is ever moved to multi-tier, this
//                    data module should stay on the client side.
//
//
//
//
//
//
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//              DMc       001     Initial development
//
// -----------------------------------------------------------------------------
unit dmcVidaContact;

interface

uses
  Classes,
  DB,
  DBClient,
  SysUtils,
  
  dmsVidaContact,
  VidaType;


type
  TdmcContact = class(TDataModule)
    cdsShippers            : TClientDataSet;
    dsrcShippers           : TDataSource;
    cdsShippersClientNo    : TIntegerField;
    cdsShippersClientName  : TStringField;
    cdsOwners: TClientDataSet;
    dsrcOwners: TDataSource;
    cdsOwnersClientNo: TIntegerField;
    cdsOwnersClientName: TStringField;
    cdsOwnersClientCode: TStringField;
    cdsOwnersSalesRegionNo: TIntegerField;
    cdsProducers: TClientDataSet;
    dsrcProducers: TDataSource;
    cdsProducersClientNo: TIntegerField;
    cdsProducersClientName: TStringField;
    cdsCustomers: TClientDataSet;
    cdsCustomersClientNo: TIntegerField;
    cdsCustomersClientName: TStringField;
  private
  public
    procedure CloseCustomers;
    procedure CloseShippers;
//    procedure OpenShippers;
//    procedure LoadAddressAndReference(LOList : TList);
//    procedure LoadCustomers;
    procedure LoadRegions(Strings : TStrings);  // DMC 2003.03.05 Added Lars' code from dmLM1
//    procedure LoadSuppliers(Strings: TStrings);
    procedure Load_SR_Suppliers(SalesRegionNo : Integer; Strings: TStrings);
//    procedure LoadShippers (Strings: TStrings);
//    procedure OpenOwners;
//    procedure OpenProducers;

    // DMC 2003.03.05 moved Lars' code here from fAvrop
    function  SuppNoToSuppCode(SupplierNo : Integer) : String3;
    function  SuppNoToTransferInv(SupplierNo : Integer) : Integer;
    procedure Load_InvOwner(Strings: TStrings);
    function  GetClientCode(ClientNo: Integer) : String3;
    procedure LoadClients(Strings : TStrings;RoleType : Integer);
    procedure Load_Int_and_Lego(Strings: TStrings);
  end;

var
  dmcContact: TdmcContact;

implementation

{$R *.dfm}

{$IFDEF LOGGER}
uses
  LECSLogClient;
{$ENDIF}


procedure TdmcContact.CloseShippers;
begin
  dmsContact.CloseShippers
end;


{procedure TdmcContact.OpenShippers;
begin
  dmsContact.OpenShippers;
  cdsShippers.SetProvider(dmsContact.provShippers);
  cdsSuppliers.Open
end;}


{procedure TdmcContact.LoadSuppliers(Strings: TStrings);
begin
  dmsContact.LoadSuppliers(Strings);
  cdsSuppliers.SetProvider(dmsContact.provSuppliers);
  cdsSuppliers.Open
end;}

procedure TdmcContact.Load_Int_and_Lego(Strings: TStrings);
begin
  dmsContact.Load_Int_and_Lego(Strings);
end;


procedure TdmcContact.Load_SR_Suppliers(SalesRegionNo : Integer; Strings: TStrings);
begin
  dmsContact.Load_SR_Suppliers(SalesRegionNo,Strings);

end;

procedure TdmcContact.Load_InvOwner(Strings: TStrings);
begin
  dmsContact.Load_InvOwner(Strings);
end;

{procedure TdmcContact.LoadShippers(Strings: TStrings);
begin
  dmsContact.LoadShippers(Strings);
  cdsShippers.SetProvider(dmsContact.provShippers);
  cdsShippers.Open
end; }


function TdmcContact.SuppNoToSuppCode(SupplierNo: Integer): String3;
begin
  Result := dmsContact.SuppNoToSuppCode(SupplierNo);
end;

{procedure TdmcContact.OpenOwners;
begin
  dmsContact.OpenOwners;
  cdsOwners.SetProvider(dmsContact.provOwners);
  cdsOwners.Open;
  cdsOwners.First;
  while not cdsOwners.Eof do
    cdsOwners.Next;
end; }

{procedure TdmcContact.OpenProducers;
begin
  cdsProducers.Close;
  dmsContact.OpenProducers;
  cdsProducers.SetProvider(dmsContact.provProducers);
  cdsProducers.Open;
end; }

function TdmcContact.SuppNoToTransferInv(SupplierNo: Integer): Integer;
begin
  Result := dmsContact.SuppNoToTransferInv(SupplierNo);
end;

{procedure TdmcContact.LoadAddressAndReference(LOList : TList);
begin
  cdsAddressAndReference.Close;
  cdsAddressAndReference.SetProvider(dmsContact.provAddressAndReference);
  cdsAddressAndReference.Open;
end; }

{procedure TdmcContact.LoadCustomers;
begin
  cdsCustomers.Close;
  dmsContact.LoadCustomers;
  cdsCustomers.SetProvider(dmsContact.provCustomers);
  cdsCustomers.Active := TRUE;
end;}

procedure TdmcContact.CloseCustomers;
begin
  cdsCustomers.Close;
  dmsContact.CloseCustomers;
end;

procedure TdmcContact.LoadRegions(Strings: TStrings);
// DMC 2003.03.05 New procedure: added Lars' code from dmLM1
//                Did NOT add cdsRegions component as it is not actually used.
begin
  dmsContact.LoadRegions(Strings);
end;


function  TdmcContact.GetClientCode(ClientNo: Integer) : String3;
Begin
  Result:= dmsContact.GetClientCode(ClientNo) ;
End ;

procedure TdmcContact.LoadClients(Strings : TStrings;RoleType : Integer);
Begin
 dmsContact.LoadClients(Strings,RoleType);
end ;


end.
