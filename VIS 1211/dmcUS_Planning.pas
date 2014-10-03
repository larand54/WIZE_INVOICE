unit dmcUS_Planning;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, kbmMemTable,
  kbmMemCSVStreamFormat, SqlTimSt ;

type
  TdmUS_Planning = class(TDataModule)
    sq_Inventory: TSQLQuery;
    dspInventory: TDataSetProvider;
    cdsInventory: TClientDataSet;
    dsInventory: TDataSource;
    cdsInventoryNet_To_Sell: TFloatField;
    memInventory: TkbmMemTable;
    memInventoryTOSHIP: TFloatField;
    memInventorySHIPPED: TIntegerField;
    memInventoryINV_PKGS: TIntegerField;
    memInventoryPackageCodeNo: TStringField;
    memInventoryPackageTypeNo: TIntegerField;
    memInventoryClientCode: TStringField;
    memInventoryLogicalInventoryName: TStringField;
    memInventoryProductDisplayName: TStringField;
    memInventoryBarCodeID: TStringField;
    memInventoryProductGroupNo: TIntegerField;
    memInventoryOwnerNo: TIntegerField;
    memInventorySalesRegionNo: TIntegerField;
    memInventoryPackageMainCode: TStringField;
    memInventoryProductNo: TIntegerField;
    memInventoryMinLevel: TIntegerField;
    memInventoryMaxLevel: TIntegerField;
    memInventoryPrice: TFloatField;
    memInventoryLogicalInventoryPointNo: TIntegerField;
    memInventoryActualThicknessMM: TFloatField;
    memInventoryActualWidthMM: TFloatField;
    memInventoryNet_To_Sell: TFloatField;
    memInventoryTotalNoOfPieces: TIntegerField;
    cdsInventoryTOSHIP: TFloatField;
    cdsInventorySHIPPED: TIntegerField;
    cdsInventoryINV_PKGS: TIntegerField;
    cdsInventoryPackageCodeNo: TStringField;
    cdsInventoryPackageTypeNo: TIntegerField;
    cdsInventoryClientCode: TStringField;
    cdsInventoryLogicalInventoryName: TStringField;
    cdsInventoryProductDisplayName: TStringField;
    cdsInventoryBarCodeID: TStringField;
    cdsInventoryProductGroupNo: TIntegerField;
    cdsInventoryOwnerNo: TIntegerField;
    cdsInventorySalesRegionNo: TIntegerField;
    cdsInventoryPackageMainCode: TStringField;
    cdsInventoryProductNo: TIntegerField;
    cdsInventoryMinLevel: TIntegerField;
    cdsInventoryMaxLevel: TIntegerField;
    cdsInventoryPrice: TFloatField;
    cdsInventoryLogicalInventoryPointNo: TIntegerField;
    cdsInventoryActualThicknessMM: TFloatField;
    cdsInventoryActualWidthMM: TFloatField;
    cdsInventoryTotalNoOfPieces: TIntegerField;
    cdsInventoryCOMMITTED: TFloatField;
    memInventoryCOMMITTED: TFloatField;
    memInventoryWEEK_1: TFloatField;
    memInventoryWEEK_2: TFloatField;
    memInventoryPASTDUE: TFloatField;
    memCommittedWeek: TkbmMemTable;
    memCommittedWeekPackageTypeNo: TIntegerField;
    memCommittedWeekWeekNo: TIntegerField;
    memCommittedWeekNoOfPkg: TFloatField;
    sq_CommittedPerWeek: TSQLQuery;
    sq_PastDue: TSQLQuery;
    memCommittedPastDue: TkbmMemTable;
    memCommittedPastDuePackageTypeNo: TIntegerField;
    memCommittedPastDueNoOfPkg: TFloatField;
    memInventoryWEEK_3: TFloatField;
    memInventoryWEEK_4: TFloatField;
    sq_Vessels: TSQLQuery;
    sq_VesselsShippingPlanNo: TIntegerField;
    sq_VesselsVESSEL: TStringField;
    sq_VesselsETD: TSQLTimeStampField;
    sq_VesselsETA: TSQLTimeStampField;
    sq_AvropProduct: TSQLQuery;
    cdsAvropProduct: TClientDataSet;
    dspAvropProduct: TDataSetProvider;
    memAvropProduct: TkbmMemTable;
    cdsAvropProductPKG_CODE: TStringField;
    cdsAvropProductDESCRIPTION: TStringField;
    cdsAvropProductBARCODE: TStringField;
    cdsAvropProductPCSPKG: TIntegerField;
    cdsAvropProductPLANNED_PKG: TFloatField;
    cdsAvropProductPACKAGETYPENO: TIntegerField;
    memAvropProductPKG_CODE: TStringField;
    memAvropProductDESCRIPTION: TStringField;
    memAvropProductBARCODE: TStringField;
    memAvropProductPCSPKG: TIntegerField;
    memAvropProductPLANNED_PKG: TFloatField;
    memAvropProductPACKAGETYPENO: TIntegerField;
    memAvropProductNOOFPKGLOADED: TFloatField;
    memAvropProductNOOFPKGSONHAND: TFloatField;
    memAvropProductNOOFPKGAVAILABLE: TFloatField;
    memAvropProductNOOFPKGIN_LO: TFloatField;
    memAvropProductSHIPPINGPLANNO: TIntegerField;
    dsAvropProduct: TDataSource;
    memAvropProductETA_WEEKNO: TIntegerField;
    cdsAvropProductETA: TSQLTimeStampField;
    memAvropProductETA: TSQLTimeStampField;
    sq_LoadOrder: TSQLQuery;
    dspLoadOrder: TDataSetProvider;
    cdsLoadOrder: TClientDataSet;
    dsLoadOrder: TDataSource;
    cdsAvropProductCustShipPlanDetailObjectNo: TIntegerField;
    memAvropProductCustShipPlanDetailObjectNo: TIntegerField;
    cdsLoadOrderCustShipPlanDetailObjectNo: TIntegerField;
    cdsLoadOrderShippingPlanStatus: TIntegerField;
    cdsLoadOrderLO: TIntegerField;
    cdsLoadOrderPKGCode: TStringField;
    cdsLoadOrderPRODUCT: TStringField;
    cdsLoadOrderLENGTH: TStringField;
    cdsLoadOrderNOOFUNITS: TFloatField;
    cdsLoadOrderSupplierShipPlanObjectNo: TIntegerField;
    cdsLoadOrderShowInGrid: TIntegerField;
    cdsLoadOrderVOL_UNIT: TStringField;
    cdsLoadOrderSUPPLIER: TStringField;
    cdsLoadOrderSUPPLIERNO: TIntegerField;
    cdsLoadOrderObjectType: TIntegerField;
    cdsLoadOrderPRICE: TFloatField;
    cdsLoadOrderCustomerShowInGrid: TIntegerField;
    cdsLoadOrderDELIVERED: TFloatField;
    cdsLoadOrderTO_SHIP: TFloatField;
    sq_InventoryLoadingLocation: TSQLQuery;
    sq_InventoryLoadingLocationNoOfPackages: TIntegerField;
    sq_VesselsLOADINGPORTNO: TIntegerField;
    sq_VesselsSTATUS: TStringField;
    procedure cdsInventoryCalcFields(DataSet: TDataSet);
    procedure dsAvropProductDataChange(Sender: TObject; Field: TField);
    procedure cdsLoadOrderCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LoadVessels(Strings : TStrings;SalesRegionNo : Integer);
  public
    { Public declarations }
    procedure GetVessels(Strings : TStrings;SalesRegionNo : Integer);
  end;

var
  dmUS_Planning: TdmUS_Planning;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TdmUS_Planning.cdsInventoryCalcFields(DataSet: TDataSet);
begin
 cdsInventoryNet_To_Sell.AsFloat:= cdsInventoryINV_PKGS.AsInteger
 - (cdsInventoryTOSHIP.AsFloat - cdsInventorySHIPPED.AsFloat) ;

 cdsInventoryCOMMITTED.AsFloat:= cdsInventoryTOSHIP.AsFloat - cdsInventorySHIPPED.AsFloat ;
end;


procedure TdmUS_Planning.GetVessels(Strings : TStrings;SalesRegionNo : Integer);
begin
  LoadVessels(Strings,SalesRegionNo);
//  cdsCarriers.SetProvider(dmsContact.provCarriers);
//  cdsGrades.Open;
end;

procedure TdmUS_Planning.LoadVessels(Strings : TStrings;SalesRegionNo : Integer);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
 sq_Vessels.ParamByName('SalesRegionNo').AsInteger:= SalesRegionNo ;
 sq_Vessels.Open;

  try
    sq_Vessels.First;
    while not sq_Vessels.Eof do begin
      Strings.AddObject(
        Trim(sq_Vessels.FieldByname('VESSEL').AsString)+' '+ Trim(SQLTimeStampToStr('',sq_Vessels.FieldByname('ETA').AsSQLTimeStamp))
        +' ['+Trim(sq_Vessels.FieldByName('STATUS').AsString+']'),
        TObject(sq_Vessels.FieldByName('ShippingPlanNo').AsInteger)
        );
      sq_Vessels.Next;
      end;
  finally
    sq_Vessels.Close;
    end;
end;

procedure TdmUS_Planning.dsAvropProductDataChange(Sender: TObject;
  Field: TField);
begin
 cdsLoadOrder.Active:= False ;
 sq_LoadOrder.ParamByName('CustShipPlanDetailObjectNo').AsInteger:= memAvropProductCustShipPlanDetailObjectNo.AsInteger ;
 cdsLoadOrder.Active:= True ;
end;

procedure TdmUS_Planning.cdsLoadOrderCalcFields(DataSet: TDataSet);
begin
 if (cdsLoadOrderNOOFUNITS.AsFloat - cdsLoadOrderTO_SHIP.AsFloat) < 0 then
 cdsLoadOrderTO_SHIP.AsFloat := 0
 else
 cdsLoadOrderTO_SHIP.AsFloat := cdsLoadOrderNOOFUNITS.AsFloat - cdsLoadOrderTO_SHIP.AsFloat ;
end;

end.
