unit dmcVidaLO;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, SqlTimSt, Dialogs,
  Forms, Controls,
  kbmMemTable, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmcLO = class(TDataModule)
    ds_IntHdr: TDataSource;
    ds_LO: TDataSource;
    ds_ProdInstruct: TDataSource;
    ds_Users: TDataSource;
    ds_PhysInvByCityNo: TDataSource;
    ds_LIP: TDataSource;
    ds_ELOLengths: TDataSource;
    ds_ELOLayout: TDataSource;
    ds_ProdList: TDataSource;
    cds_IntHdr: TFDQuery;
    cds_copyPI: TFDQuery;
    cds_IntHdrOrderNo: TIntegerField;
    cds_IntHdrShippingPlanNo: TIntegerField;
    cds_IntHdrCustomerNo: TIntegerField;
    cds_IntHdrDestinationNo: TIntegerField;
    cds_IntHdrDefaultShipToInvPointNo: TIntegerField;
    cds_IntHdrStatus: TIntegerField;
    cds_IntHdrOrderNoText: TStringField;
    cds_IntHdrDefaultDeliveryTermsNo: TIntegerField;
    cds_IntHdrDefaultPaymentTermsNo: TIntegerField;
    cds_IntHdrDefaultCurrencyNo: TIntegerField;
    cds_IntHdrOrderNote: TMemoField;
    cds_IntHdrOrderType: TIntegerField;
    cds_IntHdrProductDisplayFormat: TIntegerField;
    cds_IntHdrDefaultVolumeUnitNo: TIntegerField;
    cds_IntHdrVoyageNo: TIntegerField;
    cds_IntHdrDefaultPriceUnitNo: TIntegerField;
    cds_IntHdrDef_StartETDYearWeek: TIntegerField;
    cds_IntHdrDef_StartETAYearWeek: TIntegerField;
    cds_IntHdrSalesRegionNo: TIntegerField;
    cds_IntHdrLengthFormat: TIntegerField;
    cds_IntHdrLanguageCode: TIntegerField;
    cds_IntHdrSequenceNo: TIntegerField;
    cds_IntHdrCreatedUser: TIntegerField;
    cds_IntHdrModifiedUser: TIntegerField;
    cds_IntHdrDateCreated: TSQLTimeStampField;
    cds_IntHdrLO_No: TIntegerField;
    cds_IntHdrDefaultLIPNo: TIntegerField;
    cds_IntHdrMarketRegionNo: TIntegerField;
    cds_IntHdrPriceListNo: TIntegerField;
    cds_IntHdrVatExempt: TIntegerField;
    cds_IntHdrInternKundFrakt: TFloatField;
    cds_IntHdrSupplierNo: TIntegerField;
    cds_IntHdrDef_LoadingLocationNo: TIntegerField;
    cds_IntHdrAutoPkgCode: TIntegerField;
    cds_IntHdrMiniText: TStringField;
    cds_IntHdrMiniTextFS: TIntegerField;
    cds_IntHdrMiniTextLO: TIntegerField;
    cds_IntHdrKund: TStringField;
    cds_IntHdrSR: TStringField;
    cds_IntHdrPrislista: TStringField;
    cds_LO: TFDQuery;
    cds_LOSupplierShipPlanObjectNo: TIntegerField;
    cds_LOCustShipPlanDetailObjectNo: TIntegerField;
    cds_LOShipType: TIntegerField;
    cds_LOObjectType: TIntegerField;
    cds_LOOrderNo: TIntegerField;
    cds_LOOrderLineNo: TIntegerField;
    cds_LOShippingPlanNo: TIntegerField;
    cds_LOSupplierNo: TIntegerField;
    cds_LOLoadingLocationNo: TIntegerField;
    cds_LODeliveryTermsNo: TIntegerField;
    cds_LOPaymentTermsNo: TIntegerField;
    cds_LOPrice: TFloatField;
    cds_LOCurrencyNo: TIntegerField;
    cds_LONoOfUnits: TFloatField;
    cds_LOPriceUnitNo: TIntegerField;
    cds_LOVolumeUnitNo: TIntegerField;
    cds_LODestinationNo: TIntegerField;
    cds_LOShippingPlanStatus: TIntegerField;
    cds_LOStartETDYearWeek: TIntegerField;
    cds_LOEndETDYearWeek: TIntegerField;
    cds_LOInternalNote: TStringField;
    cds_LOProductDescription: TStringField;
    cds_LOLengthDescription: TStringField;
    cds_LOAcceptedBySupplier: TIntegerField;
    cds_LOProductLengthNo: TIntegerField;
    cds_LOProductGroupNo: TIntegerField;
    cds_LOActualM3Net: TFloatField;
    cds_LOShipToInvPointNo: TIntegerField;
    cds_LOProductNo: TIntegerField;
    cds_LOLOText: TMemoField;
    cds_LOMinActualLengthMM: TFloatField;
    cds_LOMaxActualLengthMM: TFloatField;
    cds_LOPackageCode: TStringField;
    cds_LOFreightOrderByClientNo: TIntegerField;
    cds_LOSequenceNo: TIntegerField;
    cds_LOCreatedUser: TIntegerField;
    cds_LOModifiedUser: TIntegerField;
    cds_LODateCreated: TSQLTimeStampField;
    cds_LOPartnerNo: TIntegerField;
    cds_LOProdInstructNo: TIntegerField;
    cds_LOShowInGrid: TIntegerField;
    cds_LOPcsPerPkg: TIntegerField;
    cds_LOCustomerNo: TIntegerField;
    cds_LOCustomerPrice: TFloatField;
    cds_LOCustomerShowInGrid: TIntegerField;
    cds_LOLO_No: TIntegerField;
    cds_LODelivery_WeekNo: TIntegerField;
    cds_LODateModified: TSQLTimeStampField;
    cds_LOLengthTyp: TStringField;
    cds_LOReference: TStringField;
    cds_LOLIPNo: TIntegerField;
    cds_LOPkgCodePPNo: TIntegerField;
    cds_LOPriceListNo: TIntegerField;
    cds_LOInternKundFrakt: TFloatField;
    cds_LOPackageWidth: TIntegerField;
    cds_LOPackageHeight: TIntegerField;
    cds_LOLengthSpec: TStringField;
    cds_LOLEV: TFloatField;
    cds_LOVerk: TStringField;
    cds_LOPrisLista: TStringField;
    cds_LOREST: TFloatField;
    cds_ELOLengths: TFDQuery;
    cds_ELOLengthsActualLengthMM: TFloatField;
    cds_ELOLengthsSupplierShipPlanObjectNo: TIntegerField;
    cds_ELOLengthsProductLengthNo: TIntegerField;
    cds_ELOLengthsPkgCodePPNo: TIntegerField;
    cds_Pref: TFDQuery;
    cds_PrefVATNo: TStringField;
    cds_PrefClientNo: TIntegerField;
    cds_PrefRoleType: TIntegerField;
    cds_PrefDefaultShippingAddressNo: TIntegerField;
    cds_PrefDefaultDeliveryTermsNo: TIntegerField;
    cds_PrefDefaultPaymentTermsNo: TIntegerField;
    cds_PrefDefaultCurrencyNo: TIntegerField;
    cds_PrefDefaultPriceUnitNo: TIntegerField;
    cds_PrefDefaultVolumeUnitNo: TIntegerField;
    cds_PrefInvoiceText: TStringField;
    cds_PrefDefaultAgentNo: TIntegerField;
    cds_PrefLoadingLocationNo: TIntegerField;
    cds_PrefLanguageCode: TIntegerField;
    cds_PrefProdDisplayFormat: TIntegerField;
    cds_PrefLengthFormat: TIntegerField;
    cds_PrefDefaultBillingAddressNo: TIntegerField;
    cds_PrefSequenceNo: TIntegerField;
    cds_PrefDateCreated: TSQLTimeStampField;
    cds_PrefCreatedUser: TIntegerField;
    cds_PrefModifiedUser: TIntegerField;
    cds_PrefPhone1: TStringField;
    cds_PrefPhone2: TStringField;
    cds_PrefPhone3: TStringField;
    cds_PrefFax: TStringField;
    cds_PrefEmail: TStringField;
    cds_PrefDefaultDestinationNo: TIntegerField;
    cds_PrefSendInvoiceToAgent: TIntegerField;
    cds_PrefVAT_OnInvoice: TIntegerField;
    cds_PrefCommisionInDiscount: TIntegerField;
    cds_PrefFreightInDiscount: TIntegerField;
    cds_PhysInvByCityNo: TFDQuery;
    cds_PhysInvByCityNoCityNo: TIntegerField;
    cds_PhysInvByCityNoCITYNAME: TStringField;
    cds_PhysInvByCityNoOwnerNo: TIntegerField;
    cds_ProdList: TFDQuery;
    cds_ProdListProductNo: TIntegerField;
    cds_ProdListProductGroupNo: TIntegerField;
    cds_ProdListGradeName: TStringField;
    cds_ProdListSpeciesName: TStringField;
    cds_ProdListSurfacingName: TStringField;
    cds_ProdListActualThicknessMM: TFloatField;
    cds_ProdListActualWidthMM: TFloatField;
    cds_ProdListNominalThicknessMM: TFloatField;
    cds_ProdListNominalWidthMM: TFloatField;
    cds_ProdListProductDisplayName: TStringField;
    cds_ProdListGradeNo: TIntegerField;
    cds_ProdListSpeciesNo: TIntegerField;
    cds_ProdListProductCategoryNo: TIntegerField;
    cds_ProdListSurfacingNo: TIntegerField;
    cds_ProdListNominalThicknessINCH: TStringField;
    cds_ProdListNominalWidthINCH: TStringField;
    cds_ProdListProductCategoryName: TStringField;
    sq_FindLO: TFDQuery;
    sq_FindLOShippingPlanNo: TIntegerField;
    cds_copyPIProdInstruNo: TIntegerField;
    cds_copyPIFOHCpercent: TFloatField;
    cds_copyPIMiniBundleHeight: TIntegerField;
    cds_copyPIMiniBundleWidth: TIntegerField;
    cds_copyPIMinNoOfSticks: TIntegerField;
    cds_copyPINoOfStraps: TIntegerField;
    cds_copyPICornerProtection: TStringField;
    cds_copyPIPackageWidth: TIntegerField;
    cds_copyPIPackageHeight: TIntegerField;
    cds_copyPIStamp: TIntegerField;
    cds_copyPIPET: TIntegerField;
    cds_copyPIMiniBundle: TIntegerField;
    cds_copyPIStressGrade: TIntegerField;
    cds_copyPIFingerJoint: TIntegerField;
    cds_copyPIPackageCut: TIntegerField;
    cds_copyPIExLog: TStringField;
    cds_copyPICreated: TSQLTimeStampField;
    cds_copyPIModified: TSQLTimeStampField;
    cds_copyPIPackageTagLayout: TIntegerField;
    cds_copyPIPET_Tolerance: TStringField;
    cds_copyPIBarCodeID: TIntegerField;
    cds_copyPIExtraID: TStringField;
    cds_copyPICreatedUser: TIntegerField;
    cds_copyPIModifiedUser: TIntegerField;
    cds_copyPIDateCreated: TSQLTimeStampField;
    cds_copyPIPackageType: TIntegerField;
    cds_copyPIWrapType: TIntegerField;
    cds_copyPIPressureTreated: TIntegerField;
    cds_copyPISequenceNo: TIntegerField;
    cds_copyPIPicture: TStringField;
    cds_copyPINote: TMemoField;
    cds_copyPIShrinkWrap: TIntegerField;
    cds_copyPIPiecesPerMiniBundle: TIntegerField;
    cds_copyPIPackage_Size: TIntegerField;
    cds_copyPIBILD: TBlobField;
    cds_copyPICornerProtectionNo: TIntegerField;
    cds_copyPIExternalNote: TMemoField;
    cds_copyPITruckSticksNo: TIntegerField;
    cds_copyPIStrapTypeNo: TIntegerField;
    cds_ProdInstruct: TFDQuery;
    cds_LIP: TFDQuery;
    cds_ProdInstructProdInstruNo: TIntegerField;
    cds_ProdInstructFOHCpercent: TFloatField;
    cds_ProdInstructMiniBundleHeight: TIntegerField;
    cds_ProdInstructMiniBundleWidth: TIntegerField;
    cds_ProdInstructMinNoOfSticks: TIntegerField;
    cds_ProdInstructNoOfStraps: TIntegerField;
    cds_ProdInstructCornerProtection: TStringField;
    cds_ProdInstructPackageWidth: TIntegerField;
    cds_ProdInstructPackageHeight: TIntegerField;
    cds_ProdInstructStamp: TIntegerField;
    cds_ProdInstructPET: TIntegerField;
    cds_ProdInstructMiniBundle: TIntegerField;
    cds_ProdInstructStressGrade: TIntegerField;
    cds_ProdInstructFingerJoint: TIntegerField;
    cds_ProdInstructPackageCut: TIntegerField;
    cds_ProdInstructExLog: TStringField;
    cds_ProdInstructCreated: TSQLTimeStampField;
    cds_ProdInstructModified: TSQLTimeStampField;
    cds_ProdInstructPackageTagLayout: TIntegerField;
    cds_ProdInstructPET_Tolerance: TStringField;
    cds_ProdInstructBarCodeID: TIntegerField;
    cds_ProdInstructExtraID: TStringField;
    cds_ProdInstructCreatedUser: TIntegerField;
    cds_ProdInstructModifiedUser: TIntegerField;
    cds_ProdInstructDateCreated: TSQLTimeStampField;
    cds_ProdInstructPackageType: TIntegerField;
    cds_ProdInstructWrapType: TIntegerField;
    cds_ProdInstructPressureTreated: TIntegerField;
    cds_ProdInstructSequenceNo: TIntegerField;
    cds_ProdInstructPicture: TStringField;
    cds_ProdInstructNote: TMemoField;
    cds_ProdInstructShrinkWrap: TIntegerField;
    cds_ProdInstructPiecesPerMiniBundle: TIntegerField;
    cds_ProdInstructPackage_Size: TIntegerField;
    cds_ProdInstructBILD: TBlobField;
    cds_ProdInstructCornerProtectionNo: TIntegerField;
    cds_ProdInstructExternalNote: TMemoField;
    cds_ProdInstructTruckSticksNo: TIntegerField;
    cds_ProdInstructStrapTypeNo: TIntegerField;
    cds_Users: TFDQuery;
    cds_UsersUserID: TIntegerField;
    cds_UsersNamn: TStringField;
    sqPkgLayoutStd: TFDQuery;
    cds_LIPLIPNO: TIntegerField;
    cds_LIPLAGERGRUPP: TStringField;
    cds_LIPOwnerNo: TIntegerField;
    cds_LIPCityNo: TIntegerField;
    cds_ELOLayout: TFDQuery;
    cds_ELOLayoutSupplierShipPlanObjectNo: TIntegerField;
    cds_ELOLayoutLayoutNo: TIntegerField;
    cds_ELOLayoutAntalKopior: TIntegerField;
    sqPkgLayoutStdLayoutNo: TIntegerField;
    sqPkgLayoutStdAntalKopior: TIntegerField;
    procedure cds_IntHdr1CustomerNoChange(Sender: TField);
    procedure cds_IntHdr1SalesRegionNoChange(Sender: TField);
    procedure cds_ProdInstruct1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsp_LO1GetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_IntHdr1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_IntHdr1DefaultShipToInvPointNoChange(Sender: TField);
    procedure cds_IntHdr1MarketRegionNoChange(Sender: TField);
    procedure cds_IntHdr1SupplierNoChange(Sender: TField);
    procedure cds_IntHdr1Def_LoadingLocationNoChange(Sender: TField);
    procedure cds_IntHdr1PriceListNoChange(Sender: TField);
    procedure cds_IntHdr1InternKundFraktChange(Sender: TField);
    procedure cds_LO1SupplierNoChange(Sender: TField);
    procedure cds_ELOLayout1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_IntHdrAfterInsert(DataSet: TDataSet);
    procedure cds_IntHdrAfterScroll(DataSet: TDataSet);
    procedure cds_IntHdrBeforePost(DataSet: TDataSet);
    procedure cds_LOAfterInsert(DataSet: TDataSet);
    procedure cds_LOBeforeDelete(DataSet: TDataSet);
    procedure cds_LOBeforePost(DataSet: TDataSet);
    procedure cds_LOCalcFields(DataSet: TDataSet);
    procedure cds_LOPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cds_ELOLengthsAfterInsert(DataSet: TDataSet);
    procedure cds_ELOLengthsBeforePost(DataSet: TDataSet);
    procedure cds_copyPIAfterInsert(DataSet: TDataSet);
    procedure cds_ProdInstructAfterInsert(DataSet: TDataSet);
    procedure cds_ELOLayoutAfterInsert(DataSet: TDataSet);
    procedure cds_LOReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure ds_LODataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    PackageCode_Layout: Array of array of variant;
    VolumeUnitNo, PriceUnitNo: Integer;
    procedure GetPref_ForLOSupplier;
    procedure GetPref_ForINTHDRSupplier;
    procedure SetFraktPris;
    procedure SetPris;

    procedure ModifiedTheUser;
  public
    { Public declarations }
    SearchOnMarketRegion: Boolean;
    procedure SetILO_Records;
    procedure SetLengthDesc;
    procedure GetPref_ForIntHdrCustomer;
    procedure SetLOBeforeSave;
    function AnyLoShipped: Boolean;
    function FindLONO(const LONO: Integer): Integer;
    function GetProductDescription: String;
    procedure NyProdInstructRecord;

    Function InternalPriceMissingOnInternalLO: Boolean;
    procedure ChangeLOStatusFromPreliminaryToNew;
  end;

var
  dmcLO: TdmcLO;

implementation

uses dmsDataConn, dmsVidaContact, RecError, dmsVidaSystem,
  VidaUser, Vidaconst, dmsVidaProduct; // , uLOChanged;

{$R *.dfm}

procedure TdmcLO.ChangeLOStatusFromPreliminaryToNew;
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  cds_LO.BeforePost := nil;
  cds_LO.DisableControls;
  Try
    cds_LO.First;
    While not cds_LO.Eof do
    Begin
      cds_LO.Edit;
      if cds_LOShippingPlanStatus.AsInteger = STATUS_PRELIMINARY then
        cds_LOShippingPlanStatus.AsInteger := STATUS_NEW;
      cds_LO.Post;
      cds_LO.Next;
    End;
  finally
    cds_LO.EnableControls;
    cds_LO.BeforePost := cds_LOBeforePost;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TdmcLO.cds_IntHdr1CustomerNoChange(Sender: TField);
begin
  With dmsContact do
  Begin
    cds_PhysInvByCityNo.Filter := 'OwnerNo =' +
      dmcLO.cds_IntHdrCustomerNo.AsString;
  End;
  GetPref_ForIntHdrCustomer;
  // SetILO_Records ;
end;

procedure TdmcLO.GetPref_ForIntHdrCustomer;
Begin
  cds_Pref.Active := False;
  Try
    cds_Pref.ParamByName('ClientNo').AsInteger :=
      cds_IntHdrCustomerNo.AsInteger;
    cds_Pref.ParamByName('RoleType').AsInteger := cInternal_Mill;
    cds_Pref.Active := True;
    if cds_Pref.RecordCount > 0 then
    Begin
      cds_IntHdrDefaultShipToInvPointNo.AsInteger :=
        cds_PrefLoadingLocationNo.AsInteger;
      cds_IntHdrDefaultDeliveryTermsNo.AsInteger :=
        cds_PrefDefaultDeliveryTermsNo.AsInteger;
      cds_IntHdrDefaultPaymentTermsNo.AsInteger :=
        cds_PrefDefaultPaymentTermsNo.AsInteger;
      cds_IntHdrDefaultCurrencyNo.AsInteger :=
        cds_PrefDefaultCurrencyNo.AsInteger;
      cds_IntHdrProductDisplayFormat.AsInteger :=
        cds_PrefDefaultVolumeUnitNo.AsInteger;
      cds_IntHdrDefaultVolumeUnitNo.AsInteger :=
        cds_PrefDefaultVolumeUnitNo.AsInteger;
      cds_IntHdrDefaultPriceUnitNo.AsInteger :=
        cds_PrefDefaultPriceUnitNo.AsInteger;
      cds_IntHdrLengthFormat.AsInteger := cds_PrefLengthFormat.AsInteger;

      VolumeUnitNo := cds_PrefDefaultVolumeUnitNo.AsInteger;
      PriceUnitNo := cds_PrefDefaultPriceUnitNo.AsInteger;
    End;
  Finally
    cds_Pref.Active := False;
  End;
End;

procedure TdmcLO.cds_IntHdr1SalesRegionNoChange(Sender: TField);
begin
  With dmsContact do
  Begin

  End;
end;

procedure TdmcLO.SetLengthDesc;
Begin
 
End;

procedure TdmcLO.cds_ProdInstruct1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcLO.dsp_LO1GetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  TableName := 'SupplierShippingPlan';
end;

procedure TdmcLO.ds_LODataChange(Sender: TObject; Field: TField);
begin
 //
end;

procedure TdmcLO.cds_IntHdr1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcLO.GetPref_ForLOSupplier;
Begin
  cds_Pref.Active := False;
  Try
    cds_Pref.ParamByName('ClientNo').AsInteger := cds_LOSupplierNo.AsInteger;
    cds_Pref.ParamByName('RoleType').AsInteger := cInternal_Mill;
    cds_Pref.Active := True;
    if cds_Pref.RecordCount > 0 then
    Begin
      { With dmsContact do
        Begin
        cds_LL_Verk.Filtered:= True ;
        Try
        if dmcLO.cds_LOSupplierNo.AsInteger > 0 then
        cds_LL_Verk.Filter:= 'OwnerNo = '+dmcLO.cds_LOSupplierNo.AsString ;
        Except
        cds_LL_Verk.Filtered:= False ;
        End ;
        End ; }
      cds_LOLoadingLocationNo.AsInteger := cds_PrefLoadingLocationNo.AsInteger;
      // cds_ELODeliveryTermsNo.AsInteger:= cds_PrefDefaultDeliveryTermsNo.AsInteger ;
      // cds_ELOPaymentTermsNo.AsInteger:= cds_PrefDefaultPaymentTermsNo.AsInteger ;
      // cds_ELOCurrencyNo.AsInteger:= cds_PrefDefaultCurrencyNo.AsInteger ;
      // cds_LOShipToInvPointNo.AsInteger:=
    End;
  Finally
    cds_Pref.Active := False;
  End;
End;

procedure TdmcLO.GetPref_ForINTHDRSupplier;
Begin
  cds_Pref.Active := False;
  Try
    cds_Pref.ParamByName('ClientNo').AsInteger :=
      cds_IntHdrSupplierNo.AsInteger;
    cds_Pref.ParamByName('RoleType').AsInteger := cInternal_Mill;
    cds_Pref.Active := True;
    if cds_Pref.RecordCount > 0 then
    Begin
      cds_IntHdrDef_LoadingLocationNo.AsInteger :=
        cds_PrefLoadingLocationNo.AsInteger;
    End;
  Finally
    cds_Pref.Active := False;
  End;
End;

procedure TdmcLO.SetLOBeforeSave;
begin
  cds_LO.DisableControls;
  Try
    cds_LO.First;
    While not cds_LO.Eof do
    Begin
      cds_LO.Edit;
      if cds_LOSupplierNo.IsNull then
      Begin
        ShowMessage('Välj Leverantör!');
        Exit;
      End;

      if cds_LOLoadingLocationNo.IsNull then
      Begin
        ShowMessage('Välj Lastställe!');
        Exit;
      End;

      cds_LO.Post;
      cds_LO.Next;
    End;
  Finally
    cds_LO.EnableControls;
  End;
end;

function TdmcLO.AnyLoShipped: Boolean;
Var
  SavePlace: TBookmark;
begin
  Result := False;
  cds_LO.DisableControls;
  SavePlace := cds_LO.GetBookmark;
  Try
    cds_LO.First;
    While not cds_LO.Eof do
    Begin
      if dmsSystem.DoesLOHaveLoadsConfirmed
        (dmcLO.cds_LOSupplierShipPlanObjectNo.AsInteger) then
      Begin
        Result := True;
        Exit;
      End;
      cds_LO.Next;
    End;
    cds_LO.GotoBookmark(SavePlace);

  Finally
    cds_LO.FreeBookmark(SavePlace);
    cds_LO.EnableControls;
  End;
end;

procedure TdmcLO.DataModuleCreate(Sender: TObject);
begin
  PriceUnitNo := 0;
  VolumeUnitNo := 0;
  if cds_Users.Active = False then
    cds_Users.Active := True;
  SearchOnMarketRegion := True;
end;

function TdmcLO.FindLONO(const LONO: Integer): Integer;
Begin
  Result := -1;
  Try
    sq_FindLO.ParamByName('ShippingPlanNo').AsInteger := LONO;
    sq_FindLO.Open;
    Result := sq_FindLOShippingPlanNo.AsInteger;
  Finally
    sq_FindLO.Close;
  End;
End;

procedure TdmcLO.cds_IntHdr1DefaultShipToInvPointNoChange(Sender: TField);
begin
  cds_IntHdrDefaultLIPNo.AsInteger := -1;
  if (cds_IntHdrCustomerNo.IsNull = False) and
    (cds_IntHdrDefaultShipToInvPointNo.IsNull = False) then
  Begin
    cds_LIP.Filter := 'OwnerNo = ' + cds_IntHdrCustomerNo.AsString +
      ' AND CityNo = ' + cds_IntHdrDefaultShipToInvPointNo.AsString;
    cds_LIP.Filtered := True;
    if cds_LIP.RecordCount = 1 then
    Begin
      cds_IntHdrDefaultLIPNo.AsInteger := cds_LIPLIPNO.AsInteger;
    End
    else
      cds_IntHdrDefaultLIPNo.AsInteger := -1;
  End
  else
    cds_IntHdrDefaultLIPNo.AsInteger := -1;

  // SetILO_Records ;
end;

function TdmcLO.GetProductDescription: String;
Begin
  With dmcLO, dmsProduct do
  Begin
    Case cds_IntHdrProductDisplayFormat.AsInteger of
      cAKT_MM:
        Result := cds_ProdListActualThicknessMM.AsString + 'X' +
          cds_ProdListActualWidthMM.AsString;
      cNOM_MM:
        Result := cds_ProdListNominalThicknessMM.AsString + 'X' +
          cds_ProdListNominalWidthMM.AsString;
      cNOM_MM_och_AKT_MM:
        Result := cds_ProdListNominalThicknessMM.AsString + 'X' +
          cds_ProdListNominalWidthMM.AsString + '(' +
          cds_ProdListActualThicknessMM.AsString + 'X' +
          cds_ProdListActualWidthMM.AsString + ')';

      cTUM:
        Result := cds_ProdListNominalThicknessINCH.AsString + 'X' +
          cds_ProdListNominalWidthINCH.AsString;
      cTUM_och_AKT_MM:
        Result := cds_ProdListNominalThicknessINCH.AsString + 'X' +
          cds_ProdListNominalWidthINCH.AsString + '(' +
          cds_ProdListActualThicknessMM.AsString + 'X' +
          cds_ProdListActualWidthMM.AsString + ')';
    else
      Result := cds_ProdListActualThicknessMM.AsString + 'X' +
        cds_ProdListActualWidthMM.AsString;
    End;
    Result := Result + ', ' + Trim(cds_ProdListGradeName.AsString) + ', ' +
      Trim(cds_ProdListSpeciesName.AsString) + ', ' +
      Trim(cds_ProdListSurfacingName.AsString) + ', ' +
      Trim(cds_ProdListProductCategoryName.AsString);
  End; // with
End;

procedure TdmcLO.NyProdInstructRecord;
begin
  With dmcLO do
  Begin
    // if cds_ProdInstruct.RecordCount = 0 then
    // if cds_LOProdInstructNo.AsInteger < 1 then//<> cds_ProdInstructProdInstruNo.AsInteger then
    Begin
      cds_ProdInstruct.UpdateOptions.ReadOnly := False;
      cds_ProdInstruct.Insert;
      // cds_ProdInstruct.Filter:='ProdInstruNo = '+cds_ProdInstructProdInstruNo.AsString ;
      if cds_LO.State in [dsBrowse] then
        cds_LO.Edit;
      cds_LOProdInstructNo.AsInteger := cds_ProdInstructProdInstruNo.AsInteger;
    End;

  End; // with
end;

(* procedure TdmcLO.RefreshPackageCode ;
  Begin
  with dmsProduct do
  Begin
  if SearchOnMarketRegion = False then
  Begin
  cds_PkgCode.Active:= False ;
  cds_PkgCode.Filtered:= False ;
  cds_PkgCode.Active:= True ;
  End
  else
  Begin
  cds_PkgCode.Active:= False ;
  {   if cds_IntHdrMarketRegionNo.AsInteger > 0 then
  Begin
  cds_PkgCode.Filter:= 'MarketRegionNo = '+inttostr(cds_IntHdrMarketRegionNo.AsInteger) ;
  cds_PkgCode.Filtered:= True ;
  End
  else
  cds_PkgCode.Filtered:= False ; }
  cds_PkgCode.Filtered:= False ;
  cds_PkgCode.Active:= True ;
  End ;
  End ;
  End ; *)

procedure TdmcLO.cds_IntHdr1MarketRegionNoChange(Sender: TField);
begin
  // dmcLO.RefreshPackageCode ;
end;

Function TdmcLO.InternalPriceMissingOnInternalLO: Boolean;
Var
  Save_Cursor: TCursor;
begin
  Result := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  cds_LO.DisableControls;
  Try
    cds_LO.First;
    While Not cds_LO.Eof do
    Begin
      if (cds_LOPrice.AsFloat < 1) AND (cds_LOPriceListNo.AsInteger < 1) and
        (cds_LOShippingPlanStatus.AsInteger <> STATUS_COMPLETE) and
        (cds_LOShippingPlanStatus.AsInteger <> STATUS_PRODUCTION_COMPLETE) and
        (cds_LOShippingPlanStatus.AsInteger <> STATUS_ANNULERAD) and
        (cds_LOShippingPlanStatus.AsInteger <> STATUS_ANNULERAD_BEKRAFTAD) then
      Begin
        Result := True;
      End;
      cds_LO.Next;
    End;
  Finally
    cds_LO.EnableControls;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

procedure TdmcLO.SetILO_Records;
Var
  Save_Cursor: TCursor;
begin
  if cds_LO.Active then
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cds_LO.DisableControls;
    cds_LO.BeforePost := nil;
    cds_LO.OnCalcFields := nil;
    Try
      cds_LO.First;
      While not cds_LO.Eof do
      Begin
        cds_LO.Edit;
        // cds_LOLoadingLocationNo.AsInteger         := cds_IntHdrDef_LoadingLocationNo.AsInteger ;
        cds_LOShipToInvPointNo.AsInteger :=
          cds_IntHdrDefaultShipToInvPointNo.AsInteger;
        cds_LOLIPNo.AsInteger := cds_IntHdrDefaultLIPNo.AsInteger;
        cds_LOCustomerNo.AsInteger := cds_IntHdrCustomerNo.AsInteger;
        cds_LOSupplierNo.AsInteger := cds_IntHdrSupplierNo.AsInteger;
        // cds_LOPriceListNo.AsInteger               := cds_IntHdrPriceListNo.AsInteger ;
        // cds_LOInternKundFrakt.AsFloat             := cds_IntHdrInternKundFrakt.AsFloat ;
        cds_LOStartETDYearWeek.AsInteger :=
          cds_IntHdrDef_StartETDYearWeek.AsInteger;
        cds_LOEndETDYearWeek.AsInteger :=
          cds_IntHdrDef_StartETAYearWeek.AsInteger;
        cds_LO.Post;
        cds_LO.Next;
      End;
    Finally
      cds_LO.OnCalcFields := cds_LOCalcFields;
      cds_LO.BeforePost := cds_LOBeforePost;
      cds_LO.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End;
End;

procedure TdmcLO.cds_IntHdr1SupplierNoChange(Sender: TField);
begin
  GetPref_ForINTHDRSupplier;
  // SetILO_Records ;
end;

procedure TdmcLO.cds_IntHdr1Def_LoadingLocationNoChange(Sender: TField);
begin
  // SetILO_Records ;
end;

procedure TdmcLO.cds_IntHdr1PriceListNoChange(Sender: TField);
begin
  SetPris;
end;

procedure TdmcLO.cds_IntHdr1InternKundFraktChange(Sender: TField);
begin
  SetFraktPris;
end;

procedure TdmcLO.SetFraktPris;
Var
  Save_Cursor: TCursor;
begin
  if cds_LO.Active then
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cds_LO.DisableControls;
    cds_LO.BeforePost := nil;
    cds_LO.OnCalcFields := nil;
    Try
      cds_LO.First;
      While not cds_LO.Eof do
      Begin
        cds_LO.Edit;
        cds_LOInternKundFrakt.AsFloat := cds_IntHdrInternKundFrakt.AsFloat;
        cds_LO.Post;
        cds_LO.Next;
      End;
    Finally
      cds_LO.OnCalcFields := cds_LOCalcFields;
      cds_LO.BeforePost := cds_LOBeforePost;
      cds_LO.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End;
End;

procedure TdmcLO.SetPris;
Var
  Save_Cursor: TCursor;
begin
  if cds_LO.Active then
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cds_LO.DisableControls;
    cds_LO.BeforePost := nil;
    cds_LO.OnCalcFields := nil;
    Try
      cds_LO.First;
      While not cds_LO.Eof do
      Begin
        cds_LO.Edit;
        cds_LOPriceListNo.AsInteger := cds_IntHdrPriceListNo.AsInteger;
        cds_LO.Post;
        cds_LO.Next;
      End;
    Finally
      cds_LO.OnCalcFields := cds_LOCalcFields;
      cds_LO.BeforePost := cds_LOBeforePost;
      cds_LO.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End;
End;

procedure TdmcLO.cds_LO1SupplierNoChange(Sender: TField);
begin
  GetPref_ForLOSupplier;
end;

procedure TdmcLO.cds_ELOLayout1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcLO.ModifiedTheUser;
Begin
  if cds_IntHdr.State in [dsBrowse] then
    cds_IntHdr.Edit;
  cds_IntHdrModifiedUser.AsInteger := ThisUser.UserID;
End;


procedure TdmcLO.cds_IntHdrAfterInsert(DataSet: TDataSet);
begin
  cds_IntHdrVatExempt.AsInteger := 0;
  cds_IntHdrOrderNo.AsInteger := dmsConnector.NextMaxNo('InternalOrderHead');
  cds_IntHdrShippingPlanNo.AsInteger :=
    dmsConnector.NextMaxNo('CustomerShippingPlanHeader');
  cds_IntHdrOrderNoText.AsString := cds_IntHdrShippingPlanNo.AsString;
  // cds_IntHdrCustomerNo.AsInteger           := 7 4 1 ;
  cds_IntHdrStatus.AsInteger                := 1;
  cds_IntHdrSalesRegionNo.AsInteger         := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo);
  cds_IntHdrProductDisplayFormat.AsInteger  := 1;
  cds_IntHdrLengthFormat.AsInteger          := 1;
  cds_IntHdrLanguageCode.AsInteger          := 1;
  cds_IntHdrSequenceNo.AsInteger            := 0;
  cds_IntHdrCreatedUser.AsInteger           := ThisUser.UserID;
  cds_IntHdrModifiedUser.AsInteger          := ThisUser.UserID;
  cds_IntHdrDateCreated.AsSQLTimeStamp      := DateTimeToSQLTimeStamp(Now);
  cds_IntHdrAutoPkgCode.AsInteger           := 1;

  dmcLO.cds_LO.Active := False;
  dmcLO.cds_LO.Active := True;


end;

procedure TdmcLO.cds_IntHdrAfterScroll(DataSet: TDataSet);
begin


  if PriceUnitNo = 0 then
    PriceUnitNo := 4;
  if VolumeUnitNo = 0 then
    VolumeUnitNo := 4;
  PriceUnitNo := cds_IntHdrDefaultPriceUnitNo.AsInteger;
  VolumeUnitNo := cds_IntHdrDefaultVolumeUnitNo.AsInteger;
end;

procedure TdmcLO.cds_IntHdrBeforePost(DataSet: TDataSet);
begin
  cds_IntHdrModifiedUser.AsInteger := ThisUser.UserID;
  cds_IntHdrDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
end;

procedure TdmcLO.cds_LOAfterInsert(DataSet: TDataSet);
begin
  ds_LO.OnDataChange := Nil;
  Try

    cds_LOSupplierShipPlanObjectNo.AsInteger :=
      dmsConnector.NextMaxNo('SupplierShippingPlan');
    cds_LOSupplierNo.AsInteger := cds_IntHdrSupplierNo.AsInteger;
    cds_LOLoadingLocationNo.AsInteger :=
      cds_IntHdrDef_LoadingLocationNo.AsInteger;
    cds_LOShippingPlanNo.AsInteger := cds_IntHdrShippingPlanNo.AsInteger;
    cds_LOObjectType.AsInteger := 0;
    cds_LOCreatedUser.AsInteger := ThisUser.UserID;
    cds_LOModifiedUser.AsInteger := ThisUser.UserID;
    cds_LODateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
    cds_LOShipToInvPointNo.AsInteger :=
      cds_IntHdrDefaultShipToInvPointNo.AsInteger;
    cds_LOLIPNo.AsInteger := cds_IntHdrDefaultLIPNo.AsInteger;
    cds_LODateModified.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
    cds_LOCustomerNo.AsInteger := cds_IntHdrCustomerNo.AsInteger;
    cds_LOShowInGrid.AsInteger := 0;
    cds_LOCustomerShowInGrid.AsInteger := 0;
    cds_LOFreightOrderByClientNo.AsInteger := cds_IntHdrSequenceNo.AsInteger;
    cds_LOMinActualLengthMM.AsFloat := 0;
    cds_LOMaxActualLengthMM.AsFloat := 0;
    cds_LOStartETDYearWeek.AsInteger :=
      cds_IntHdrDef_StartETDYearWeek.AsInteger;
    cds_LOEndETDYearWeek.AsInteger := cds_IntHdrDef_StartETAYearWeek.AsInteger;
    cds_LOShippingPlanStatus.AsInteger := STATUS_PRELIMINARY;
    cds_LOPriceUnitNo.AsInteger := PriceUnitNo;
    cds_LOVolumeUnitNo.AsInteger := VolumeUnitNo;
    cds_LODeliveryTermsNo.AsInteger := 10001;
    cds_LOPaymentTermsNo.AsInteger := 10081;
    cds_LOCurrencyNo.AsInteger := 10001;
    cds_LOPriceUnitNo.AsInteger := 4;
    cds_LOInternKundFrakt.AsFloat := cds_IntHdrInternKundFrakt.AsFloat;
    cds_LOPriceListNo.AsInteger := cds_IntHdrPriceListNo.AsInteger;
    if (cds_LOPackageWidth.AsInteger > 0) and (cds_LOPackageHeight.AsInteger > 0)
    then
      cds_LOPcsPerPkg.AsInteger := cds_LOPackageWidth.AsInteger *
        cds_LOPackageHeight.AsInteger;

  Finally
    ds_LO.OnDataChange := ds_LODataChange;
  End;
end;

procedure TdmcLO.cds_LOBeforeDelete(DataSet: TDataSet);
begin
  if dmsSystem.DoesLOHaveLoadsConfirmed
    (dmcLO.cds_LOSupplierShipPlanObjectNo.AsInteger) then
  Begin
    ShowMessage('Kan inte ta bort LO rad som är utlastad och AR');
    Abort;
  End;

end;

procedure TdmcLO.cds_LOBeforePost(DataSet: TDataSet);
begin
  cds_LODateModified.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
  cds_LOCustomerShowInGrid.AsInteger := cds_IntHdrDestinationNo.AsInteger;

  if (cds_LOPackageWidth.AsInteger > 0) and (cds_LOPackageHeight.AsInteger > 0)
  then
    cds_LOPcsPerPkg.AsInteger := cds_LOPackageWidth.AsInteger *
      cds_LOPackageHeight.AsInteger;

  if cds_IntHdrCustomerNo.IsNull then
    cds_LOCustomerNo.AsInteger := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;

  // if dmsSystem.DoesLOHaveLoadsConfirmed(dmcLO.cds_LOSupplierShipPlanObjectNo.AsInteger) = False then
  // Begin
  cds_LOCustomerNo.AsInteger := cds_IntHdrCustomerNo.AsInteger;
  cds_LOShipToInvPointNo.AsInteger :=
    cds_IntHdrDefaultShipToInvPointNo.AsInteger;
  // cds_LOFreightOrderByClientNo.AsInteger:= cds_IntHdrSequenceNo.AsInteger ;
  // End ;

  // cds_LOLoadingLocationNo.AsInteger       := cds_IntHdrDef_LoadingLocationNo.AsInteger ;
  cds_LOLIPNo.AsInteger := cds_IntHdrDefaultLIPNo.AsInteger;
  cds_LODeliveryTermsNo.AsInteger := cds_IntHdrDefaultDeliveryTermsNo.AsInteger;
  cds_LOPaymentTermsNo.AsInteger := cds_IntHdrDefaultPaymentTermsNo.AsInteger;
  cds_LOCurrencyNo.AsInteger := cds_IntHdrDefaultCurrencyNo.AsInteger;
  cds_LOFreightOrderByClientNo.AsInteger := cds_IntHdrSequenceNo.AsInteger;
  cds_LOStartETDYearWeek.AsInteger := cds_IntHdrDef_StartETDYearWeek.AsInteger;
  cds_LOEndETDYearWeek.AsInteger := cds_IntHdrDef_StartETAYearWeek.AsInteger;
  // cds_LOSupplierNo.AsInteger              := cds_IntHdrSupplierNo.AsInteger ;



  if cds_LOCustomerNo.IsNull then
  Begin
    ShowMessage('Välj en Kund');
    Abort;
  End;

  { if cds_LOSupplierNo.IsNull then
    Begin
    ShowMessage('Välj en Leverantör') ;
    Abort ;
    End ; }

  if cds_LOShipToInvPointNo.IsNull then
  Begin
    ShowMessage('Välj en Destination');
    Abort;
  End;

  { if cds_LOLoadingLocationNo.IsNull then
    Begin
    ShowMessage('Välj ett Lastställe') ;
    Abort ;
    End ; }

  if cds_LOProductNo.IsNull then
  Begin
    ShowMessage('Välj en Produkt');
    Abort;
  End;

  if cds_LOProductLengthNo.IsNull then
  Begin
    ShowMessage('Välj en Längd');
    Abort;
  End;

end;

procedure TdmcLO.cds_LOCalcFields(DataSet: TDataSet);
begin
  if cds_LO.State = dsInternalCalc then
    cds_LOREST.AsFloat := cds_LONoOfUnits.AsFloat - cds_LOLEV.AsFloat;
end;

procedure TdmcLO.cds_LOPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  if cds_LOCustomerNo.IsNull then
  Begin
    ShowMessage('Välj en Kund');
    Action := daFail;
  End;

  { if cds_LOSupplierNo.IsNull then
    Begin
    ShowMessage('Välj en Leverantör') ;
    Action := daFail ;
    End ; }

  if cds_LOShipToInvPointNo.IsNull then
  Begin
    ShowMessage('Välj en Destination');
    Action := daFail;
  End;

  { if cds_LOLoadingLocationNo.IsNull then
    Begin
    ShowMessage('Välj ett Lastställe') ;
    Action := daFail ;
    End ; }

  if cds_LOProductLengthNo.IsNull then
  Begin
    ShowMessage('Välj en Längd');
    Action := daFail;
  End;

  if cds_LOProductNo.IsNull then
  Begin
    ShowMessage('Välj en Produkt');
    Action := daFail;
  End;

end;

procedure TdmcLO.cds_ELOLengthsAfterInsert(DataSet: TDataSet);
begin
  cds_ELOLengthsSupplierShipPlanObjectNo.AsInteger :=
    cds_LOSupplierShipPlanObjectNo.AsInteger;
end;

procedure TdmcLO.cds_ELOLengthsBeforePost(DataSet: TDataSet);
begin
  cds_ELOLengthsPkgCodePPNo.Clear;
  ModifiedTheUser;
end;

procedure TdmcLO.cds_copyPIAfterInsert(DataSet: TDataSet);
begin
  cds_copyPIProdInstruNo.AsInteger := dmsConnector.NextMaxNo('ProdInstru');
  cds_copyPICreatedUser.AsInteger := ThisUser.UserID;
  cds_copyPIModifiedUser.AsInteger := ThisUser.UserID;
  cds_copyPIDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);

  cds_copyPIMiniBundle.AsInteger := 0;
  cds_copyPIStressGrade.AsInteger := 0;
  cds_copyPIFingerJoint.AsInteger := 0;
  cds_copyPIPackageCut.AsInteger := 0;
  cds_copyPIShrinkWrap.AsInteger := 0;

  cds_copyPIPET.AsInteger := 1; // Default
  cds_copyPIPackage_Size.AsInteger := 0; // Default
  cds_copyPIPackageType.AsInteger := 0; // Default

  cds_copyPIStamp.AsInteger := 0;
  cds_copyPIBarCodeID.AsInteger := 0;
end;

procedure TdmcLO.cds_ProdInstructAfterInsert(DataSet: TDataSet);
begin
  cds_ProdInstructProdInstruNo.AsInteger :=
    dmsConnector.NextMaxNo('ProdInstru');
  cds_ProdInstructCreatedUser.AsInteger := ThisUser.UserID;
  cds_ProdInstructModifiedUser.AsInteger := ThisUser.UserID;
  cds_ProdInstructDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);

  cds_ProdInstructMiniBundle.AsInteger := 0;
  cds_ProdInstructStressGrade.AsInteger := 0;
  cds_ProdInstructFingerJoint.AsInteger := 0;
  cds_ProdInstructPackageCut.AsInteger := 0;
  cds_ProdInstructShrinkWrap.AsInteger := 0;

  cds_ProdInstructPET.AsInteger := 1; // Default
  cds_ProdInstructPackage_Size.AsInteger := 0; // Default
  cds_ProdInstructPackageType.AsInteger := 0; // Default

  cds_ProdInstructStamp.AsInteger := 0;
  cds_ProdInstructBarCodeID.AsInteger := 0;

  // if rad har productcode skall barcode, stamp etc fyllas i
  // Det är troligen eller ska har varit gjort när LOraden skapades
  // if Length(Trim(cds_LOPackageCode.AsString)) > 0 then

  // GetProdInstruct_related_to_PPNo ; //= False then
end;

procedure TdmcLO.cds_ELOLayoutAfterInsert(DataSet: TDataSet);
begin
  cds_ELOLayoutSupplierShipPlanObjectNo.AsInteger :=
    cds_LOSupplierShipPlanObjectNo.AsInteger;
end;

procedure TdmcLO.cds_LOReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
  if cds_LOCustomerNo.IsNull then
  Begin
    ShowMessage('Välj en Kund');
    Action := raSkip;
  End;

  { if cds_LOSupplierNo.IsNull then
    Begin
    ShowMessage('Välj en Leverantör') ;
    Action := raSkip ;
    End ; }

  if cds_LOShipToInvPointNo.IsNull then
  Begin
    ShowMessage('Välj en Destination');
    Action := raSkip;
  End;

  { if cds_LOLoadingLocationNo.IsNull then
    Begin
    ShowMessage('Välj ett Lastställe') ;
    Action := raSkip ;
    End ; }

  if cds_LOProductLengthNo.IsNull then
  Begin
    ShowMessage('Välj en Längd');
    Action := raSkip;
  End;
  if cds_LOProductNo.IsNull then
  Begin
    ShowMessage('Välj en Produkt');
    Action := raSkip;
  End;

  // Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

end.
