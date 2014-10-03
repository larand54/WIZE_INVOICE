unit dmc_marketprice;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, kbmMemTable, SqlTimSt, Dialogs, DateUtils ;

type
  Tdm_marketprice = class(TDataModule)
    sq_productlengths: TSQLQuery;
    dsp_productlengths: TDataSetProvider;
    cds_productlengths: TClientDataSet;
    ds_productlengths: TDataSource;
    cds_productlengthsProductLengthNo: TIntegerField;
    cds_productlengthsActualLengthMM: TFloatField;
    cds_productlengthsNominalLengthMM: TFloatField;
    cds_productlengthsNominalLengthFEET: TFloatField;
    cds_productlengthsActualLengthINCH: TStringField;
    cds_productlengthsPET: TIntegerField;
    cds_productlengthsFingerJoint: TIntegerField;
    cds_productlengthsCreatedUser: TIntegerField;
    cds_productlengthsModifiedUser: TIntegerField;
    cds_productlengthsDateCreated: TSQLTimeStampField;
    cds_productlengthsSequenceNo: TIntegerField;
    cds_productlengthsProductLengthGroupNo: TIntegerField;
    mtPrices: TkbmMemTable;
    dsPrices: TDataSource;
    sq_LengthsForCOLS: TSQLQuery;
    sq_LengthsForCOLSProductLengthNo: TIntegerField;
    sq_LengthsForCOLSActualLengthMM: TFloatField;
    sq_LengthsForCOLSNominalLengthMM: TFloatField;
    sq_LengthsForCOLSNominalLengthFEET: TFloatField;
    sq_LengthsForCOLSActualLengthINCH: TStringField;
    sq_marketpricegrp: TSQLQuery;
    sq_marketpricegrpmid: TIntegerField;
    sq_marketpricegrptemplateno: TIntegerField;
    sq_marketpricerow: TSQLQuery;
    dsp_marketpricegrp: TDataSetProvider;
    dsp_marketpricerow: TDataSetProvider;
    cds_marketpricegrp: TClientDataSet;
    cds_marketpricerow: TClientDataSet;
    ds_marketpricegrp: TDataSource;
    ds_marketpricerow: TDataSource;
    cds_marketpricegrpmid: TIntegerField;
    sq_marketpricerowmid: TIntegerField;
    sq_marketpricerowproductno: TIntegerField;
    sq_marketpricerowproductlengthno: TIntegerField;
    sq_marketpricerowprice: TFloatField;
    cds_marketpricerowmid: TIntegerField;
    cds_marketpricerowproductno: TIntegerField;
    cds_marketpricerowproductlengthno: TIntegerField;
    cds_marketpricerowprice: TFloatField;
    sq_marketpricegrpDateModified: TSQLTimeStampField;
    sq_marketpricegrpModifiedUser: TIntegerField;
    sq_getperiods: TSQLQuery;
    sq_getperiodsWeek: TIntegerField;
    sq_getperiodsYear: TIntegerField;
    sq_getperiodsMonth: TIntegerField;
    sq_PriceHdr: TSQLQuery;
    dsp_PriceHdr: TDataSetProvider;
    cds_PriceHdr: TClientDataSet;
    ds_PriceHdr: TDataSource;
    sq_PriceHdrtemplateno: TIntegerField;
    sq_PriceHdrPriceListName: TStringField;
    sq_PriceHdrCurrencyNo: TIntegerField;
    sq_PriceHdrPriceUnitNo: TIntegerField;
    sq_PriceHdrDateModified: TSQLTimeStampField;
    sq_PriceHdrModifiedUser: TIntegerField;
    cds_PriceHdrtemplateno: TIntegerField;
    cds_PriceHdrPriceListName: TStringField;
    cds_PriceHdrCurrencyNo: TIntegerField;
    cds_PriceHdrPriceUnitNo: TIntegerField;
    cds_PriceHdrDateModified: TSQLTimeStampField;
    cds_PriceHdrModifiedUser: TIntegerField;
    sq_Currency: TSQLQuery;
    dsp_Currency: TDataSetProvider;
    cds_Currency: TClientDataSet;
    cds_CurrencyCurrencyNo: TIntegerField;
    cds_CurrencyCurrencyName: TStringField;
    ds_Currency: TDataSource;
    sq_PriceUnit: TSQLQuery;
    cds_PriceHdrValuta: TStringField;
    dsp_PriceUnit: TDataSetProvider;
    cds_PriceUnit: TClientDataSet;
    cds_PriceUnitTemplateUnitNo: TIntegerField;
    cds_PriceUnitTemplateUnitName: TStringField;
    cds_PriceHdrPrisenhet: TStringField;
    sq_AvailPG: TSQLQuery;
    dsp_AvailPG: TDataSetProvider;
    cds_AvailPG: TClientDataSet;
    ds_AvailPG: TDataSource;
    cds_AvailPGProductGroupNo: TIntegerField;
    cds_AvailPGAT: TFloatField;
    cds_AvailPGAB: TFloatField;
    cds_AvailPGTS: TStringField;
    cds_AvailPGUT: TStringField;
    cds_AvailPGIMP: TStringField;
    cds_AvailPGTT: TStringField;
    cds_AvailPGTB: TStringField;
    sq_SelectPG: TSQLQuery;
    dsp_SelectPG: TDataSetProvider;
    cds_SelectPG: TClientDataSet;
    cds_SelectPGProductGroupNo: TIntegerField;
    cds_SelectPGAT: TFloatField;
    cds_SelectPGAB: TFloatField;
    cds_SelectPGTS: TStringField;
    cds_SelectPGUT: TStringField;
    cds_SelectPGIMP: TStringField;
    cds_SelectPGTT: TStringField;
    cds_SelectPGTB: TStringField;
    ds_SelectPG: TDataSource;
    sq_SelectPGtemplateno: TIntegerField;
    sq_SelectPGProductGroupNo: TIntegerField;
    sq_SelectPGAT: TFloatField;
    sq_SelectPGAB: TFloatField;
    sq_SelectPGTS: TStringField;
    sq_SelectPGUT: TStringField;
    sq_SelectPGIMP: TStringField;
    sq_SelectPGTT: TStringField;
    sq_SelectPGTB: TStringField;
    cds_SelectPGtemplateno: TIntegerField;
    sq_AvailProd: TSQLQuery;
    dsp_AvailProd: TDataSetProvider;
    cds_AvailProd: TClientDataSet;
    ds_AvailProd: TDataSource;
    cds_AvailProdGradeName: TStringField;
    cds_AvailProdGradeNo: TIntegerField;
    sq_SelectProd: TSQLQuery;
    dsp_SelectProd: TDataSetProvider;
    cds_SelectProd: TClientDataSet;
    ds_SelectProd: TDataSource;
    cds_SelectProdGradeName: TStringField;
    cds_SelectProdGradeNo: TIntegerField;
    cds_SelectProdtemplateno: TIntegerField;
    sq_LengthGroups: TSQLQuery;
    dsp_LengthGroups: TDataSetProvider;
    cds_LengthGroups: TClientDataSet;
    ds_LengthGroups: TDataSource;
    cds_LengthGroupsGroupNo: TIntegerField;
    cds_LengthGroupsGroupName: TStringField;
    sq_AvailLengths: TSQLQuery;
    dsp_AvailLengths: TDataSetProvider;
    cds_AvailLengths: TClientDataSet;
    ds_AvailLengths: TDataSource;
    cds_AvailLengthsProductLengthNo: TIntegerField;
    cds_AvailLengthsALMM: TFloatField;
    cds_AvailLengthsFOT: TFloatField;
    cds_AvailLengthsTUM: TStringField;
    sq_SelectLengths: TSQLQuery;
    dsp_SelectLengths: TDataSetProvider;
    cds_SelectLengths: TClientDataSet;
    cds_SelectLengthsProductLengthNo: TIntegerField;
    cds_SelectLengthsALMM: TFloatField;
    cds_SelectLengthsFOT: TFloatField;
    cds_SelectLengthsTUM: TStringField;
    ds_SelectLengths: TDataSource;
    sq_SelectLengthstemplateno: TIntegerField;
    sq_SelectLengthsProductLengthNo: TIntegerField;
    sq_SelectLengthsALMM: TFloatField;
    sq_SelectLengthsFOT: TFloatField;
    sq_SelectLengthsTUM: TStringField;
    cds_SelectLengthstemplateno: TIntegerField;
    ds_SaveProd: TDataSource;
    cds_SaveProd: TClientDataSet;
    cds_SaveProdtemplateno: TIntegerField;
    cds_SaveProdproductno: TIntegerField;
    dsp_SaveProd: TDataSetProvider;
    sq_SaveProd: TSQLQuery;
    sq_SaveProdtemplateno: TIntegerField;
    sq_SaveProdproductno: TIntegerField;
    sq_GetProductNo: TSQLQuery;
    sq_GetProductNoProductNo: TIntegerField;
    sq_SaveProdproductGroupno: TIntegerField;
    cds_SaveProdproductGroupno: TIntegerField;
    sq_GetGrades: TSQLQuery;
    sq_GetGradesGradeName: TStringField;
    sq_GetGradesGradeNo: TIntegerField;
    sq_GetGradestemplateno: TIntegerField;
    sq_GetGradesproductno: TIntegerField;
    sq_GetGradesproductGroupno: TIntegerField;
    sq_marketpricegrpValidFrom: TSQLTimeStampField;
    sq_marketpricegrpValidTo: TSQLTimeStampField;
    cds_marketpricegrptemplateno: TIntegerField;
    cds_marketpricegrpDateModified: TSQLTimeStampField;
    cds_marketpricegrpModifiedUser: TIntegerField;
    cds_marketpricegrpValidFrom: TSQLTimeStampField;
    cds_marketpricegrpValidTo: TSQLTimeStampField;
    sq_ChkName: TSQLQuery;
    StringField1: TStringField;
    sq_marketpricegrpNotes: TMemoField;
    cds_marketpricegrpNotes: TMemoField;
    sq_SelectPGModifieduser: TIntegerField;
    sq_SelectPGDatemodified: TSQLTimeStampField;
    sq_SelectPGSortorderNo: TIntegerField;
    cds_SelectPGModifieduser: TIntegerField;
    cds_SelectPGDatemodified: TSQLTimeStampField;
    cds_SelectPGSortorderNo: TIntegerField;
    sq_PriceHdrSource: TStringField;
    sq_PriceHdrPriceatLocation: TStringField;
    sq_PriceHdrAddOnPrice: TFloatField;
    sq_PriceHdrLengthUnitNo: TIntegerField;
    sq_PriceHdrTypeOfPriceList: TIntegerField;
    cds_PriceHdrSource: TStringField;
    cds_PriceHdrPriceatLocation: TStringField;
    cds_PriceHdrAddOnPrice: TFloatField;
    cds_PriceHdrLengthUnitNo: TIntegerField;
    cds_PriceHdrTypeOfPriceList: TIntegerField;
    sq_marketpricegrpWeekNo: TIntegerField;
    cds_marketpricegrpWeekNo: TIntegerField;
    mtLengthFilter: TkbmMemTable;
    mtLengthFilterGroupNo: TIntegerField;
    mtLengthFilterGroupName: TStringField;
    dsLengthFilter: TDataSource;
    sq_marketpricegrpPriceAdjustment: TFloatField;
    cds_marketpricegrpPriceAdjustment: TFloatField;
    sq_VerkPriceAdj: TSQLQuery;
    dsp_VerkPriceAdj: TDataSetProvider;
    cds_VerkPriceAdj: TClientDataSet;
    ds_VerkPriceAdj: TDataSource;
    sq_VerkPriceAdjClientNo: TIntegerField;
    sq_VerkPriceAdjAdjPrice: TFloatField;
    sq_VerkPriceAdjDateCreated: TSQLTimeStampField;
    sq_VerkPriceAdjCreatedUser: TIntegerField;
    cds_VerkPriceAdjClientNo: TIntegerField;
    cds_VerkPriceAdjAdjPrice: TFloatField;
    cds_VerkPriceAdjDateCreated: TSQLTimeStampField;
    cds_VerkPriceAdjCreatedUser: TIntegerField;
    cds_VerkPriceAdjVerk: TStringField;
    sq_PriceHdrDefaultPeriod: TIntegerField;
    cds_PriceHdrDefaultPeriod: TIntegerField;
    sq_marketpricegrpStatus: TIntegerField;
    cds_marketpricegrpStatus: TIntegerField;
    sq_SelectPGAct: TIntegerField;
    cds_SelectPGAct: TIntegerField;
    cds_SelectProdAct: TIntegerField;
    sq_SaveProdAct: TIntegerField;
    cds_SaveProdAct: TIntegerField;
    sq_SelectLengthsAct: TIntegerField;
    cds_SelectLengthsAct: TIntegerField;
    sq_vwcost: TSQLQuery;
    sq_vwcostvwcost: TFloatField;
    sq_vwcostfom: TSQLTimeStampField;
    dsp_vwcost: TDataSetProvider;
    cds_vwcost: TClientDataSet;
    ds_vwcost: TDataSource;
    cds_vwcostvwcost: TFloatField;
    cds_vwcostfom: TSQLTimeStampField;
    sq_vwcostDateCreated: TSQLTimeStampField;
    sq_vwcostModifiedUser: TIntegerField;
    cds_vwcostDateCreated: TSQLTimeStampField;
    cds_vwcostModifiedUser: TIntegerField;
    procedure cds_pricetemplateprodReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_marketpricegrpAfterInsert(DataSet: TDataSet);
    procedure cds_marketpricerowReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_marketpricegrpReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_pricegrpReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure mtPricesAfterPost(DataSet: TDataSet);
    procedure cds_marketpricegrpBeforePost(DataSet: TDataSet);
    procedure dsp_SelectPGGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_AvailPGFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cds_SelectPGAfterInsert(DataSet: TDataSet);
    procedure dsp_SelectProdGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_AvailProdFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtLengthFilterGroupNoChange(Sender: TField);
    procedure cds_AvailLengthsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dsp_SelectLengthsGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_SelectLengthsAfterInsert(DataSet: TDataSet);
    procedure cds_SelectProdAfterInsert(DataSet: TDataSet);
    procedure cds_PriceHdrAfterInsert(DataSet: TDataSet);
    procedure cds_SaveProdAfterInsert(DataSet: TDataSet);
    procedure mtPricesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cds_PriceHdrBeforePost(DataSet: TDataSet);
    procedure cds_PriceHdrReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_SelectPGBeforePost(DataSet: TDataSet);
    procedure cds_VerkPriceAdjBeforePost(DataSet: TDataSet);
    procedure cds_marketpricegrpValidFromChange(Sender: TField);
    procedure cds_marketpricegrpAfterScroll(DataSet: TDataSet);
    procedure cds_marketpricegrpStatusChange(Sender: TField);
    procedure cds_vwcostAfterInsert(DataSet: TDataSet);
    procedure cds_vwcostBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SaveProductNo ;
    Function  GetProductNo : Integer ;
    Function  DoesPriceListNameExist : Boolean ;
    procedure AddZeroLength ; //453
  public
    { Public declarations }
    ArrayIndex : Integer ;
    PriceTemplateModified,
    MarketPriceChanged : Boolean ;

    procedure SavePriceTemplateData ;
    procedure CancelPriceTemplateData ;
    Function  Get_ArrayIndexOfProductGroupNoArray (const ProductGroupNo : Integer) : Integer ;
  end;

var
  dm_marketprice: Tdm_marketprice;
  ProductGroupNoArray: array[1..100] of Integer;

implementation

uses dmsDataConn, recerror,  UnitdmModule1, VidaUser , dmsVidaContact;

{$R *.dfm}

Function Tdm_marketprice.Get_ArrayIndexOfProductGroupNoArray (const ProductGroupNo : Integer) : Integer ;
Var x : Integer ;
Begin
 Result:= -1 ;
 For x := 1 to 100 do
 Begin
  if ProductGroupNoArray[x] = ProductGroupNo then
   Result:= x ;
 End ;
End ;

Function Tdm_marketprice.DoesPriceListNameExist : Boolean ;
Begin
 sq_ChkName.ParamByName('PriceListName').AsString := cds_PriceHdrPriceListName.AsString ;
 sq_ChkName.ParamByName('TemplateNo').AsInteger   := cds_PriceHdrTemplateNo.AsInteger ;
 sq_ChkName.Open ;
 if not sq_ChkName.Eof then
  Result:= True
   else
    Result:= False ;
 sq_ChkName.Close ;
End ;

procedure Tdm_marketprice.cds_pricetemplateprodReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure Tdm_marketprice.cds_marketpricegrpAfterInsert(DataSet: TDataSet);
var Year, Month, Day: Word;
    StartDate, EndDate : TDateTime ;
begin
 StartDate:= IncMonth(Date, 1) ;
 DecodeDate(StartDate, Year, Month, Day);
 StartDate:= StartOfTheMonth(StartDate) ;
 EndDate:= StartDate ;

 Case cds_PriceHdrDefaultPeriod.AsInteger of
  1 : Begin
       EndDate:= EndOfTheMonth(StartDate) ;
      End ;
  2 : Begin
       EndDate:= IncMonth(StartDate, 2) ;
       EndDate:= EndOfTheMonth(EndDate) ;
      End ;
  3 : Begin
       EndDate:= IncMonth(StartDate, 5) ;
       EndDate:= EndOfTheMonth(EndDate) ;
      End ;
 End ;

 cds_marketpricegrpmid.AsInteger                := dmsConnector.NextMaxNo('marketpricegrp') ;
 cds_marketpricegrptemplateno.AsInteger         := cds_PriceHdrtemplateno.AsInteger ;

 cds_marketpricegrpValidFrom.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(StartDate) ;
 cds_marketpricegrpValidTo.AsSQLTimeStamp       := DateTimeToSQLTimeStamp(EndDate) ;
 cds_marketpricegrpDateModified.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(date) ;
 cds_marketpricegrpModifiedUser.AsInteger       := ThisUser.UserID ;

 cds_marketpricegrpStatus.AsInteger             := 0 ;
end;

procedure Tdm_marketprice.cds_marketpricerowReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure Tdm_marketprice.cds_marketpricegrpReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 e.CreateFmt('Vecka och productgrupp måste vara unik',[]) ;// .Create('nativerror','context',1,1);
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure Tdm_marketprice.cds_pricegrpReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure Tdm_marketprice.mtPricesAfterPost(DataSet: TDataSet);
begin
 MarketPriceChanged:= True ;
end;

procedure Tdm_marketprice.cds_marketpricegrpBeforePost(DataSet: TDataSet);
begin
 cds_marketpricegrpDateModified.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(date) ;
 cds_marketpricegrpModifiedUser.AsInteger       := ThisUser.UserID ;
// cds_marketpricegrpWEEK_YEAR.AsString
{ sq_getperiods.ParamByName('fdate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(cds_marketpricegrpmdate.AsDateTime) ;
 sq_getperiods.Open ;

 if sq_getperiodsWeek.AsInteger < 10 then
 cds_marketpricegrpWEEK_YEAR.AsString:= sq_getperiodsYear.AsString+'/0'+sq_getperiodsWeek.AsString
 else
 cds_marketpricegrpWEEK_YEAR.AsString:= sq_getperiodsYear.AsString+'/'+sq_getperiodsWeek.AsString ;

 if sq_getperiodsMonth.AsInteger < 10 then
 cds_marketpricegrpMONTH_YEAR.AsString:= sq_getperiodsYear.AsString+'/0'+ sq_getperiodsMonth.AsString
 else
  cds_marketpricegrpMONTH_YEAR.AsString:= sq_getperiodsYear.AsString+'/'+ sq_getperiodsMonth.AsString ;

 sq_getperiods.Close ; }

// mtPrices.IsDataModified
end;

procedure Tdm_marketprice.dsp_SelectPGGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'pricetemplategrp' ;
end;

procedure Tdm_marketprice.cds_AvailPGFilterRecord(DataSet: TDataSet;var Accept: Boolean);
begin
 Accept:= not cds_SelectPG.Locate('ProductGroupNo',DataSet['ProductGroupNo'],[]) ;
end;

procedure Tdm_marketprice.cds_SelectPGAfterInsert(DataSet: TDataSet);
begin
 cds_SelectPGtemplateno.AsInteger       := cds_PriceHdrtemplateno.AsInteger ;
 cds_SelectPGModifieduser.AsInteger     := ThisUser.UserID ;
 cds_SelectPGDatemodified.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(date) ;
 cds_SelectPGAct.AsInteger              := 1 ;
end;

procedure Tdm_marketprice.dsp_SelectProdGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'pricetemplateprod' ; 
end;

procedure Tdm_marketprice.cds_AvailProdFilterRecord(DataSet: TDataSet;var Accept: Boolean);
begin
 Accept:= not cds_SelectProd.Locate('GradeNo',DataSet['GradeNo'],[]) ;
end;

procedure Tdm_marketprice.DataModuleCreate(Sender: TObject);
begin
 cds_LengthGroups.Active:= True ;
 mtLengthFilter.Active:= True ;
 cds_LengthGroups.InsertRecord([0,'Alla längder']);
end;

procedure Tdm_marketprice.mtLengthFilterGroupNoChange(Sender: TField);
begin
 cds_AvailLengths.Active:= False ;
 sq_AvailLengths.SQL.Clear ;

 sq_AvailLengths.SQL.Add('Select PL.ProductLengthNo, PL.ActualLengthMM AS ALMM, PL.NominalLengthFEET AS FOT, PL.ActualLengthINCH AS TUM') ;
 if mtLengthFilterGroupNo.AsInteger = 0 then
 Begin
  sq_AvailLengths.SQL.Add('FROM dbo.ProductLength PL') ;
  sq_AvailLengths.SQL.Add('WHERE PL.Act = 1 AND PL.ActualLengthMM > 0') ;
  sq_AvailLengths.SQL.Add('UNION') ;
  sq_AvailLengths.SQL.Add('Select PL.ProductLengthNo, PL.ActualLengthMM AS ALMM, PL.NominalLengthFEET AS FOT, PL.ActualLengthINCH AS TUM') ;
  sq_AvailLengths.SQL.Add('FROM dbo.ProductLength PL') ;
  sq_AvailLengths.SQL.Add('WHERE PL.Act = 1 AND PL.ProductLengthNo = 453') ;
  sq_AvailLengths.SQL.Add('Order by PL.ActualLengthMM') ;
 End
 else
 Begin
  sq_AvailLengths.SQL.Add('FROM dbo.ProductLengthGroup  PGL') ;
  sq_AvailLengths.SQL.Add('Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo') ;
  sq_AvailLengths.SQL.Add('WHERE PGL.GroupNo = '+mtLengthFilterGroupNo.AsString) ;
  sq_AvailLengths.SQL.Add('AND PL.Act = 1') ;  
  sq_AvailLengths.SQL.Add('Order by PL.ActualLengthMM') ;
 End ;
 cds_AvailLengths.Active:= True ;
end;

procedure Tdm_marketprice.cds_AvailLengthsFilterRecord(DataSet: TDataSet;var Accept: Boolean);
begin
 Accept:= not cds_SelectLengths.Locate('ProductLengthNo',DataSet['ProductLengthNo'],[]) ;
end;

procedure Tdm_marketprice.dsp_SelectLengthsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'pricetemplaterow' ;  
end;

procedure Tdm_marketprice.cds_SelectLengthsAfterInsert(DataSet: TDataSet);
begin
 cds_SelectLengthstemplateno.AsInteger:= cds_PriceHdrtemplateno.AsInteger ;
 cds_SelectLengthsAct.AsInteger       := 1 ;
end;

procedure Tdm_marketprice.cds_SelectProdAfterInsert(DataSet: TDataSet);
begin
 cds_SelectProdtemplateno.AsInteger := cds_PriceHdrtemplateno.AsInteger ;
 cds_SelectProdAct.AsInteger        := 1 ;
end;

procedure Tdm_marketprice.cds_PriceHdrAfterInsert(DataSet: TDataSet);
begin
 cds_PriceHdrtemplateno.AsInteger         := dmsConnector.NextMaxNo('pricetemplategrp') ;
 cds_PriceHdrCurrencyNo.AsInteger         := 10001 ;
 cds_PriceHdrPriceUnitNo.AsInteger        := 4 ;
 cds_PriceHdrDateModified.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(now) ;
 cds_PriceHdrModifiedUser.AsInteger       := ThisUser.UserID ;
 cds_PriceHdrTypeOfPriceList.AsInteger    := 1 ;//
 cds_PriceHdrDefaultPeriod.AsInteger      := 1 ;
end;

procedure Tdm_marketprice.AddZeroLength ; //453
Begin
 With dm_marketprice do
 Begin
  if not cds_SelectLengths.Locate('ProductLengthNo',453,[]) then
  Begin
   cds_SelectLengths.Insert ;
   cds_SelectLengthsProductLengthNo.AsInteger  := 453 ;
//   cds_SelectLengthsALMM.AsFloat               := ADataSet.FieldByName('ALMM').AsFloat ;
//   cds_SelectLengthsFOT.AsFloat                := ADataSet.FieldByName('FOT').AsFloat ;
//   cds_SelectLengthsTUM.AsString               := ADataSet.FieldByName('TUM').AsString ;
   cds_SelectLengths.Post ;
//   if cds_SelectLengths.ChangeCount > 0 then
//   cds_SelectLengths.ApplyUpdates(0) ;
  End ;
 End ;
End ;

procedure Tdm_marketprice.SavePriceTemplateData ;
Begin
 AddZeroLength ; //453

 if cds_PriceHdr.State in [dsEdit, dsInsert] then
 cds_PriceHdr.Post ;
 if cds_PriceHdr.ChangeCount > 0 then
 cds_PriceHdr.ApplyUpdates(0) ;

 if cds_SelectPG.State in [dsEdit, dsInsert] then
 cds_SelectPG.Post ;
 if cds_SelectPG.ChangeCount > 0 then
 cds_SelectPG.ApplyUpdates(0) ;

{ if cds_SelectProd.State in [dsEdit, dsInsert] then
 cds_SelectProd.Post ;
 if cds_SelectProd.ChangeCount > 0 then
 cds_SelectProd.ApplyUpdates(0) ; }

 if cds_SelectLengths.State in [dsEdit, dsInsert] then
 cds_SelectLengths.Post ;
 if cds_SelectLengths.ChangeCount > 0 then
 cds_SelectLengths.ApplyUpdates(0) ;

 if cds_SelectProd.ChangeCount > 0 then
 SaveProductNo ;

End ;

procedure Tdm_marketprice.CancelPriceTemplateData ;
Begin
 if cds_SelectLengths.State in [dsEdit, dsInsert] then
 cds_SelectLengths.Cancel ;
 if cds_SelectLengths.ChangeCount > 0 then
 cds_SelectLengths.CancelUpdates ;

 if cds_SelectProd.State in [dsEdit, dsInsert] then
 cds_SelectProd.Cancel ;
 if cds_SelectProd.ChangeCount > 0 then
 cds_SelectProd.CancelUpdates ;

 if cds_SelectPG.State in [dsEdit, dsInsert] then
 cds_SelectPG.Cancel ;
 if cds_SelectPG.ChangeCount > 0 then
 cds_SelectPG.CancelUpdates ;

 if cds_PriceHdr.State in [dsEdit, dsInsert] then
 cds_PriceHdr.Cancel ;
 if cds_PriceHdr.ChangeCount > 0 then
 cds_PriceHdr.CancelUpdates ;
End ;

//Sparar ProductNo till pricetemplateprod för valida kombinationer av valda ProductGroupNo och GradeNo's  
procedure Tdm_marketprice.SaveProductNo ;
Var ProductNo : Integer ;
Begin
//Delete first in case a grade was removed it will hang in here for ever...
 cds_SaveProd.Active:= False ;
 sq_SaveProd.ParamByName('templateno').AsInteger:= cds_PriceHdrtemplateno.AsInteger ;
 cds_SaveProd.Active:= True ;
 cds_SaveProd.First ;

 While not cds_SaveProd.Eof do
 cds_SaveProd.Delete ;
 if cds_SaveProd.ChangeCount > 0 then
  cds_SaveProd.ApplyUpdates(0) ;

 cds_SelectPG.First ;
 While not cds_SelectPG.Eof do
 Begin
  cds_SelectProd.First ;
  While not cds_SelectProd.Eof do
  Begin
   ProductNo:= GetProductNo ;
   if ProductNo <> -1 then
   Begin
    cds_SaveProd.Insert ;
    cds_SaveProdProductNo.AsInteger     := ProductNo ;
    cds_SaveProdproductGroupno.AsInteger:= cds_SelectPGProductGroupNo.AsInteger ;
    cds_SaveProdAct.AsInteger            := cds_SelectPGAct.AsInteger ;
    cds_SaveProd.Post ;
   End ;//if ProductNo <> -1 then
   cds_SelectProd.Next ;
  End ;//  While not cds_SelectProd.Eof do
  cds_SelectPG.Next ;
 End ;//  While not cds_SelectPG.Eof do
 if cds_SaveProd.ChangeCount > 0 then
  cds_SaveProd.ApplyUpdates(0) ;
 cds_SaveProd.Active:= False ;
End ;

Function Tdm_marketprice.GetProductNo : Integer ;
Begin
 sq_GetProductNo.ParamByName('GradeNo').AsInteger         := cds_SelectProdGradeNo.AsInteger ;
 sq_GetProductNo.ParamByName('ProductGroupNo').AsInteger  := cds_SelectPGProductGroupNo.AsInteger ;
 sq_GetProductNo.Open ;
 if not sq_GetProductNo.Eof then
  Result:= sq_GetProductNoProductNo.AsInteger
   else
    Result:= -1 ;
 sq_GetProductNo.Close ;
End ;

procedure Tdm_marketprice.cds_SaveProdAfterInsert(DataSet: TDataSet);
begin
 cds_SaveProdtemplateno.AsInteger         := cds_PriceHdrtemplateno.AsInteger ;
// cds_SaveProdRandomLengthPrice.AsInteger  := 0 ;
end;

procedure Tdm_marketprice.mtPricesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 if ArrayIndex > 0 then
 Accept := DataSet.Fields.Fields[3].AsInteger = ProductGroupNoArray[ArrayIndex] ;
end;

procedure Tdm_marketprice.cds_PriceHdrBeforePost(DataSet: TDataSet);
begin
 if DoesPriceListNameExist then
 Begin
  ShowMessage('Namnet är inte unikt') ;
  Abort ;
 End ;

 if cds_PriceHdrPriceListName.IsNull then
 Begin
  ShowMessage('Namn saknas') ;
  Abort ;
 End ;

 if Length(cds_PriceHdrPriceListName.AsString) = 0 then
 Begin
  ShowMessage('Namn saknas') ;
  Abort ;
 End ;
end;

procedure Tdm_marketprice.cds_PriceHdrReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure Tdm_marketprice.cds_SelectPGBeforePost(DataSet: TDataSet);
begin
 cds_SelectPGModifieduser.AsInteger     := ThisUser.UserID ;
 cds_SelectPGDatemodified.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(date) ;
end;

procedure Tdm_marketprice.cds_VerkPriceAdjBeforePost(DataSet: TDataSet);
begin
 cds_VerkPriceAdjDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(date) ;
 cds_VerkPriceAdjCreatedUser.AsInteger      := ThisUser.UserID ;
end;

procedure Tdm_marketprice.cds_marketpricegrpValidFromChange(
  Sender: TField);
var Year, Month, Day: Word;
    StartDate, EndDate : TDateTime ;
begin
 StartDate:= SQLTimeStampToDateTime(cds_marketpricegrpValidFrom.AsSQLTimeStamp) ;
 DecodeDate(StartDate, Year, Month, Day);
 StartDate:= StartOfTheMonth(StartDate) ;
 EndDate:= StartDate ;

 Case cds_PriceHdrDefaultPeriod.AsInteger of
  1 : Begin
       EndDate:= EndOfTheMonth(StartDate) ;
      End ;
  2 : Begin
       EndDate:= IncMonth(StartDate, 2) ;
       EndDate:= EndOfTheMonth(EndDate) ;
      End ;
  3 : Begin
       EndDate:= IncMonth(StartDate, 5) ;
       EndDate:= EndOfTheMonth(EndDate) ;
      End ;
 End ;

 cds_marketpricegrpValidTo.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(EndDate) ;
end;

procedure Tdm_marketprice.cds_marketpricegrpAfterScroll(DataSet: TDataSet);
begin
{ if cds_marketpricegrpStatus.AsInteger = 1 then
 Begin
  cds_marketpricegrpValidFrom.ReadOnly:= True ;
  cds_marketpricegrpValidTo.ReadOnly:= True ;
 End
 else
 Begin
  cds_marketpricegrpValidFrom.ReadOnly:= False ;
  cds_marketpricegrpValidTo.ReadOnly:= False ;
 End ; }
end;

procedure Tdm_marketprice.cds_marketpricegrpStatusChange(Sender: TField);
begin
 if cds_marketpricegrpStatus.AsInteger = 0 then
  mtPrices.ReadOnly:= False
   else
    mtPrices.ReadOnly:= True ; 
end;

procedure Tdm_marketprice.cds_vwcostAfterInsert(DataSet: TDataSet);
begin
 cds_vwcostDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(now) ;
 cds_vwcostModifiedUser.AsInteger     := ThisUser.UserID ;
end;

procedure Tdm_marketprice.cds_vwcostBeforePost(DataSet: TDataSet);
begin
 cds_vwcostDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(now) ;
 cds_vwcostModifiedUser.AsInteger     := ThisUser.UserID ;
end;


End.
