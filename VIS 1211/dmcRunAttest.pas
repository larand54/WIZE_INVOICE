unit dmcRunAttest;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, Dialogs, SqlTimSt ;

type
  TdmRunAttest = class(TDataModule)
    sq_AttestHdr: TSQLQuery;
    sq_AttestRows: TSQLQuery;
    dsp_AttestHdr: TDataSetProvider;
    dsp_AttestRows: TDataSetProvider;
    cds_AttestHdr: TClientDataSet;
    cds_AttestRows: TClientDataSet;
    ds_AttestHdr: TDataSource;
    sp_AttestRows: TDataSource;
    sq_AttestHdrAttestNo: TIntegerField;
    sq_AttestHdrSupplierNo: TIntegerField;
    cds_AttestHdrAttestNo: TIntegerField;
    cds_AttestHdrSupplierNo: TIntegerField;
    sq_AttestRowsAttestNo: TIntegerField;
    sq_AttestRowsRunNo: TStringField;
    sq_AttestRowsProductNo: TIntegerField;
    sq_AttestRowsProductDesc: TStringField;
    sq_AttestRowsAM3: TFloatField;
    sq_AttestRowsNM3: TFloatField;
    sq_AttestRowsPcs: TIntegerField;
    sq_AttestRowsPkgs: TIntegerField;
    sq_AttestRowsPrice: TFloatField;
    sq_AttestRowsRowValue: TFloatField;
    sq_AttestRowsRegPointName: TStringField;
    sq_AttestRowsRunStartDate: TSQLTimeStampField;
    sq_AttestRowsRunEndDate: TSQLTimeStampField;
    sq_AttestRowsDateCreated: TSQLTimeStampField;
    sq_AttestRowsCreatedUser: TIntegerField;
    cds_AttestRowsAttestNo: TIntegerField;
    cds_AttestRowsRunNo: TStringField;
    cds_AttestRowsProductNo: TIntegerField;
    cds_AttestRowsProductDesc: TStringField;
    cds_AttestRowsAM3: TFloatField;
    cds_AttestRowsNM3: TFloatField;
    cds_AttestRowsPcs: TIntegerField;
    cds_AttestRowsPkgs: TIntegerField;
    cds_AttestRowsPrice: TFloatField;
    cds_AttestRowsRowValue: TFloatField;
    cds_AttestRowsRegPointName: TStringField;
    cds_AttestRowsRunStartDate: TSQLTimeStampField;
    cds_AttestRowsRunEndDate: TSQLTimeStampField;
    cds_AttestRowsDateCreated: TSQLTimeStampField;
    cds_AttestRowsCreatedUser: TIntegerField;
    sq_Runs: TSQLQuery;
    dsp_Runs: TDataSetProvider;
    cds_Runs: TClientDataSet;
    ds_Runs: TDataSource;
    sq_RunDtl: TSQLQuery;
    dsp_RunDtl: TDataSetProvider;
    cds_RunDtl: TClientDataSet;
    ds_RunDtl: TDataSource;
    sq_AttestHdrStatus: TIntegerField;
    cds_AttestHdrStatus: TIntegerField;
    sq_AttestRowsRegPointNo: TIntegerField;
    cds_AttestRowsRegPointNo: TIntegerField;
    cds_RunsRegPointNo: TIntegerField;
    cds_RunsSupplierNo: TIntegerField;
    cds_RunsRunNo: TIntegerField;
    cds_RunsMaxDatum: TSQLTimeStampField;
    cds_RunsMinDatum: TSQLTimeStampField;
    cds_RunsVerk: TStringField;
    cds_RunsMtpunkt: TStringField;
    cds_RunsAM3: TFloatField;
    cds_RunsNM3: TFloatField;
    cds_RunsStyck: TIntegerField;
    cds_RunsPaket: TIntegerField;
    cds_RunDtlRunNo: TIntegerField;
    cds_RunDtlProductNo: TIntegerField;
    cds_RunDtlProdukt: TStringField;
    cds_RunDtlAM3: TFloatField;
    cds_RunDtlNM3: TFloatField;
    cds_RunDtlStyck: TIntegerField;
    cds_RunDtlPaket: TIntegerField;
    cds_RunDtlPris: TFloatField;
    cds_RunDtlRowValue: TFloatField;
    cds_RunDtlMtpunkt: TStringField;
    cds_RunDtlMinDatum: TSQLTimeStampField;
    cds_RunDtlMaxDatum: TSQLTimeStampField;
    cds_RunDtlSupplierNo: TIntegerField;
    sq_InsARRows: TSQLQuery;
    cds_RunDtlRegPointNo: TIntegerField;
    sq_AttestHdrAM3: TFloatField;
    sq_AttestHdrNM3: TFloatField;
    sq_AttestHdrStyck: TIntegerField;
    sq_AttestHdrPaket: TIntegerField;
    sq_AttestHdrVrde: TFloatField;
    cds_AttestHdrAM3: TFloatField;
    cds_AttestHdrNM3: TFloatField;
    cds_AttestHdrStyck: TIntegerField;
    cds_AttestHdrPaket: TIntegerField;
    cds_AttestHdrVrde: TFloatField;
    sq_AttestHdrDateCreated: TSQLTimeStampField;
    sq_AttestHdrCreatedUser: TIntegerField;
    sq_AttestHdrModifiedUser: TIntegerField;
    sq_AttestHdrDateModified: TSQLTimeStampField;
    cds_AttestHdrDateCreated: TSQLTimeStampField;
    cds_AttestHdrCreatedUser: TIntegerField;
    cds_AttestHdrModifiedUser: TIntegerField;
    cds_AttestHdrDateModified: TSQLTimeStampField;
    sq_GetAttestNo: TSQLQuery;
    sq_GetAttestNoAttestNo: TIntegerField;
    procedure cds_AttestHdrAfterInsert(DataSet: TDataSet);
    procedure dsp_AttestHdrGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InsertAttestRows(const AttestNo : Integer) ;
    function  CheckPriceExist : Boolean ;
    Function  GetAttestNo(const SupplierNo, Status : Integer) : Integer ;
  end;

var
  dmRunAttest: TdmRunAttest;

implementation

uses dmsDataConn, VidaUser , dmsVidaSystem;

{$R *.dfm}

procedure TdmRunAttest.cds_AttestHdrAfterInsert(DataSet: TDataSet);
begin
 cds_AttestHdrAttestNo.AsInteger          := dmsConnector.NextMaxNo('ARHdr') ;
 cds_AttestHdrDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_AttestHdrCreatedUser.AsInteger       := ThisUser.UserID;
 cds_AttestHdrDateModified.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
 cds_AttestHdrModifiedUser.AsInteger      := ThisUser.UserID;
end;

procedure TdmRunAttest.InsertAttestRows(const AttestNo : Integer) ;
Begin
 Try
 sq_InsARRows.ParamByName('AttestNo').AsInteger         := AttestNo ;
 sq_InsARRows.ParamByName('UserID').AsInteger           := ThisUser.USerID ;
 sq_InsARRows.ParamByName('RunNo').AsInteger            := cds_RunsRunNo.AsInteger ;
 sq_InsARRows.ParamByName('SupplierNo').AsInteger       := cds_RunsSupplierNo.AsInteger ;
 sq_InsARRows.ParamByName('RegPointNo').AsInteger       := cds_RunsRegPointNo.AsInteger ;
 sq_InsARRows.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

End ;

procedure TdmRunAttest.dsp_AttestHdrGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName  := 'ARHdr' ;
end;

function TdmRunAttest.CheckPriceExist : Boolean ;
Begin
 Result := True ;
 cds_RunDtl.DisableControls ;
 Try
 cds_RunDtl.First ;
 While not cds_RunDtl.Eof do
 Begin
  if (cds_RunDtlPris.AsFloat = 0) or (cds_RunDtlPris.IsNull) then
   Result:= False ;
  cds_RunDtl.Next ;
 End ;
 Finally
  cds_RunDtl.EnableControls ;
 End ;
End ;

Function TdmRunAttest.GetAttestNo(const SupplierNo, Status : Integer) : Integer ;
Begin
 sq_GetAttestNo.ParamByName('SupplierNo').AsInteger := SupplierNo ;
 sq_GetAttestNo.ParamByName('Status').AsInteger     := Status ;
 sq_GetAttestNo.Open ;
 Try
 if not sq_GetAttestNo.Eof then
  Result:= sq_GetAttestNoAttestNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetAttestNo.Close ;
 End ;
End ;

end.
