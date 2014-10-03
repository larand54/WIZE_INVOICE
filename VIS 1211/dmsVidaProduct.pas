unit dmsVidaProduct;

interface

uses
  Classes,   SysUtils, Controls, Forms,
  VidaType, DB, kbmMemTable, Dialogs, SqlTimSt,
  ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, QExport4, QExport4ASCII ;


type
  TdmsProduct = class(TDataModule)
    mtPackages: TkbmMemTable;
    mtStandardLengths: TkbmMemTable;
    mtStandardLengthsProductLengthNo: TIntegerField;
    mtDupPkgNo: TkbmMemTable;
    mtDupPkgNoPackageNo: TIntegerField;
    mtLO_Records: TkbmMemTable;
    mtLO_RecordsCustomerNo: TIntegerField;
    mtLO_RecordsCustShipPlanDetailObjectNo: TIntegerField;
    mtLO_RecordsLO_NUMBER: TIntegerField;
    mtLO_RecordsPKGCODE: TStringField;
    mtLO_RecordsProductNo: TIntegerField;
    mtLO_RecordsPRODUCTDESCRIPTION: TStringField;
    mtLO_RecordsLENGTHDESC: TStringField;
    mtLO_RecordsNOOFUNITS: TFloatField;
    mtLO_RecordsVOLUNIT: TStringField;
    mtLO_RecordsPRICE: TFloatField;
    mtLO_RecordsPRICEUNIT: TStringField;
    mtLO_RecordsMIN_LENGTH: TFloatField;
    mtLO_RecordsMAX_LENGTH: TFloatField;
    mtLO_RecordsACT_THICK: TFloatField;
    mtLO_RecordsACT_WIDTH: TFloatField;
    mtLO_RecordsACT_LENGTH: TFloatField;
    mtLO_RecordsREFERENCE: TStringField;
    mtLO_RecordsProductLengthNo: TIntegerField;
    mtLO_RecordsLEV_PERIOD_START: TIntegerField;
    mtLO_RecordsLEV_PERIOD_END: TIntegerField;
    mtLO_RecordsORDERNO: TStringField;
    mtLO_RecordsExtraID: TStringField;
    mtLO_RecordsPCSPERPKG: TIntegerField;
    mtLO_RecordsPRODUCTGROUPNO: TIntegerField;
    mtLO_RecordsNOM_THICK: TFloatField;
    mtLO_RecordsNOM_WIDTH: TFloatField;
    mtLO_RecordsSupplierShipPlanObjectNo: TIntegerField;
    ds_mtLO_Records: TDataSource;
    DataSource1: TDataSource;
    mtDupPkgNoSupplierCode: TStringField;
    mtLO_RecordsProductLengthGroupNo: TIntegerField;
    mtLO_RecordsINCH_THICK: TFloatField;
    mtLO_RecordsINCH_WIDTH: TFloatField;
    imglistActions: TImageList;
    mtImportedProductLengths: TkbmMemTable;
    mtImportedProductLengthsProductLengthNo: TIntegerField;
    mtImportedProductLengthsNoOfPcs: TIntegerField;
    mtImportedProductLengthsPackageNo: TIntegerField;
    mtLO_RecordsOverrideRL: TIntegerField;
    mtImportedProductLengthsALMM: TFloatField;
    mtLO_RecordsMATCH: TIntegerField;
    mtLO_RecordsVaruSlag: TIntegerField;
    sq_ProductLengths: TFDQuery;
    cds_ProdLength: TFDQuery;
    cds_ProdLengthProductLengthNo: TIntegerField;
    cds_ProdLengthActualLengthMM: TFloatField;
    cds_ProdLengthNominalLengthMM: TFloatField;
    cds_ProdLengthNominalLengthFEET: TFloatField;
    cds_ProdLengthActualLengthINCH: TStringField;
    cds_ProdLengthPET: TIntegerField;
    cds_ProdLengthFingerJoint: TIntegerField;
    cds_ProdLengthCreatedUser: TIntegerField;
    cds_ProdLengthModifiedUser: TIntegerField;
    cds_ProdLengthDateCreated: TSQLTimeStampField;
    cds_ProdLengthSequenceNo: TIntegerField;
    cds_ProdLengthProductLengthGroupNo: TIntegerField;
    cds_ProdLengthAct: TIntegerField;
    sq_GetPkgTypeNo: TFDQuery;
    sq_GetPkgTypeNoPackageTypeNo: TIntegerField;
    sq_GetPkgTypeNoTotalNoOfPieces: TIntegerField;
    sq_GetPkgTypeNoActualLengthMM: TFloatField;
    sp_StandardLengths: TFDStoredProc;
    sp_StandardLengthsProductLengthNo: TIntegerField;
    sp_PackageTypes: TFDStoredProc;
    sp_PackageTypeDetail: TFDStoredProc;
    sp_NewPackageType: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_NewPackageNo: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_NewPkgNoNoProdLogg: TFDStoredProc;
    sp_OnePackageNo: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    sp_PackageTypesA: TFDStoredProc;
    sp_PackageTypeDetailA: TFDStoredProc;
    sp_NewPackageTypeA: TFDStoredProc;
    sp_NewPackageDetailA: TFDStoredProc;
    sp_NewPackageNoA: TFDStoredProc;
    sp_PackageTotalsA: TFDStoredProc;
    sp_NewPkgNoNoProdLoggA: TFDStoredProc;
    sq_GetUTNo: TFDQuery;
    sq_GetUTNoSurfacingNo: TIntegerField;
    sp_PkgInfo: TFDStoredProc;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    sq_ProductLengthsActualLengthMM: TFloatField;
    sq_PkgLengths: TFDQuery;
    sq_PkgLengthsProductLengthNo: TIntegerField;
    sq_PkgLengthsActualLengthMM: TFloatField;
    sq_PkgLengthsNoOfPieces: TIntegerField;
    sp_vis_CngPkgTypeInPkg: TFDStoredProc;
    sq_HTFPkgStatus: TFDQuery;
    sq_HTFPkgStatusRecordType: TIntegerField;
    sq_HTFPkgStatusPrefix: TStringField;
    sq_HTFPkgStatusPaketnr: TIntegerField;
    sq_HTFPkgStatusStyck: TIntegerField;
    sq_HTFPkgStatusStatus: TIntegerField;
    sq_HTFPkgStatusStatusDatum: TSQLTimeStampField;
    sq_HTFPkgStatusOriginalStyck: TIntegerField;
    sq_HTFPkgStatusCreatedUser: TIntegerField;
    sq_HTFPkgStatusDateCreated: TSQLTimeStampField;
    sq_HTFPkgStatusComplete: TIntegerField;
    sq_HTFPkgStatusFileName: TStringField;
    sq_HTFPkgStatusLONo: TIntegerField;
    sq_HTFPkgStatusHTF_FS: TStringField;
    sq_HTFPkgStatusTotalNoOfPieces: TIntegerField;
    sq_HTFPkgStatusBarCodeID: TIntegerField;
    sq_HTFPkgStatusGradestamp: TIntegerField;
    sq_HTFPkgStatusProductNo: TIntegerField;
    sq_HTFPkgStatusSurfacingNo: TIntegerField;
    sq_HTFPkgStatusNominalThicknessMM: TFloatField;
    sq_HTFPkgStatusPackageTypeNo: TIntegerField;
    sq_HTFPkgStatusLoadNo: TIntegerField;
    sq_HTFPkgStatusProductCode: TStringField;
    sq_HTFPkgStatusALMM: TFloatField;
    sq_HTFPkgStatusPEFC: TIntegerField;
    sq_InsTempPkgs: TFDQuery;
    sq_DelTempPkgs: TFDQuery;
    sp_NewPkgNo_Price_NoPP: TFDStoredProc;
    QExport4ASCII1: TQExport4ASCII;
    procedure mtPackagesAfterPost(DataSet: TDataSet);
    procedure mtPackagesAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforeInsert(DataSet: TDataSet);
    procedure mtPackagesAfterDelete(DataSet: TDataSet);
    procedure mtPackagesBeforePost(DataSet: TDataSet);
    procedure mtPackagesChangeNoOfPcs(Sender: TField);
    procedure cds_ProdLengthAfterInsert(DataSet: TDataSet);
  private
    y, GlobalCounter: Integer ;
    OldProductNo, OldProductGroupNo : Integer ;
    FPackagePhysInvFilter: Integer;
    FPackageLogInvFilter: Integer;
    Get_LO_LinesMatched_Enabled     : Boolean ;

//    Function  GetLengthsEntered : String ;

    procedure SummarizePkg ;
    procedure SummarizeArticles ;
    function  GetPackageTypeNo(Const PKGCODE : String;Var PCSPERPKG : Integer;Var sActualLengthMM : String) : Integer ;
    { Private declarations }
  public
//    PcsPerLengthArray, byt ut mot AVERAGE_LengthArray om inputoption är 2
    PkgNoSeries, CopyPcs, ChangeNoOfPcsEvent : Boolean ;
    CSD : Byte ;
    PcsPerLengthArray   : Array[0..400] of Integer ; //to copy no of pcs to new row

    InputOption       : Integer ;
    SupplierCode      : String3 ;
    SupplierNo        : Integer ;
    InventoryOwnerNo  : Integer ;
//    LogicalTransferInventoryNo: Integer ;
    OrderType,
    InventoryNo : Integer ;
    LIPNo       : Integer ;
    Procedure InsertPkgsToTempTable ;
    function  SaveChangedPackages : Boolean ;
    procedure AttachOnChangeEventTomtPackages ;
    procedure MakeLengthQuery_II ;
    function  LengthWHERE_II : String ;
    procedure MakeLengthQuery ;
    procedure MakeLengthQueryAllaPGLength ;
    function  LengthWHERE : String ;
    procedure MakeLengthQuery_ForLOLengths_Only ;
    function  LengthWHERE_ForLOLengths_Only : String ;
    function  WHERE_For_STD_Lengths : String ;
    procedure MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
    function  WHERE_For_STD_Lengths_ver2 : String ;
    procedure MakeLengthQuery_STD_Lengths_ver2 ;
    procedure MakeLengthQuery_ForLOLengths_Only_ver2 ;
    function  LengthWHERE_ForLOLengths_Only_ver2 : String ;
    procedure ADD_LO_Lengths ;
    function  DoesLOHaveValidLengthGroupNo : Boolean ;
    function  DoesLOHaveFixedLength : Boolean ;
    function  IsLOOnlyFixedLengths : Boolean ;
    function  PackageNumberExists(const PkgNo : Integer; const SupplierCode : String3) : Boolean;

    procedure LoadGroupLengths(const GroupNo : Integer);

    Procedure Get_LO_LinesMatched ;
    function  SaveImportedWoodXPackages (mtUserProp : TkbmMemTable) : Boolean ;
    function  SaveImportedPackages(const SaveToProdLogg, ProducerNo, LogicalInventoryPointNo, RegPointNo, RunNo: Integer;const WhenCreated : TDateTime) : Boolean ;

    function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
    Function  GetNoOfLengthsInPackage (Var ProductLengthNo : Integer) : Integer ;
    function  GetUTNo(const ProductNo : Integer) : Integer ;
    function  SaveArticlePackages(const SaveToProdLogg, ProducerNo, LogicalInventoryPointNo, RegPointNo, RunNo: Integer;const WhenCreated : TDateTime) : Boolean ;
  end;

var dmsProduct: TdmsProduct;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst,
  VidaUser,
  VidaUtils,
  recerror ,
  dmsVidaSystem, dmc_ImportWoodx;

{ TDataModule1 }

function TdmsProduct.GetUTNo(const ProductNo : Integer) : Integer ;
Begin
 sq_GetUTNo.Close ;
 sq_GetUTNo.ParamByName('ProductNo').AsInteger:= ProductNo ;
 sq_GetUTNo.Open ;
 if not sq_GetUTNo.Eof then
  Result:= sq_GetUTNoSurfacingNo.AsInteger
   else
    Result:= 0 ;
 sq_GetUTNo.Close ;
End ;

procedure TdmsProduct.LoadGroupLengths(const GroupNo : Integer);
var
  LengthDesc : String;
begin
  mtStandardLengths.Active:= False ;
  mtStandardLengths.Active:= True ;
  // Populate the list with std lengths applicable to the selected length group
  sp_StandardLengths.Close;
  sp_StandardLengths.ParamByName('@LengthGroupNo').AsInteger := GroupNo;
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

function TdmsProduct.SaveImportedPackages(const SaveToProdLogg, ProducerNo, LogicalInventoryPointNo, RegPointNo, RunNo: Integer;const WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor:TCursor;
const
  PKGS_CREATED_AT_PLANER_MILL = 1;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
//  PkgTypeNumbers : TList;
  PackagetypeNo  : Integer ;

  MyList: TList;
  ARecord: PMyList;


Function GetLengthsEntered : String ;
Var iDtl : Integer ;

    Function GetNoOfLengthsInIMPORTEDPkg : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     mtImportedProductLengths.Filter:= 'PackageNo = '+mtPackages.Fields[cPACKAGENO].AsString ;
     mtImportedProductLengths.Filtered:= True ;
     Try
     mtImportedProductLengths.First ;
     While not mtImportedProductLengths.Eof do
     Begin
       New(ARecord);
       ARecord^.ProductLengthNo :=  dmsSystem.GetProductLengthNoByLengthRule(mtImportedProductLengthsALMM.AsString,
                                    mtPackages.FieldByName('NOM_THICK').AsFloat,
                                    mtPackages.FieldByName('SurfacingNo').AsInteger) ;

       ARecord^.NoOfPieces      := mtImportedProductLengthsNoOfPcs.AsInteger ;
       MyList.Add(ARecord);
       mtImportedProductLengths.Next ;
     End ;//while
     Finally
      mtImportedProductLengths.Filtered:= False ;
     End ;
    End ;


    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     for x := FirstLengthColumnInmatningViaLast to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       New(ARecord);
       ARecord^.ProductLengthNo :=  dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                    mtPackages.FieldByName('NOM_THICK').AsFloat,
                                    mtPackages.FieldByName('SurfacingNo').AsInteger) ;


       ARecord^.NoOfPieces      := mtPackages.Fields[x].AsInteger ;
       MyList.Add(ARecord);
      End ;
     End ;
    End ;



    Function GetNoOfLengthsInPkg_LPM_Entry : Integer ;
    Var x : Integer ;
        ML : Double ;
    Begin
     ML     := (mtpackages.Fields[cTOTALLPM].AsFloat*1000) ;
     Result:= 0 ;
     New(ARecord);
     ARecord^.ProductLengthNo :=  dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     ARecord^.NoOfPieces      := 1 ; //mtPackages.Fields[x].AsInteger ;
     MyList.Add(ARecord);
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION : Integer ;
    Var x : Integer ;
        ML : Double ;
    Begin
     ML     := (mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsFloat*1000) ;
     Result := 0 ;
     New(ARecord);
     ARecord^.ProductLengthNo := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     ARecord^.NoOfPieces      := mtPackages.Fields[cTOTALPCS].AsInteger ;
     MyList.Add(ARecord);
    End ;

Begin
// if (mtUserPropInputOption.AsInteger = INPUT_PIECES) or (mtUserPropInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
//  GetNoOfLengthsInPkg ;
{   else
    if mtUserPropInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
     GetNoOfLengthsInPkg_LPM_Entry
      else
       GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION ; }

      if Self.InputOption = INPUT_IMPORTEDPACKAGES then
      GetNoOfLengthsInIMPORTEDPkg
      else
      if Self.InputOption = INPUT_PIECES then
       GetNoOfLengthsInPkg
       else
       if Self.InputOption = INPUT_LOPM_TOTAL_LOPM then
        GetNoOfLengthsInPkg_LPM_Entry
        else
         if Self.InputOption = INPUT_LOPM_AVERAGE_LENGTH then
          GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION ;

          iDtl := 0;
          while (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];

           Result:= Result + IntToStr(ARecord^.ProductLengthNo)
                                     + '/'
                                     + IntToStr(ARecord^.NoOfPieces) + '|' ;


           inc(iDtl);
{            if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
              ARecord^.NoOfPieces) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetail.Next;
              end;
              }
          end;//While

{ mtPcsPerLength.First ;
 While not mtPcsPerLength.Eof do
 Begin
  Result:= Result + mtPcsPerLengthProductLengthNo.AsString
                                     + '/'
                                     + mtPcsPerLengthNoOfPieces.AsString + '|' ;
  mtPcsPerLength.Next ;
 End ; }
End ;  //GetLengthsEntered

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;
    begin
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := mtPackages.Fields[cPRODUCTNO].AsInteger ;

      if mtPackages.Fields[cBARCODEID].AsInteger = 0 then
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := mtPackages.Fields[cBARCODEID].AsInteger ;
      if mtPackages.Fields[cGRADESTAMP].AsInteger = 0 then
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := mtPackages.Fields[cGRADESTAMP].AsInteger ;
      sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := mtPackages.Fields[cTOTALPCS].AsInteger ;


//      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
       sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetLengthsEntered ;
//      else
//       sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetNoOfOriginalLengthsInPkg ;


      sp_PackageTypes.Open;
      try
//        sp_PackageTypes.First;
        if not sp_PackageTypes.Eof then begin
          Result := sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger ;
//          sp_PackageTypes.Next;
        end
         else
          Result:= -1 ;
      finally
        sp_PackageTypes.Close;
        end;

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
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := mtPackages.Fields[cPRODUCTNO].AsInteger ;

      if mtPackages.Fields[cBARCODEID].AsInteger = 0 then
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := mtPackages.Fields[cBARCODEID].AsInteger ;

      if mtPackages.Fields[cGRADESTAMP].AsInteger = 0 then
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := mtPackages.Fields[cGRADESTAMP].AsInteger ;
      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtPackages.Fields[cTOTALPCS].AsInteger ;
      sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

      // Now add the PackageTypeDetail records.
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        Try
        sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := ARecord^.NoOfPieces ;
        sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
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
      sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
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
    sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
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

//SavePkgType ;
  begin
//    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;

    try
      PackageTypeNo:= SelectMatchingPkgTypeHdrs ;
//      MatchingPackageType ;
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
//      PkgTypeNumbers.Free;
      MyList.Free ;
    end;
  end;

  procedure SavePackage ;
  begin
   if SaveToProdLogg = 1 then
   Begin
    Try
    sp_NewPackageNo.ParamByName('@PackageNo'              ).AsInteger  := mtPackages.Fields[cPACKAGENO].AsInteger ;
    sp_NewPackageNo.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_NewPackageNo.ParamByName('@SupplierCode'           ).AsString   := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString);
    sp_NewPackageNo.ParamByName('@LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;
    sp_NewPackageNo.ParamByName('@SupplierNo'             ).AsInteger  := SupplierNo;
    sp_NewPackageNo.ParamByName('@RegistrationPointNo'    ).AsInteger  := RegPointNo ;
    sp_NewPackageNo.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewPackageNo.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated);
    sp_NewPackageNo.ParamByName('@OwnerNo'                ).AsInteger  := InventoryOwnerNo ;
    sp_NewPackageNo.ParamByName('@ProducerNo'             ).AsInteger  := ProducerNo ;
    sp_NewPackageNo.ParamByName('@RunNo'                  ).AsInteger  := RunNo ;
    sp_NewPackageNo.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   End
   else
   Begin
     Try
     sp_NewPkgNoNoProdLogg.ParamByName('@PackageNo'              ).AsInteger  := mtPackages.Fields[cPACKAGENO].AsInteger ;
     sp_NewPkgNoNoProdLogg.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
     sp_NewPkgNoNoProdLogg.ParamByName('@SupplierCode'           ).AsString   := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString);
     sp_NewPkgNoNoProdLogg.ParamByName('@LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;
     sp_NewPkgNoNoProdLogg.ParamByName('@SupplierNo'             ).AsInteger  := SupplierNo ;
     sp_NewPkgNoNoProdLogg.ParamByName('@RegistrationPointNo'    ).AsInteger  := RegPointNo ;
     sp_NewPkgNoNoProdLogg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
     sp_NewPkgNoNoProdLogg.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
     sp_NewPkgNoNoProdLogg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated);
     sp_NewPkgNoNoProdLogg.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   End ;

  end;

//Main SaveImportedPackages
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 mtPackages.AfterPost:= NIL ;
 mtPackages.AfterInsert:= NIL ;
 mtPackages.DisableControls ;
 Try
 mtDupPkgNo.Active:= False ;
 mtDupPkgNo.Active:= True ;


  Result:= False ;
   mtPackages.First ;
   While not mtPackages.Eof do
    Begin
  dmsConnector.StartTransaction;
  try

   if mtPackages.Fields[cPACKAGETYPENO].AsInteger > 0 then
    PackageTypeNo:= mtPackages.Fields[cPACKAGETYPENO].AsInteger
     else
      SavePkgType ;

      Try
      SavePackage ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtPackages.Fields[cPACKAGENO].AsInteger, Trim(mtPackages.Fields[cSUPPLIERCODE].AsString)));
       Result:= False ;
       Raise ;
      End ;

    mtDupPkgNo.Insert ;
    mtDupPkgNoPackageNo.AsInteger   := mtPackages.Fields[cPACKAGENO].AsInteger ;
    mtDupPkgNoSupplierCode.AsString := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString) ;
    mtDupPkgNo.Post ;


    mtPackages.Edit ;
    mtPackages.Fields[cPACKAGETYPENO].AsInteger:= PackageTypeNo ;
    mtPackages.Post ;



     mtPackages.Next ;
     PackageTypeNo:= -1 ;
    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback;
    Result:= False ;
    raise;
  end;
 end;
 Finally
  mtPackages.AfterPost    := mtPackagesAfterPost ;
  mtPackages.AfterInsert  := mtPackagesAfterInsert ;
  mtPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmsProduct.SaveImportedWoodXPackages (mtUserProp : TkbmMemTable) : Boolean ;
Var
    Save_Cursor   : TCursor;
const
  PKGS_CREATED_AT_PLANER_MILL = 1;
var
  TransactionNo : LongWord;
  PackagetypeNo  : Integer ;


Function GetLengthsEntered : String ;
Begin
 Result:= '' ;
// GetNoOfLengthsInPkg ;
 With dm_ImportWoodx do
 Begin
  cds_ImpLenMap.Active := False ;
//  cds_ImpLenMap.ParamByName('Identifier').AsString              := cds_ImpProdMapIdentifier.AsString ;
//  cds_ImpLenMap.ParamByName('DeliveryMessageNumber').AsString   := cds_ImpProdMapDeliveryMessageNumber.AsString ;
  cds_ImpLenMap.Active := True ;

  cds_ImpLenMap.First ;
  While not cds_ImpLenMap.Eof do
  Begin
   Result:= Result + cds_ImpLenMapProductLengthNo.AsString
                                     + '/'
                                     + cds_ImpLenMapStyck.AsString + '|' ;
   cds_ImpLenMap.Next ;
  End ;
 End ;//With dm_ImportWoodx do
End ;


  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;

    begin
     With dm_ImportWoodx do
     Begin

      Try
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := cds_ImpProdMapProductNo.AsInteger ;

//      if mtUserProp.FieldByName('BARCODENO').AsInteger < 1 then
//      sp_PackageTypes.ParamByName('BarCodeID').AsInteger := 0
//      else
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0 ;//mtUserProp.FieldByName('BARCODENO').AsInteger ;

//      if mtUserProp.FieldByName('GRADESTAMPNO').AsInteger < 1 then
//      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := 0
//      else
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0 ;//mtUserProp.FieldByName('GRADESTAMPNO').AsInteger ;

      sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := cds_ImpProdMapStyck.AsInteger ;

      sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetLengthsEntered ;


     sp_PackageTypes.Open;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' :sp_PackageTypes.Open') ;
       Raise ;
      End ;
     end;

      try
//        sp_PackageTypes.First;
        if not sp_PackageTypes.Eof then begin
          Result := sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger ;
//          sp_PackageTypes.Next;
        end
         else
          Result:= -1 ;

      finally
        sp_PackageTypes.Close;
        end;
     End ;//With dm_ImportWoodx do
    end;



    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
     With dm_ImportWoodx do
     Begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := cds_ImpProdMapProductNo.AsInteger ;

//      if mtUserProp.FieldByName('BARCODENO').AsInteger < 1 then
//      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := 0
//      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0 ;//mtUserProp.FieldByName('BARCODENO').AsInteger ;

//      if mtUserProp.FieldByName('GRADESTAMPNO').AsInteger < 1 then
//      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := 0
//      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0 ;//mtUserProp.FieldByName('GRADESTAMPNO').AsInteger ;

      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := cds_ImpProdMapStyck.AsInteger ;
      sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' :sp_NewPackageType.ExecProc') ;
       Raise ;
      End ;
     end;

//************** Now add the PackageTypeDetail records. ********************


 cds_ImpLenMap.DisableControls ;
 Try
// cds_ImpLenMap.Filter   := 'Identifier = ' + cds_ImpProdMapIdentifier.AsString ;
// cds_ImpLenMap.Filtered := True ;

 cds_ImpLenMap.Active := False ;
// cds_ImpLenMap.ParamByName('Identifier').AsString              := cds_ImpProdMapIdentifier.AsString ;
// cds_ImpLenMap.ParamByName('DeliveryMessageNumber').AsString   := cds_ImpProdMapDeliveryMessageNumber.AsString ;
 cds_ImpLenMap.Active := True ;

 Try
 cds_ImpLenMap.First ;
 While not cds_ImpLenMap.Eof do
 Begin
  Try
  sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
  sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := cds_ImpLenMapProductLengthNo.AsInteger ;
  sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := cds_ImpLenMapStyck.AsInteger ;
  sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
  sp_NewPackageDetail.ExecProc;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message+' :sp_NewPackageDetail.ExecProc') ;
    Raise ;
   End ;
  end;
  cds_ImpLenMap.Next ;
 End ;
 Finally
//  cds_ImpLenMap.Filtered := False ;
 End ;
 Finally
  cds_ImpLenMap.EnableControls ;
 End ;

 End ;// With dm_ImportWoodx do

end;


procedure  SavePackageTypeLengths ;
Begin
 Try
 sp_Populate_One_PkgTypeLengths.Close ;
 sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
 sp_Populate_One_PkgTypeLengths.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' :sp_Populate_One_PkgTypeLengths.ExecProc') ;
   Raise ;
  End ;
 end;
 sp_Populate_One_PkgTypeLengths.Close ;
End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
    Try
    sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotals.ExecProc;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' :sp_PackageTotals.ExecProc') ;
   Raise ;
  End ;
 end;
    sp_PackageTotals.Close;
  end;

  begin
   //Main SavePkgType ;
      SelectMatchingPkgTypeHdrs;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
  end;

  procedure SavePackage ;
  begin
   With dm_ImportWoodx do
   Begin
    Try
    sp_NewPkgNo_Price_NoPP.ParamByName('@PackageNo'              ).AsInteger      := cds_ImpProdMapIdentifier.AsInteger ;
    sp_NewPkgNo_Price_NoPP.ParamByName('@PackageTypeNo'          ).AsInteger      := PackageTypeNo;
    sp_NewPkgNo_Price_NoPP.ParamByName('@SupplierCode'           ).AsString       := cds_ImpProdMapClientCode.AsString ;
    sp_NewPkgNo_Price_NoPP.ParamByName('@LogicalInventoryPointNo').AsInteger      := mtUserProp.FieldByName('LIPNo').AsInteger ;
    sp_NewPkgNo_Price_NoPP.ParamByName('@SupplierNo'             ).AsInteger      := mtUserProp.FieldByName('OwnerNo').AsInteger ;
    sp_NewPkgNo_Price_NoPP.ParamByName('@RegistrationPointNo'    ).AsInteger      := 20 ; //Inköp //mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_NewPkgNo_Price_NoPP.ParamByName('@UserID'                 ).AsInteger      := ThisUser.UserID;
    sp_NewPkgNo_Price_NoPP.ParamByName('@CreatedOfPkgStr'        ).AsInteger      := 0 ; // 0 = Manual entry
    sp_NewPkgNo_Price_NoPP.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    sp_NewPkgNo_Price_NoPP.ParamByName('@Price'                  ).AsFloat      := 0 ;
//    sp_NewPackageNo.ParamByName('OwnerNo'                ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
//    sp_NewPackageNo.ParamByName('ProducerNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
//    sp_NewPackageNo.ParamByName('ProgramNo'              ).AsInteger  := -1 ;
//    sp_NewPackageNo.ParamByName('ShiftNo'                ).AsInteger  := -1 ;
    sp_NewPkgNo_Price_NoPP.ExecProc;
    except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' :sp_NewPkgNo_Price_NoPP.ExecProc') ;
       Raise ;
      End ;
    end;
   End ;//With dm_ImportWoodx do
  end;

//Main SaveImportedPackages
begin
 With dm_ImportWoodx do
 Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 PackagetypeNo  := -1 ;
 cds_ImpProdMap.DisableControls ;
 Try
  Result:= False ;
  cds_ImpProdMap.First ;
  While not cds_ImpProdMap.Eof do
  Begin
  TransactionNo := dmsConnector.StartTransaction;
  try
      SavePkgType ;

      Try
      SavePackage ;
      except
//       ShowMessage ('Could not save Package no ' + Pkg_Info(cds_ImpProdMap.Fields[cPACKAGENO].AsInteger, Trim(cds_ImpProdMap.Fields[cSUPPLIERCODE].AsString)));
       Result:= False ;
       Raise ;
      End ;

     cds_ImpProdMap.Next ;
     PackageTypeNo:= -1 ;
    dmsConnector.Commit ;
    Result:= True ;
   except
    dmsConnector.Rollback ;
    Result:= False ;
    raise;
   end;
  end ;//While


 Finally
  cds_ImpProdMap.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With dm_ImportWoodx do
end;

function TdmsProduct.Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('@PackageNo').AsInteger   := PkgNo ;
 sp_PkgInfo.ParamByName('@SupplierCode').AsString := SuppCode ;
 sp_PkgInfo.Open ;
 Result := intToStr(PkgNo)  + '/' + SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;


procedure TdmsProduct.MakeLengthQueryAllaPGLength ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE) ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

procedure TdmsProduct.MakeLengthQuery ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductLength PL');
 sq_ProductLengths.SQL.Add(LengthWHERE) ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmsProduct.LengthWHERE : String ;
 Var //x : integer ;
     SQL : String ;
 Begin
  SQL:= '' ;
   With Self do
   Begin
    mtLO_Records.First ;
    if not mtLO_Records.Eof then
    Begin
     SQL:= ' WHERE ((PGL.ProductGroupNo = '+mtLO_RecordsPRODUCTGROUPNO.AsString+')' ;
    End ;
    mtLO_Records.Next ;
    While not mtLO_Records.Eof do
    Begin
     SQL:= SQL + ' OR (PGL.ProductGroupNo = '+mtLO_RecordsPRODUCTGROUPNO.AsString+')' ;
     mtLO_Records.Next ;

    End ; //while
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.Act = 1' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;
   End ;//with
   Result:= SQL ;
End ;

procedure TdmsProduct.mtPackagesAfterPost(DataSet: TDataSet);
Var x         : Integer ;
   SavePlace  : TBookmark ;
begin

 if Self.InputOption = INPUT_PIECES then
 if InputOption <> 2 then
  For x:= FirstLengthColumnInmatningViaLast to mtPackages.Fields.Count - 1 do
   PcsPerLengthArray[x]:= mtPackages.Fields[x].AsInteger ;

 OldProductGroupNo:= mtPackages.FieldByName('ProductGroupNo').AsInteger ;


 OldProductNo:= mtPackages.FieldByName('ProductNo').AsInteger ;

  if mtLO_Records.FindKey([mtPackages.FieldByName('Defsspno').AsInteger]) then
  Begin
   mtLO_Records.Edit ;
   mtLO_RecordsMATCH.AsInteger:= 1 ;
   mtLO_Records.Post ;
  End ;


  SavePlace:= mtPackages.GetBookmark ;
  Try
  mtDupPkgNo.Active:= False ;
  mtDupPkgNo.Active:= True ;
  mtPackages.First ;
  While not mtPackages.Eof do
  Begin
  mtDupPkgNo.Insert;
  Try
  mtDupPkgNoPackageNo.AsInteger:= DataSet.Fields[cPACKAGENO].AsInteger ;
  mtDupPkgNoSupplierCode.AsString:= Trim(DataSet.Fields[cSUPPLIERCODE].AsString) ;
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

procedure TdmsProduct.mtPackagesAfterInsert(DataSet: TDataSet);
Var PCSPERPKG, x    : Integer ;
    sActualLengthMM : String ;
begin
 Get_LO_LinesMatched_Enabled:= False ;
 Try
 PCSPERPKG:= 0 ;
 With Self do
 Begin
 Try

//April 20 2004
 sActualLengthMM:= '0';
 mtPackages.FieldByName('PackageTypeNo').AsInteger:=  GetPackageTypeNo(mtLO_RecordsPKGCODE.AsString, PCSPERPKG, sActualLengthMM) ;
 if (mtPackages.FieldByName('PackageTypeNo').AsInteger > 0) and (sActualLengthMM > '0') then
  mtPackages.FieldByName(sActualLengthMM).AsInteger:= PCSPERPKG ;

//April 20 2004
//if packagetypeno then dont worry about copy pcs per length
 if mtPackages.FieldByName('PackageTypeNo').AsInteger = 0 then
 Begin
  if OldProductGroupNo = mtLO_RecordsPRODUCTGROUPNO.AsInteger then
  For x:= FirstLengthColumnInmatningViaLast to mtPackages.Fields.Count - 1 do
   Begin
    if mtPackages.Fields.Fields[x].ReadOnly = False then
    if Self.InputOption <> 2 then

    if PcsPerLengthArray[x] > 0 then
    Begin
    if CopyPcs = True then
     mtPackages.Fields[x].AsInteger:= PcsPerLengthArray[x] ;
    End
    else
    Begin
//     mtPackages.Fields[x].AsFloat:= AVERAGE_LengthArray[x] ;
    End ;
    PcsPerLengthArray[x]:= 0 ;
   End ;
 End ;
  mtPackages.FieldByName('RecId').AsInteger           := GlobalCounter ;
  mtPackages.FieldByName('ProductGroupNo').AsInteger  := mtLO_RecordsPRODUCTGROUPNO.AsInteger ;
  mtPackages.FieldByName('ProductNo').AsInteger       := mtLO_RecordsPRODUCTNO.AsInteger ;
  mtPackages.FieldByName('SupplierCode').AsString     := SupplierCode ; //removed TRIM sep 10
  mtPackages.FieldByName('Description').AsString      := mtLO_RecordsPRODUCTDESCRIPTION.AsString ;
  mtPackages.FieldByName('ACT_THICK').AsFloat         := mtLO_RecordsACT_THICK.AsFloat ;
  mtPackages.FieldByName('ACT_WIDTH').AsFloat         := mtLO_RecordsACT_WIDTH.AsFloat ;
  mtPackages.FieldByName('NOM_THICK').AsFloat         := mtLO_RecordsNOM_THICK.AsFloat ;
  mtPackages.FieldByName('NOM_WIDTH').AsFloat         := mtLO_RecordsNOM_WIDTH.AsFloat ;
  mtPackages.FieldByName('INCH_THICK').AsFloat        := mtLO_RecordsINCH_THICK.AsFloat ;
  mtPackages.FieldByName('INCH_WIDTH').AsFloat        := mtLO_RecordsINCH_WIDTH.AsFloat ;
  mtPackages.FieldByName('SurfacingNo').AsInteger     := GetUTNo(mtLO_RecordsPRODUCTNO.AsInteger) ;
  mtPackages.FieldByName('OverrideRL').AsInteger      := mtLO_RecordsOverrideRL.AsInteger ;
  mtPackages.FieldByName('Defsspno').AsInteger        := mtLO_RecordsSupplierShipPlanObjectNo.AsInteger ;
  mtPackages.FieldByName('Varuslag').AsInteger        := mtLO_RecordsVaruSlag.AsInteger ;

  if (Self.InputOption = INPUT_ARTICLES) and (mtLO_RecordsVaruSlag.AsInteger = 1) then
  Begin
   mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat := mtLO_RecordsACT_WIDTH.AsFloat / 100 ;
  End ;

  if PkgNoSeries = False then
  mtPackages.Post ;
  Finally
   GlobalCounter:= Succ(GlobalCounter) ;
   ChangeNoOfPcsEvent:= True ;
  End ;
 End ;
 Finally
  Get_LO_LinesMatched_Enabled:= True ;
 End ;
end;

procedure TdmsProduct.DataModuleCreate(Sender: TObject);
Var x : Integer ;
begin
 PkgNoSeries          := False ;
 GlobalCounter        := 1 ;
 y                    := 0 ;
 InputOption          := 0 ;
 mtDupPkgNo.Active    := True ;
 mtLO_Records.Active  := True ;
 For x := 0 to 400 do
 Begin
  PcsPerLengthArray[x]:= 0;
 End ;
end;

procedure TdmsProduct.mtPackagesBeforeInsert(DataSet: TDataSet);
begin
  if (((mtLO_RecordsACT_THICK.IsNull) or (mtLO_RecordsACT_THICK.AsFloat < 1)
  or (mtLO_RecordsACT_WIDTH.IsNull) or (mtLO_RecordsACT_WIDTH.AsFloat < 1))
  AND (mtLO_RecordsVaruSlag.AsInteger <> 2)) then
// if (((mtPackages.FieldByName('ACT_THICK').IsNull) or (mtPackages.FieldByName('ACT_THICK').AsFloat < 1) or
//  (mtPackages.FieldByName('ACT_WIDTH').IsNull) or  (mtPackages.FieldByName('ACT_WIDTH').AsFloat < 1))
//  AND (mtpackages.Fields[cVaruslag].AsInteger <> 2)) then
   Begin
    ShowMessage('Otillåten dimension!') ;
    Abort ;
   End ;

 if Length(Trim(SupplierCode)) = 0 then
 Begin
  ShowMessage('Verkkod saknas.');
  Abort ;
 End ;
 ChangeNoOfPcsEvent:= False ;
end;

procedure TdmsProduct.mtPackagesAfterDelete(DataSet: TDataSet);
begin
  mtDupPkgNo.Active:= False ;
  mtDupPkgNo.Active:= True ;
  mtPackages.First ;
  While not mtPackages.Eof do
  Begin
  mtDupPkgNo.Insert;
  Try
  mtDupPkgNoPackageNo.AsInteger:= DataSet.Fields[cPACKAGENO].AsInteger ;
  mtDupPkgNoSupplierCode.AsString:= Trim(DataSet.Fields[cSUPPLIERCODE].AsString) ;  
  mtDupPkgNo.Post ;
  Except
   on eDatabaseError do
   Begin
    Raise ;
   End ;
  End ;
  mtPackages.Next ;
  End ; //while
end;

procedure TdmsProduct.SummarizePkg ;
var x : Integer ;
begin
 With Self do
 Begin
  if mtpackages.State <> dsBrowse then
  Begin
   if Self.InputOption = INPUT_PIECES then
   Begin
    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    Begin
     mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
     mtpackages.Fields[x].AsInteger ;
    End ;

//MFBM
{    mtpackages.Fields[cTOTALMFBM].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALMFBM].AsFloat:= mtpackages.Fields[cTOTALMFBM].AsFloat +
    (mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cINCHTHICK].AsFloat * mtpackages.Fields[cINCHWIDTH].AsFloat
    * FEET_Array[x]/12/1000) ;
 }

//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    Begin
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
//    ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
    End ;

//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ; }
//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALLPM].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
//    ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    );

//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
//    ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
   End
   else
   if Self.InputOption = INPUT_LOPM_TOTAL_LOPM then
//INPUT LÖPMETER!!
   Begin
//PCS
    if mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsInteger < 1 then
     mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsInteger:= 1 ;

    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ; //pcs
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
    mtpackages.Fields[x].AsInteger ;
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
{    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[cTOTALLPM].AsFloat
    /
    mtpackages.Fields[cTOTALPCS].AsInteger*1000; }


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat

    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;
 }
//LOPM

//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat * //LÖPM
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
   End
   else
   if Self.InputOption = INPUT_LOPM_AVERAGE_LENGTH then
//INPUT LÖPMETER AVERAGE LENGTH!!
   Begin
//PCS
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
//    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsFloat ;


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
//    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    (mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;

//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    (mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ; }

//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALLPM].AsFloat +
//    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    (mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    );


//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
//    (NominalLengthMMArray[x]
    (mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);

   End ;
  End ; //if
 End ; //With
end;

procedure TdmsProduct.SummarizeArticles ;
var x : Integer ;
begin
 With Self do
 Begin
  if mtpackages.State <> dsBrowse then
  Begin
(*   if Self.InputOption = INPUT_PIECES then
   Begin
    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    Begin
     mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
     mtpackages.Fields[x].AsInteger ;
    End ;

//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    Begin
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
//    ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
    End ;

//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ; }
//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALLPM].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
//    ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    );

//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
//    ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
   End
   else
   if Self.InputOption = INPUT_LOPM_TOTAL_LOPM then
//INPUT LÖPMETER!!
   Begin
//PCS
    if mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsInteger < 1 then
     mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsInteger:= 1 ;

    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ; //pcs
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
    mtpackages.Fields[x].AsInteger ;
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
{    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[cTOTALLPM].AsFloat
    /
    mtpackages.Fields[cTOTALPCS].AsInteger*1000; }


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat

    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;
 }
//LOPM

//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat * //LÖPM
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
   End
   else *)
//   if Self.InputOption = INPUT_LOPM_AVERAGE_LENGTH then
//INPUT LÖPMETER AVERAGE LENGTH!!
   Begin
//PCS
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
//    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
//    mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsFloat ;


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALACTM3].AsFloat:= pi* Sqr(mtpackages.Fields[cACTTHICK].AsFloat/100/2)
    * (mtpackages.Fields[cACTWIDTH].AsFloat/100)
    * mtpackages.Fields[cTOTALPCS].AsInteger ;

{    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ; }

//NOM M3
   mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat ;
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    (mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ; }

//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALPCS].AsInteger * (mtpackages.Fields[cACTWIDTH].AsFloat/100) ;

{    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALLPM].AsFloat +
    (mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    ); }


//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
{    For x:= FirstLengthColumnInmatningViaLast to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (mtpackages.Fields.Fields[FirstLengthColumnInmatningViaLast].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000); }

   End ;
  End ; //if
 End ; //With
end;

procedure TdmsProduct.mtPackagesBeforePost(DataSet: TDataSet);
begin

 if (Self.InputOption = INPUT_ARTICLES) and (mtLO_RecordsVaruSlag.AsInteger = 1) then
 SummarizeArticles
 else
 SummarizePkg ;
end;

Procedure TdmsProduct.Get_LO_LinesMatched ;
Var SupplierShipPlanObjectNo : Integer ;
Begin
 if Get_LO_LinesMatched_Enabled then
 Begin
  if (mtLO_Records.RecordCount > 0) and (mtPackages.RecordCount > 0) then
  Begin
  Try
   mtLO_Records.DisableControls ;
   With dmsProduct do
   Begin
//Sätt current match till 0, vi vill bara se en LO rad kryssad i match kolumnen
    if mtLO_Records.State in [dsEdit, dsInsert] then mtLO_Records.Post ;
    mtLO_Records.Filter:= 'Match = 1' ;
    mtLO_Records.Filtered:= True ;
    Try
    mtLO_Records.First ;
    While not mtLO_Records.Eof do
    Begin
     mtLO_Records.Edit ;
     mtLO_RecordsMATCH.AsInteger:= 0 ;
     mtLO_Records.Post ;
    End ;
    Finally
     mtLO_Records.Filtered:= False ;
    End ;
      if mtLO_Records.FindKey([mtPackages.FieldByName('Defsspno').AsInteger]) then
      Begin
       mtLO_Records.Edit ;
       mtLO_RecordsMATCH.AsInteger:= 1 ;
       mtLO_Records.Post ;
      End
      else
      Begin
       mtLO_Records.Edit ;
       mtLO_RecordsMATCH.AsInteger:= 0 ;
       mtLO_Records.Post ;
      End ;
   End ; //with
  Finally
   mtLO_Records.EnableControls ;
  End ;
 End ;//if...
 End ;
End ;

function TdmsProduct.GetPackageTypeNo(Const PKGCODE : String;Var PCSPERPKG : Integer;Var sActualLengthMM : String) : Integer ;
Var PKGCODE_2 : String ;
Begin
 PKGCODE_2 := Trim(PKGCODE) ;
 if Length(PKGCODE_2) > 0 then
 Begin
 PCSPERPKG:= 0 ;
 sActualLengthMM:= '0' ;
 sq_GetPkgTypeNo.Close ;
 sq_GetPkgTypeNo.ParamByName('PackageCodeNo').AsString:= PKGCODE ;
 sq_GetPkgTypeNo.Open ;
 if sq_GetPkgTypeNo.Eof then
  Result:= 0
   else
    Begin
     Result           := sq_GetPkgTypeNoPackageTypeNo.AsInteger ;
     PCSPERPKG        := sq_GetPkgTypeNoTotalNoOfPieces.AsInteger ;
     sActualLengthMM  := sq_GetPkgTypeNoActualLengthMM.AsString ;
    End ;
 sq_GetPkgTypeNo.Close ;
 End
  else
   Result:= 0 ;
End ;

procedure TdmsProduct.mtPackagesChangeNoOfPcs(Sender: TField);
begin
 if ChangeNoOfPcsEvent then
 Begin
  if mtPackages.FieldByName('PackageTypeNo').AsInteger > 0 then
   mtPackages.FieldByName('PackageTypeNo').AsInteger := 0 ;
 End ;
end;

procedure TdmsProduct.AttachOnChangeEventTomtPackages ;
Var x : Integer ;
Begin
 For x:= FirstLengthColumnInmatningViaLast to mtPackages.FieldCount - 1 do
 Begin
  mtPackages.Fields.Fields[x].OnChange:= mtPackagesChangeNoOfPcs ;
 End ;
End ;

procedure TdmsProduct.MakeLengthQuery_ForLOLengths_Only ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthMM, PL.NominalLengthFEET ,');
 sq_ProductLengths.SQL.Add('PL.ActualLengthINCH');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE_ForLOLengths_Only) ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmsProduct.LengthWHERE_ForLOLengths_Only : String ;
 Var SQL : String ;
 Begin
  SQL:= '' ;
   With Self do
   Begin
    mtLO_Records.First ;
    if not mtLO_Records.Eof then
    Begin
     SQL:= ' WHERE ((PL.ProductLengthNo = '+mtLO_RecordsProductLengthNo.AsString+')' ;
    End ;
    mtLO_Records.Next ;
    While not mtLO_Records.Eof do
    Begin
     SQL:= SQL + ' OR (PL.ProductLengthNo = '+mtLO_RecordsProductLengthNo.AsString+')' ;
     mtLO_Records.Next ;

    End ; //while
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;
   End ;//with
   Result:= SQL ;
 End ;

procedure TdmsProduct.MakeLengthQuery_STD_Lengths  (const STD_LengthGroupNo : Integer) ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthMM, PL.NominalLengthFEET ,');
 sq_ProductLengths.SQL.Add('PL.ActualLengthINCH ');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductLengthGroup PGL');
 sq_ProductLengths.SQL.Add('INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add('WHERE  PGL.GroupNo = '+IntToStr(STD_LengthGroupNo)) ;
 sq_ProductLengths.SQL.Add('AND PL.ActualLengthMM > 0.5 AND PL.ActualLengthMM < 40000 ORDER BY PL.ActualLengthMM');
// if thisuser.userid = 8 then sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmsProduct.WHERE_For_STD_Lengths : String ;
 Var SQL : String ;
 Begin
  SQL:= '' ;
   With Self do
   Begin
    mtLO_Records.First ;
    if not mtLO_Records.Eof then
    Begin
     SQL:= ' AND ((PrL.ProductGroupNo = '+mtLO_RecordsPRODUCTGROUPNO.AsString+')' ;
    End ;
    mtLO_Records.Next ;
    While not mtLO_Records.Eof do
    Begin
     SQL:= SQL + ' OR (PrL.ProductGroupNo = '+mtLO_RecordsPRODUCTGROUPNO.AsString+')' ;
     mtLO_Records.Next ;

    End ; //while
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;
   End ;//with
   Result:= SQL ;
 End ;

function TdmsProduct.IsLOOnlyFixedLengths : Boolean ;
Begin
 Result:= True ;
 mtLO_Records.First ;
 While not mtLO_Records.Eof do
  Begin
   if (mtLO_RecordsProductLengthNo.AsInteger = 453)
   or (mtLO_RecordsProductLengthNo.AsInteger = 533)
   or (mtLO_RecordsProductLengthNo.AsInteger = 1831)
   or (mtLO_RecordsProductLengthNo.AsInteger = 1960)
   or (mtLO_RecordsProductLengthNo.AsInteger = 3187)
   or (mtLO_RecordsProductLengthNo.AsInteger = 3190)   then
    Result:= False ;
    mtLO_Records.Next ;
  End ; //while
End ;


procedure TdmsProduct.MakeLengthQuery_STD_Lengths_Ver2 ;
Var SQL : String ;
    Ett : Boolean ;
Begin
 Ett:= False ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductLengthGroup PGL');
 sq_ProductLengths.SQL.Add('INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');

 mtLO_Records.First ;
 While not mtLO_Records.Eof do
 Begin
  if (mtLO_RecordsProductLengthGroupNo.AsInteger > 0) and (Ett = False) then
   Begin
    SQL:= 'WHERE  ((PGL.GroupNo = '+IntToStr(mtLO_RecordsProductLengthGroupNo.AsInteger)+')' ;
    Ett:= True ;
   End
   else
   SQL:= SQL + ' OR (PGL.GroupNo = '+IntToStr(mtLO_RecordsProductLengthGroupNo.AsInteger)+')' ;
  mtLO_Records.Next ;
 End ;
 SQL:= SQL + ')' ;

 sq_ProductLengths.SQL.Add(SQL) ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_MakeLengthQuery_STD_Lengths_ver2.txt');
End ;

function TdmsProduct.WHERE_For_STD_Lengths_Ver2 : String ;
 Var SQL : String ;
Begin
  SQL:= '' ;
   With Self do
   Begin
    mtLO_Records.First ;
    if not mtLO_Records.Eof then
    Begin
     SQL:= ' AND ((PrL.ProductGroupNo = '+mtLO_RecordsPRODUCTGROUPNO.AsString+')' ;
    End ;
    mtLO_Records.Next ;
    While not mtLO_Records.Eof do
    Begin
     SQL:= SQL + ' OR (PrL.ProductGroupNo = '+mtLO_RecordsPRODUCTGROUPNO.AsString+')' ;
     mtLO_Records.Next ;

    End ; //while
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;

   End ;//with
   Result:= SQL ;
End ;

procedure TdmsProduct.MakeLengthQuery_ForLOLengths_Only_ver2 ;
Begin
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductLength PL');
 sq_ProductLengths.SQL.Add(LengthWHERE_ForLOLengths_Only_ver2) ;
// if ThisUser.UserID = 8 then sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

function TdmsProduct.LengthWHERE_ForLOLengths_Only_ver2 : String ;
 Var SQL : String ;
Begin
  SQL:= '' ;
   With Self do
   Begin
    Try
    mtLO_Records.Filter:='ProductLengthGroupNo = 0' ;
    mtLO_Records.Filtered:= True ;


    mtLO_Records.First ;
    if not mtLO_Records.Eof then
    Begin
      SQL:= ' WHERE ((PL.ProductLengthNo = '+mtLO_RecordsProductLengthNo.AsString+')' ;
    End ;
    mtLO_Records.Next ;
    While not mtLO_Records.Eof do
    Begin
     SQL:= SQL + ' OR (PL.ProductLengthNo = '+mtLO_RecordsProductLengthNo.AsString+')' ;
     mtLO_Records.Next ;

    End ; //while
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;

    Finally
     mtLO_Records.Filtered:= False ;
    End ;
   End ;//with
   Result:= SQL ;
End ;

procedure TdmsProduct.ADD_LO_Lengths ;
Begin
 if (DoesLOHaveFixedLength = True) and (DoesLOHaveValidLengthGroupNo = True) then
 Begin
  sq_ProductLengths.SQL.Clear ;
  MakeLengthQuery_STD_Lengths_Ver2 ;
  sq_ProductLengths.SQL.Add('UNION') ;
  MakeLengthQuery_ForLOLengths_Only_ver2 ;
  sq_ProductLengths.SQL.Add('ORDER BY PL.ActualLengthMM ') ;
 End
 else
 if (DoesLOHaveFixedLength = True) then
 Begin
  sq_ProductLengths.SQL.Clear ;
  MakeLengthQuery_ForLOLengths_Only_ver2 ;
  sq_ProductLengths.SQL.Add('ORDER BY PL.ActualLengthMM ') ;
 End
 else
  if (DoesLOHaveValidLengthGroupNo = True) then
  Begin
   sq_ProductLengths.SQL.Clear ;
   MakeLengthQuery_STD_Lengths_Ver2 ;
   sq_ProductLengths.SQL.Add('ORDER BY PL.ActualLengthMM ') ;
  End ;
End ;

function TdmsProduct.DoesLOHaveValidLengthGroupNo : Boolean ;
Begin
 Result:= False ;
 mtLO_Records.First ;
 While not mtLO_Records.Eof do
 Begin
  if mtLO_RecordsProductLengthGroupNo.AsInteger > 0 then
   Result:= True ;
  mtLO_Records.Next ;
 End ;
End ;

function TdmsProduct.DoesLOHaveFixedLength : Boolean ;
Begin
 Result:= False ;
 mtLO_Records.First ;
 While not mtLO_Records.Eof do
  Begin
   if (mtLO_RecordsProductLengthNo.AsInteger <> 453)
   and (mtLO_RecordsProductLengthNo.AsInteger <> 533)
   and (mtLO_RecordsProductLengthNo.AsInteger <> 1831)
   and (mtLO_RecordsProductLengthNo.AsInteger <> 1960)
   and (mtLO_RecordsProductLengthNo.AsInteger <> 3187)
   and (mtLO_RecordsProductLengthNo.AsInteger <> 3190)         then
    Result:= True ;
    mtLO_Records.Next ;
  End ; //while
End ;


    Function TdmsProduct.GetNoOfLengthsInPackage(Var ProductLengthNo : Integer) : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     for x := FirstLengthColumnInmatningViaLast to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       Result:= Result + 1 ;
       ProductLengthNo := StrToInt(mtPackages.Fields[x].FieldName) ;
      End ;
     End ;
    End ;

function TdmsProduct.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('@PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('@SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end ;


//for package entry without LO
procedure TdmsProduct.MakeLengthQuery_II ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
// sq_ProductLengths.SQL.Add('PL.ActualLengthINCH');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE_II) ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmsProduct.LengthWHERE_II : String ;
 Var SQL : String ;
 Begin
  SQL:= '' ;
   With Self do
   Begin
    mtLO_Records.First ;
    if not mtLO_Records.Eof then
    Begin
     SQL:= ' WHERE ((PGL.ProductGroupNo = '+mtLO_RecordsPRODUCTGROUPNO.AsString+')' ;
    End ;
    mtLO_Records.Next ;
    While not mtLO_Records.Eof do
    Begin
     SQL:= SQL + ' OR (PGL.ProductGroupNo = '+mtLO_RecordsPRODUCTGROUPNO.AsString+')' ;
     mtLO_Records.Next ;

    End ; //while
    SQL:= SQL +') ' ;
    SQL:= SQL + ' AND PL.Act = 1' ;
    SQL:= SQL + ' AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;

   End ;//with
   Result:= SQL ;
 End ;

function TdmsProduct.SaveArticlePackages(const SaveToProdLogg, ProducerNo, LogicalInventoryPointNo, RegPointNo, RunNo: Integer;const WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor:TCursor;
const
  PKGS_CREATED_AT_PLANER_MILL = 1;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
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
      sp_PackageTypesA.ParamByName('@ProductNo'    ).AsInteger := mtPackages.Fields[cPRODUCTNO].AsInteger ;

      if mtPackages.Fields[cBARCODEID].AsInteger = 0 then
      sp_PackageTypesA.ParamByName('@BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypesA.ParamByName('@BarCodeID'    ).AsInteger := mtPackages.Fields[cBARCODEID].AsInteger ;
      if mtPackages.Fields[cGRADESTAMP].AsInteger = 0 then
      sp_PackageTypesA.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypesA.ParamByName('@GradeStamp'   ).AsInteger := mtPackages.Fields[cGRADESTAMP].AsInteger ;
      sp_PackageTypesA.ParamByName('@TotalPieces'  ).AsInteger := mtPackages.Fields[cTOTALPCS].AsInteger ;
      sp_PackageTypesA.Open;
      try
        sp_PackageTypesA.First;
        while not sp_PackageTypesA.Eof do begin
          PkgTypeNumbers.Add(Pointer(sp_PackageTypesA.FieldByName('PackageTypeNo').AsInteger));
          sp_PackageTypesA.Next;
          end;
      finally
        sp_PackageTypesA.Close;
        end;

    end;

    Function GetNoOfLengthsInIMPORTEDPkg : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     mtImportedProductLengths.Filter:= 'PackageNo = '+mtPackages.Fields[cPACKAGENO].AsString ;
     mtImportedProductLengths.Filtered:= True ;
     Try
     mtImportedProductLengths.First ;
     While not mtImportedProductLengths.Eof do
     Begin
       New(ARecord);
       ARecord^.ProductLengthNo :=  dmsSystem.GetProductLengthNoByLengthRule(mtImportedProductLengthsALMM.AsString,
                                    mtPackages.FieldByName('NOM_THICK').AsFloat,
                                    mtPackages.FieldByName('SurfacingNo').AsInteger) ;

       ARecord^.NoOfPieces      := mtImportedProductLengthsNoOfPcs.AsInteger ;

       MyList.Add(ARecord);
       mtImportedProductLengths.Next ;
     End ;//while
     Finally
      mtImportedProductLengths.Filtered:= False ;
     End ;
    End ;


    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     for x := FirstLengthColumnInmatningViaLast to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       New(ARecord);
       ARecord^.ProductLengthNo :=  dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                    mtPackages.FieldByName('NOM_THICK').AsFloat,
                                    mtPackages.FieldByName('SurfacingNo').AsInteger) ;


       ARecord^.NoOfPieces      := mtPackages.Fields[x].AsInteger ;
       MyList.Add(ARecord);
      End ;
     End ;
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry : Integer ;
    Var x : Integer ;
        ML : Double ;
    Begin
     ML     := (mtpackages.Fields[cTOTALLPM].AsFloat*1000) ;
     Result:= 0 ;
     New(ARecord);
     ARecord^.ProductLengthNo :=  dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     ARecord^.NoOfPieces      := 1 ; //mtPackages.Fields[x].AsInteger ;
     MyList.Add(ARecord);
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION : Integer ;
    Var x : Integer ;
        ML : Double ;
    Begin
     ML     := (mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsFloat*1000) ;
     Result := 0 ;
     New(ARecord);
     ARecord^.ProductLengthNo := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     ARecord^.NoOfPieces      := mtPackages.Fields[cTOTALPCS].AsInteger ;
     MyList.Add(ARecord);
    End ;

    Function GetLengthsOf_INPUT_ARTICLES : Integer ;
    Var x : Integer ;
        ML : Double ;
    Begin
     ML     := mtPackages.FieldByName('ACT_WIDTH').AsFloat * 10 ; //(mtpackages.Fields[FirstLengthColumnInmatningViaLast].AsFloat*1000) ;
     Result := 0 ;
     New(ARecord);
     ARecord^.ProductLengthNo := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     ARecord^.NoOfPieces      := mtPackages.Fields[cTOTALPCS].AsInteger ;
     MyList.Add(ARecord);
    End ;

    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
      if Self.InputOption = INPUT_IMPORTEDPACKAGES then
      NoOfLengths := GetNoOfLengthsInIMPORTEDPkg
      else
      if Self.InputOption = INPUT_PIECES then
       NoOfLengths := GetNoOfLengthsInPkg
       else
       if Self.InputOption = INPUT_LOPM_TOTAL_LOPM then
        NoOfLengths := GetNoOfLengthsInPkg_LPM_Entry
        else
         if Self.InputOption = INPUT_LOPM_AVERAGE_LENGTH then
          NoOfLengths := GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION 
           else
            if Self.InputOption = INPUT_ARTICLES then
             NoOfLengths := GetLengthsOf_INPUT_ARTICLES ;


      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetailA.Close;
          sp_PackageTypeDetailA.ParamByName('@PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
          sp_PackageTypeDetailA.Open;

          LengthMatched := TRUE;
          iDtl := 0;
          sp_PackageTypeDetailA.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetailA and the
          // grid column info are in length order, smallest to largest.

          while LengthMatched and not sp_PackageTypeDetailA.Eof and (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];


            if (sp_PackageTypeDetailA.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetailA.FieldValues['NoOfPieces'] <>
              ARecord^.NoOfPieces) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetailA.Next;
              end;
          end;

          if LengthMatched and sp_PackageTypeDetailA.Eof and (iDtl = MyList.Count) then
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
      sp_NewPackageTypeA.Close ;
      sp_NewPackageTypeA.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageTypeA.ParamByName('@ProductNo'       ).AsInteger := mtPackages.Fields[cPRODUCTNO].AsInteger ;

      if mtPackages.Fields[cBARCODEID].AsInteger = 0 then
      sp_NewPackageTypeA.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageTypeA.ParamByName('@BarCodeID'       ).AsInteger := mtPackages.Fields[cBARCODEID].AsInteger ;

      if mtPackages.Fields[cGRADESTAMP].AsInteger = 0 then
      sp_NewPackageTypeA.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageTypeA.ParamByName('@GradeStamp'      ).AsInteger := mtPackages.Fields[cGRADESTAMP].AsInteger ;
      sp_NewPackageTypeA.ParamByName('@TotalNoOfPieces' ).AsInteger := mtPackages.Fields[cTOTALPCS].AsInteger ;
      sp_NewPackageTypeA.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageTypeA.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

      // Now add the PackageTypeDetail records.
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        Try
        sp_NewPackageDetailA.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetailA.ParamByName('@ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetailA.ParamByName('@NoOfPieces'     ).AsInteger  := ARecord^.NoOfPieces ;
        sp_NewPackageDetailA.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetailA.ExecProc;
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
      sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
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
    sp_PackageTotalsA.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotalsA.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
    sp_PackageTotalsA.Close;
  end;

//SavePkgType ;
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

  procedure SavePackage ;
  begin
   if SaveToProdLogg = 1 then
   Begin
    Try
    sp_NewPackageNoA.ParamByName('@PackageNo'              ).AsInteger  := mtPackages.Fields[cPACKAGENO].AsInteger ;
    sp_NewPackageNoA.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_NewPackageNoA.ParamByName('@SupplierCode'           ).AsString   := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString);
    sp_NewPackageNoA.ParamByName('@LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;
    sp_NewPackageNoA.ParamByName('@SupplierNo'             ).AsInteger  := SupplierNo;
    sp_NewPackageNoA.ParamByName('@RegistrationPointNo'    ).AsInteger  := RegPointNo ;
    sp_NewPackageNoA.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNoA.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewPackageNoA.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated);
    sp_NewPackageNoA.ParamByName('@OwnerNo'                ).AsInteger  := InventoryOwnerNo ;
    sp_NewPackageNoA.ParamByName('@ProducerNo'             ).AsInteger  := ProducerNo ;
    sp_NewPackageNoA.ParamByName('@RunNo'                  ).AsInteger  := RunNo ;
    sp_NewPackageNoA.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   End
   else
   Begin
     Try
     sp_NewPkgNoNoProdLoggA.ParamByName('@PackageNo'              ).AsInteger  := mtPackages.Fields[cPACKAGENO].AsInteger ;
     sp_NewPkgNoNoProdLoggA.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
     sp_NewPkgNoNoProdLoggA.ParamByName('@SupplierCode'           ).AsString   := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString);
     sp_NewPkgNoNoProdLoggA.ParamByName('@LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;
     sp_NewPkgNoNoProdLoggA.ParamByName('@SupplierNo'             ).AsInteger  := SupplierNo ;
     sp_NewPkgNoNoProdLoggA.ParamByName('@RegistrationPointNo'    ).AsInteger  := RegPointNo ;
     sp_NewPkgNoNoProdLoggA.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
     sp_NewPkgNoNoProdLoggA.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
     sp_NewPkgNoNoProdLoggA.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated);
     sp_NewPkgNoNoProdLoggA.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   End ;

  end;

//Main SaveArticlePackages
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 mtPackages.AfterPost:= NIL ;
 mtPackages.AfterInsert:= NIL ;
 mtPackages.DisableControls ;
 Try
 mtDupPkgNo.Active:= False ;
 mtDupPkgNo.Active:= True ;


  Result:= False ;
   mtPackages.First ;
   While not mtPackages.Eof do
    Begin
  dmsConnector.StartTransaction;
  try

   if mtPackages.Fields[cPACKAGETYPENO].AsInteger > 0 then
    PackageTypeNo:= mtPackages.Fields[cPACKAGETYPENO].AsInteger
     else
      SavePkgType ;

      Try
      SavePackage ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtPackages.Fields[cPACKAGENO].AsInteger, Trim(mtPackages.Fields[cSUPPLIERCODE].AsString)));
       Result:= False ;
       Raise ;
      End ;

    mtDupPkgNo.Insert ;
    mtDupPkgNoPackageNo.AsInteger   := mtPackages.Fields[cPACKAGENO].AsInteger ;
    mtDupPkgNoSupplierCode.AsString := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString) ;
    mtDupPkgNo.Post ;


    mtPackages.Edit ;
    mtPackages.Fields[cPACKAGETYPENO].AsInteger:= PackageTypeNo ;
    mtPackages.Post ;



     mtPackages.Next ;
     PackageTypeNo:= -1 ;
    dmsConnector.Commit;
    Result:= True ;
  except
    dmsConnector.Rollback;
    Result:= False ;
    raise;
  end;
 end;
 Finally
  mtPackages.AfterPost    := mtPackagesAfterPost ;
  mtPackages.AfterInsert  := mtPackagesAfterInsert ;
  mtPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmsProduct.cds_ProdLengthAfterInsert(DataSet: TDataSet);
begin
 cds_ProdLengthAct.AsInteger:= 0 ;
end;

//For adding and changing packages imported from Hampen
function TdmsProduct.SaveChangedPackages  : Boolean ;
Var
  Save_Cursor : TCursor;
var
  PackagetypeNo  : Integer ;

Function GetLengthsEntered : String ;

    Function GetNoOfLengthsInPkg : Integer ;
//    Var x : Integer ;
    Begin
     Result:= 0 ;
//     for x := FirstLengthColumnInmatningViaLast to mtPackages.FieldCount - 1 do
//     Begin
      mtImportedProductLengths.First ;
      While not mtImportedProductLengths.Eof do
      Begin
//       New(ARecord);
//       ARecord^.ProductLengthNo :=


//       ARecord^.NoOfPieces      :=
  //     MyList.Add(ARecord);
       mtImportedProductLengths.Edit ;
       mtImportedProductLengthsNoOfPcs.AsInteger  := sq_HTFPkgStatus.FieldByName('Styck').AsInteger ;
       mtImportedProductLengthsProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByLengthRule(mtImportedProductLengthsALMM.AsString,
                                    sq_HTFPkgStatus.FieldByName('NominalThicknessMM').AsFloat,
                                    sq_HTFPkgStatus.FieldByName('SurfacingNo').AsInteger) ;
       mtImportedProductLengths.Post ;
       mtImportedProductLengths.Next ;
      End ;//While
//     End ;
    End ;

Begin
 GetNoOfLengthsInPkg ;
 mtImportedProductLengths.First ;
 While not mtImportedProductLengths.Eof do
 Begin
  Result:= Result + mtImportedProductLengthsProductLengthNo.AsString
                                     + '/'
                                     + mtImportedProductLengthsNoOfPcs.AsString + '|' ;
  mtImportedProductLengths.Next ;
 End ;
End ;

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;
    begin
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := sq_HTFPkgStatus.FieldByName('ProductNo').AsInteger ;

      if sq_HTFPkgStatus.FieldByName('BARCODEID').AsInteger = 0 then
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := sq_HTFPkgStatus.FieldByName('BARCODEID').AsInteger ;

      if sq_HTFPkgStatus.FieldByName('GRADESTAMP').AsInteger = 0 then
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := sq_HTFPkgStatus.FieldByName('GRADESTAMP').AsInteger ;
      sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := sq_HTFPkgStatus.FieldByName('TotalNoOfPieces').AsInteger ;


      sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetLengthsEntered ;

      sp_PackageTypes.Open;
      try
//        sp_PackageTypes.First;
        if not sp_PackageTypes.Eof then begin
          Result := sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger ;
//          sp_PackageTypes.Next;
        end
         else
          Result:= -1 ;

      finally
        sp_PackageTypes.Close;
      end;

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
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := sq_HTFPkgStatus.FieldByName('PRODUCTNO').AsInteger ;

      if sq_HTFPkgStatus.FieldByName('BARCODEID').AsInteger = 0 then
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := sq_HTFPkgStatus.FieldByName('BARCODEID').AsInteger ;

      if sq_HTFPkgStatus.FieldByName('GRADESTAMP').AsInteger = 0 then
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := sq_HTFPkgStatus.FieldByName('GRADESTAMP').AsInteger ;
      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := sq_HTFPkgStatus.FieldByName('TotalNoOfPieces').AsInteger ;
      sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

      // Now add the PackageTypeDetail records.
        mtImportedProductLengths.First ;
        While not mtImportedProductLengths.Eof do
        Begin
         Try
          sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
          sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := mtImportedProductLengthsProductLengthNo.AsInteger ;
          sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := mtImportedProductLengthsNoOfPcs.AsInteger ;
          sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
          sp_NewPackageDetail.ExecProc;
         except
          On E: Exception do
          Begin
           dmsSystem.FDoLog(E.Message) ;
           Raise ;
          End ;
         end;
         mtImportedProductLengths.Next ;
        End ;//While
   End ;

    procedure  SavePackageTypeLengths ;
    Begin
      Try
      sp_Populate_One_PkgTypeLengths.Close ;
      sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
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
    sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
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

//SavePkgType ;
  begin
      PackageTypeNo:= SelectMatchingPkgTypeHdrs ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
  end;

  procedure UpdatePackage ;
  begin
     Try
     sp_vis_CngPkgTypeInPkg.ParamByName('@PackageNo'              ).AsInteger  := sq_HTFPkgStatus.FieldByName('Paketnr').AsInteger ;
     sp_vis_CngPkgTypeInPkg.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
     sp_vis_CngPkgTypeInPkg.ParamByName('@SupplierCode'           ).AsString   := Trim(sq_HTFPkgStatus.FieldByName('Prefix').AsString);
     sp_vis_CngPkgTypeInPkg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
     sp_vis_CngPkgTypeInPkg.ParamByName('@EventDate'              ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
     sp_vis_CngPkgTypeInPkg.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;//on
     end; //except
  end;

  procedure SaveNewPackage ;
  begin
    Try
    sp_NewPackageNo.ParamByName('@PackageNo'              ).AsInteger  := sq_HTFPkgStatus.FieldByName('Paketnr').AsInteger ;
    sp_NewPackageNo.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_NewPackageNo.ParamByName('@SupplierCode'           ).AsString   := Trim(sq_HTFPkgStatus.FieldByName('Prefix').AsString);

    if (sq_HTFPkgStatus.FieldByName('Prefix').AsString = 'HTF') and
    (sq_HTFPkgStatus.FieldByName('Paketnr').AsInteger > 6000000) then
    //Skapa paket i Galge om ovan uppfylls
    sp_NewPackageNo.ParamByName('@LogicalInventoryPointNo').AsInteger  := 10668
    else
    //I annat fall läggs det in på "Hampen, Hampen"
    sp_NewPackageNo.ParamByName('@LogicalInventoryPointNo').AsInteger  := 10481 ;

    sp_NewPackageNo.ParamByName('@SupplierNo'             ).AsInteger  := 3682 ;
    sp_NewPackageNo.ParamByName('@RegistrationPointNo'    ).AsInteger  := 7 ;
    sp_NewPackageNo.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewPackageNo.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(now);
    sp_NewPackageNo.ParamByName('@OwnerNo'                ).AsInteger  := 3682 ;
    sp_NewPackageNo.ParamByName('@ProducerNo'             ).AsInteger  := 3682 ;
    sp_NewPackageNo.ParamByName('@RunNo'                  ).AsInteger  := -1 ;
    sp_NewPackageNo.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;//on
     end; //except
  End ;


Procedure ReadInLengths ;
Begin
{ sq_PkgLengths.Active := False ;
 sq_PkgLengths.ParamByName('PackageNo').AsInteger   := sq_HTFPkgStatus.FieldByName('Paketnr').AsInteger ;
 sq_PkgLengths.ParamByName('Prefix').AsString       := sq_HTFPkgStatus.FieldByName('Prefix').AsString ;
 sq_PkgLengths.Active := True ; }
 mtImportedProductLengths.Active      := False ;
 mtImportedProductLengths.Active      := True ;
 mtImportedProductLengths.Insert ;
 mtImportedProductLengthsALMM.AsFloat := sq_HTFPkgStatusALMM.AsFloat ;
 mtImportedProductLengths.Post ;
End ;

//Main SaveChangedPackages
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  sq_HTFPkgStatus.Active  := False ;
  sq_HTFPkgStatus.ParamByName('Complete').AsInteger := 0 ;
  sq_HTFPkgStatus.Active  := True ;

// mtPackages.AfterPost:= NIL ;
// mtPackages.AfterInsert:= NIL ;
// mtPackages.DisableControls ;
 Try
  Result:= False ;
  sq_HTFPkgStatus.Filter   := 'Styck <> OriginalStyck' ;
  sq_HTFPkgStatus.Filtered := True ;
  sq_HTFPkgStatus.First ;
  While not sq_HTFPkgStatus.Eof do
  Begin
  if (not sq_HTFPkgStatus.FieldByName('ProductNo').IsNull) and (sq_HTFPkgStatus.FieldByName('ProductNo').AsInteger > 0)
  and (sq_HTFPkgStatusALMM.AsFloat > 0) and (not sq_HTFPkgStatusALMM.IsNull) then
  Begin

  dmsConnector.StartTransaction ;
  try
  ReadInLengths ;


//   if sq_HTFPkgStatus.FieldByName('PACKAGETYPENO').AsInteger > 0 then
//    PackageTypeNo:= sq_HTFPkgStatus.FieldByName('PACKAGETYPENO').AsInteger
//     else
      SavePkgType ;

      Try
      if sq_HTFPkgStatusPackageTypeNo.AsInteger < 1 then
      SaveNewPackage
      else
      UpdatePackage ;
      sq_HTFPkgStatus.Edit ;
      sq_HTFPkgStatus.FieldByName('Complete').AsInteger   := 1 ;
      sq_HTFPkgStatusPackageTypeNo.AsInteger              := PackageTypeNo ;
      sq_HTFPkgStatus.Post ;
      except
       ShowMessage ('Could not save Package no ' + Pkg_Info(sq_HTFPkgStatus.FieldByName('Paketnr').AsInteger,
       Trim(sq_HTFPkgStatus.FieldByName('Prefix').AsString)));
       Result:= False ;
       Raise ;
      End ;

     PackageTypeNo:= -1 ;
    dmsConnector.Commit ;
    Result:= True ;
  except
   dmsConnector.Rollback;
   Result:= False ;
   raise;
  end;
  End ;//if (not sq_HTFPkgStatus.FieldByName('ProductNo').IsNull) and (sq_HTFPkgStatus.FieldByName('ProductNo').AsInteger > 0) then
  sq_HTFPkgStatus.Next ;
 end;

  sq_HTFPkgStatus.Filter   := 'Styck = OriginalStyck' ;
  sq_HTFPkgStatus.Filtered := True ;
  sq_HTFPkgStatus.First ;
  While not sq_HTFPkgStatus.Eof do
  Begin
   dmsConnector.StartTransaction;
   Try
   sq_HTFPkgStatus.Edit ;
   sq_HTFPkgStatus.FieldByName('Complete').AsInteger  := 1 ;
   sq_HTFPkgStatus.Post ;

   dmsConnector.Commit ;
   Result:= True ;
   except
    dmsConnector.Rollback;
    Result:= False ;
    raise;
   end;
   sq_HTFPkgStatus.Next ;
  End ;//While..

 Finally
//  mtPackages.AfterPost    := mtPackagesAfterPost ;
//  mtPackages.AfterInsert  := mtPackagesAfterInsert ;
//  mtPackages.EnableControls ;
  mtImportedProductLengths.Active   := False ;
  sq_HTFPkgStatus.Filtered          := False ;
  Screen.Cursor                     := Save_Cursor;  { Always restore to normal }
 End ;

end;

Procedure TdmsProduct.InsertPkgsToTempTable ;
Var
  Save_Cursor   : TCursor;
  TransactionNo : LongWord;
Begin
 With dm_ImportWoodx do
 Begin
 Try
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 cds_ImpProdMap.DisableControls ;

 Try
  sq_DelTempPkgs.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
  sq_DelTempPkgs.ExecSQL ;
  except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message+' :sq_DelTempPkgs.ExecSQL') ;
     Raise ;
    End ;
  end;

 cds_ImpProdMap.First ;
  While not cds_ImpProdMap.Eof do
  Begin
   Try
   TransactionNo := dmsConnector.StartTransaction;
    try
    sq_InsTempPkgs.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
    sq_InsTempPkgs.ParamByName('PackageNo').AsInteger    := cds_ImpProdMapIdentifier.AsInteger ;
    sq_InsTempPkgs.ParamByName('SupplierCode').AsString  := cds_ImpProdMapClientCode.AsString ;
    sq_InsTempPkgs.ExecSQL ;
    except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' :sq_InsTempPkgs.ExecSQL') ;
       Raise ;
      End ;
    end;

    cds_ImpProdMap.Next ;
    dmsConnector.Commit ;
   except
    dmsConnector.Rollback ;
    raise;
   end;
  End ;//While not cds_ImpProdMap.Eof do

 Finally
  cds_ImpProdMap.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With dm_ImportWoodx do
end;



end.
