unit dmc_UserProps;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, kbmMemTable,
  SqlTimSt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm_UserProps = class(TDataModule)
    ds_Verk: TDataSource;
    ds_Producer: TDataSource;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    ds_RegPoint: TDataSource;
    ds_LengthGroup: TDataSource;
    ds_Props: TDataSource;
    dsrcBarCodes: TDataSource;
    dsrcGradeStamps: TDataSource;
    ds_SR: TDataSource;
    ds_VU: TDataSource;
    mtLengthFormat: TkbmMemTable;
    mtLengthFormatLengthFormatNo: TIntegerField;
    mtLengthFormatLengthFormatName: TStringField;
    mtLengthVolUnit: TkbmMemTable;
    mtLengthVolUnitLengthVolUnitNo: TIntegerField;
    mtLengthVolUnitLengthVolUnitName: TStringField;
    ds_LIP2: TDataSource;
    ds_PIP2: TDataSource;
    cds_UserDir: TFDQuery;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    cds_producer: TFDQuery;
    cds_producerClientNo: TIntegerField;
    cds_producerClientName: TStringField;
    cds_producerSearchName: TStringField;
    cds_PIP: TFDQuery;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    cds_RegPoint: TFDQuery;
    cds_RegPointProductionUnitName: TStringField;
    cds_RegPointRegistrationPointNo: TIntegerField;
    cds_LengthGroup: TFDQuery;
    cds_LengthGroupGroupNo: TIntegerField;
    cds_LengthGroupGroupName: TStringField;
    cdsBarCodes: TFDQuery;
    cdsBarCodesBarCodeNo: TIntegerField;
    cdsBarCodesBarCode: TStringField;
    cdsBarCodesSequenceNo: TIntegerField;
    cdsBarCodesCreatedUser: TSmallintField;
    cdsBarCodesModifiedUser: TSmallintField;
    cdsBarCodesDateCreated: TSQLTimeStampField;
    cdsBarCodesBarCodeID: TStringField;
    cdsBarCodesAct: TIntegerField;
    cdsBarCodesBarcodeCodeName: TStringField;
    cdsGradeStamps: TFDQuery;
    cdsGradeStampsGradeStampNo: TIntegerField;
    cdsGradeStampsGradeStamp: TStringField;
    cdsGradeStampsGradeStampID: TStringField;
    cdsGradeStampsAct: TIntegerField;
    cdsGradeStampsGradeStampCodeName: TStringField;
    cds_VU: TFDQuery;
    cds_VUVolumeUnit_No: TIntegerField;
    cds_VUVolumeUnitName: TStringField;
    cds_SR: TFDQuery;
    cds_SRClientNo: TIntegerField;
    cds_SRClientName: TStringField;
    cds_SRSearchName: TStringField;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsName: TStringField;
    cds_PropsVerkNo: TIntegerField;
    cds_PropsOwnerNo: TIntegerField;
    cds_PropsPIPNo: TIntegerField;
    cds_PropsLIPNo: TIntegerField;
    cds_PropsInputOption: TIntegerField;
    cds_PropsRegPointNo: TIntegerField;
    cds_PropsRegDate: TSQLTimeStampField;
    cds_PropsCopyPcs: TIntegerField;
    cds_PropsRunNo: TIntegerField;
    cds_PropsProducerNo: TIntegerField;
    cds_PropsAutoColWidth: TIntegerField;
    cds_PropsSupplierCode: TStringField;
    cds_PropsLengthOption: TIntegerField;
    cds_PropsLengthGroupNo: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    cds_PropsSalesRegionNo: TIntegerField;
    cds_PropsMarketRegionNo: TIntegerField;
    cds_PropsOrderTypeNo: TIntegerField;
    cds_PropsStatus: TIntegerField;
    cds_PropsFilterOrderDate: TIntegerField;
    cds_PropsStartPeriod: TSQLTimeStampField;
    cds_PropsEndPeriod: TSQLTimeStampField;
    cds_PropsClientNo: TIntegerField;
    cds_PropsSalesPersonNo: TIntegerField;
    cds_PropsVerkSupplierNo: TIntegerField;
    cds_PropsVerkKundNo: TIntegerField;
    cds_PropsLOObjectType: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    cds_PIP2: TFDQuery;
    cds_PIP2PIPNO: TIntegerField;
    cds_PIP2PIPNAME: TStringField;
    cds_LIP2: TFDQuery;
    cds_LIP2LIPNo: TIntegerField;
    cds_LIP2LIPName: TStringField;
    cds_Shippers: TFDQuery;
    cds_ShippersClientNo: TIntegerField;
    cds_ShippersClientName: TStringField;
    cds_UserDirUserID: TIntegerField;
    cds_UserDirForm: TStringField;
    cds_UserDirImportDir: TStringField;
    cds_UserDirExportDir: TStringField;
    cds_UserDirDeliveryMessageWood_XSD: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure SetLIPNo(const LIPNo: Integer);
    procedure SetPIPNo(const PIPNo: Integer);
    procedure Refresh_cds_LIP2(const PIPNo: Integer);
    procedure Refresh_cds_PIP2(const OwnerNo, LegoOwnerNo: Integer);
    procedure SaveUserProps(const Form: String; mtuserprop: TkbmMemTable);
    procedure LoadUserProps(const Form: String; mtuserprop: TkbmMemTable);
    procedure SaveUserDir(const UserID: Integer;
      const Form, ExportDir, ImportDir, DeliveryMessageWood_XSD: String);
    function GetUserExportDir(const ExportDir: Integer; const UserID: Integer;
      const Form: String): String;
    procedure SetAppFormSize(const Form: String;
      const Height, Width, Top, Left: Integer);
    procedure GetAppFormSize(const Form: String;
      var Height, Width, Top, Left: Integer);
  end;

var
  dm_UserProps: Tdm_UserProps;

implementation

uses dmsDataConn, dmsVidaContact, VidaUser, VidaConst;

{$R *.dfm}

procedure Tdm_UserProps.LoadUserProps(const Form: String;
  mtuserprop: TkbmMemTable);
Var
  x: Integer;
Begin
  mtuserprop.Active := True;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    // mtuserpropOwnerNo.OnChange     := nil ;
    // mtuserpropPIPNo.OnChange       := nil ;
    // mtuserpropProducerNo.OnChange  := nil ;
    Try
      mtuserprop.Edit;
      mtuserprop.FieldByName('RoleType').AsInteger :=
        dmsContact.GetRoleType(ThisUser.CompanyNo);
      mtuserprop.FieldByName('VerkNo').AsInteger := cds_PropsVerkNo.AsInteger;
      mtuserprop.FieldByName('OwnerNo').AsInteger := cds_PropsOwnerNo.AsInteger;
      mtuserprop.FieldByName('PIPNo').AsInteger := cds_PropsPIPNo.AsInteger;
      mtuserprop.FieldByName('LIPNo').AsInteger := cds_PropsLIPNo.AsInteger;
      mtuserprop.FieldByName('InputOption').AsInteger :=
        cds_PropsInputOption.AsInteger;
      mtuserprop.FieldByName('RegPointNo').AsInteger :=
        cds_PropsRegPointNo.AsInteger;
      mtuserprop.FieldByName('RegDate').AsDateTime := Now;
      mtuserprop.FieldByName('CopyPcs').AsInteger := cds_PropsCopyPcs.AsInteger;
      mtuserprop.FieldByName('RunNo').AsInteger := -1;
      mtuserprop.FieldByName('ProducerNo').AsInteger :=
        cds_PropsProducerNo.AsInteger;
      mtuserprop.FieldByName('AutoColWidth').AsInteger :=
        cds_PropsAutoColWidth.AsInteger;
      mtuserprop.FieldByName('SupplierCode').AsString :=
        cds_PropsSupplierCode.AsString;
      mtuserprop.FieldByName('LengthOption').AsInteger :=
        cds_PropsLengthOption.AsInteger;
      mtuserprop.FieldByName('LengthGroupNo').AsInteger :=
        cds_PropsLengthGroupNo.AsInteger;
      mtuserprop.FieldByName('NewItemRow').AsInteger :=
        cds_PropsNewItemRow.AsInteger;
      mtuserprop.FieldByName('SalesRegionNo').AsInteger :=
        cds_PropsSalesRegionNo.AsInteger;
      mtuserprop.FieldByName('VolumeUnitNo').AsInteger :=
        cds_PropsVolumeUnitNo.AsInteger;
      mtuserprop.FieldByName('LengthFormatNo').AsInteger :=
        cds_PropsLengthFormatNo.AsInteger;
      mtuserprop.FieldByName('GradeStampNo').AsInteger :=
        cds_PropsGradeStampNo.AsInteger;
      mtuserprop.FieldByName('BarCodeNo').AsInteger :=
        cds_PropsBarCodeNo.AsInteger;
      mtuserprop.FieldByName('Form').AsString := Form;
      mtuserprop.FieldByName('UserID').AsInteger := ThisUser.UserID;
      mtuserprop.FieldByName('GroupByBox').AsInteger :=
        cds_PropsGroupByBox.AsInteger;

      mtuserprop.FieldByName('MarketRegionNo').AsInteger :=
        cds_PropsMarketRegionNo.AsInteger;
      mtuserprop.FieldByName('OrderTypeNo').AsInteger :=
        cds_PropsOrderTypeNo.AsInteger;
      mtuserprop.FieldByName('Status').AsInteger := cds_PropsStatus.AsInteger;
      mtuserprop.FieldByName('FilterOrderDate').AsInteger :=
        cds_PropsFilterOrderDate.AsInteger;
      mtuserprop.FieldByName('ClientNo').AsInteger :=
        cds_PropsClientNo.AsInteger;
      mtuserprop.FieldByName('SalesPersonNo').AsInteger :=
        cds_PropsSalesPersonNo.AsInteger;

      mtuserprop.FieldByName('VerkSupplierNo').AsInteger :=
        cds_PropsVerkSupplierNo.AsInteger;
      mtuserprop.FieldByName('VerkKundNo').AsInteger :=
        cds_PropsVerkKundNo.AsInteger;
      mtuserprop.FieldByName('LOObjectType').AsInteger :=
        cds_PropsLOObjectType.AsInteger;
      mtuserprop.FieldByName('AgentNo').AsInteger := cds_PropsAgentNo.AsInteger;
      mtuserprop.FieldByName('LoadingLocationNo').AsInteger :=
        cds_PropsLoadingLocationNo.AsInteger;
      mtuserprop.FieldByName('ShipperNo').AsInteger :=
        cds_PropsShipperNo.AsInteger;
      mtuserprop.FieldByName('BookingTypeNo').AsInteger :=
        cds_PropsBookingTypeNo.AsInteger;
      mtuserprop.FieldByName('CustomerNo').AsInteger :=
        cds_PropsCustomerNo.AsInteger;
      mtuserprop.FieldByName('ShowProduct').AsInteger :=
        cds_PropsShowProduct.AsInteger;
      mtuserprop.FieldByName('StartPeriod').AsDateTime :=
        SQLTimeStampToDateTime(cds_PropsStartPeriod.AsSQLTimeStamp);
      mtuserprop.FieldByName('EndPeriod').AsDateTime :=
        SQLTimeStampToDateTime(cds_PropsEndPeriod.AsSQLTimeStamp);

      mtuserprop.FieldByName('LengthVolUnitNo').AsInteger :=
        cds_PropsLengthVolUnitNo.AsInteger;

      mtuserprop.Post;
    Finally
      // mtuserpropProducerNo.OnChange   := mtuserpropProducerNoChange ;
      // mtuserpropPIPNo.OnChange        := mtuserpropPIPNoChange ;
      // mtuserpropOwnerNo.OnChange      := mtuserpropOwnerNoChange ;
    End;
  End // if not cds_Props.Eof then
  else
  Begin
    mtuserprop.Insert;
    mtuserprop.FieldByName('RoleType').AsInteger :=
      dmsContact.GetRoleType(ThisUser.CompanyNo);
    mtuserprop.FieldByName('VerkNo').AsInteger := ThisUser.CompanyNo;

    if mtuserprop.FieldByName('RoleType').AsInteger = cLego then
    Begin
      mtuserprop.FieldByName('OwnerNo').AsInteger := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;// VIDA_WOOD_COMPANY_NO;
      mtuserprop.FieldByName('PIPNo').AsInteger :=
        dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo);
      mtuserprop.FieldByName('SalesRegionNo').AsInteger := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ; //VIDA_WOOD_COMPANY_NO;
    End
    else
    Begin
      mtuserprop.FieldByName('OwnerNo').AsInteger := ThisUser.CompanyNo;
      // mtuserprop.FieldByName('SalesRegionNo').AsInteger  :=  dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
      mtuserprop.FieldByName('PIPNo').AsInteger :=
        dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo);
    End;

    mtuserprop.FieldByName('InputOption').AsInteger := 0;
    mtuserprop.FieldByName('RegDate').AsDateTime := Now;
    mtuserprop.FieldByName('CopyPcs').AsInteger := 1;
    mtuserprop.FieldByName('RunNo').AsInteger := -1;
    mtuserprop.FieldByName('ProducerNo').AsInteger := ThisUser.CompanyNo;
    mtuserprop.FieldByName('AutoColWidth').AsInteger := 1;
    mtuserprop.FieldByName('SupplierCode').AsString :=
      dmsContact.GetClientCode(mtuserprop.FieldByName('ProducerNo').AsInteger);
    mtuserprop.FieldByName('LengthGroupNo').AsInteger := 1;
    mtuserprop.FieldByName('GroupByBox').AsInteger := 0;
    mtuserprop.FieldByName('GroupSummary').AsInteger := 0;
    mtuserprop.FieldByName('LengthVolUnitNo').AsInteger := 0;
    mtuserprop.FieldByName('GradeStampNo').AsInteger := 0;
    mtuserprop.FieldByName('BarCodeNo').AsInteger := 0;
    mtuserprop.FieldByName('GradeStampNo').AsInteger := 0;
    mtuserprop.FieldByName('LengthFormatNo').AsInteger := 0;
    mtuserprop.FieldByName('NewItemRow').AsInteger := 0;

    mtuserprop.FieldByName('SalesRegionNo').AsInteger := 0;
    mtuserprop.FieldByName('VolumeUnitNo').AsInteger := 0;

    mtuserprop.FieldByName('Form').AsString := Form;
    mtuserprop.FieldByName('UserID').AsInteger := ThisUser.UserID;
    mtuserprop.FieldByName('GroupByBox').AsInteger :=
      cds_PropsGroupByBox.AsInteger;

    mtuserprop.FieldByName('MarketRegionNo').AsInteger := 0;
    mtuserprop.FieldByName('OrderTypeNo').AsInteger := 0;
    mtuserprop.FieldByName('Status').AsInteger := 0;
    mtuserprop.FieldByName('FilterOrderDate').AsInteger := 0;
    mtuserprop.FieldByName('ClientNo').AsInteger := 0;
    mtuserprop.FieldByName('SalesPersonNo').AsInteger := 0;

    mtuserprop.FieldByName('VerkSupplierNo').AsInteger := 0;
    mtuserprop.FieldByName('VerkKundNo').AsInteger := 0;
    mtuserprop.FieldByName('LOObjectType').AsInteger := 0;
    mtuserprop.FieldByName('AgentNo').AsInteger := 0;
    mtuserprop.FieldByName('LoadingLocationNo').AsInteger := 0;
    mtuserprop.FieldByName('ShipperNo').AsInteger := 0;
    mtuserprop.FieldByName('BookingTypeNo').AsInteger := 0;
    mtuserprop.FieldByName('CustomerNo').AsInteger := 0;
    mtuserprop.FieldByName('ShowProduct').AsInteger := 0;

    mtuserprop.Post;
  End;
  cds_Props.Active := False;
End;

procedure Tdm_UserProps.SaveUserProps(const Form: String;
  mtuserprop: TkbmMemTable);
Var
  x: Integer;
Begin
  if mtuserprop.State in [dsEdit, dsInsert] then
    mtuserprop.Post;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if cds_Props.Eof then
  Begin
    cds_Props.Insert;
    cds_PropsForm.AsString := Form;
    cds_PropsUserID.AsInteger := ThisUser.UserID;
  End
  else
    cds_Props.Edit;

  // cds_PropsRoleType.AsInteger           := mtuserprop.FieldByName('RoleType').AsInteger        ;
  cds_PropsVerkNo.AsInteger := mtuserprop.FieldByName('VerkNo').AsInteger;
  cds_PropsOwnerNo.AsInteger := mtuserprop.FieldByName('OwnerNo').AsInteger;
  cds_PropsPIPNo.AsInteger := mtuserprop.FieldByName('PIPNo').AsInteger;
  cds_PropsLIPNo.AsInteger := mtuserprop.FieldByName('LIPNo').AsInteger;
  cds_PropsInputOption.AsInteger := mtuserprop.FieldByName('InputOption')
    .AsInteger;
  cds_PropsRegPointNo.AsInteger := mtuserprop.FieldByName('RegPointNo')
    .AsInteger;
  // mtuserprop.FieldByName('RegDate').AsDateTime        := Now ;
  cds_PropsCopyPcs.AsInteger := mtuserprop.FieldByName('CopyPcs').AsInteger;
  // cds_PropsProducerNo.AsInteger ;mtuserprop.FieldByName('RunNo').AsInteger           := -1 ;
  cds_PropsProducerNo.AsInteger := mtuserprop.FieldByName('ProducerNo')
    .AsInteger;
  cds_PropsAutoColWidth.AsInteger := mtuserprop.FieldByName('AutoColWidth')
    .AsInteger;
  cds_PropsSupplierCode.AsString := mtuserprop.FieldByName
    ('SupplierCode').AsString;
  cds_PropsLengthOption.AsInteger := mtuserprop.FieldByName('LengthOption')
    .AsInteger;
  cds_PropsLengthGroupNo.AsInteger := mtuserprop.FieldByName('LengthGroupNo')
    .AsInteger;
  cds_PropsNewItemRow.AsInteger := mtuserprop.FieldByName('NewItemRow')
    .AsInteger;
  cds_PropsSalesRegionNo.AsInteger := mtuserprop.FieldByName('SalesRegionNo')
    .AsInteger;
  cds_PropsVolumeUnitNo.AsInteger := mtuserprop.FieldByName('VolumeUnitNo')
    .AsInteger;
  cds_PropsLengthFormatNo.AsInteger := mtuserprop.FieldByName('LengthFormatNo')
    .AsInteger;
  cds_PropsGradeStampNo.AsInteger := mtuserprop.FieldByName('GradeStampNo')
    .AsInteger;
  cds_PropsBarCodeNo.AsInteger := mtuserprop.FieldByName('BarCodeNo').AsInteger;
  cds_PropsLengthVolUnitNo.AsInteger :=
    mtuserprop.FieldByName('LengthVolUnitNo').AsInteger;
  cds_PropsGroupByBox.AsInteger := mtuserprop.FieldByName('GroupByBox')
    .AsInteger;
  cds_PropsGroupSummary.AsInteger := mtuserprop.FieldByName('GroupSummary')
    .AsInteger;

  cds_PropsMarketRegionNo.AsInteger := mtuserprop.FieldByName('MarketRegionNo')
    .AsInteger;
  cds_PropsOrderTypeNo.AsInteger := mtuserprop.FieldByName('OrderTypeNo')
    .AsInteger;
  cds_PropsStatus.AsInteger := mtuserprop.FieldByName('Status').AsInteger;
  cds_PropsFilterOrderDate.AsInteger :=
    mtuserprop.FieldByName('FilterOrderDate').AsInteger;
  cds_PropsClientNo.AsInteger := mtuserprop.FieldByName('ClientNo').AsInteger;
  cds_PropsSalesPersonNo.AsInteger := mtuserprop.FieldByName('SalesPersonNo')
    .AsInteger;

  cds_PropsVerkSupplierNo.AsInteger := mtuserprop.FieldByName('VerkSupplierNo')
    .AsInteger;
  cds_PropsVerkKundNo.AsInteger := mtuserprop.FieldByName('VerkKundNo')
    .AsInteger;
  cds_PropsLOObjectType.AsInteger := mtuserprop.FieldByName('LOObjectType')
    .AsInteger;
  cds_PropsAgentNo.AsInteger := mtuserprop.FieldByName('AgentNo').AsInteger;
  cds_PropsLoadingLocationNo.AsInteger :=
    mtuserprop.FieldByName('LoadingLocationNo').AsInteger;
  cds_PropsShipperNo.AsInteger := mtuserprop.FieldByName('ShipperNo').AsInteger;
  cds_PropsBookingTypeNo.AsInteger := mtuserprop.FieldByName('BookingTypeNo')
    .AsInteger;
  cds_PropsCustomerNo.AsInteger := mtuserprop.FieldByName('CustomerNo')
    .AsInteger;
  cds_PropsShowProduct.AsInteger := mtuserprop.FieldByName('ShowProduct')
    .AsInteger;

  cds_PropsStartPeriod.AsSQLTimeStamp :=
    DateTimeToSQLTimeStamp(mtuserprop.FieldByName('StartPeriod').AsDateTime);
  cds_PropsEndPeriod.AsSQLTimeStamp := DateTimeToSQLTimeStamp
    (mtuserprop.FieldByName('EndPeriod').AsDateTime);

  cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;


procedure Tdm_UserProps.DataModuleCreate(Sender: TObject);
begin
  cdsBarCodes.Active := True;
  { cdsBarCodes.Insert ;
    cdsBarCodesBarCodeNo.AsInteger := 0 ;
    cdsBarCodesBarCode.AsString    := 'Ingen ändring' ;
    cdsBarCodesAct.AsInteger       := 0 ;
    cdsBarCodes.Post ; }

  cdsGradeStamps.Active := True;
  { cdsGradeStamps.Insert ;
    cdsGradeStampsGradeStampNo.AsInteger := 0 ;
    cdsGradeStampsGradeStamp.AsString    := 'Ingen ändring' ;
    cdsGradeStampsAct.AsInteger          := 0 ;
    cdsGradeStamps.Post ; }

  cds_Verk.ParamByName('SalesRegionNo').AsInteger := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
  cds_Verk.Active := True;
  cds_Verk.InsertRecord([0, 'Ingen ändring', 'Ingen ändring']);

  mtLengthFormat.Active := True;
  mtLengthFormat.InsertRecord([0, 'AKT MM']);
  mtLengthFormat.InsertRecord([1, 'NOM MM']);
  mtLengthFormat.InsertRecord([2, 'FOT']);
  mtLengthFormat.InsertRecord([3, 'TUM']);
  mtLengthFormat.InsertRecord([4, 'AKT (NOM) MM']);
  mtLengthFormat.InsertRecord([5, 'FOT (TUM)']);
  mtLengthFormat.InsertRecord([6, 'FOT (AKT MM)']);

  mtLengthVolUnit.Active := True;
  mtLengthVolUnit.InsertRecord([0, 'Styck']);
  mtLengthVolUnit.InsertRecord([1, 'AM3']);
  mtLengthVolUnit.InsertRecord([2, 'NM3']);
  mtLengthVolUnit.InsertRecord([3, 'PAKET']);
  // cds_Verk.Post ;
end;

procedure Tdm_UserProps.SaveUserDir(const UserID: Integer;
  const Form, ExportDir, ImportDir, DeliveryMessageWood_XSD: String);
Begin
  cds_UserDir.Active := False;
  cds_UserDir.ParamByName('UserID').AsInteger := UserID;
  cds_UserDir.ParamByName('Form').AsString := Form;
  cds_UserDir.Active := True;
  if not cds_UserDir.Eof then
  Begin
    cds_UserDir.Edit;
    cds_UserDirForm.AsString := Form;
    cds_UserDirImportDir.AsString := ImportDir;
    cds_UserDirExportDir.AsString := ExportDir;
    cds_UserDirDeliveryMessageWood_XSD.AsString := DeliveryMessageWood_XSD;
    cds_UserDir.Post;
  End
  else
  Begin
    cds_UserDir.Insert;
    cds_UserDirUserID.AsInteger := UserID;
    cds_UserDirForm.AsString := Form;
    cds_UserDirImportDir.AsString := ImportDir;
    cds_UserDirExportDir.AsString := ExportDir;
    cds_UserDirDeliveryMessageWood_XSD.AsString := DeliveryMessageWood_XSD;
    cds_UserDir.Post;
  End;
  if cds_UserDir.ChangeCount > 0 then
  Begin
    cds_UserDir.ApplyUpdates(0);
    cds_UserDir.CommitUpdates;
  End;

  cds_UserDir.Active := False;
End;

function Tdm_UserProps.GetUserExportDir(const ExportDir: Integer;
  const UserID: Integer; const Form: String): String;
Begin
  Result := 'C:\';
  cds_UserDir.Active := False;
  cds_UserDir.ParamByName('UserID').AsInteger := UserID;
  cds_UserDir.ParamByName('Form').AsString := Form;
  cds_UserDir.Active := True;
  if not cds_UserDir.Eof then
  Begin
    if ExportDir = 0 then
      Result := cds_UserDirExportDir.AsString
    else if ExportDir = 1 then
      Result := cds_UserDirImportDir.AsString
    else if ExportDir = 2 then
      Result := cds_UserDirDeliveryMessageWood_XSD.AsString;
  End;
  cds_UserDir.Active := False;
End;

procedure Tdm_UserProps.GetAppFormSize(const Form: String;
  var Height, Width, Top, Left: Integer);
Begin
  Height := -1;
  Width := -1;
  Top := -1;
  Left := 1;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    Height := cds_PropsInputOption.AsInteger;
    Width := cds_PropsRegPointNo.AsInteger;
    Top := cds_PropsCopyPcs.AsInteger;
    Left := cds_PropsRunNo.AsInteger;
  End;
  cds_Props.Active := False;
End;

procedure Tdm_UserProps.SetAppFormSize(const Form: String;
  const Height, Width, Top, Left: Integer);
Begin
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
    cds_Props.Edit
  else
    cds_Props.Insert;
  cds_PropsInputOption.AsInteger := Height;
  cds_PropsRegPointNo.AsInteger := Width;
  cds_PropsCopyPcs.AsInteger := Top;
  cds_PropsRunNo.AsInteger := Left;
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsForm.AsString := Form;

  cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;
  cds_Props.Active := False;
End;

procedure Tdm_UserProps.Refresh_cds_PIP2(const OwnerNo, LegoOwnerNo: Integer);
Begin
  cds_PIP2.Active := False;
  cds_PIP2.ParamByName('OwnerNo').AsInteger := OwnerNo;
  cds_PIP2.ParamByName('LegoOwnerNo').AsInteger := LegoOwnerNo;
  cds_PIP2.Active := True;
End;

procedure Tdm_UserProps.Refresh_cds_LIP2(const PIPNo: Integer);
Begin
  cds_LIP2.Active := False;
  cds_LIP2.ParamByName('PIPNo').AsInteger := PIPNo;
  cds_LIP2.Active := True;
End;

procedure Tdm_UserProps.SetPIPNo(const PIPNo: Integer);
Begin
  if cds_PIP2.Locate('PIPNo', PIPNo, []) then;
End;

procedure Tdm_UserProps.SetLIPNo(const LIPNo: Integer);
Begin
  if cds_LIP2.Locate('LIPNo', LIPNo, []) then;
End;

end.
