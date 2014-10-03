unit dmsPkgByPkgType;

interface

uses
  Classes,
  SysUtils,
Controls,
Forms,
  VidaType, FMTBcd, Provider, DB, SqlExpr, kbmMemTable, DBClient, Dialogs, SqlTimSt ;


type
  Tdm_PkgByPkgType = class(TDataModule)
    sp_NewPackageNo: TSQLStoredProc;
    mtPackages: TkbmMemTable;
    dsmtPackages: TDataSource;
    mtDupPkgNo: TkbmMemTable;
    mtDupPkgNoPackageNo: TIntegerField;
    sp_PkgInfo: TSQLStoredProc;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    mtDupPkgNoSupplierCode: TStringField;
    ds_mtDupPkgNo: TDataSource;
    sq_PkgCodes: TSQLQuery;
    dsp_PkgCodes: TDataSetProvider;
    cds_PkgCodes: TClientDataSet;
    ds_PkgCodes: TDataSource;
    sq_PC: TSQLQuery;
    dsp_PC: TDataSetProvider;
    cds_PC: TClientDataSet;
    ds_PC: TDataSource;
    cds_PCPackageCodeNo: TStringField;
    cds_PCLengthDescription: TStringField;
    cds_PCPackageTypeNo: TIntegerField;
    cds_PkgCodesPackageMainCode: TStringField;
    cds_PkgCodesPackageCodeNo: TStringField;
    cds_PkgCodesLengthDescription: TStringField;
    cds_PkgCodesCATEGORY: TStringField;
    cds_PkgCodesPRODUCT: TStringField;
    cds_PkgCodesA_LE: TFloatField;
    cds_PkgCodesN_LE: TFloatField;
    cds_PkgCodesFEET_LE: TFloatField;
    cds_PkgCodesINCH_LE: TStringField;
    cds_PkgCodesPCS: TIntegerField;
    cds_PkgCodesAM3: TFloatField;
    cds_PkgCodesNM3: TFloatField;
    cds_PkgCodesMFBM: TFloatField;
    cds_PkgCodesGRADESTAMP: TStringField;
    cds_PkgCodesBARCODE: TStringField;
    cds_PkgCodesATHICK: TFloatField;
    cds_PkgCodesAWIDTH: TFloatField;
    cds_PkgCodesNTHICK: TFloatField;
    cds_PkgCodesNWIDTH: TFloatField;
    cds_PkgCodesPackageTypeNo: TIntegerField;
    cds_PkgCodesProductLengthNo: TIntegerField;
    cds_PkgCodesProductGroupNo: TIntegerField;
    cds_PkgCodesProductNo: TIntegerField;
    cds_PkgCodesINCHTHICK: TStringField;
    cds_PkgCodesINCHWIDTH: TStringField;
    cds_PkgCodesBarCodeID: TIntegerField;
    cds_PkgCodesGradeStampNo: TIntegerField;
    mtPackagesPackageNo: TIntegerField;
    mtPackagesSupplierCode: TStringField;
    mtPackagesProduct: TStringField;
    mtPackagesA_LE: TFloatField;
    mtPackagesGRADESTAMP: TStringField;
    mtPackagesBARCODE: TStringField;
    mtPackagesPackageTypeNo: TIntegerField;
    mtPackagesAM3: TFloatField;
    mtPackagesNM3: TFloatField;
    mtPackagesPCS: TIntegerField;
    mtPackagesMFBM: TFloatField;
    mtPackagesPKGCODE: TStringField;
    mtPackagesRecID: TIntegerField;
    sp_OnePackageNo: TSQLStoredProc;
    procedure mtPackagesAfterPost(DataSet: TDataSet);
    procedure mtPackagesAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_ProdLengthReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_ProductGroupLengthReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure mtPackagesBeforeDelete(DataSet: TDataSet);
    procedure mtPackagesPackageTypeNoChange(Sender: TField);

  private
    y, GlobalCounter: Integer ;
    { Private declarations }
  public
    PACKAGETYPENO,
    RoleType : Integer ;
    InputOption : Integer ;
    SupplierCode : String3 ;
    SupplierNo : Integer ;
    InventoryOwnerNo : Integer ;
    LogicalTransferInventoryNo: Integer ;

    function  PackageNumberExists(PkgNo : Integer; SupplierCode : String3) : Boolean;
    function  SavePackages2(const ProdDate : TDateTime;const OwnerNo, ProducerNo, RegistrationPointNo, LogicalInventoryPointNo, RunNo : Integer) : Boolean ;
    function  Pkg_Info(PkgNo: Integer;SuppCode : String) : String ;
  end;

var
  dm_PkgByPkgType: Tdm_PkgByPkgType;
  PkgArray : Array[1..12] of Variant ;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst,
  VidaUser,
  VidaUtils, recerror, dmsVidaSystem, UnitPkgsByPktType ;

{ TDataModule1 }

function Tdm_PkgByPkgType.PackageNumberExists(PkgNo: Integer; SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

function Tdm_PkgByPkgType.SavePackages2(const ProdDate : TDateTime;const OwnerNo, ProducerNo, RegistrationPointNo, LogicalInventoryPointNo, RunNo : Integer) : Boolean ;
Var
    Save_Cursor:TCursor;
    OldIndexName : String ;
var
  TransactionNo : LongWord;
//  PackagetypeNo  : Integer ;

  function SavePackage : Integer ;
  begin
    Try
    sp_NewPackageNo.ParamByName('PackageNo'              ).AsInteger  := mtPackagesPACKAGENO.AsInteger ;
    sp_NewPackageNo.ParamByName('PackageTypeNo'          ).AsInteger  := mtPackagesPACKAGETYPENO.AsInteger ;
    sp_NewPackageNo.ParamByName('SupplierCode'           ).AsString   := Trim(mtPackagesSUPPLIERCODE.AsString);
    sp_NewPackageNo.ParamByName('LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;//var kommer den från ? OnePkg.Header.LogInvPointNo;
    sp_NewPackageNo.ParamByName('SupplierNo'             ).AsInteger  := SupplierNo;
    sp_NewPackageNo.ParamByName('RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ;
    sp_NewPackageNo.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewPackageNo.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(ProdDate) ;

    sp_NewPackageNo.ParamByName('OwnerNo'                ).AsInteger  := OwnerNo ;
    sp_NewPackageNo.ParamByName('ProducerNo'             ).AsInteger  := SupplierNo;
    sp_NewPackageNo.ParamByName('RunNo'                  ).AsInteger  := RunNo;
    Result:= sp_NewPackageNo.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  end;

//SavePackages2 MAIN PROC START
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 OldIndexName := mtPackages.IndexName ;
 mtPackages.AfterPost:= NIL ;
 Try
  Result:= False ;
  TransactionNo := dmsConnector.StartTransaction;
  try
   mtPackages.First ;
   While not mtPackages.Eof do
    Begin
     if mtPackagesPACKAGETYPENO.AsInteger <> 0 then
       SavePackage ;
      mtPackages.Next ;
    end;
    dmsConnector.Commit(TransactionNo);
    Result:= True ;
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
//    raise;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  mtPackages.AfterPost:= mtPackagesAfterPost ;
 End ;
end;

function Tdm_PkgByPkgType.Pkg_Info(PkgNo: Integer;SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('PackageNo').AsInteger:= PkgNo ;
 sp_PkgInfo.ParamByName('SupplierCode').AsString:= SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;


procedure Tdm_PkgByPkgType.mtPackagesAfterPost(DataSet: TDataSet);
Var x : Integer ;
   SavePlace: TBookmark;
begin

  For x:= 1 to mtPackages.Fields.Count - 1 do
   PkgArray[x]:= mtPackages.Fields[x].AsVariant ;

  SavePlace:= mtPackages.GetBookmark ;
  Try
  mtDupPkgNo.Active:= False ;
  mtDupPkgNo.Active:= True ;
  mtPackages.First ;
  While not mtPackages.Eof do
  Begin
  mtDupPkgNo.Insert;
 Try
  mtDupPkgNoPackageNo.AsInteger:= mtPackagesPACKAGENO.AsInteger ;
  mtDupPkgNoSupplierCode.AsString:= mtPackagesSUPPLIERCODE.AsString ;
  mtDupPkgNo.Post ;
  Except
   on eDatabaseError do
   Begin
    Raise ;
   End ;
  End ;
  mtPackages.Next ;
  End ; //while
  mtPackages.GotoBookmark(SavePlace);

 Finally
  mtPackages.FreeBookmark(SavePlace);
 End ;
end;


procedure Tdm_PkgByPkgType.mtPackagesAfterInsert(DataSet: TDataSet);
Var x : Integer ;
begin

 With dm_PkgByPkgType do
 Begin


 Try

   if mtPackages.RecordCount > 0 then
   For x:= 1 to mtPackages.Fields.Count - 1 do
   mtPackages.Fields[x].AsVariant:= PkgArray[x] ;

   mtPackagesRecId.AsInteger:=  GlobalCounter ;
   mtPackagesSupplierCode.AsString:= Trim(SupplierCode) ;
  Finally
   GlobalCounter:= Succ(GlobalCounter) ;
  End ;
 End ;

end;


procedure Tdm_PkgByPkgType.DataModuleCreate(Sender: TObject);
//Var x : Integer ;
begin

 GlobalCounter:= 1 ;
 y := 0 ;
 InputOption:= 0 ;

 mtDupPkgNo.Active:= True ;
end;

procedure Tdm_PkgByPkgType.cds_ProdLengthReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure Tdm_PkgByPkgType.cds_ProductGroupLengthReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure Tdm_PkgByPkgType.mtPackagesBeforeDelete(DataSet: TDataSet);
begin
  if mtDupPkgNo.FindKey([mtPackagesPACKAGENO.AsInteger, Trim(mtPackagesSUPPLIERCODE.AsString)]) then
  mtDupPkgNo.Delete ;
end;


procedure Tdm_PkgByPkgType.mtPackagesPackageTypeNoChange(Sender: TField);
begin
 With dm_PkgByPkgType do
 Begin
  cds_PkgCodes.Active:= False ; 
  sq_PkgCodes.ParamByName('PackageTypeNo').AsInteger:= mtPackagesPackageTypeNo.AsInteger ;
  cds_PkgCodes.Active:= True ;
  if cds_PkgCodes.RecordCount > 0 then
  Begin
   mtPackagesProduct.AsString     := cds_PkgCodesPRODUCT.AsString ;
   mtPackagesA_LE.AsFloat         := cds_PkgCodesA_LE.AsFloat ;
   mtPackagesGRADESTAMP.AsString  := cds_PkgCodesGRADESTAMP.AsString ;
   mtPackagesBARCODE.AsString     := cds_PkgCodesBARCODE.AsString ;
   mtPackagesAM3.AsFloat          := cds_PkgCodesAM3.AsFloat ;
   mtPackagesNM3.AsFloat          := cds_PkgCodesNM3.AsFloat ;
   mtPackagesPCS.AsInteger        := cds_PkgCodesPCS.AsInteger ;
   mtPackagesMFBM.AsFloat         := cds_PkgCodesMFBM.AsFloat ;
  End ;
 End ;
end;

end.
