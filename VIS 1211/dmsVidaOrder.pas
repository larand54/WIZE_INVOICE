unit dmsVidaOrder;

interface

uses
  Classes,
  DB,
  DBClient,
  FMTBcd,
  Provider,
  SqlExpr,
  SysUtils,
  VidaLoad,
  VidaPkg,
  VidaType, dxmdaset, Dialogs;


type
  TdmsOrder = class(TDataModule)
    tblLoadDetailMatch: TdxMemData;
    tblLoadDetailMatchLoadNo: TIntegerField;
    tblLoadDetailMatchLoadDetailNo: TIntegerField;
    tblLoadDetailMatchSupplierShipPlanObjectNo: TIntegerField;
    tblLoadDetailMatchPackageNo: TIntegerField;
    tblLoadDetailMatchSupplierCode: TStringField;
    dsLoadDetailMatch: TDataSource;

  private

//    procedure ModifyLoadHeader(LOData : TLoadEntryFormData; WhenPosted : TDateTime);
//    procedure SaveLoadHeader  (LOData : TLoadEntryFormData; WhenPosted : TDateTime);
//    procedure SaveLoadLOTSA   (LOData : TLoadEntryFormData; WhenPosted : TDateTime);


{    procedure SetPackageStatusToOne(
            Sender       : TObject;
      const PkgNo        : Integer;
      const SupplierCode : string;
      const UserID       : Integer ); }

//    procedure setSupplierNo (const Value: integer);
//    procedure setLoadNo     (const Value: integer);



//    function  getSupplierNo : integer;
//    Function  CheckPkgMatch(LoadNo : Integer) : Boolean ;
  public
    procedure OpenCities;
    procedure CloseCities;



//    procedure LoadPackages(Supplier : integer);
//    procedure LoadProductInstructions(SelectedLOLine : Integer);
//    procedure ReOpenLoad;
//    procedure AddLOLines(SupplierNo: integer; LONoList: TStrings);
//    procedure LoadPackageLengthInfo(PkgNo: Integer; SupplierCode : string);

//    procedure GetLODataFromDB (LoadNo : Integer; VidaLoad : TVidaLoad);




//    property LoadNo : integer write setLoadNo; // Write-only !
//    property SupplierNo : integer read getSupplierNo write setSupplierNo;


{    function ValidatePackage(
          SupplierCode : String3;
          PkgNo        : Integer;
          LOLines      : TList;
      var BadLength    : real ) : Integer; }


    procedure SetLOStatus(LONo, Status: Integer);
    procedure RemoveFromView(LONo : Integer);

//    procedure DeleteLoad(LoadNo : Integer; InventoryPlace : Integer; InventoryGroup : Integer);
//    procedure DeleteONELoad(LoadNo : Integer);

  end;

var
  dmsOrder: TdmsOrder;

implementation

{$R *.dfm}

uses
  dmsDataConn,
{$IFDEF LOGGER}
  LECSLogClient,
{$ENDIF}
  VidaConst,
  VidaUser,
  VidaUtils;


{ TDataModule1 }
// procedure TdmsOrder.setLoadNo(const Value: integer);
// Accessor method for LoadNo property.
// Set by Load Entry form to get the full Load details.
// begin
//   sp_OneLoad.ParamByName('LoadNo').AsInteger := Value;
//   sp_OneLoad.Open
// end;


procedure TdmsOrder.CloseCities;
begin
//  sp_Cities.Close
end;


procedure TdmsOrder.OpenCities;
begin
{  sp_Cities.Open;
  sp_Cities.First;
  while not sp_Cities.Eof do
    sp_Cities.Next }
end;


{procedure TdmsOrder.ReOpenLoad;
begin
  sp_OneLoad.close;
  sp_OneLoad.ParamByName('LoadNo').AsInteger := -1;
  sp_OneLoad.Open
end;

 }


(*procedure TdmsOrder.AddLOLines(SupplierNo: integer; LONoList: TStrings);
var
  iLO: integer;
begin
  sqldsLOLines.Active := False;
  try

    sqldsLOLines.CommandText := 'SELECT ';

//    {$IFDEF LOGGER} LECSLogger.Write('    Set sqldsLOLines Cmd.'); {$ENDIF}
    with sqldsLOLines do begin

      CommandText := CommandText + ' SP.SupplierNo,';
      CommandText := CommandText + ' SP.SupplierShipPlanObjectNo,';
      CommandText := CommandText + ' SP.ShippingPlanNo,';
      CommandText := CommandText + ' SP.PackageCode,';
      CommandText := CommandText + ' SP.ProductNo,';
      CommandText := CommandText + ' SP.ProductDescription,';
      CommandText := CommandText + ' SP.LengthDescription,';
      CommandText := CommandText + ' SP.NoOfUnits,';
      CommandText := CommandText + ' SP.VolumeUnitNo,';
      CommandText := CommandText + ' SP.Price,';
      CommandText := CommandText + ' SP.PriceUnitNo,';
      CommandText := CommandText + ' SP.MinActualLengthMM,';
      CommandText := CommandText + ' SP.MaxActualLengthMM,';
      CommandText := CommandText + ' SP.ProductLengthNo,';
      CommandText := CommandText + ' PG.ActualThicknessMM,';
      CommandText := CommandText + ' PG.ActualWidthMM,';
      CommandText := CommandText + ' PL.ActualLengthMM,';
      CommandText := CommandText + ' CD.Reference';
      CommandText := CommandText + ' FROM dbo.SupplierShippingPlan SP';
      CommandText := CommandText + ' INNER JOIN dbo.ProductLength PL ON ';
      CommandText := CommandText + ' SP.ProductLengthNo = PL.ProductLengthNo';
      CommandText := CommandText + ' INNER JOIN dbo.ProductGroup PG ON';
      CommandText := CommandText + ' SP.ProductGroupNo = PG.ProductGroupNo';
      CommandText := CommandText + ' LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CD ON ';
      CommandText := CommandText + ' SP.CustShipPlanDetailObjectNo = CD.CustShipPlanDetailObjectNo';
//    CommandText := CommandText + ' WHERE SP.ShipType = 1';  DMc 2003.02.23 ShipType no longer used
//      CommandText := CommandText + ' AND';
      CommandText := CommandText + ' WHERE SP.SupplierNo = ' + IntToStr(SupplierNo);
      if LONoList.Count > 0 then begin

        CommandText := CommandText + ' AND ( ';
        CommandText := CommandText + 'SP.ShippingPlanNo = ' + LONoList[0];

        if LONoList.Count > 1 then
          for iLO := 1 to LONoList.Count - 1 do
            if LONoList[iLO] <> '' then
              CommandText := CommandText + ' OR SP.ShippingPlanNo = ' + LONoList[iLO];

        CommandText := CommandText + ' )'
        end
      else
        CommandText := Commandtext + ' AND SP.ShippingPlanNo = -1'
      end;
  finally
//    {$IFDEF LOGGER} LECSLogger.Write('      Activate query'); {$ENDIF}
    sqldsLOLines.Active := true;
    end;
end; *)


{procedure TdmsOrder.LoadPackages(Supplier: integer);
begin
  sp_PkgsForSupplier.close;
  sp_PkgsForSupplier.ParamByName('Supplier').AsInteger := Supplier;
  sp_PkgsForSupplier.Open
end; }


(*procedure TdmsOrder.LoadPackageLengthInfo(PkgNo: Integer; SupplierCode : string);
// Given a package (the header) add the details of lengths included in that package (the details).
begin
  sp_PackageLengthDetails.Close;
  sp_PackageLengthDetails.ParamByName('PkgNo').AsInteger := PkgNo;
  sp_PackageLengthDetails.ParamByName('SuppCode').AsString := Trim(SupplierCode);
  sp_PackageLengthDetails.Open;
  sp_PackageLengthDetails.First;
end;


  *)
{procedure TdmsOrder.LoadProductInstructions(SelectedLOLine: Integer);
begin
  sp_Prodinstru.Close;
  sp_Prodinstru.ParamByName('LO').AsInteger := SelectedLOLine;
  sp_Prodinstru.Open;
end; }

(*procedure TdmsOrder.GetLODataFromDB(LoadNo : Integer; VidaLoad : TVidaLoad);
var
  LO : TLOListItem;
  PK : TPackageListItem;
begin

  // Get the load data from the database
  sp_OneLoad.Close;
  sp_OneLoad.ParamByName('LoadNo').AsInteger := LoadNo;
  sp_OneLoad.Open;

  // Move the data to VidaLoad parameter to return to caller
  VidaLoad.CreatedUser        := sp_OneLoadCreatedUser.AsInteger;
  VidaLoad.FS                 := sp_OneLoadFS.AsString;
  VidaLoad.LoadID             := sp_OneLoadLoadID.AsString;
  VidaLoad.Status             := sp_OneLoadSenderLoadStatus.AsInteger;
  VidaLoad.LoadDate           := sp_OneLoadLoadedDate.AsSQLTimeStamp;
  VidaLoad.PackageEntryOption := sp_OneLoadPackageEntryOption.AsInteger;
  VidaLoad.ShipTo             := sp_OneLoadLocalDestinationNo.AsInteger;
  VidaLoad.Shipper            := sp_OneLoadLocalShippingCompanyNo.AsInteger;
  VidaLoad.ShipFrom           := sp_OneLoadLocalLoadingLocation.AsInteger;
  VidaLoad.Notering           := sp_OneLoadNotering.AsVariant ;


  // Has the load been confirmed? New code, 2003.03.09
  VidaLoad.Confirmed          := sp_OneLoadConfirmed.AsInteger > 0;

  // Has the load been invoiced yet? New code, 2003.03.10
  VidaLoad.Invoiced           := sp_OneLoadInvoiced.AsInteger > 0;


  // Now add the load orders to ship against.
  sp_LoadShippingPlan.Close;
  sp_LoadShippingPlan.ParamByName('LoadNo').AsInteger := LoadNo;
  sp_LoadShippingPlan.Open;
  sp_LoadShippingPlan.First;
  while not sp_LoadShippingPlan.Eof do begin
    LO := TLOListItem.Create;
    Try
      LO.LONo         := sp_LoadShippingPlanShippingPlanNo.AsInteger;
      LO.ETD          := sp_LoadShippingPlanETD.AsString;
      LO.ReadyDate    := sp_LoadShippingPlanPreliminaryRequestedPeriod.AsString;
      LO.Vessel       := sp_LoadShippingPlanCarrierName.AsString;
//      LO.Destination  := sp_LoadShippingPlanCityName.AsString;
      LO.CreatedUser  := sp_LoadShippingPlanCreatedUser.AsInteger;
      LO.ModifiedUser := sp_LoadShippingPlanModifiedUser.AsInteger;
      LO.DateCreated  := sp_LoadShippingPlanDateCreated.AsSQLTimeStamp;
    Finally
      VidaLoad.LOs.Add(LO);
      end;
    sp_LoadShippingPlan.Next;
    end;

  // LO Lines data is not added here.
  // This data is read-only on the Load Entry form, and is retrieved as needed.

  // Finally, the Package info.
  sp_LoadPackages.Close;
  sp_LoadPackages.ParamByName('LoadNo').AsInteger := LoadNo;
  sp_LoadPackages.Open;
  sp_LoadPackages.First;
  while not sp_LoadPackages.Eof do begin
    PK := TPackageListItem.Create;
    try

      PK.LoadDetailNo  := sp_LoadPackagesLoadDetailNo.AsInteger;
      PK.PackageNo     := sp_LoadPackagesPackageNo.AsInteger;
      PK.NoOfPackages  := sp_LoadPackagesNoOfPackages.AsInteger;
      PK.PackageTypeNo := sp_LoadPackagesPackageTypeNo.AsInteger;
      PK.SupplierCode  := Trim(sp_LoadPackagesSupplierCode.AsString);
      PK.PackageOK     := sp_LoadPackagesPackageOK.AsInteger > 0;
      PK.PackageLog    := sp_LoadPackagesProblemPackageLog.AsString;
      PK.OnSticks      := sp_LoadPackagesOnSticks.AsInteger > 0;

      PK.CreatedUser   := sp_LoadPackagesCreatedUser.AsInteger;
      PK.ModifiedUser  := sp_LoadPackagesModifiedUser.AsInteger;
      PK.DateCreated   := sp_LoadPackagesDateCreated.AsSQLTimeStamp;

    finally
      VidaLoad.Packages.Add(PK);
      end;
    sp_LoadPackages.Next;
    end;

end; *)

(*function TdmsOrder.ValidatePackage(
      SupplierCode : String3;
      PkgNo        : Integer;
      LOLines      : TList;
  var BadLength    : real ): Integer;
var
  iLOLine   : integer;
  ParamName : String;
begin

  sp_ValidatePackage.Close; // make sure all parameters revert to to default values

  sp_ValidatePackage.ParamByName('SupplierCode').AsString := trim(SupplierCode);
  sp_ValidatePackage.ParamByName('PkgNo').AsInteger       := PkgNo;

//  {$IFDEF LOGGER}
//    LECSLogger.Write('** Package matching parameters:');
//    LECSLogger.WriteFmt('** Supplier Code = %s', [SupplierCode]);
//    LECSLogger.WriteFmt('** Package No    = %d', [PkgNo]);
//  {$ENDIF}

  for iLOLine := 0 to LOLines.Count - 1 do begin
    ParamName := Format('LO%d',[iLOLine+1]);
    sp_ValidatePackage.ParamByName(ParamName).AsInteger := Integer(LOLines[iLOLine]);
//    {$IFDEF LOGGER} LECSLogger.WriteFmt('** %s = %d', [ParamName,Integer(LOLines[iLOLine])]); {$ENDIF}
    end;

  if LOLines.Count < MAX_LOs_PER_LOAD then
    for iLOLine := LOLines.Count to MAX_LOs_PER_LOAD-1 do begin
      ParamName := Format('LO%d',[iLOLine+1]);
      sp_ValidatePackage.ParamByName(ParamName).AsInteger := INVALID;
      end;


  sp_ValidatePackage.ExecProc;

  BadLength := sp_ValidatePackage.paramByName('BadLength').AsFloat;
  Result := sp_ValidatePackage.paramByName('RETURN_VALUE').AsInteger;

  if Result in [ALL_OK,AMBIGUOUS,MULTIMATCH] then
    LOLines.Add(Pointer(sp_ValidatePackage.ParamByName('SSPObjNo').AsInteger));
end; *)




procedure TdmsOrder.SetLOStatus(LONo, Status: Integer);
var
  Cmd : String;
begin
  with TSQLQuery.Create(Self) do try
    SQLConnection := dmsConnector.SQLConnection;
    Cmd := Format('ShippingPlanStatus =%d',[Status]);
    Cmd := Format('UPDATE SupplierShippingPlan SET %s',[Cmd]);
    Cmd := Format('%s WHERE SupplierShipPlanObjectNo = %d',[Cmd, LONo]);
    SQL.Add(Cmd);
    ExecSQL;
  finally
    free;
    end;
end;



procedure TdmsOrder.RemoveFromView(LONo: Integer);
var
  Cmd : String;
begin
  with TSQLQuery.Create(Self) do try
    SQLConnection := dmsConnector.SQLConnection;
    Cmd := Format('ShowInGrid =%d',[HIDE_FROM_LO_GRID]);
    Cmd := Format('UPDATE SupplierShippingPlan SET %s',[Cmd]);
    Cmd := Format('%s WHERE SupplierShipPlanObjectNo = %d',[Cmd, LONo]);
    SQL.Add(Cmd);
    ExecSQL;
  finally
    free;
    end;
end;

(*procedure TdmsOrder.DeleteLoad(LoadNo, InventoryPlace, InventoryGroup: Integer);
var
  TransactionNo : LongWord;
begin
  TransactionNo := dmsConnector.StartTransaction;
  try
    sp_Deleteload.ParamByName('LoadNo'        ).AsInteger := LoadNo;
    sp_Deleteload.ParamByName('InventoryPlace').AsInteger := InventoryPlace;
    sp_Deleteload.ParamByName('InventoryGroup').AsInteger := InventoryGroup;
    sp_Deleteload.ParamByName('UserID'        ).AsInteger := ThisUser.UserID;
    sp_Deleteload.ExecProc;

    dmsConnector.Commit(TransactionNo);

  except
    dmsConnector.Rollback(TransactionNo);
    raise;
    end;
end; *)

{procedure TdmsOrder.DeleteONELoad(LoadNo : Integer);
var
  TransactionNo : LongWord;
begin
  TransactionNo := dmsConnector.StartTransaction;
  try
    sp_DeleteONELoad.ParamByName('LoadNo').AsInteger := LoadNo;
    sp_Deleteload.ExecProc;

    dmsConnector.Commit(TransactionNo);

  except
    dmsConnector.Rollback(TransactionNo);
    raise;
    end;
end; }


end.



