unit dmBooking;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlTimSt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  Tdm_Booking = class(TDataModule)
    dsShippers: TDataSource;
    dsBookingInvoice: TDataSource;
    dsVoyageDestinationInvoice: TDataSource;
    dsVoyageInvoice: TDataSource;
    dsAvropInfo: TDataSource;
    dsBookingProducts: TDataSource;
    cdsShippers: TFDStoredProc;
    cdsShippersClientNo: TIntegerField;
    cdsShippersClientName: TStringField;
    cdsBookingInvoice: TFDQuery;
    cdsBookingInvoiceBookingNo: TIntegerField;
    cdsBookingInvoiceShippingPlanNo: TIntegerField;
    cdsBookingInvoiceVoyageNo: TIntegerField;
    cdsBookingInvoiceShippingCompanyNo: TIntegerField;
    cdsBookingInvoiceDestinationNo: TIntegerField;
    cdsBookingInvoiceShippingCompanyBookingID: TStringField;
    cdsBookingInvoiceBookingTypeNo: TIntegerField;
    cdsBookingInvoiceVolumeBooked: TFloatField;
    cdsBookingInvoiceVolumeUnitNo: TIntegerField;
    cdsBookingInvoiceRequestedShipDate: TSQLTimeStampField;
    cdsBookingInvoiceRequestedShipTime: TSQLTimeStampField;
    cdsBookingInvoiceShippersShipDate: TSQLTimeStampField;
    cdsBookingInvoiceShippersShipTime: TSQLTimeStampField;
    cdsBookingInvoiceSupplierReference: TStringField;
    cdsBookingInvoiceFreightCost: TFloatField;
    cdsBookingInvoiceFreightCostVolUnit: TIntegerField;
    cdsBookingInvoiceFreightCostCurrency: TIntegerField;
    cdsBookingInvoiceSequenceNo: TIntegerField;
    cdsBookingInvoiceCreatedUser: TSmallintField;
    cdsBookingInvoiceModifiedUser: TSmallintField;
    cdsBookingInvoiceDateCreated: TSQLTimeStampField;
    cdsBookingInvoiceStatus: TIntegerField;
    cdsBookingInvoicePreliminaryRequestedPeriod: TStringField;
    cdsBookingInvoiceLOText: TMemoField;
    cdsBookingInvoiceInvoiceText: TMemoField;
    cdsBookingInvoiceNoteForLoadSheet: TMemoField;
    cdsBookingInvoiceVesselOrPort: TStringField;
    cdsBookingInvoicePanic_Note: TStringField;
    cdsVoyageDestinationInvoice: TFDQuery;
    cdsVoyageDestinationInvoiceBookingNo: TIntegerField;
    cdsVoyageDestinationInvoiceDestinationNo: TIntegerField;
    cdsVoyageDestinationInvoiceETA: TSQLTimeStampField;
    cdsVoyageDestinationInvoiceStatus: TIntegerField;
    cdsVoyageDestinationInvoiceClearedDate: TSQLTimeStampField;
    cdsVoyageDestinationInvoiceCreatedUser: TSmallintField;
    cdsVoyageDestinationInvoiceModifiedUser: TSmallintField;
    cdsVoyageDestinationInvoiceDateCreated: TSQLTimeStampField;
    cdsVoyageInvoice: TFDQuery;
    cdsVoyageInvoiceVoyageNo: TIntegerField;
    cdsVoyageInvoiceCarrierNo: TIntegerField;
    cdsVoyageInvoiceETD: TSQLTimeStampField;
    cdsVoyageInvoiceLoadingPortNo: TIntegerField;
    cdsVoyageInvoiceSequenceNo: TIntegerField;
    cdsVoyageInvoiceCreatedUser: TSmallintField;
    cdsVoyageInvoiceModifiedUser: TSmallintField;
    cdsVoyageInvoiceDateCreated: TSQLTimeStampField;
    cdsVoyageInvoiceETA: TSQLTimeStampField;
    cdsAvropInfo: TFDQuery;
    cdsAvropInfoShippingPlanNo: TIntegerField;
    cdsAvropInfoOrderNoText: TStringField;
    cdsAvropInfoReference: TStringField;
    cdsAvropInfoETDYearWeek: TIntegerField;
    cdsAvropInfoETDWeekEnd: TIntegerField;
    cdsAvropInfoAgent: TStringField;
    cdsAvropInfoCustomer: TStringField;
    cdsAvropInfoLOText: TMemoField;
    cdsAvropInfoNoteForLoadSheet: TMemoField;
    cdsAvropInfoInvoiceText: TMemoField;
    cdsAvropInfoOrderType: TIntegerField;
    cdsBookingProducts: TFDQuery;
    cdsBookingProductsREFERENCE: TStringField;
    cdsBookingProductsDEL_ADDRESS: TStringField;
    cdsBookingProductsSUPPLIER: TStringField;
    cdsBookingProductsLOADING_LOCATION: TStringField;
    cdsBookingProductsPRODUCT_DESCRIPTION: TStringField;
    cdsBookingProductsLENGTH_DESCRIPTION: TStringField;
    cdsBookingProductsNOOFUNITS: TFloatField;
    cdsBookingProductsVOLUNIT: TStringField;
    cdsBookingProductsACTM3: TFloatField;
    cdsBookingProductsADDRESS_NO: TIntegerField;
    cdsBookingProductsCITY_NO: TIntegerField;
    cdsBookingProductsCITY_NAME: TStringField;
    cdsBookingProductsPOSTALCODE: TStringField;
    cdsBookingProductsKR_Ref: TStringField;
    cdsBookingProductsCSDNO: TIntegerField;
    cdsVoyageInvoiceCarrier: TStringField;
    cdsAvropInfoDeliveryTermsNo: TIntegerField;
    cds_DocText: TFDQuery;
    cds_DocTextDocTextNo: TIntegerField;
    cds_DocTextDocText: TMemoField;
    cds_DocTextOrderNo: TIntegerField;
    cds_DocTextSortNo: TIntegerField;
    ds_DocText: TDataSource;
    cdsAvropInfoOrderNo: TIntegerField;
    cdsBookingInvoiceInternalInvoiceNo: TIntegerField;
    cdsVoyageInvoiceInternalInvoiceNo: TIntegerField;
    dsBooking: TDataSource;
    dsVoyageDestination: TDataSource;
    dsVoyage: TDataSource;
    cdsBooking: TFDQuery;
    cdsBookingBookingNo: TIntegerField;
    cdsBookingShippingPlanNo: TIntegerField;
    cdsBookingVoyageNo: TIntegerField;
    cdsBookingShippingCompanyNo: TIntegerField;
    cdsBookingDestinationNo: TIntegerField;
    cdsBookingShippingCompanyBookingID: TStringField;
    cdsBookingBookingTypeNo: TIntegerField;
    cdsBookingVolumeBooked: TFloatField;
    cdsBookingVolumeUnitNo: TIntegerField;
    cdsBookingRequestedShipDate: TSQLTimeStampField;
    cdsBookingRequestedShipTime: TSQLTimeStampField;
    cdsBookingShippersShipDate: TSQLTimeStampField;
    cdsBookingShippersShipTime: TSQLTimeStampField;
    cdsBookingSupplierReference: TStringField;
    cdsBookingFreightCost: TFloatField;
    cdsBookingFreightCostVolUnit: TIntegerField;
    cdsBookingFreightCostCurrency: TIntegerField;
    cdsBookingSequenceNo: TIntegerField;
    cdsBookingCreatedUser: TSmallintField;
    cdsBookingModifiedUser: TSmallintField;
    cdsBookingDateCreated: TSQLTimeStampField;
    cdsBookingStatus: TIntegerField;
    cdsBookingPreliminaryRequestedPeriod: TStringField;
    cdsBookingLOText: TMemoField;
    cdsBookingInvoiceText: TMemoField;
    cdsBookingNoteForLoadSheet: TMemoField;
    cdsBookingVesselOrPort: TStringField;
    cdsBookingPanic_Note: TStringField;
    cdsVoyageDestination: TFDQuery;
    cdsVoyageDestinationBookingNo: TIntegerField;
    cdsVoyageDestinationDestinationNo: TIntegerField;
    cdsVoyageDestinationETA: TSQLTimeStampField;
    cdsVoyageDestinationStatus: TIntegerField;
    cdsVoyageDestinationClearedDate: TSQLTimeStampField;
    cdsVoyageDestinationCreatedUser: TSmallintField;
    cdsVoyageDestinationModifiedUser: TSmallintField;
    cdsVoyageDestinationDateCreated: TSQLTimeStampField;
    cdsVoyage: TFDQuery;
    cdsVoyageVoyageNo: TIntegerField;
    cdsVoyageCarrierNo: TIntegerField;
    cdsVoyageETD: TSQLTimeStampField;
    cdsVoyageLoadingPortNo: TIntegerField;
    cdsVoyageSequenceNo: TIntegerField;
    cdsVoyageCreatedUser: TSmallintField;
    cdsVoyageModifiedUser: TSmallintField;
    cdsVoyageDateCreated: TSQLTimeStampField;
    cdsVoyageETA: TSQLTimeStampField;
    cdsVoyageCarrier: TStringField;
    procedure cdsVoyageDestinationInvoiceAfterEdit(DataSet: TDataSet);
    procedure cdsVoyageDestinationInvoiceAfterInsert(DataSet: TDataSet);
    procedure cdsVoyageInvoiceAfterInsert(DataSet: TDataSet);
    procedure cdsAvropInfoAfterScroll(DataSet: TDataSet);
    procedure cdsBookingInvoiceBeforePost(DataSet: TDataSet);
    procedure cdsBookingBeforePost(DataSet: TDataSet);
    procedure cdsVoyageAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    InternalInvoiceNo : Integer ;
    procedure RefreshDocText;
  end;

var
  dm_Booking: Tdm_Booking;

implementation

uses recerror, dmsDataConn, VidaUser, dmsVidaSystem;

{$R *.dfm}

procedure Tdm_Booking.cdsVoyageAfterInsert(DataSet: TDataSet);
begin
  cdsVoyageVoyageNo.AsInteger             := cdsBookingBookingNo.AsInteger;
  cdsVoyageCreatedUser.AsInteger          := ThisUser.UserID;
  cdsVoyageModifiedUser.AsInteger         := ThisUser.UserID;
  cdsVoyageDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now);
end;

procedure Tdm_Booking.cdsVoyageDestinationInvoiceAfterEdit(DataSet: TDataSet);
begin
  cdsVoyageDestinationInvoiceModifiedUser.AsInteger      := ThisUser.UserID;
  cdsVoyageDestinationInvoiceDestinationNo.AsInteger     := -1;
  cdsVoyageDestinationInvoiceStatus.AsInteger            := 1;
  cdsVoyageDestinationInvoiceClearedDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now);
end;

procedure Tdm_Booking.cdsVoyageDestinationInvoiceAfterInsert(DataSet: TDataSet);
begin
  cdsVoyageDestinationInvoiceBookingNo.AsInteger         := cdsBookingInvoiceBookingNo.AsInteger;
  cdsVoyageDestinationInvoiceDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now);
  cdsVoyageDestinationInvoiceCreatedUser.AsInteger       := ThisUser.UserID;
  cdsVoyageDestinationInvoiceModifiedUser.AsInteger      := ThisUser.UserID;
  cdsVoyageDestinationInvoiceDestinationNo.AsInteger     := -1;
  cdsVoyageDestinationInvoiceStatus.AsInteger            := 1;
  cdsVoyageDestinationInvoiceClearedDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now);
end;

procedure Tdm_Booking.cdsVoyageInvoiceAfterInsert(DataSet: TDataSet);
begin
  cdsVoyageInvoiceVoyageNo.AsInteger             := cdsBookingInvoiceBookingNo.AsInteger;
  cdsVoyageInvoiceInternalInvoiceNo.AsInteger    := InternalInvoiceNo ;
  cdsVoyageInvoiceCreatedUser.AsInteger          := ThisUser.UserID;
  cdsVoyageInvoiceModifiedUser.AsInteger         := ThisUser.UserID;
  cdsVoyageInvoiceDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now);
end;

procedure Tdm_Booking.RefreshDocText;
Begin
  cds_DocText.Active := False;
  cds_DocText.ParamByName('OrderNo').AsInteger := cdsAvropInfoOrderNo.AsInteger;
  cds_DocText.Active := True;
End;

procedure Tdm_Booking.cdsAvropInfoAfterScroll(DataSet: TDataSet);
begin
  RefreshDocText;
end;

procedure Tdm_Booking.cdsBookingBeforePost(DataSet: TDataSet);
begin
  cdsBookingVoyageNo.AsInteger := cdsBookingBookingNo.AsInteger;
end;

procedure Tdm_Booking.cdsBookingInvoiceBeforePost(DataSet: TDataSet);
begin
  cdsBookingInvoiceVoyageNo.AsInteger := cdsBookingInvoiceBookingNo.AsInteger;
end;

end.
