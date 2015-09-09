unit dmLM1;

interface

uses
  Classes,
  DB,
  SysUtils,
  Dialogs,
  dmsVidaContact,
  SqlTimSt,
  Controls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdaMoLM1 = class(TDataModule)
    dsrcAvrop: TDataSource;
    dsrcNormalLO: TDataSource;
    dsrcExtraLO: TDataSource;
    dsrcLoads: TDataSource;
    dsOrder: TDataSource;
    ds_InvoiceInGroup: TDataSource;
    ds_InvoiceGroup: TDataSource;
    ds_GetLOByInvNo: TDataSource;
    cdsAvrop1: TFDQuery;
    cdsAvrop1CurrencyNo: TIntegerField;
    cdsAvrop1ShippingPlanStatus: TIntegerField;
    cdsAvrop1ShippingPlanNo: TIntegerField;
    cdsAvrop1ORDERNUMBER: TStringField;
    cdsAvrop1REFERENCE: TStringField;
    cdsAvrop1FROMWEEK: TIntegerField;
    cdsAvrop1TOWEEK: TIntegerField;
    cdsAvrop1CLIENT: TStringField;
    cdsAvrop1AGENT: TStringField;
    cdsAvrop1MARK: TStringField;
    cdsAvrop1PRODUCT: TStringField;
    cdsAvrop1LENGTH: TStringField;
    cdsAvrop1VOLUME: TFloatField;
    cdsAvrop1VOLUNIT: TStringField;
    cdsAvrop1DESTINATION: TStringField;
    cdsAvrop1ORDERNO: TIntegerField;
    cdsAvrop1CLIENTNO: TIntegerField;
    cdsAvrop1DESTINATIONNO: TIntegerField;
    cdsAvrop1CustShipPlanDetailObjectNo: TIntegerField;
    cdsAvrop1SALESREGIONNO: TIntegerField;
    cdsAvrop1ORDERTYPE: TIntegerField;
    cdsAvrop1KR_REF: TStringField;
    cdsAvrop1LEV: TFMTBCDField;
    cdsAvrop1Trading: TIntegerField;
    cdsAvrop1SequenceNo: TIntegerField;
    cdsAvrop1REST: TFloatField;
    cdsNormalLO: TFDQuery;
    cdsNormalLOKR_REF: TStringField;
    cdsNormalLOLO: TIntegerField;
    cdsNormalLOUNIQUERECORDNO: TIntegerField;
    cdsNormalLOSUPPLIER: TStringField;
    cdsNormalLOSTATUS: TIntegerField;
    cdsNormalLOPRODUCT: TStringField;
    cdsNormalLOLENGTH: TStringField;
    cdsNormalLOM3: TFloatField;
    cdsNormalLOVOLUME: TFloatField;
    cdsNormalLOVOLUNIT: TStringField;
    cdsNormalLOCURRENCY: TStringField;
    cdsNormalLOPRICE: TFloatField;
    cdsNormalLOPRICEUNIT: TStringField;
    cdsNormalLOSUPPLIERNO: TIntegerField;
    cdsNormalLOPKGCODE: TStringField;
    cdsNormalLOFROMWEEK: TIntegerField;
    cdsNormalLOTOWEEK: TIntegerField;
    cdsNormalLOSHIPTO: TStringField;
    cdsNormalLODESTINATION: TStringField;
    cdsNormalLOCUSTPLANOBJECTNO: TIntegerField;
    cdsNormalLOOBJECTTYPE: TIntegerField;
    cdsNormalLOLOADING_LOCATION: TStringField;
    cdsNormalLODELIVERED: TFloatField;
    cdsNormalLOREST: TFloatField;
    cdsExtraLO: TFDQuery;
    cdsExtraLOKR_REF: TStringField;
    cdsExtraLOLO: TIntegerField;
    cdsExtraLOUNIQUERECORDNO: TIntegerField;
    cdsExtraLOSUPPLIER: TStringField;
    cdsExtraLOSTATUS: TIntegerField;
    cdsExtraLOPRODUCT: TStringField;
    cdsExtraLOLENGTH: TStringField;
    cdsExtraLOM3: TFloatField;
    cdsExtraLOVOLUME: TFloatField;
    cdsExtraLOVOLUNIT: TStringField;
    cdsExtraLOCURRENCY: TStringField;
    cdsExtraLOPRICE: TFloatField;
    cdsExtraLOPRICEUNIT: TStringField;
    cdsExtraLOSUPPLIERNO: TIntegerField;
    cdsExtraLOPKGCODE: TStringField;
    cdsExtraLOFROMWEEK: TIntegerField;
    cdsExtraLOTOWEEK: TIntegerField;
    cdsExtraLOSHIPTO: TStringField;
    cdsExtraLOCUSTPLANOBJECTNO: TIntegerField;
    cdsExtraLOOBJECTTYPE: TIntegerField;
    cdsExtraLOCUSTOMER: TStringField;
    cdsExtraLODELIVERED: TFloatField;
    cdsLoads: TFDQuery;
    cdsLoadsFOLJESEDEL: TIntegerField;
    cdsLoadsLO: TIntegerField;
    cdsLoadsLOADNO: TIntegerField;
    cdsLoadsFS: TStringField;
    cdsLoadsLOADEDDATE: TSQLTimeStampField;
    cdsLoadsSenderLoadStatus: TIntegerField;
    cdsLoadsLOAD_ID: TStringField;
    cdsLoadsACT_M3: TFloatField;
    cdsLoadsNoOfPkgs: TIntegerField;
    cdsLoadsINTERNAL_INVOICENO: TIntegerField;
    cdsLoadsLoadOK: TIntegerField;
    cdsOrder: TFDQuery;
    cdsOrderPKValue: TStringField;
    cdsOrderOrderNo: TIntegerField;
    cdsOrderSalesRegionNo: TIntegerField;
    cdsOrderOrderLineNo: TIntegerField;
    cdsOrderProductNo: TIntegerField;
    cdsOrderProductLengthNo: TIntegerField;
    cdsOrderOrderNoText: TStringField;
    cdsOrderOrderStatus: TIntegerField;
    cdsOrderOrderType: TIntegerField;
    cdsOrderSalesType: TStringField;
    cdsOrderCustomerNo: TIntegerField;
    cdsOrderClientName: TStringField;
    cdsOrderOrderLineDescription: TStringField;
    cdsOrderNoOfUnits: TFloatField;
    cdsOrderLengthDescription: TStringField;
    cdsOrderVolumeUnitNo: TIntegerField;
    cdsOrderPriceUnitNo: TIntegerField;
    cdsOrderCurrencyNo: TIntegerField;
    cdsOrderCurrencyName: TStringField;
    cdsOrderPrice: TFloatField;
    cdsOrderTemplateUnitName: TStringField;
    cdsOrderOrderVolume: TFloatField;
    cdsOrderVolumeUnit_No: TIntegerField;
    cdsOrderOrderLineValueSEK: TFloatField;
    cdsOrderOrderLineValueCurrency: TFloatField;
    cdsSetAvrop: TFDQuery;
    cdsSetAvropShippingPlanNo: TIntegerField;
    cdsSetAvropShippingPlanStatus: TIntegerField;
    cds_GetLOByInvNo: TFDQuery;
    sq_FindLONo: TFDQuery;
    sq_Get_CSH_Status: TFDQuery;
    sq_ValidLONr: TFDQuery;
    sq_SearchLOByCSD_Ref: TFDQuery;
    sq_SetRowStatus: TFDQuery;
    sq_SetHdrStatus: TFDQuery;
    cds_GetLOByInvNoLO: TIntegerField;
    cds_GetLOByInvNoFakturaserie: TStringField;
    cds_GetLOByInvNoInternalInvoiceNo: TIntegerField;
    cds_GetLOByInvNoInvoiceType: TIntegerField;
    cds_GetLOByInvNoFakturanr: TIntegerField;
    sq_FindLONoLONo: TIntegerField;
    sq_Get_CSH_StatusShippingPlanStatus: TIntegerField;
    sq_ValidLONrShippingPlanNo: TIntegerField;
    sq_ValidLONrSalesRegionNo: TIntegerField;
    sp_CngLOonLoad_csd: TFDStoredProc;
    cds_InvoiceGroup: TFDQuery;
    cds_InvoiceGroupInvoiceGroupNo: TIntegerField;
    cds_InvoiceGroupOriginalInvNos: TStringField;
    cds_InvoiceGroupOrdernos: TStringField;
    cds_InvoiceGroupCreatedUser: TIntegerField;
    cds_InvoiceGroupModifiedUser: TIntegerField;
    cds_InvoiceGroupCreatedDate: TSQLTimeStampField;
    cds_InvoiceGroupModifiedDate: TSQLTimeStampField;
    cds_InvoiceGroupInvoiceText: TMemoField;
    cds_InvoiceGroupAddressName: TStringField;
    cds_InvoiceGroupAddressLine1: TStringField;
    cds_InvoiceGroupAddressLine2: TStringField;
    cds_InvoiceGroupAddressLine3: TStringField;
    cds_InvoiceGroupAddressLine4: TStringField;
    cds_InvoiceGroupStateOrProvince: TStringField;
    cds_InvoiceGroupPostalCode: TStringField;
    cds_InvoiceGroupCityName: TStringField;
    cds_InvoiceGroupCountryName: TStringField;
    cds_InvoiceGroupCustomerName: TStringField;
    cds_InvoiceGroupAgentname: TStringField;
    cds_InvoiceGroupST_AddressName: TStringField;
    cds_InvoiceGroupST_CityName: TStringField;
    cds_InvoiceGroupCarrierName: TStringField;
    cds_InvoiceGroupETD: TSQLTimeStampField;
    cds_InvoiceGroupETA: TSQLTimeStampField;
    cds_InvoiceGroupPaymentText: TMemoField;
    cds_InvoiceGroupDeliveryTerm: TStringField;
    cds_InvoiceGroupPaymentDescription: TStringField;
    cds_InvoiceGroupCurrencyName: TStringField;
    cds_InvoiceGroupSearchName: TStringField;
    cds_InvoiceGroupSUM_FreigthCost: TFloatField;
    cds_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField;
    cds_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField;
    cds_InvoiceInGroup: TFDQuery;
    cds_KontoLogik: TFDQuery;
    cds_KontoLogikSalesmangroupNo: TIntegerField;
    cds_KontoLogikSalesregionNo: TIntegerField;
    cds_KontoLogikCustomerCountryNo: TIntegerField;
    cds_KontoLogikTrading: TIntegerField;
    cds_KontoLogikPO_CountryNo: TIntegerField;
    cds_KontoLogikVarugruppNo: TIntegerField;
    cds_KontoLogikForsaljningsKonto: TStringField;
    cds_KontoLogikFraktKonto: TStringField;
    cds_KontoLogikVatCode: TStringField;
    cds_KontoLogikMomsKonto: TStringField;
    cds_KontoLogikSalesgroup: TStringField;
    cds_KontoLogikSalesregion: TStringField;
    cds_KontoLogikSalesToCountry: TStringField;
    cds_KontoLogikDateCreated: TSQLTimeStampField;
    cds_KontoLogikDateModified: TSQLTimeStampField;
    cds_KontoLogikCreatedUser: TIntegerField;
    cds_KontoLogikModifiedUser: TIntegerField;
    ds_KontoLogik: TDataSource;
    cds_KontoLogikMoms: TIntegerField;
    cds_KontoLogikArtikel: TStringField;
    cds_KontoLogikPO_Country: TStringField;
    cdsAvrop1LoadedPkgs: TIntegerField;
    cdsLoadsPackageEntryOption: TIntegerField;
    cdsAvrop: TFDQuery;
    cdsAvropCurrencyNo: TIntegerField;
    cdsAvropShippingPlanStatus: TIntegerField;
    cdsAvropShippingPlanNo: TIntegerField;
    cdsAvropORDERNUMBER: TStringField;
    cdsAvropREFERENCE: TStringField;
    cdsAvropFROMWEEK: TIntegerField;
    cdsAvropTOWEEK: TIntegerField;
    cdsAvropCLIENT: TStringField;
    cdsAvropAGENT: TStringField;
    cdsAvropMARK: TStringField;
    cdsAvropPRODUCT: TStringField;
    cdsAvropLENGTH: TStringField;
    cdsAvropVOLUME: TFloatField;
    cdsAvropVOLUNIT: TStringField;
    cdsAvropDESTINATION: TStringField;
    cdsAvropORDERNO: TIntegerField;
    cdsAvropCLIENTNO: TIntegerField;
    cdsAvropDESTINATIONNO: TIntegerField;
    cdsAvropCustShipPlanDetailObjectNo: TIntegerField;
    cdsAvropSALESREGIONNO: TIntegerField;
    cdsAvropORDERTYPE: TIntegerField;
    cdsAvropKR_REF: TStringField;
    cdsAvropLEV: TFMTBCDField;
    cdsAvropTrading: TIntegerField;
    cdsAvropSequenceNo: TIntegerField;
    cdsAvropLoadedPkgs: TIntegerField;
    cdsAvropRest: TFloatField;
    cdsLoadsINVOICE_NO: TIntegerField;
    cdsLoadsPrefix: TStringField;
    cdsLoadsInvoiceType: TStringField;
    sp_GetRtRPOLoNo: TFDStoredProc;
    sp_CopySalesLoadToPO: TFDStoredProc;
    procedure dsrcAvropDataChange(Sender: TObject; Field: TField);
    procedure dspLoadsGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_KontoLogikAfterInsert(DataSet: TDataSet);
    procedure cds_KontoLogikBeforePost(DataSet: TDataSet);
    procedure cdsAvropCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function SelectLONo: Integer;

  public
    Function CopySalesLoadToPOLoadAndSetPackagesAsNotAvailable
  (const OldLoadNo, NewLONo, Insert_Confirmed_Load
  : Integer): Integer;
    function  GetPOLoNoInRegionToRegion(const SalesLONo : Integer) : Integer ;//Return PO_LO
    procedure CngLOonLoad(const LoadNo, NewLONo: Integer);
    function  ValidLO(const LONo: Integer): Boolean;
    procedure RefreshAvropLoads;
    Function  GetLONoForLoadNo(const LoadNo: Integer): Integer;
    Function  AnyLoadsToInvoice: Boolean;
    procedure RefreshLoadsAndLOs;
    function  GetLOByInvNo(const InvoiceNo: Integer;
      Var InternalInvoiceNo: Integer): Integer;
    Function  GetLONoForCSDRef(const CSD_Ref: String): Integer;
    function  SetAvropStatus(const LONo, Status: Integer): Boolean;
  end;

var
  daMoLM1: TdaMoLM1;

implementation

uses dmsDataConn, recerror, UnitEnterInvoiceNo, uSelectLONoByInvoiceSerie,
  dmsVidaSystem, VidaUser, VidaConst;

{$R *.dfm}

function TdaMoLM1.SetAvropStatus(const LONo, Status: Integer): Boolean;
Begin
//  dmsConnector.StartTransaction;
  try

    Try
      sq_SetRowStatus.ParamByName('LONo').AsInteger := LONo;
      sq_SetRowStatus.ParamByName('Status').AsInteger := Status;
      sq_SetRowStatus.ExecSQL;
    except
      On E: Exception do
      Begin
        Result := False;
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;

    Try
      sq_SetHdrStatus.ParamByName('LONo').AsInteger := LONo;
      sq_SetHdrStatus.ParamByName('Status').AsInteger := Status;
      sq_SetHdrStatus.ExecSQL;
    except
      On E: Exception do
      Begin
        Result := False;
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;

  //  dmsConnector.Commit;
    Result := True;
  except
  //  dmsConnector.Rollback;
    Result := False;
    raise;
  end;
End;

procedure TdaMoLM1.RefreshLoadsAndLOs;
begin
  cdsNormalLO.Active := False;
  cdsNormalLO.ParamByName('CustShipPlanDetailObjectNo').AsInteger :=
    cdsAvropCustShipPlanDetailObjectNo.AsInteger;
  cdsNormalLO.Active := True;

  cdsExtraLO.Active := False;
  cdsExtraLO.ParamByName('LONo').AsInteger := cdsAvropShippingPlanNo.AsInteger;
  cdsExtraLO.Active := True;
  RefreshAvropLoads;
end;

procedure TdaMoLM1.dsrcAvropDataChange(Sender: TObject; Field: TField);
begin
  RefreshLoadsAndLOs;
end;

procedure TdaMoLM1.RefreshAvropLoads;
Begin
  cdsLoads.Active := False;
  cdsLoads.ParamByName('ShippingPlanNo').AsInteger :=
    cdsAvropShippingPlanNo.AsInteger;
  cdsLoads.ParamByName('CustomerNo').AsInteger := cdsAvropCLIENTNO.AsInteger;
  // CSH.CustomerNo
  cdsLoads.ParamByName('SupplierNo').AsInteger :=
    cdsAvropSALESREGIONNO.AsInteger;
  cdsLoads.Active := True;
End;

Function TdaMoLM1.GetLONoForLoadNo(const LoadNo: Integer): Integer;
Begin
  sq_FindLONo.ParamByName('LoadNo').AsInteger := LoadNo;
  Try
    sq_FindLONo.Open;
    if not sq_FindLONo.Eof then
      Result := sq_FindLONoLONo.AsInteger
    else
      Result := -1;
  Finally
    sq_FindLONo.Close;
  End;
End;

Function TdaMoLM1.AnyLoadsToInvoice: Boolean;
Var
  TempDataSet: TFDMemTable;
Begin
  if cdsLoads.Active then
  Begin
    TempDataSet := TFDMemTable.Create(nil);
    try
      { clone the real dataset with Reset set to True }
      { so that the current range is not cloned }
      // TempDataSet.CloneCursor(cdsLoads, True);
      TempDataSet.CloneCursor(cdsLoads, False, False);

      Result := False;
      TempDataSet.First;
      While not TempDataSet.Eof do
      Begin
        if (TempDataSet.FieldByName('INTERNAL_INVOICENO').AsInteger = -1) AND
          (TempDataSet.FieldByName('SenderLoadStatus').AsInteger = 2) AND
          (TempDataSet.FieldByName('ACT_M3').IsNull = False) then
        Begin
          Result := True;
          Exit;
        End;
        TempDataSet.Next;
      End;
    finally
      TempDataSet.Free; { free the temporary data set }
    end;
  End
  else
    Result := False;
End;

procedure TdaMoLM1.dspLoadsGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  TableName := 'Loads';
end;

function TdaMoLM1.SelectLONo: Integer;
var
  fSelectLONoByInvoiceSerie: TfSelectLONoByInvoiceSerie;
Begin
  fSelectLONoByInvoiceSerie := TfSelectLONoByInvoiceSerie.Create(nil);
  Try
    if fSelectLONoByInvoiceSerie.ShowModal = MrOK then
      Result := cds_GetLOByInvNoLO.AsInteger
    else
      Result := -1;
  Finally
    FreeAndNil(fSelectLONoByInvoiceSerie);
  End;
End;

function TdaMoLM1.GetLOByInvNo(const InvoiceNo: Integer;
  Var InternalInvoiceNo: Integer): Integer;
Begin
  Try
    cds_GetLOByInvNo.Active := False;
    cds_GetLOByInvNo.ParamByName('InvoiceNo').AsInteger := InvoiceNo;
    cds_GetLOByInvNo.Active := True;
    if cds_GetLOByInvNo.RecordCount = 1 then
    Begin
      Result := cds_GetLOByInvNoLO.AsInteger;
      InternalInvoiceNo := cds_GetLOByInvNoInternalInvoiceNo.AsInteger;
    End
    else if cds_GetLOByInvNo.RecordCount > 1 then
    Begin
      Result := SelectLONo;
      InternalInvoiceNo := cds_GetLOByInvNoInternalInvoiceNo.AsInteger;
    End
    else
      Result := -1;
  Finally
    cds_GetLOByInvNo.Active := False;
  End;
End;

Function TdaMoLM1.GetLONoForCSDRef(const CSD_Ref: String): Integer;
Begin

End;

procedure TdaMoLM1.CngLOonLoad(const LoadNo, NewLONo: Integer);
Begin
  sp_CngLOonLoad_csd.ParamByName('@LoadNo').AsInteger := LoadNo;
  sp_CngLOonLoad_csd.ParamByName('@NewLONo').AsInteger := NewLONo;
  Try
    sp_CngLOonLoad_csd.ExecProc;
  except
    On E: Exception do
    Begin
      // dmsSystem.FDoLog(E.Message) ;
      ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdaMoLM1.ValidLO(const LONo: Integer): Boolean;
Begin
  sq_ValidLONr.ParamByName('LONo').AsInteger := LONo;
  sq_ValidLONr.ParamByName('SupplierNo').AsInteger :=
    cdsAvropSALESREGIONNO.AsInteger;
  sq_ValidLONr.Open;
  Try
    if (not sq_ValidLONr.Eof) and (sq_ValidLONrShippingPlanNo.AsInteger > 0)
    then
    Begin
      if (sq_ValidLONrSalesRegionNo.AsInteger = cdsAvropSALESREGIONNO.AsInteger)
      then
        // and (sq_ValidLONrLoadingLocationNo.AsInteger = cdsSawmillLoadOrdersLoadingLocationNo.AsInteger) then
        Result := True
      else
        Result := False;
    End
    else
      Result := False;
  Finally
    sq_ValidLONr.Close;
  End;
End;

procedure TdaMoLM1.cds_KontoLogikAfterInsert(DataSet: TDataSet);
begin
  cds_KontoLogikDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now);
  cds_KontoLogikDateModified.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
  cds_KontoLogikCreatedUser.AsInteger       := ThisUser.UserID;
  cds_KontoLogikModifiedUser.AsInteger      := ThisUser.UserID;
  cds_KontoLogikTrading.AsInteger           := 0;
  cds_KontoLogikSalesregionNo.AsInteger     := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
  cds_KontoLogikMoms.AsInteger              := 0;
end;

procedure TdaMoLM1.cds_KontoLogikBeforePost(DataSet: TDataSet);
begin
  cds_KontoLogikModifiedUser.AsInteger := ThisUser.UserID;
  cds_KontoLogikDateModified.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
  if cds_KontoLogikTrading.AsInteger = 0 then
    cds_KontoLogikPO_CountryNo.AsInteger := -1;
end;

procedure TdaMoLM1.cdsAvropCalcFields(DataSet: TDataSet);
begin
  cdsAvropRest.AsFloat := cdsAvropVOLUME.AsFloat - cdsAvropLEV.AsFloat;
  if cdsAvropRest.AsFloat < 0 then
    cdsAvropRest.AsFloat := 0;
end;

function TdaMoLM1.GetPOLoNoInRegionToRegion(const SalesLONo : Integer) : Integer ;//Return PO_LO
Begin
  sp_GetRtRPOLoNo.ParamByName('@SalesLONo').AsInteger :=  SalesLONo ;
  sp_GetRtRPOLoNo.Active  := True ;
  Try
  if not sp_GetRtRPOLoNo.Eof then
   Result := sp_GetRtRPOLoNo.FieldByName('POShippingPlanNo').AsInteger
    else
     Result := -1 ;
  Finally
   sp_GetRtRPOLoNo.Active := False ;
  End;
End;

Function TdaMoLM1.CopySalesLoadToPOLoadAndSetPackagesAsNotAvailable
  (const OldLoadNo, NewLONo, Insert_Confirmed_Load
  : Integer): Integer;
Begin
  Try
    sp_CopySalesLoadToPO.ParamByName('@SrcLoadNo').AsInteger := OldLoadNo;
    sp_CopySalesLoadToPO.ParamByName('@NewLONo').AsInteger := NewLONo;
    sp_CopySalesLoadToPO.ParamByName('@CreateUser').AsInteger :=
      ThisUser.UserID;
//    sp_CopySalesLoadToPO.ParamByName('@OriginalLoadNo').AsInteger :=
//      OriginalLoadNo;
    sp_CopySalesLoadToPO.ParamByName('@Insert_Confirmed_Load').AsInteger :=
      Insert_Confirmed_Load;
    Result := sp_CopySalesLoadToPO.ParamByName('@NewLoadNo').AsInteger;
    sp_CopySalesLoadToPO.ExecProc;
  Try

  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
  Finally
    sp_CopySalesLoadToPO.Close;
  End;
End;

end.
