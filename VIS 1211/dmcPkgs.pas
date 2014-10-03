unit dmcPkgs;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, kbmMemTable, SqlTimSt, Dialogs,
  VidaType, Controls, Forms ;

type

  TdmPkgs = class(TDataModule)
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesPACKAGETYPENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesM3_NET: TFloatField;
    mtLoadPackagesPCS: TIntegerField;
    mtLoadPackagesM3_NOM: TFloatField;
    mtLoadPackagesKVM: TFloatField;
    mtLoadPackagesLOPM: TFloatField;
    ds_LoadPackages: TDataSource;
    mtLoadPackagesPRODUCT: TStringField;
    mtLoadPackagesProductNo: TIntegerField;
    sp_DeletePackage: TSQLStoredProc;
    mtLoadPackagesINVENTORY: TStringField;
    mtLoadPackagesPCS_PER_LENGTH: TStringField;
    mtLoadPackagesOWNER: TStringField;
    mtLoadPackagesOWNERNO: TIntegerField;
    mtLoadPackagesLOG_INVENTORY_NO: TIntegerField;
    mtLoadPackagesBAR_CODE: TStringField;
    mtLoadPackagesBARCODE_ID: TIntegerField;
    mtLoadPackagesGRADE_STAMP: TStringField;
    mtLoadPackagesGRADESTAMPNO: TIntegerField;
    mtPackages: TkbmMemTable;
    dsmtPackages: TDataSource;
    sq_ProductLengths: TSQLQuery;
    sq_ProductLengthsActualLengthMM: TFloatField;
    mtProdSpecificLengths: TkbmMemTable;
    mtProdSpecificLengthsProductGroupNo: TIntegerField;
    mtProdSpecificLengthsProductLengthNo: TIntegerField;
    sp_ProdLeng: TSQLStoredProc;
    sp_ProdLengProductLengthNo: TIntegerField;
    mtStandardLengths: TkbmMemTable;
    mtStandardLengthsProductLengthNo: TIntegerField;
    sp_StandardLengths: TSQLStoredProc;
    sp_StandardLengthsProductLengthNo: TIntegerField;
    sq_OnePkgDetailData: TSQLQuery;
    sq_OnePkgDetailDataPRODUCT: TStringField;
    sq_OnePkgDetailDataPACKAGENO: TIntegerField;
    sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPP_CODE: TStringField;
    sq_OnePkgDetailDataM3_NET: TFloatField;
    sq_OnePkgDetailDataPCS: TIntegerField;
    sq_OnePkgDetailDataM3_NOM: TFloatField;
    sq_OnePkgDetailDataKVM: TFloatField;
    sq_OnePkgDetailDataLOPM: TFloatField;
    sq_OnePkgDetailDataPRODUCTNO: TIntegerField;
    sq_OnePkgDetailDataINVENTORY: TStringField;
    sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField;
    sq_OnePkgDetailDataOWNER: TStringField;
    sq_OnePkgDetailDataOWNERNO: TIntegerField;
    sq_OnePkgDetailDataLOG_INVENTORY_NO: TIntegerField;
    sq_OnePkgDetailDataBAR_CODE: TStringField;
    sq_OnePkgDetailDataBARCODE_ID: TIntegerField;
    sq_OnePkgDetailDataGRADE_STAMP: TStringField;
    sq_OnePkgDetailDataGRADESTAMPNO: TIntegerField;
    sp_PackageTypeDetail: TSQLStoredProc;
    sp_NewPackageType: TSQLStoredProc;
    sp_PackageTypes: TSQLStoredProc;
    sp_NewPackageDetail: TSQLStoredProc;
    sp_PackageTotals: TSQLStoredProc;
    sp_Populate_One_PkgTypeLengths: TSQLStoredProc;
    sp_PkgInfo: TSQLStoredProc;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    mtLoadPackagesACTTHICK: TFloatField;
    mtLoadPackagesACTWIDTH: TFloatField;
    mtLoadPackagesNOMTHICK: TFloatField;
    mtLoadPackagesNOMWIDTH: TFloatField;
    mtLoadPackagesSUPPLIERNO: TIntegerField;
    sq_OnePkgDetailDataSUPPLIERNO: TIntegerField;
    sp_ChangePkg: TSQLStoredProc;
    mtLoadPackagesOld_PackageTypeNo: TIntegerField;
    sq_OnePkgDetailDataOLD_PACKAGETYPENO: TIntegerField;
    sq_GetPkgsByLONo: TSQLQuery;
    sq_GetPkgsByLONoPRODUCT: TStringField;
    sq_GetPkgsByLONoPACKAGENO: TIntegerField;
    sq_GetPkgsByLONoPACKAGETYPENO: TIntegerField;
    sq_GetPkgsByLONoSUPP_CODE: TStringField;
    sq_GetPkgsByLONoM3_NET: TFloatField;
    sq_GetPkgsByLONoPCS: TIntegerField;
    sq_GetPkgsByLONoM3_NOM: TFloatField;
    sq_GetPkgsByLONoKVM: TFloatField;
    sq_GetPkgsByLONoLOPM: TFloatField;
    sq_GetPkgsByLONoPRODUCTNO: TIntegerField;
    sq_GetPkgsByLONoINVENTORY: TStringField;
    sq_GetPkgsByLONoPCS_PER_LENGTH: TStringField;
    sq_GetPkgsByLONoOWNER: TStringField;
    sq_GetPkgsByLONoOWNERNO: TIntegerField;
    sq_GetPkgsByLONoLOG_INVENTORY_NO: TIntegerField;
    sq_GetPkgsByLONoBAR_CODE: TStringField;
    sq_GetPkgsByLONoBARCODE_ID: TIntegerField;
    sq_GetPkgsByLONoGRADE_STAMP: TStringField;
    sq_GetPkgsByLONoGRADESTAMPNO: TIntegerField;
    sq_GetPkgsByLONoSUPPLIERNO: TIntegerField;
    sq_GetPkgsByLONoOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkg: TSQLQuery;
    sq_OneUniquePkgPRODUCT: TStringField;
    sq_OneUniquePkgPACKAGENO: TIntegerField;
    sq_OneUniquePkgPACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgSUPP_CODE: TStringField;
    sq_OneUniquePkgM3_NET: TFloatField;
    sq_OneUniquePkgPCS: TIntegerField;
    sq_OneUniquePkgM3_NOM: TFloatField;
    sq_OneUniquePkgKVM: TFloatField;
    sq_OneUniquePkgLOPM: TFloatField;
    sq_OneUniquePkgPRODUCTNO: TIntegerField;
    sq_OneUniquePkgINVENTORY: TStringField;
    sq_OneUniquePkgPCS_PER_LENGTH: TStringField;
    sq_OneUniquePkgOWNER: TStringField;
    sq_OneUniquePkgOWNERNO: TIntegerField;
    sq_OneUniquePkgLOG_INVENTORY_NO: TIntegerField;
    sq_OneUniquePkgBAR_CODE: TStringField;
    sq_OneUniquePkgBARCODE_ID: TIntegerField;
    sq_OneUniquePkgGRADE_STAMP: TStringField;
    sq_OneUniquePkgGRADESTAMPNO: TIntegerField;
    sq_OneUniquePkgSUPPLIERNO: TIntegerField;
    sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField;
    sp_RemovePackageFromInventory: TSQLStoredProc;
    mtLoadPackagesROWNO: TIntegerField;
    sq_Prod_In_LO: TSQLQuery;
    dsp_Prod_In_LO: TDataSetProvider;
    cds_Prod_In_LO: TClientDataSet;
    ds_Prod_In_LO: TDataSource;
    cds_Prod_In_LOPRODUCT: TStringField;
    cds_Prod_In_LOPRODUCTNO: TIntegerField;
    sp_Del_PkgProd: TSQLStoredProc;
    sp_updateFelReg: TSQLStoredProc;
    sp_MovePkg: TSQLStoredProc;
    sq_PkgInLoad: TSQLQuery;
    mtLoadPackagesStatus: TIntegerField;
    mtLoadPackagesStatusText: TStringField;
    sq_PkgInLoadLastNr: TIntegerField;
    sq_PkgInLoadLO: TIntegerField;
    sp_PaRegPaket: TSQLStoredProc;
    sq_OnePkg: TSQLQuery;
    sq_OnePkgPRODUCT: TStringField;
    sq_OnePkgPACKAGENO: TIntegerField;
    sq_OnePkgPACKAGETYPENO: TIntegerField;
    sq_OnePkgSUPP_CODE: TStringField;
    sq_OnePkgM3_NET: TFloatField;
    sq_OnePkgPCS: TIntegerField;
    sq_OnePkgM3_NOM: TFloatField;
    sq_OnePkgKVM: TFloatField;
    sq_OnePkgLOPM: TFloatField;
    sq_OnePkgPRODUCTNO: TIntegerField;
    sq_OnePkgINVENTORY: TStringField;
    sq_OnePkgONSTICKS: TIntegerField;
    sq_OnePkgPCS_PER_LENGTH: TStringField;
    sq_OnePkgOWNER: TStringField;
    sq_OnePkgOWNERNO: TIntegerField;
    sq_OnePkgLOG_INVENTORY_NO: TIntegerField;
    sq_OnePkgBAR_CODE: TStringField;
    sq_OnePkgBARCODE_ID: TIntegerField;
    sq_OnePkgGRADE_STAMP: TStringField;
    sq_OnePkgGRADESTAMPNO: TIntegerField;
    sq_OnePkgPKG_HEIGHT: TIntegerField;
    sq_OnePkgPKGWIDTH: TIntegerField;
    sq_OnePkgMINI_BUNDLE: TIntegerField;
    sq_OnePkgSHRINK_WRAP: TIntegerField;
    sq_OnePkgWRAP_TYPE: TStringField;
    sq_OnePkgWRAPTYPENO: TIntegerField;
    sq_OnePkgSUPPLIERNO: TIntegerField;
    sq_OnePkgOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgPIP: TIntegerField;
    mtLoadPackagesPIP: TIntegerField;
    sp_changePkgInventering: TSQLStoredProc;
    sp_OnePackageNo: TSQLStoredProc;
    sq_PkgNoAvail: TSQLQuery;
    sq_PkgNoAvailPackageNo: TIntegerField;
    sq_PkgNoAvailSupplierCode: TStringField;
    sq_PkgNoAvailPackageTypeNo: TIntegerField;
    sp_ExtMovePkg: TSQLStoredProc;
    mtLoadPackagesSurfacingNo: TIntegerField;
    sq_OneUniquePkgSurfacingNo: TIntegerField;
    sq_OnePkgDetailDataSurfacingNo: TIntegerField;
    sq_GetPkgsByLONoSurfacingNo: TIntegerField;
    sq_PkgAvReg: TSQLQuery;
    sq_PkgAvRegRegPointName: TStringField;
    sq_PkgAvRegProductionDate: TSQLTimeStampField;
    mtLoadPackagesInvNr: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforePost(DataSet: TDataSet);
    procedure mtLoadPackagesAfterInsert(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
   procedure PrepareLocalPkgTable ;
   function  LengthWHERE_II : String ;
   Procedure InsertProductGroupSpecificLengths(const ProductGroupNo : Integer) ;
   function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
   function  PkgExistInLoad : Boolean ;
   function  GetPackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
   function  Get_Me_A_PackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
   function  PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
  public
    { Public declarations }
    ROWNO : Integer ;
    RoleType : Integer ;
    fGradeStampNo, fBarCodeID : Integer ;
    PcsPerLengthArray : Array[0..300] of Integer ; //to copy no of pcs to new row
//    ActualLengthMMArray : Array[0..300] of Double ;
//    NominalLengthMMArray : Array[0..300] of Double ;

    fRegistrationPointNo : Integer ;
    InputOption : Integer ;
    SupplierCode : String3 ;
    SupplierNo : Integer ;
    InventoryOwnerNo : Integer ;
    fLogicalInventoryNo: Integer ;
    InventoryNo : Integer ;

   GlobalLoadDetailNo : Integer ;
   fProductNo, fProductGroupNo : Integer ;
   procedure MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
   function  DeletePackagesFromSystem (const RegistrationPointNo : Integer) : Boolean ;
   function  RemovePkgsFromInventory (const MatPunktAgareNo, RegistrationPointNo : Integer;const WhenCreated : TDateTime;Const RunNo : Integer) : Boolean ;
   procedure SummarizePkg ;
   function  FlyttaPaket(const RegistrationPointNo, LogicalInventoryPointNo : Integer) : Boolean ;
   function  ExtFlyttaPaket(const RegistrationPointNo, NewLogicalInventoryPointNo, ToOwnerNo : Integer) : Boolean ;
   function  SaveFelRegPkgs(Const MatPunktAgareNo, LogicalInventoryPointNo, OwnerNo, RegistrationPointNo, RunNo: Integer;
                const WhenCreated : TDateTime) : Boolean ;
   function  SavePackages(const MatPunktAgareNo, LogicalInventoryPointNo, OwnerNo, RegistrationPointNo: Integer;
                const WhenCreated : TDateTime) : Boolean ;
   procedure LoadGroupLengths(const GroupNo : Integer);
   procedure MakeLengthQuery_II ;
   function  PaRegistreraPackage (const MatPunktAgareNo, RegistrationPointNo : Integer; const WhenCreated : TDateTime) : Boolean ;

   function  GetAvailablePkgNos (const OwnerNo, PackageTypeNo, LogicalInventoryPointNo, NoOfPkgs : Integer) : Boolean ;
   function  IsPkgAvregistrerat (const PackageNo : Integer; const SupplierCode : String) : String ;
  end;

var
  dmPkgs: TdmPkgs;

implementation

uses dmsDataConn, VidaConst, VidaUser, recerror, dmsVidaContact, dmsVidaSystem ;

{$R *.dfm}

function TdmPkgs.IsPkgAvregistrerat (const PackageNo : Integer; const SupplierCode : String) : String ;
Begin
 sq_PkgAvReg.ParamByName('PackageNo').AsInteger   := PackageNo ;
 sq_PkgAvReg.ParamByName('SupplierCode').AsString := SupplierCode ;
 sq_PkgAvReg.Open ;
 Try
  if not sq_PkgAvReg.Eof then
   Result:= sq_PkgAvRegRegPointName.AsString+' den '+SQLTimeStampToStr('yyyymmdd',sq_PkgAvRegProductionDate.AsSQLTimeStamp) 
    else
     Result:= 'NO' ;
 Finally
  sq_PkgAvReg.Close ;
 End ;
End ;

procedure TdmPkgs.DataModuleCreate(Sender: TObject);
begin
 GlobalLoadDetailNo := 1 ;
 ROWNO:= 1 ;
end;

procedure TdmPkgs.mtPackagesBeforePost(DataSet: TDataSet);
begin
 SummarizePkg ;
end;

procedure TdmPkgs.SummarizePkg ;
var x : Integer ;
begin
  if mtpackages.State <> dsBrowse then
  Begin
//PCS
    mtpackages.Fields[1].AsInteger:= 0 ;

    For x:= 2 to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[1].AsInteger:= mtpackages.Fields[1].AsInteger +
    mtpackages.Fields[x].AsInteger ;

  End ;
end;

//for package entry without LO
procedure TdmPkgs.MakeLengthQuery_II ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
// sq_ProductLengths.SQL.Add('PL.ActualLengthINCH ');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE_II) ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmPkgs.LengthWHERE_II : String ;
 Var  SQL : String ;
 Begin
  SQL:= '' ;
     SQL:= ' WHERE ((PGL.ProductGroupNo = '+IntToStr(fProductGroupNo)+')' ;
     InsertProductGroupSpecificLengths(fPRODUCTGROUPNO) ;
    SQL:= SQL +') ' ;
    SQL:= SQL + ' AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.Act = 1' ;    
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;
   Result:= SQL ;
 End ;

Procedure TdmPkgs.InsertProductGroupSpecificLengths(const ProductGroupNo : Integer) ;
Begin
 if not mtProdSpecificLengths.FindKey([ProductGroupNo]) then
 Begin
  sp_ProdLeng.Close ;
  sp_ProdLeng.ParamByName('ProductGroupNo').AsInteger:= ProductGroupNo ;
  sp_ProdLeng.Open ;
  sp_ProdLeng.First ;
  While not sp_ProdLeng.Eof do
  Begin
   mtProdSpecificLengths.Insert ;
   mtProdSpecificLengthsProductGroupNo.AsInteger:= ProductGroupNo ;
   mtProdSpecificLengthsProductLengthNo.AsInteger:= sp_ProdLengProductLengthNo.AsInteger ;
   mtProdSpecificLengths.Post ;
   sp_ProdLeng.Next ;
  End ;
  sp_ProdLeng.Close ;
 End ; //with

End ;

procedure TdmPkgs.LoadGroupLengths(const GroupNo : Integer);

begin
  mtStandardLengths.Active:= False ;
  mtStandardLengths.Active:= True ;
  // Populate the list with std lengths applicable to the selected length group
  sp_StandardLengths.Close;
  sp_StandardLengths.ParamByName('LengthGroupNo').AsInteger := GroupNo;
  sp_StandardLengths.Open;
  sp_StandardLengths.First;
  while not sp_StandardLengths.Eof do
  begin
   mtStandardLengths.Insert ;
   mtStandardLengthsProductLengthNo.AsInteger:= sp_StandardLengthsProductLengthNo.AsInteger ;
   mtStandardLengths.Post ;
   sp_StandardLengths.Next;
  end;
  sp_StandardLengths.Close;
end;


function TdmPkgs.SavePackages(const MatPunktAgareNo, LogicalInventoryPointNo, OwnerNo, RegistrationPointNo: Integer;
const WhenCreated : TDateTime) : Boolean ;
Var
    Save_Cursor:TCursor;
//    OldIndexName : String ;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
  TransactionNo : LongWord;
  PkgTypeNumbers : TList;
  PackagetypeNo  : Integer ;

  MyList: TList;
  ARecord: PMyList;

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    procedure SelectMatchingPkgTypeHdrs;
    begin

      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('ProductNo'    ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNo.AsInteger = 0 then
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;

{      if mtLoadPackagesWRAPTYPENO.AsInteger = 0 then
      sp_PackageTypes.ParamByName('WrapType'     ).AsInteger := -1
      else
      sp_PackageTypes.ParamByName('WrapType'     ).AsInteger := mtLoadPackagesWRAPTYPENO.AsInteger ; }

//      sp_PackageTypes.ParamByName('PackageHeight').AsInteger := mtLoadPackagesPKG_HEIGHT.AsInteger ;
//      sp_PackageTypes.ParamByName('PackageWidth' ).AsInteger := mtLoadPackagesPKG_WIDTH.AsInteger ;
      sp_PackageTypes.ParamByName('TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;
//      sp_PackageTypes.ParamByName('Minibundled').AsInteger := mtLoadPackagesMINI_BUNDLE.AsInteger ;
//      sp_PackageTypes.ParamByName('ShrinkWrap' ).AsInteger := mtLoadPackagesSHRINK_WRAP.AsInteger ;
//      sp_PackageTypes.ParamByName('OnSticks'   ).AsInteger := mtLoadPackagesON_STICKS.AsInteger ;
      sp_PackageTypes.Open;
      try
        sp_PackageTypes.First;
        while not sp_PackageTypes.Eof do begin
          PkgTypeNumbers.Add(Pointer(sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger));
          sp_PackageTypes.Next;
          end;
      finally
        sp_PackageTypes.Close;
        end;

    end;

    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     for x := 2 to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       New(ARecord);
       ARecord^.ProductLengthNo := StrToInt(mtPackages.Fields[x].FieldName) ;
       ARecord^.NoOfPieces      := mtPackages.Fields[x].AsInteger ;
       MyList.Add(ARecord);
      End ;
     End ;
    End ;


    Function GetNoOfOriginalLengthsInPkg : Integer ;
    Begin
     Result:= 0 ;
     sp_PackageTypeDetail.Close;
     sp_PackageTypeDetail.ParamByName('PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;// Integer(PkgTypeNumbers[0]);
     sp_PackageTypeDetail.Open;
     sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

      while not sp_PackageTypeDetail.Eof  do
      begin
       New(ARecord);
       ARecord^.ProductLengthNo := sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
       ARecord^.NoOfPieces      := sp_PackageTypeDetail.FieldValues['NoOfPieces'] ;
       MyList.Add(ARecord);
       sp_PackageTypeDetail.Next;
      end;
     sp_PackageTypeDetail.Close;
    End ;

    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
      NoOfLengths := GetNoOfLengthsInPkg
      else
       NoOfLengths :=  GetNoOfOriginalLengthsInPkg ;

      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetail.Close;
          sp_PackageTypeDetail.ParamByName('PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
          sp_PackageTypeDetail.Open;

          LengthMatched := TRUE;
          iDtl := 0;
          sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

          while LengthMatched and not sp_PackageTypeDetail.Eof and (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];


            if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
              ARecord^.NoOfPieces) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetail.Next;
              end;
          end;

          if LengthMatched and sp_PackageTypeDetail.Eof and (iDtl = MyList.Count) then
            PackageTypeNo := Integer(PkgTypeNumbers[0]);

        finally
          PkgTypeNumbers.Delete(0);
        end;
      end; //with
    end;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('ProductNo'       ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger = 0 then
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;

//      if mtLoadPackagesWRAPTYPENO.AsInteger = 0 then
//      sp_NewPackageType.ParamByName('WrapType'        ).AsInteger := -1
//      else
//      sp_NewPackageType.ParamByName('WrapType'        ).AsInteger := mtLoadPackagesWRAPTYPENO.AsInteger ;
//      sp_NewPackageType.ParamByName('PackageHeight'   ).AsInteger := mtLoadPackagesPKG_HEIGHT.AsInteger ;
//      sp_NewPackageType.ParamByName('PackageWidth'    ).AsInteger := mtLoadPackagesPKG_WIDTH.AsInteger ;
      sp_NewPackageType.ParamByName('TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
//      sp_NewPackageType.ParamByName('Minibundled').AsInteger := mtLoadPackagesMINI_BUNDLE.AsInteger ;
//      sp_NewPackageType.ParamByName('ShrinkWrap' ).AsInteger := mtLoadPackagesSHRINK_WRAP.AsInteger ;
//      sp_NewPackageType.ParamByName('OnSticks'   ).AsInteger := mtLoadPackagesON_STICKS.AsInteger ;
      sp_NewPackageType.ParamByName('UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

//************** Now add the PackageTypeDetail records. ********************
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        Try
        sp_NewPackageDetail.ParamByName('PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetail.ParamByName('NoOfPieces'     ).AsInteger  := ARecord^.NoOfPieces ;
        sp_NewPackageDetail.ParamByName('UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetail.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
       end;

    end;

    procedure  SavePackageTypeLengths ;
    Begin
     Try
     sp_Populate_One_PkgTypeLengths.Close ;
     sp_Populate_One_PkgTypeLengths.ParamByName('SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
     sp_Populate_One_PkgTypeLengths.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
     sp_Populate_One_PkgTypeLengths.Close ;
    End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
   Try
    sp_PackageTotals.ParamByName('PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotals.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
    sp_PackageTotals.Close;
  end;

  begin
    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;

    try
      SelectMatchingPkgTypeHdrs;
      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället        
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
//Dispose
   for iDtls:= 0 to (MyList.Count - 1) do
   begin
     ARecord := MyList.Items[iDtls];
     Dispose(ARecord);
   end;

    finally
      PkgTypeNumbers.Free;
      MyList.Free ;
    end;
  end;

  function UpdatePackage : Integer ;
  begin
    Try
    sp_ChangePkg.ParamByName('PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_ChangePkg.ParamByName('PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_ChangePkg.ParamByName('SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_ChangePkg.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_ChangePkg.ParamByName('RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ;
    sp_ChangePkg.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_ChangePkg.ParamByName('OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_ChangePkg.ParamByName('SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_ChangePkg.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated) ;
    sp_ChangePkg.ParamByName('MatPunktAgareNo'        ).AsInteger  := MatPunktAgareNo ;
    Result:= sp_ChangePkg.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  end;


//Main SavePackages
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 fLogicalInventoryNo:= LogicalInventoryPointNo ;

// Update packages with the selections the user has done
 PrepareLocalPkgTable ;

Try

  Result:= False ;

   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
  TransactionNo := dmsConnector.StartTransaction;
  try

      SavePkgType ;
      Try
      UpdatePackage ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

    dmsConnector.Commit(TransactionNo);
    Result:= True ;
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
  end;
     mtLoadPackages.Next ;
     PackageTypeNo:= -1 ;
 end;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.Pkg_Info(const PkgNo: Integer; const SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('PackageNo').AsInteger:= PkgNo ;
 sp_PkgInfo.ParamByName('SupplierCode').AsString:= SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;

// Update packages with the selections the user has done
procedure TdmPkgs.PrepareLocalPkgTable ;
Var TOTALPCS : Integer ;
Begin
 TOTALPCS:= 0 ;
//if no of pieces was entered by user then assign to TOTALPCS
 if mtpackages.State in [dsbrowse] then
  if mtpackages.Fields[1].AsInteger > 0 then
   TOTALPCS:= mtpackages.Fields[1].AsInteger ;

   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     mtLoadPackages.Edit ;
     if fLogicalInventoryNo > 0 then
     mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= fLogicalInventoryNo ;
     if fProductNo > 0 then
     mtLoadPackagesProductNo.AsInteger:= fProductNo ;
     if TOTALPCS > 0 then
     mtLoadPackagesPCS.AsInteger:= TOTALPCS ;

     if fBarCodeID > 0 then
      mtLoadPackagesBARCODE_ID.AsInteger := fBARCODEID ;

     if fGradeStampNo > 0 then
      mtLoadPackagesGRADESTAMPNO.AsInteger := fGradeStampNo ;

     mtLoadPackages.Post ;
     mtLoadPackages.Next ;
    End ; //While
End ;

function TdmPkgs.DeletePackagesFromSystem (const RegistrationPointNo : Integer) : Boolean ;
Var
  Save_Cursor  : TCursor;
 TransactionNo : LongWord;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  TransactionNo := dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     Try
      sp_DeletePackage.Close ;
      sp_DeletePackage.ParamByName('PackageNo').AsInteger               := mtLoadPackagesPACKAGENO.AsInteger ;
      sp_DeletePackage.ParamByName('SupplierCode').AsString             := mtLoadPackagesSUPP_CODE.AsString ;
      sp_DeletePackage.ParamByName('RegistrationPointNo').AsInteger     := RegistrationPointNo ;
      sp_DeletePackage.ParamByName('PackageTypeNo').AsInteger           := mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_DeletePackage.ParamByName('LogicalInventoryPointNo').AsInteger := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_DeletePackage.ParamByName('UserID').AsInteger                  := ThisUser.UserID ;

      if PkgExistInLoad = False then
       sp_DeletePackage.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit(TransactionNo);
    Result:= True ;
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.RemovePkgsFromInventory (const MatPunktAgareNo, RegistrationPointNo : Integer; const WhenCreated : TDateTime;Const RunNo : Integer) : Boolean ;
Var
  Save_Cursor   : TCursor;
  TransactionNo : LongWord;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
 mtLoadPackages.Filter  := 'Status = 0' ;
 mtLoadPackages.Filtered:= True ;
Try
  TransactionNo := dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try
      sp_RemovePackageFromInventory.Close ;
      sp_RemovePackageFromInventory.ParamByName('PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
      sp_RemovePackageFromInventory.ParamByName('RegistrationPointNo').AsInteger      := RegistrationPointNo ;
      sp_RemovePackageFromInventory.ParamByName('PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemovePackageFromInventory.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(WhenCreated) ;
      sp_RemovePackageFromInventory.ParamByName('MatPunktAgareNo').AsInteger          := MatPunktAgareNo ;
      sp_RemovePackageFromInventory.ParamByName('RunNo').AsInteger                    := RunNo ;
      sp_RemovePackageFromInventory.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit(TransactionNo);
    Result:= True ;
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
  end;
 Finally
  mtLoadPackages.Filtered:= False ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmPkgs.mtLoadPackagesAfterInsert(DataSet: TDataSet);
begin
 mtLoadPackagesROWNO.AsInteger:= ROWNO ;
 mtLoadPackagesStatus.AsInteger:= 0 ;
 ROWNO:= SUCC(ROWNO) ;
end;

function TdmPkgs.SaveFelRegPkgs(const MatPunktAgareNo, LogicalInventoryPointNo, OwnerNo, RegistrationPointNo, RunNo: Integer;
const WhenCreated : TDateTime) : Boolean ;
Var
    Save_Cursor : TCursor;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
  TransactionNo   : LongWord;
  PkgTypeNumbers  : TList;
  PackagetypeNo   : Integer ;
  MyList          : TList;
  ARecord         : PMyList;

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    procedure SelectMatchingPkgTypeHdrs;
    begin
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('ProductNo'    ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNo.AsInteger = 0 then
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;

//      if mtLoadPackagesWRAPTYPENO.AsInteger = 0 then
//      sp_PackageTypes.ParamByName('WrapType'     ).AsInteger := 0
//      else
//      sp_PackageTypes.ParamByName('WrapType'     ).AsInteger := mtLoadPackagesWRAPTYPENO.AsInteger ;
//      sp_PackageTypes.ParamByName('PackageHeight').AsInteger := mtLoadPackagesPKG_HEIGHT.AsInteger ;
//      sp_PackageTypes.ParamByName('PackageWidth' ).AsInteger := mtLoadPackagesPKG_WIDTH.AsInteger ;
      sp_PackageTypes.ParamByName('TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;
//      sp_PackageTypes.ParamByName('Minibundled').AsInteger := mtLoadPackagesMINI_BUNDLE.AsInteger ;
//      sp_PackageTypes.ParamByName('ShrinkWrap' ).AsInteger := mtLoadPackagesSHRINK_WRAP.AsInteger ;
//      sp_PackageTypes.ParamByName('OnSticks'   ).AsInteger := mtLoadPackagesON_STICKS.AsInteger ;
      sp_PackageTypes.Open;
      try
        sp_PackageTypes.First;
        while not sp_PackageTypes.Eof do begin
          PkgTypeNumbers.Add(Pointer(sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger));
          sp_PackageTypes.Next;
          end;
      finally
        sp_PackageTypes.Close;
        end;

    end;

    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     for x := 2 to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       New(ARecord);
       ARecord^.ProductLengthNo :=  dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                    mtLoadPackagesNOMTHICK.AsFloat,
                                    mtLoadPackagesSurfacingNo.AsInteger) ;


       ARecord^.NoOfPieces      := mtPackages.Fields[x].AsInteger ;
       MyList.Add(ARecord);
      End ;
     End ;
    End ;

    Function GetNoOfOriginalLengthsInPkg : Integer ;
    Begin
     Result:= 0 ;
     sp_PackageTypeDetail.Close;
     sp_PackageTypeDetail.ParamByName('PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;// Integer(PkgTypeNumbers[0]);
     sp_PackageTypeDetail.Open;
     sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

      while not sp_PackageTypeDetail.Eof  do
      begin
       New(ARecord);
       ARecord^.ProductLengthNo := sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
       ARecord^.NoOfPieces      := sp_PackageTypeDetail.FieldValues['NoOfPieces'] ;
       MyList.Add(ARecord);
       sp_PackageTypeDetail.Next;
      end;
     sp_PackageTypeDetail.Close;
    End ;

    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
      NoOfLengths := GetNoOfLengthsInPkg
      else
       NoOfLengths :=  GetNoOfOriginalLengthsInPkg ;

      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetail.Close;
          sp_PackageTypeDetail.ParamByName('PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
          sp_PackageTypeDetail.Open;

          LengthMatched := TRUE;
          iDtl := 0;
          sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

          while LengthMatched and not sp_PackageTypeDetail.Eof and (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];


            if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
              ARecord^.NoOfPieces) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetail.Next;
              end;
          end;

          if LengthMatched and sp_PackageTypeDetail.Eof and (iDtl = MyList.Count) then
            PackageTypeNo := Integer(PkgTypeNumbers[0]);

        finally
          PkgTypeNumbers.Delete(0);
        end;
      end; //with
    end;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('ProductNo'       ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger = 0 then
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;

//      if mtLoadPackagesWRAPTYPENO.AsInteger = 0 then
//      sp_NewPackageType.ParamByName('WrapType'        ).AsInteger := -1
//      else
//      sp_NewPackageType.ParamByName('WrapType'        ).AsInteger := mtLoadPackagesWRAPTYPENO.AsInteger ;
//      sp_NewPackageType.ParamByName('PackageHeight'   ).AsInteger := mtLoadPackagesPKG_HEIGHT.AsInteger ;
//      sp_NewPackageType.ParamByName('PackageWidth'    ).AsInteger := mtLoadPackagesPKG_WIDTH.AsInteger ;
      sp_NewPackageType.ParamByName('TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
//      sp_NewPackageType.ParamByName('Minibundled').AsInteger := mtLoadPackagesMINI_BUNDLE.AsInteger ;
//      sp_NewPackageType.ParamByName('ShrinkWrap' ).AsInteger := mtLoadPackagesSHRINK_WRAP.AsInteger ;
//      sp_NewPackageType.ParamByName('OnSticks'   ).AsInteger := mtLoadPackagesON_STICKS.AsInteger ;
      sp_NewPackageType.ParamByName('UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

//************** Now add the PackageTypeDetail records. ********************
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        Try
        sp_NewPackageDetail.ParamByName('PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetail.ParamByName('NoOfPieces'     ).AsInteger  := ARecord^.NoOfPieces ;
        sp_NewPackageDetail.ParamByName('UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetail.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
       end;

    end;

procedure  SavePackageTypeLengths ;
Begin
 Try
 sp_Populate_One_PkgTypeLengths.Close ;
 sp_Populate_One_PkgTypeLengths.ParamByName('SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
 sp_Populate_One_PkgTypeLengths.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 sp_Populate_One_PkgTypeLengths.Close ;
End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
    Try
    sp_PackageTotals.ParamByName('PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotals.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
    sp_PackageTotals.Close;
  end;


  begin
    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;
    try
      SelectMatchingPkgTypeHdrs;
      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
//Dispose
   for iDtls:= 0 to (MyList.Count - 1) do
   begin
     ARecord := MyList.Items[iDtls];
     Dispose(ARecord);
   end;

    finally
      PkgTypeNumbers.Free;
      MyList.Free ;
    end;
  end;


  function UpdatePackage : Integer ;
  begin
    Try
    sp_updateFelReg.ParamByName('PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_updateFelReg.ParamByName('PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_updateFelReg.ParamByName('SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_updateFelReg.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_updateFelReg.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_updateFelReg.ParamByName('RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ;
    sp_updateFelReg.ParamByName('OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_updateFelReg.ParamByName('SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_updateFelReg.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated) ;
    sp_updateFelReg.ParamByName('MatPunktAgareNo'        ).AsInteger  := MatPunktAgareNo ;
    sp_updateFelReg.ParamByName('RunNo'                  ).AsInteger  := RunNo ;

    Result:= sp_updateFelReg.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  end;


//Main SaveFelRegPkgs
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 fLogicalInventoryNo:= LogicalInventoryPointNo ;

// Update packages with the selections the user has done
 PrepareLocalPkgTable ;

Try
  Result:= False ;
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     TransactionNo := dmsConnector.StartTransaction;
     try

      SavePkgType ;
      Try
      UpdatePackage ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

    dmsConnector.Commit(TransactionNo);
    Result:= True ;
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
  end;
   mtLoadPackages.Next ;
   PackageTypeNo:= -1 ;
 end;


 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.FlyttaPaket(const RegistrationPointNo, LogicalInventoryPointNo : Integer) : Boolean ;
Var
  Save_Cursor:TCursor;
  TransactionNo : LongWord;

  function MovePackage : Integer ;
  begin
    Try
    sp_MovePkg.ParamByName('PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_MovePkg.ParamByName('PackageTypeNo'          ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_MovePkg.ParamByName('SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_MovePkg.ParamByName('LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;
    sp_MovePkg.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_MovePkg.ParamByName('RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ; //103 = extern flytta paket
    sp_MovePkg.ParamByName('OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_MovePkg.ParamByName('SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_MovePkg.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
    Result:= sp_MovePkg.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  end;


//Main FlyttaPaket
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 Result:= False ;
 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
   TransactionNo := dmsConnector.StartTransaction;
  try
    Try
     MovePackage ;
    except
     ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
     Result:= False ;
     Raise ;
    End ;

   dmsConnector.Commit(TransactionNo);
   Result:= True ;
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
  end;

  mtLoadPackages.Next ;
 end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end; //end proc

function TdmPkgs.PkgExistInLoad : Boolean ;
Begin
 sq_PkgInLoad.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPACKAGENO.AsInteger ;
 sq_PkgInLoad.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
 sq_PkgInLoad.Open ;
 if not sq_PkgInLoad.Eof then
 Begin
  mtLoadPackages.Edit ;
  mtLoadPackagesStatus.AsInteger:= 1 ;
  mtLoadPackagesStatusText.AsString:= 'Pkt finns upptaget i lastnr '+sq_PkgInLoadLastNr.AsString+' LO: '+sq_PkgInLoadLO.AsString ;
  mtLoadPackages.Post ;
  Result:= True ;
 End
  else
   Result:= False ;
 sq_PkgInLoad.Close ;
End ;


//PÅ Registrera paket (PÅ Registrerar paket med status = 0)
//PÅ registreras till det lager och ägare som valdes i lagergrupp.
function TdmPkgs.PaRegistreraPackage (const MatPunktAgareNo, RegistrationPointNo : Integer; const WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor  : TCursor;
 TransactionNo : LongWord;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try
      sp_PaRegPaket.Close ;
      sp_PaRegPaket.ParamByName('PackageNo').AsInteger              := mtLoadPackagesPACKAGENO.AsInteger ;
      sp_PaRegPaket.ParamByName('SupplierCode').AsString            := mtLoadPackagesSUPP_CODE.AsString ;
      sp_PaRegPaket.ParamByName('RegistrationPointNo').AsInteger    := RegistrationPointNo ;
      sp_PaRegPaket.ParamByName('PackageTypeNo').AsInteger          := mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_PaRegPaket.ParamByName('LogicalInventoryPointNo').AsInteger:= mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_PaRegPaket.ParamByName('UserID').AsInteger                 := ThisUser.UserID ;
      sp_PaRegPaket.ParamByName('SupplierNo').AsInteger             := mtLoadPackagesSupplierNo.AsInteger ;
      sp_PaRegPaket.ParamByName('DateCreated').AsSQLTimeStamp       := DateTimeToSQLTimeStamp(WhenCreated) ;
      sp_PaRegPaket.ParamByName('MatPunktAgareNo').AsInteger        := MatPunktAgareNo ;

      sp_PaRegPaket.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
     mtLoadPackages.Next ;
    end; //While...
    Result:= True ;
  except
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.Get_Me_A_PackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
Var x : Integer ;
Begin
 x := 1 ;
 Result:= 0 ;
 While (Result = 0) and (x < 9000000) do
 Begin
  Result:= GetPackageNo (OwnerNo,SupplierCode) ;
  x := succ(x) ;
 End ;
End ;

function TdmPkgs.GetPackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
Var     //StartPkgNo : Integer ;
        NoOfErrorPkgnr : Integer;
        Res_UserName : String ;
begin
 NoOfErrorPkgnr:= 0 ;
 Result:= 0 ;
// Try
  Result:= dmsConnector.GetCurrentPkgNo(OwnerNo, 1) ;
  if Result > 0 then
  Begin
   if PackageNumberExists(Result, SupplierCode) = False then
    Begin
     if dmsSystem.Pkg_Reserved(Result, SupplierCode, Self.Name, Res_UserName ) = ThisUser.UserName+'/'+Self.Name then
      Begin
      End //if dmsSystem.Pkg_Reserved(
      else
       Begin
        NoOfErrorPkgnr:= succ(NoOfErrorPkgnr) ;
        Result:= 0 ;
       End ;
    End //if..
     else
      Begin
        NoOfErrorPkgnr:= succ(NoOfErrorPkgnr) ;
        Result:= 0 ;
      End ;

    End ; //if StartPkgNo > 0 then
End ;

function TdmPkgs.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

function TdmPkgs.GetAvailablePkgNos (const OwnerNo, PackageTypeNo, LogicalInventoryPointNo, NoOfPkgs : Integer) : Boolean ;
Var x : Integer ;
Begin
 x := 0 ;
 Try
 sq_PkgNoAvail.ParamByName('PackageTypeNo').AsInteger           := PackageTypeNo ;
 sq_PkgNoAvail.ParamByName('LogicalInventoryPointNo').AsInteger := LogicalInventoryPointNo ;
 sq_PkgNoAvail.Open ;
 While (not sq_PkgNoAvail.Eof) and (x<NoOfPkgs) do
 Begin
  Try
  mtLoadPackages.Insert ;
  mtLoadPackagesPackageTypeNo.AsInteger     := PackageTypeNo ;
  mtLoadPackagesPACKAGENO.AsInteger         := sq_PkgNoAvailPackageNo.AsInteger ;
  mtLoadPackagesSUPP_CODE.AsString          := sq_PkgNoAvailSupplierCode.AsString ;
  mtLoadPackagesLOG_INVENTORY_NO.AsInteger  := LogicalInventoryPointNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  if mtLoadPackagesPACKAGENO.AsInteger = 0 then
  Begin
   mtLoadPackages.Cancel ;
   Result:= False ;
   Exit ;
  End ;
  Result:= True ;
  mtLoadPackages.Post ;
  x:= succ(x) ;

           Except
            on eDatabaseError do
            Begin
             Result:= False ;
             Raise ;
             mtpackages.Cancel ;
            End ;
           End ;


  sq_PkgNoAvail.Next ;
 End ;
 if x < NoOfPkgs then
 Begin
  ShowMessage('Det finns inte tillräckligt med paket att avregistrera') ;
  Result:= False ;
 End ;
 Finally
  sq_PkgNoAvail.Close ;
 End ;
End ;


procedure TdmPkgs.MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
// sq_ProductLengths.SQL.Add('PL.ActualLengthINCH');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductLengthGroup PGL');
 sq_ProductLengths.SQL.Add('INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add('WHERE  PGL.GroupNo = '+IntToStr(STD_LengthGroupNo)) ;
 sq_ProductLengths.SQL.Add(' AND PL.ActualLengthMM > 0.5') ;
 sq_ProductLengths.SQL.Add(' AND PL.ActualLengthMM < 40000') ;
 sq_ProductLengths.SQL.Add(' ORDER BY PL.ActualLengthMM ') ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

procedure TdmPkgs.DataModuleDestroy(Sender: TObject);
begin
 With dmsSystem do
 Begin
  Delete_ReservedPkgs (Self.Name) ;
 End ;
end;

function TdmPkgs.ExtFlyttaPaket(const RegistrationPointNo, NewLogicalInventoryPointNo, ToOwnerNo : Integer) : Boolean ;
Var
  Save_Cursor:TCursor;
  TransactionNo : LongWord;

  function MovePackage : Integer ;
  begin
    Try
    sp_ExtMovePkg.ParamByName('PackageNo'                 ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('PackageTypeNo'             ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('SupplierCode'              ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_ExtMovePkg.ParamByName('OldLogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_ExtMovePkg.ParamByName('NewLogicalInventoryPointNo').AsInteger  := NewLogicalInventoryPointNo ;
    sp_ExtMovePkg.ParamByName('UserID'                    ).AsInteger  := ThisUser.UserID;
    sp_ExtMovePkg.ParamByName('RegistrationPointNo'       ).AsInteger  := RegistrationPointNo ; //103 = extern flytta paket
    sp_ExtMovePkg.ParamByName('OLD_PackageTypeNo'         ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('OldSupplierNo'             ).AsInteger  := mtLoadPackagesOWNERNO.AsInteger ;
    sp_ExtMovePkg.ParamByName('NewSupplierNo'             ).AsInteger  := ToOwnerNo ;
    Result:= sp_ExtMovePkg.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  end;


//Main FlyttaPaket
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 Result:= False ;

 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
   TransactionNo := dmsConnector.StartTransaction;
  try
    Try
     MovePackage ;
    except
     ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
     Result:= False ;
     Raise ;
    End ;

   dmsConnector.Commit(TransactionNo);
   Result:= True ;
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
  end;

  mtLoadPackages.Next ;
 end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end; //end proc

end.
