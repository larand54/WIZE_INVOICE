unit dmBooking;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlTimSt,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, uADCompClient,
  uADCompDataSet ;

type
  Tdm_Booking = class(TDataModule)
    dsShippers: TDataSource;
    dsBooking: TDataSource;
    dsVoyageDestination: TDataSource;
    dsVoyage: TDataSource;
    dsAvropInfo: TDataSource;
    dsBookingProducts: TDataSource;
    cdsShippers: TADStoredProc;
    cdsShippersClientNo: TIntegerField;
    cdsShippersClientName: TStringField;
    cdsBooking: TADQuery;
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
    cdsVoyageDestination: TADQuery;
    cdsVoyageDestinationBookingNo: TIntegerField;
    cdsVoyageDestinationDestinationNo: TIntegerField;
    cdsVoyageDestinationETA: TSQLTimeStampField;
    cdsVoyageDestinationStatus: TIntegerField;
    cdsVoyageDestinationClearedDate: TSQLTimeStampField;
    cdsVoyageDestinationCreatedUser: TSmallintField;
    cdsVoyageDestinationModifiedUser: TSmallintField;
    cdsVoyageDestinationDateCreated: TSQLTimeStampField;
    cdsVoyage: TADQuery;
    cdsVoyageVoyageNo: TIntegerField;
    cdsVoyageCarrierNo: TIntegerField;
    cdsVoyageETD: TSQLTimeStampField;
    cdsVoyageLoadingPortNo: TIntegerField;
    cdsVoyageSequenceNo: TIntegerField;
    cdsVoyageCreatedUser: TSmallintField;
    cdsVoyageModifiedUser: TSmallintField;
    cdsVoyageDateCreated: TSQLTimeStampField;
    cdsVoyageETA: TSQLTimeStampField;
    cdsAvropInfo: TADQuery;
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
    cdsBookingProducts: TADQuery;
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
    cdsVoyageCarrier: TStringField;
    cdsAvropInfoDeliveryTermsNo: TIntegerField;
    cds_DocText: TADQuery;
    cds_DocTextDocTextNo: TIntegerField;
    cds_DocTextDocText: TMemoField;
    cds_DocTextOrderNo: TIntegerField;
    cds_DocTextSortNo: TIntegerField;
    ds_DocText: TDataSource;
    cdsAvropInfoOrderNo: TIntegerField;
    procedure cdsVoyageDestinationAfterEdit(DataSet: TDataSet);
    procedure cdsVoyageDestinationAfterInsert(DataSet: TDataSet);
    procedure cdsVoyageAfterInsert(DataSet: TDataSet);
    procedure cdsAvropInfoAfterScroll(DataSet: TDataSet);
    procedure cdsBookingBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDocText ;
  end;

var
  dm_Booking: Tdm_Booking;

implementation

uses recerror, dmsDataConn, VidaUser, dmsVidaSystem;

{$R *.dfm}

procedure Tdm_Booking.cdsVoyageDestinationAfterEdit(DataSet: TDataSet);
begin
 cdsVoyageDestinationModifiedUser.AsInteger     := ThisUser.UserID ;
 cdsVoyageDestinationDestinationNo.AsInteger    := -1 ;
 cdsVoyageDestinationStatus.AsInteger           := 1 ;
 cdsVoyageDestinationClearedDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure Tdm_Booking.cdsVoyageDestinationAfterInsert(DataSet: TDataSet);
begin
 cdsVoyageDestinationBookingNo.AsInteger        := cdsBookingBookingNo.AsInteger ;
 cdsVoyageDestinationDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
 cdsVoyageDestinationCreatedUser.AsInteger      := ThisUser.UserID ;
 cdsVoyageDestinationModifiedUser.AsInteger     := ThisUser.UserID ;
 cdsVoyageDestinationDestinationNo.AsInteger    := -1 ;
 cdsVoyageDestinationStatus.AsInteger           := 1 ;
 cdsVoyageDestinationClearedDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure Tdm_Booking.cdsVoyageAfterInsert(DataSet: TDataSet);
begin
 cdsVoyageVoyageNo.AsInteger          := cdsBookingBookingNo.AsInteger ;
 cdsVoyageCreatedUser.AsInteger       := ThisUser.UserID ;
 cdsVoyageModifiedUser.AsInteger      := ThisUser.UserID ;
 cdsVoyageDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
end;

procedure Tdm_Booking.RefreshDocText ;
Begin
 cds_DocText.Active := False ;
 cds_DocText.ParamByName('OrderNo').AsInteger  := cdsAvropInfoOrderNo.AsInteger ;
 cds_DocText.Active := True ;
End ;

procedure Tdm_Booking.cdsAvropInfoAfterScroll(DataSet: TDataSet);
begin
 RefreshDocText ;
end;

procedure Tdm_Booking.cdsBookingBeforePost(DataSet: TDataSet);
begin
 cdsBookingVoyageNo.AsInteger         := cdsBookingBookingNo.AsInteger ;
end;

end.
