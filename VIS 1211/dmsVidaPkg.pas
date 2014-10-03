unit dmsVidaPkg;

interface

uses
  Classes,
  SysUtils,
Controls,
Forms,
  VidaType, FMTBcd, Provider, DB, SqlExpr, kbmMemTable, DBClient, Dialogs, SqlTimSt ;


type
  TdmsPkg = class(TDataModule)
    sp_PackageType2: TSQLStoredProc;
    provPackageType2: TDataSetProvider;
    sp_ProductGroups2: TSQLStoredProc;
    provProductGroups2: TDataSetProvider;
    sp_ProductGroupDesc2: TSQLStoredProc;
    sp_Packages2: TSQLStoredProc;
    provPackages2: TDataSetProvider;
    sp_ProductLengths2: TSQLStoredProc;
    sp_PackageTypes: TSQLStoredProc;
    sp_PackageTypeDetail: TSQLStoredProc;
    sp_NewPackageType: TSQLStoredProc;
    sp_NewPackageDetail: TSQLStoredProc;
    sp_NewPackageNo: TSQLStoredProc;
    sp_OnePackageNo: TSQLStoredProc;
    sp_PackageTotals: TSQLStoredProc;
    sp_StandardLengths: TSQLStoredProc;
    mtPackages: TkbmMemTable;
    sq_ProductLengths: TSQLQuery;
    mtProdSpecificLengths: TkbmMemTable;
    mtProdSpecificLengthsProductGroupNo: TIntegerField;
    mtProdSpecificLengthsProductLengthNo: TIntegerField;
    sq_ProductLengthsActualLengthMM: TFloatField;
    sp_ProdLeng: TSQLStoredProc;
    sp_ProdLengProductLengthNo: TIntegerField;
    sp_StandardLengthsProductLengthNo: TIntegerField;
    mtStandardLengths: TkbmMemTable;
    mtStandardLengthsProductLengthNo: TIntegerField;
    sq_ProdLength: TSQLQuery;
    sq_ProductGroupLength: TSQLQuery;
    dsp_ProdLength: TDataSetProvider;
    dsp_ProductGroupLength: TDataSetProvider;
    cds_ProdLength: TClientDataSet;
    cds_ProductGroupLength: TClientDataSet;
    cds_ProductGroupLengthProductGroupNo: TIntegerField;
    cds_ProductGroupLengthProductLengthNo: TIntegerField;
    cds_ProductGroupLengthCreatedUser: TIntegerField;
    cds_ProductGroupLengthModifiedUser: TIntegerField;
    cds_ProductGroupLengthDateCreated: TSQLTimeStampField;
    cds_ProdLengthProductLengthNo: TIntegerField;
    cds_ProdLengthActualLengthMM: TFloatField;
    cds_ProdLengthNominalLengthMM: TFloatField;
    cds_ProdLengthNominalLengthFEET: TFloatField;
    cds_ProdLengthActualLengthINCH: TStringField;
    cds_ProdLengthCreatedUser: TIntegerField;
    cds_ProdLengthModifiedUser: TIntegerField;
    cds_ProdLengthDateCreated: TSQLTimeStampField;
    cds_ProdLengthSequenceNo: TIntegerField;
    mtDupPkgNo: TkbmMemTable;
    mtDupPkgNoPackageNo: TIntegerField;
    sq_NewPackageType2: TSQLQuery;
    sp_Populate_One_PkgTypeLengths: TSQLStoredProc;
    mtProd_Records: TkbmMemTable;
    mtProd_RecordsProductNo: TIntegerField;
    mtProd_RecordsPRODUCTDESCRIPTION: TStringField;
    mtProd_RecordsACT_THICK: TFloatField;
    mtProd_RecordsACT_WIDTH: TFloatField;
    mtProd_RecordsPKGWIDTH: TIntegerField;
    mtProd_RecordsPKGHEIGHT: TIntegerField;
    mtProd_RecordsMINIBUNDLE: TIntegerField;
    mtProd_RecordsPRODUCTGROUPNO: TIntegerField;
    mtProd_RecordsGradeStampNo: TIntegerField;
    mtProd_RecordsBarcodeID: TIntegerField;
    mtProd_RecordsWrapTypeNo: TIntegerField;
    mtProd_RecordsShrinkWrapNo: TIntegerField;
    ds_Prod_Records: TDataSource;
    mtProd_RecordsNOM_THICK: TFloatField;
    mtProd_RecordsNOM_WIDTH: TFloatField;
    mtProd_RecordsLOPP: TStringField;
    mtProd_RecordsPWrap: TStringField;
    mtProd_RecordsGStamps: TStringField;
    mtProd_RecordsOnSticks: TIntegerField;
    sp_PkgInfo: TSQLStoredProc;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    mtDupPkgNoSupplierCode: TStringField;
    ds_mtDupPkgNo: TDataSource;
    mtProd_RecordsINCH_THICK: TFloatField;
    mtProd_RecordsINCH_WIDTH: TFloatField;
    cds_ProdLengthAct: TIntegerField;
    sq_ProdLengthProductLengthNo: TIntegerField;
    sq_ProdLengthActualLengthMM: TFloatField;
    sq_ProdLengthNominalLengthMM: TFloatField;
    sq_ProdLengthNominalLengthFEET: TFloatField;
    sq_ProdLengthActualLengthINCH: TStringField;
    sq_ProdLengthCreatedUser: TSmallintField;
    sq_ProdLengthModifiedUser: TSmallintField;
    sq_ProdLengthDateCreated: TSQLTimeStampField;
    sq_ProdLengthSequenceNo: TIntegerField;
    sq_ProdLengthProductLengthGroupNo: TIntegerField;
    sq_ProdLengthAct: TIntegerField;
    mtProd_RecordsSurfacingNo: TIntegerField;
    mtProps: TkbmMemTable;
    mtPropsVerkNo: TIntegerField;
    mtPropsOwnerNo: TIntegerField;
    mtPropsPIPNo: TIntegerField;
    mtPropsLIPNo: TIntegerField;
    mtPropsInputOption: TIntegerField;
    mtPropsRegPointNo: TIntegerField;
    mtPropsRegDate: TDateTimeField;
    mtPropsCopyPcs: TIntegerField;
    mtPropsRunNo: TIntegerField;
    mtPropsProducerNo: TIntegerField;
    sq_verk: TSQLQuery;
    dsp_verk: TDataSetProvider;
    cds_Verk: TClientDataSet;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    ds_Verk: TDataSource;
    cds_VerkSearchName: TStringField;
    mtPropsVERK: TStringField;
    sq_Producer: TSQLQuery;
    dsp_producer: TDataSetProvider;
    cds_producer: TClientDataSet;
    cds_producerClientNo: TIntegerField;
    cds_producerClientName: TStringField;
    cds_producerSearchName: TStringField;
    ds_Producer: TDataSource;
    sq_PIP: TSQLQuery;
    sq_LIP: TSQLQuery;
    dsp_PIP: TDataSetProvider;
    dsp_LIP: TDataSetProvider;
    cds_PIP: TClientDataSet;
    cds_LIP: TClientDataSet;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    cds_PIPPIPNO: TIntegerField;
    sq_RegPoint: TSQLQuery;
    dsp_RegPoint: TDataSetProvider;
    cds_RegPoint: TClientDataSet;
    ds_RegPoint: TDataSource;
    cds_RegPointProductionUnitName: TStringField;
    cds_RegPointRegistrationPointNo: TIntegerField;
    mtPropsOWNER: TStringField;
    mtPropsPRODUCER: TStringField;
    mtPropsREGPOINT: TStringField;
    cds_PIPPIPNAME: TStringField;
    mtPropsPIPNAME: TStringField;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    mtPropsLIPName: TStringField;
    dsProps: TDataSource;
    mtPropsAutoColWidth: TIntegerField;
    mtPropsSupplierCode: TStringField;
    mtPropsLengthOption: TIntegerField;
    sq_LengthGroup: TSQLQuery;
    dsp_LengthGroup: TDataSetProvider;
    cds_LengthGroup: TClientDataSet;
    ds_LengthGroup: TDataSource;
    cds_LengthGroupGroupNo: TIntegerField;
    cds_LengthGroupGroupName: TStringField;
    mtPropsLengthGroupNo: TIntegerField;
    mtPropsLengthGroup: TStringField;
    sq_Props: TSQLQuery;
    sq_PropsUserID: TIntegerField;
    sq_PropsForm: TStringField;
    sq_PropsVerkNo: TIntegerField;
    sq_PropsOwnerNo: TIntegerField;
    sq_PropsPIPNo: TIntegerField;
    sq_PropsLIPNo: TIntegerField;
    sq_PropsInputOption: TIntegerField;
    sq_PropsRegPointNo: TIntegerField;
    sq_PropsRegDate: TSQLTimeStampField;
    sq_PropsCopyPcs: TIntegerField;
    sq_PropsRunNo: TIntegerField;
    sq_PropsProducerNo: TIntegerField;
    sq_PropsAutoColWidth: TIntegerField;
    sq_PropsSupplierCode: TStringField;
    sq_PropsLengthOption: TIntegerField;
    sq_PropsLengthGroupNo: TIntegerField;
    dsp_Props: TDataSetProvider;
    cds_Props: TClientDataSet;
    ds_Props: TDataSource;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
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
    mtPropsRoleType: TIntegerField;
    sq_GetPkgTypeNo: TSQLQuery;
    mtPcsPerLength: TkbmMemTable;
    mtPcsPerLengthProductLengthNo: TIntegerField;
    mtPcsPerLengthProductNo: TIntegerField;
    mtPcsPerLengthNoOfPieces: TIntegerField;
    mtPcsPerLengthUserID: TIntegerField;
    sq_GetPkgTypeNoPackageTypeNo: TIntegerField;
    mtPcsPerLengthALMM: TFloatField;
    mtPropsNewItemRow: TIntegerField;
    sq_PropsNewItemRow: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    procedure mtPackagesAfterPost(DataSet: TDataSet);
    procedure mtPackagesAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforeInsert(DataSet: TDataSet);
    procedure mtPackagesAfterDelete(DataSet: TDataSet);
    procedure mtPackagesBeforePost(DataSet: TDataSet);
    procedure cds_ProdLengthReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_ProductGroupLengthReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure mtPackagesBeforeDelete(DataSet: TDataSet);
    procedure cds_ProdLengthAfterInsert(DataSet: TDataSet);
    procedure mtPropsOwnerNoChange(Sender: TField);
    procedure mtPropsPIPNoChange(Sender: TField);
    procedure mtPropsProducerNoChange(Sender: TField);
    procedure cds_PropsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

  private
    //y,
    GlobalCounter: Integer ;
    OldProductNo, OldProductGroupNo : Integer ;
//    FPackagePhysInvFilter: Integer;
//    FPackageLogInvFilter: Integer;
//    procedure setPackagePhysInvFilter(const Value: Integer);
//    procedure setPackageLogInvFilter(const Value: Integer);

    Procedure InsertProductGroupSpecificLengths(ProductGroupNo : Integer) ;
    procedure SummarizePkg ;
    function  SearchORCreatePkgType(mtPcsPerLength : TkbmMemTable;const ProductNo, BarCodeID, GradeStamp, TotalNoOfPieces : Integer) : Integer ;
    Function  GetLengthsEntered : String ;
    { Private declarations }
  public
//    PackageNo : Integer ;
//    ThisCurrentCompanyNo : Integer ;
//    RoleType : Integer ;
    PcsPerLengthArray : Array[0..300] of Integer ; //to copy no of pcs to new row

//    RegistrationPointNo : Integer ;

//    SupplierNo : Integer ;
//    InventoryOwnerNo : Integer ;
//    LogicalTransferInventoryNo: Integer ;

    Procedure CheckValidInputLength ;
    function  WHERE_For_STD_Lengths : String ;
    procedure MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
    procedure MakeLengthQuery_II ;
    function  LengthWHERE_II : String ;
    function  PackageNumberExists(const PkgNo : Integer; const SupplierCode : String3) : Boolean;

//    property PackageLogInvFilter  : Integer read FPackageLogInvFilter  write setPackageLogInvFilter;
//    property PackagePhysInvFilter : Integer read FPackagePhysInvFilter write setPackagePhysInvFilter;
    procedure LoadGroupLengths(const GroupNo : Integer);
    function  SavePackages2 : Boolean ;
    function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
    procedure LoadUserProps (const Form : String) ;
    procedure SaveUserProps (const Form : String) ;
  end;

var
  dmsPkg: TdmsPkg;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst,
  VidaUser,
  VidaUtils, recerror, UnitPackageEntry, UnitPkgEntry,
  dmsVidaSystem ,
  dmsVidaContact;

{ TDataModule1 }


procedure TdmsPkg.LoadGroupLengths(const GroupNo : Integer);
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

function TdmsPkg.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

function TdmsPkg.SavePackages2 : Boolean ;
Var
    Save_Cursor:TCursor;
    OldIndexName : String ;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
//  iPkg : Integer;
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
      sp_PackageTypes.ParamByName('ProductNo'    ).AsInteger := mtPackages.Fields[cPRODUCTNO].AsInteger ;

      if mtPackages.Fields[cBARCODEID].AsInteger = 0 then
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := mtPackages.Fields[cBARCODEID].AsInteger ;

      if mtPackages.Fields[cGRADESTAMP].AsInteger = 0 then
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := mtPackages.Fields[cGRADESTAMP].AsInteger ;
      sp_PackageTypes.ParamByName('TotalPieces'  ).AsInteger := mtPackages.Fields[cTOTALPCS].AsInteger ;

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
     for x := FirstLengthColumn to mtPackages.FieldCount - 1 do
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
     ML     := (mtpackages.Fields[FirstLengthColumn].AsFloat*1000) ;
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
      if (mtPropsInputOption.AsInteger = INPUT_PIECES) then //or (mtPropsInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
       NoOfLengths := GetNoOfLengthsInPkg
       else
       if mtPropsInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
        NoOfLengths := GetNoOfLengthsInPkg_LPM_Entry
        else
         NoOfLengths := GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION ;


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
      sp_NewPackageType.ParamByName('ProductNo'       ).AsInteger := mtPackages.Fields[cPRODUCTNO].AsInteger ;

      if mtPackages.Fields[cBARCODEID].AsInteger = -1 then
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := mtPackages.Fields[cBARCODEID].AsInteger ;

      if mtPackages.Fields[cGRADESTAMP].AsInteger = -1 then
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := mtPackages.Fields[cGRADESTAMP].AsInteger ;
      sp_NewPackageType.ParamByName('TotalNoOfPieces' ).AsInteger := mtPackages.Fields[cTOTALPCS].AsInteger ;
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

  function SavePackage : Integer ;
  begin
    Try
    sp_NewPackageNo.ParamByName('PackageNo'              ).AsInteger  := mtPackages.Fields[cPACKAGENO].AsInteger ;
    sp_NewPackageNo.ParamByName('PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_NewPackageNo.ParamByName('SupplierCode'           ).AsString   := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString);
    sp_NewPackageNo.ParamByName('LogicalInventoryPointNo').AsInteger  := mtPropsLIPNo.AsInteger ;
    sp_NewPackageNo.ParamByName('SupplierNo'             ).AsInteger  := mtPropsOwnerNo.AsInteger ;
    sp_NewPackageNo.ParamByName('RegistrationPointNo'    ).AsInteger  := mtPropsRegPointNo.AsInteger ;
    sp_NewPackageNo.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewPackageNo.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtPropsRegDate.AsDateTime) ;
    //ANVÄNDS EJ!!
    sp_NewPackageNo.ParamByName('OwnerNo'                ).AsInteger  := mtPropsOwnerNo.AsInteger ;//ANVÄNDS EJ!!

    sp_NewPackageNo.ParamByName('ProducerNo'             ).AsInteger  := mtPropsProducerNo.AsInteger ;
    sp_NewPackageNo.ParamByName('RunNo'                  ).AsInteger  := mtPropsRunNo.AsInteger ;    

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

//Main SavePackages2
begin
 Save_Cursor            := Screen.Cursor;
 Screen.Cursor          := crSQLWait;    { Show hourglass cursor }
 OldIndexName           := mtPackages.IndexName ;
 mtPackages.IndexName   := 'PkgId';
 mtPackages.AfterPost   := NIL ;
 Try

  Result:= False ;
   mtPackages.First ;
   While not mtPackages.Eof do
    Begin
    mtPcsPerLength.Active  := False ;
    mtPcsPerLength.Active  := True ;
    TransactionNo := dmsConnector.StartTransaction;
    try
    SavePkgType ;
//mtPcsPerLength : TkbmMemTable;const ProductNo, BarCodeID, GradeStamp, TotalNoOfPieces : Integer;const PcsPerLength : String

    if PackageTypeNo > 0 then
    Begin
     SavePackage ;

     mtPackages.Edit ;
     mtPackages.Fields[cPACKAGETYPENO].AsInteger:= PackageTypeNo ;
     mtPackages.Post ;
     mtPackages.Next ;
     PackageTypeNo:= -1 ;
     dmsConnector.Commit(TransactionNo);
     Result:= True ;
    End
    else
    Begin
     dmsConnector.Rollback(TransactionNo);
     Result:= False ;
    End ;

    except
     dmsConnector.Rollback(TransactionNo);
     Result:= False ;
    end;
 end;

 Finally
  mtPcsPerLength.Active := False ;
  Screen.Cursor         := Save_Cursor;  { Always restore to normal }
  mtPackages.IndexName  := OldIndexName;
  mtPackages.AfterPost  := mtPackagesAfterPost ;
 End ;
end;

Function TdmsPkg.GetLengthsEntered : String ;

    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
     for x := FirstLengthColumn to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       mtPcsPerLength.Insert ;
       mtPcsPerLengthProductLengthNo.AsInteger :=  dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                                   mtPackages.FieldByName('NOM_THICK').AsFloat,
                                                   mtPackages.FieldByName('SurfacingNo').AsInteger) ;
       mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[x].AsInteger ;
       mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
       mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
       mtPcsPerLengthALMM.AsFloat               := StrToFloat(mtPackages.Fields[x].DisplayLabel) ;
       mtPcsPerLength.Post ;
      End ;
     End ;
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry : Integer ;
    Var ML : Double ;
    Begin
     ML                                       := (mtpackages.Fields[cTOTALLPM].AsFloat*1000) ;
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     mtPcsPerLengthNoOfPieces.AsInteger       := 1 ;
     mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
     mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
     mtPcsPerLengthALMM.AsFloat               := ML ;
     mtPcsPerLength.Post ;
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION : Integer ;
    Var ML : Double ;
    Begin
     ML                                       := (mtpackages.Fields[FirstLengthColumn].AsFloat*1000) ;
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[cTOTALPCS].AsInteger ;
     mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
     mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
     mtPcsPerLengthALMM.AsFloat               := ML ;
     mtPcsPerLength.Post ;
    End ;

Begin
 if (mtPropsInputOption.AsInteger = INPUT_PIECES) then // or (mtPropsInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
  GetNoOfLengthsInPkg
   else
    if mtPropsInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
     GetNoOfLengthsInPkg_LPM_Entry
      else
       GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION ;
End ;

function TdmsPkg.Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('PackageNo').AsInteger    := PkgNo ;
 sp_PkgInfo.ParamByName('SupplierCode').AsString  := SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;

Procedure TdmsPkg.InsertProductGroupSpecificLengths(ProductGroupNo : Integer) ;
Var x : Integer ;
Begin
 x := FirstLengthColumn ;
 if not mtProdSpecificLengths.FindKey([ProductGroupNo]) then
 Begin
  sp_ProdLeng.Close ;
  sp_ProdLeng.ParamByName('ProductGroupNo').AsInteger:= ProductGroupNo ;
  sp_ProdLeng.Open ;
  sp_ProdLeng.First ;
  While not sp_ProdLeng.Eof do
  Begin

   x:= succ(x) ;

   mtProdSpecificLengths.Insert ;
   mtProdSpecificLengthsProductGroupNo.AsInteger:= ProductGroupNo ;
   mtProdSpecificLengthsProductLengthNo.AsInteger:= sp_ProdLengProductLengthNo.AsInteger ;
   mtProdSpecificLengths.Post ;
   sp_ProdLeng.Next ;
  End ;
  sp_ProdLeng.Close ;
 End ; //with
End ;

Procedure TdmsPkg.CheckValidInputLength ;
Begin
  if (mtpackages.fields[cPRODUCTGROUPNO].AsInteger <> OldProductGroupNo)
  AND (mtpackages.fields[cPRODUCTGROUPNO].AsInteger > 0)
  AND (mtpackages.State = dsBrowse)
  then
  Begin
   OldProductGroupNo := mtpackages.fields[cPRODUCTGROUPNO].AsInteger ;
  End ;
End ;

procedure TdmsPkg.mtPackagesAfterPost(DataSet: TDataSet);
Var x : Integer ;
   SavePlace: TBookmark;
begin
 if (mtPropsInputOption.AsInteger = INPUT_PIECES) then //or (mtPropsInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
 if mtPropsInputOption.AsInteger <> 2 then
  For x:= FirstLengthColumn to mtPackages.Fields.Count - 1 do
   PcsPerLengthArray[x]:= mtPackages.Fields[x].AsInteger ;

  OldProductGroupNo:= mtPackages.FieldByName('ProductGroupNo').AsInteger ;

  OldProductNo:= mtPackages.FieldByName('ProductNo').AsInteger ;
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

procedure TdmsPkg.mtPackagesAfterInsert(DataSet: TDataSet);
Var x : Integer ;
begin
 With dmsPkg do
 Begin
 Try
 if OldProductGroupNo = mtProd_RecordsPRODUCTGROUPNO.AsInteger then
 For x:= FirstLengthColumn to mtPackages.Fields.Count - 1 do
  Begin
   if mtPackages.Fields.Fields[x].ReadOnly = False then
   if mtPropsInputOption.AsInteger <> 2 then
   if PcsPerLengthArray[x] > 0 then
   Begin
    if mtPropsCopyPcs.AsInteger = 1 = True then
     mtPackages.Fields[x].AsInteger:= PcsPerLengthArray[x] ;
   End ;
   PcsPerLengthArray[x]:= 0 ;
  End ;
  //LARS
  OldProductGroupNo := mtProd_RecordsPRODUCTGROUPNO.AsInteger ;


  mtPackages.FieldByName('RecId').AsInteger:=  GlobalCounter ;

  mtPackages.FieldByName('ProductGroupNo').AsInteger  :=  mtProd_RecordsPRODUCTGROUPNO.AsInteger ;
  mtPackages.FieldByName('ProductNo').AsInteger       :=  mtProd_RecordsPRODUCTNO.AsInteger ;
  mtPackages.FieldByName('SupplierCode').AsString     := Trim(mtPropsSupplierCode.AsString) ;
  mtPackages.FieldByName('ProductGroupNo').AsInteger  :=  mtProd_RecordsPRODUCTGROUPNO.AsInteger ;

  mtPackages.FieldByName('GradeStampNo').AsInteger    := mtProd_RecordsGradeStampNo.AsInteger ;
  mtPackages.FieldByName('BarCodeID').AsInteger       := mtProd_RecordsBarCodeID.AsInteger ;
  mtPackages.FieldByName('SurfacingNo').AsInteger     := mtProd_RecordsSurfacingNo.AsInteger ;
  mtPackages.FieldByName('Description').AsString:= mtProd_RecordsPRODUCTDESCRIPTION.AsString ;
  mtPackages.FieldByName('ACT_THICK').AsFloat:= mtProd_RecordsACT_THICK.AsFloat ;
  mtPackages.FieldByName('ACT_WIDTH').AsFloat:= mtProd_RecordsACT_WIDTH.AsFloat ;
  mtPackages.FieldByName('NOM_THICK').AsFloat:= mtProd_RecordsNOM_THICK.AsFloat ;
  mtPackages.FieldByName('NOM_WIDTH').AsFloat:= mtProd_RecordsNOM_WIDTH.AsFloat ;
  mtPackages.FieldByName('INCH_THICK').AsFloat:= mtProd_RecordsINCH_THICK.AsFloat ;
  mtPackages.FieldByName('INCH_WIDTH').AsFloat:= mtProd_RecordsINCH_WIDTH.AsFloat ;
  Finally
   GlobalCounter:= Succ(GlobalCounter) ;
  End ;
 End ;
end;

procedure TdmsPkg.DataModuleCreate(Sender: TObject);
Var x : Integer ;
begin
 GlobalCounter:= 1 ;
 mtDupPkgNo.Active:= True ;
 mtProd_Records.Active:= True ;
 For x := 0 to 300 do
 Begin
  PcsPerLengthArray[x]:= 0;
 End ;
end;

procedure TdmsPkg.mtPackagesBeforeInsert(DataSet: TDataSet);
begin
 if mtProd_Records.State in [dsEdit, dsInsert] then
 mtProd_Records.Post ;
end;

procedure TdmsPkg.mtPackagesAfterDelete(DataSet: TDataSet);
Var x : Integer ;
begin
 For x := 0 to 300 do
  PcsPerLengthArray[x]:= 0 ;
end;

procedure TdmsPkg.SummarizePkg ;
var x : Integer ;
begin
 With dmsPkg do
 Begin
  if mtpackages.State <> dsBrowse then
  Begin
   if (mtPropsInputOption.AsInteger = INPUT_PIECES) then //or (mtPropsInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
   Begin
//PCS
    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ;

    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
    mtpackages.Fields[x].AsInteger ;

//MFBM
{    mtpackages.Fields[cTOTALMFBM].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALMFBM].AsFloat:= mtpackages.Fields[cTOTALMFBM].AsFloat +
    (mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cINCHTHICK].AsFloat * mtpackages.Fields[cINCHWIDTH].AsFloat
    * FEET_Array[x]/12/1000) ; }


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
//NOM M3
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;
//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALLPM].AsFloat +
    ( StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    );

//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
    * mtpackages.Fields[x].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
   End
   else
   if mtPropsInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
//INPUT LÖPMETER!!
   Begin
//PCS
//    if mtpackages.Fields[FirstLengthColumn].AsInteger < 1 then
//     mtpackages.Fields[FirstLengthColumn].AsInteger:= 1 ;

    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ; //pcs
    mtpackages.Fields[cTOTALPCS].AsInteger:= 1 ;
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)

{    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[cTOTALLPM].AsFloat
    /
    mtpackages.Fields[cTOTALPCS].AsInteger*1000; }


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALACTM3].AsFloat:=
    (mtpackages.Fields[cTOTALLPM].AsFloat
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
//NOM M3
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;

//LOPM

//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat * //LÖPM
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
   End
   else
   if mtPropsInputOption.AsInteger = INPUT_LOPM_AVERAGE_LENGTH then
//INPUT LÖPMETER AVERAGE LENGTH!!
   Begin
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
{    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[FirstLengthColumn].AsFloat ; }

//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger ;//Pieces

//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALACTM3].AsFloat:=
    mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 * mtpackages.Fields[cACTWIDTH].AsFloat/1000 ;

//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ; }


//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000 ;
   End ;
  End ; //if
 End ; //With
end;

procedure TdmsPkg.mtPackagesBeforePost(DataSet: TDataSet);
begin
 if DataSet.Fields[cPACKAGENO].IsNull then
 Begin
//  ShowMessage('Paketnr saknas.') ;
  Abort ;
 End ;
 SummarizePkg ;
end;

procedure TdmsPkg.cds_ProdLengthReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdmsPkg.cds_ProductGroupLengthReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

//for package entry without LO
procedure TdmsPkg.MakeLengthQuery_II ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
// sq_ProductLengths.SQL.Add('PL.ActualLengthINCH');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE_II) ;
// if ThisUser.UserID = 8 then sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmsPkg.LengthWHERE_II : String ;
 Var //x : integer ;
     SQL : String ;
 Begin
  SQL:= '' ;
   With dmsPkg do
   Begin
    mtProd_Records.First ;
    if not mtProd_Records.Eof then
    Begin
     SQL:= ' WHERE ((PGL.ProductGroupNo = '+mtProd_RecordsPRODUCTGROUPNO.AsString+')' ;
     InsertProductGroupSpecificLengths(mtProd_RecordsPRODUCTGROUPNO.AsInteger) ;
    End ;
    mtProd_Records.Next ;
    While not mtProd_Records.Eof do
    Begin
     InsertProductGroupSpecificLengths(mtProd_RecordsPRODUCTGROUPNO.AsInteger) ;
     SQL:= SQL + ' OR (PGL.ProductGroupNo = '+mtProd_RecordsPRODUCTGROUPNO.AsString+')' ;
     mtProd_Records.Next ;

    End ; //while
    SQL:= SQL +')' ;
//    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;
    SQL:= SQL + ' AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.Act = 1' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;

   End ;//with
   Result:= SQL ;
 End ;

procedure TdmsPkg.mtPackagesBeforeDelete(DataSet: TDataSet);
begin
  //LARS
  OldProductGroupNo := mtProd_RecordsPRODUCTGROUPNO.AsInteger ;
  if mtDupPkgNo.FindKey([DataSet.Fields[cPACKAGENO].AsInteger, Trim(DataSet.Fields[cSUPPLIERCODE].AsString)]) then
  mtDupPkgNo.Delete ;
end;

procedure TdmsPkg.MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
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
End ;

 function TdmsPkg.WHERE_For_STD_Lengths : String ;
 Var //x : integer ;
     SQL : String ;
 Begin
  SQL:= '' ;
   With dmsPkg do
   Begin
    mtProd_Records.First ;
    if not mtProd_Records.Eof then
    Begin
     SQL:= ' AND ((PrL.ProductGroupNo = '+mtProd_RecordsPRODUCTGROUPNO.AsString+')' ;
     InsertProductGroupSpecificLengths(mtProd_RecordsPRODUCTGROUPNO.AsInteger) ;
    End ;
    mtProd_Records.Next ;
    While not mtProd_Records.Eof do
    Begin
     InsertProductGroupSpecificLengths(mtProd_RecordsPRODUCTGROUPNO.AsInteger) ;
     SQL:= SQL + ' OR (PrL.ProductGroupNo = '+mtProd_RecordsPRODUCTGROUPNO.AsString+')' ;
     mtProd_Records.Next ;

    End ; //while
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;
   End ;//with
   Result:= SQL ;
 End ;

procedure TdmsPkg.cds_ProdLengthAfterInsert(DataSet: TDataSet);
begin
 cds_ProdLengthAct.AsInteger:= 0 ;
end;

procedure TdmsPkg.mtPropsOwnerNoChange(Sender: TField);
begin
 cds_PIP.Active:= False ;
 sq_PIP.ParamByName('OwnerNo').AsInteger:= mtPropsOwnerNo.AsInteger ;
 if mtPropsRoleType.AsInteger = cLego then
 sq_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtPropsVerkNo.AsInteger
 else
 sq_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtPropsOwnerNo.AsInteger ;

 cds_PIP.Active:= True ;
 cds_PIP.First ;
 mtPropsPIPNo.AsInteger:= cds_PIPPIPNO.AsInteger ;
end;

procedure TdmsPkg.mtPropsPIPNoChange(Sender: TField);
begin
 cds_LIP.Active:= False ;
 sq_LIP.ParamByName('PIPNo').AsInteger:= mtPropsPIPNo.AsInteger ;
 cds_LIP.Active:= True ;
 cds_LIP.First ;
 mtPropsLIPNo.AsInteger:= cds_LIPLIPNo.AsInteger ;
end;

procedure TdmsPkg.mtPropsProducerNoChange(Sender: TField);
begin
 mtPropsSupplierCode.AsString:= dmsContact.GetClientCode(mtPropsProducerNo.AsInteger) ;

 cds_RegPoint.Active:= False ;
 sq_RegPoint.ParamByName('ClientNo').AsInteger:= mtPropsProducerNo.AsInteger ;
 cds_RegPoint.Active:= True ;
 cds_RegPoint.First ;
 mtPropsRegPointNo.AsInteger:= cds_RegPointRegistrationPointNo.AsInteger ;
end;

procedure TdmsPkg.LoadUserProps (const Form : String) ;
Var x : Integer ;
Begin
 mtProps.Active:= True ;
 sq_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  mtProps.Insert ;
  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  For x := 0 to 14 do
   mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
  mtProps.Post ;

  mtPropsOwnerNo.OnChange     := nil ;
  mtPropsPIPNo.OnChange       := nil ;
  mtPropsProducerNo.OnChange  := nil ;
  Try
  mtProps.Edit ;
  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  For x := 0 to 14 do
   mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
  mtPropsRegDate.AsDateTime := Now ;
  mtPropsRunNo.AsInteger    := -1 ;
  mtProps.Post ;
  Finally
   mtPropsProducerNo.OnChange   := mtPropsProducerNoChange ;
   mtPropsPIPNo.OnChange        := mtPropsPIPNoChange ;
   mtPropsOwnerNo.OnChange      := mtPropsOwnerNoChange ;
  End ;
 End
 else
 Begin
  mtProps.Insert ;
  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  mtPropsVerkNo.AsInteger       :=  ThisUser.CompanyNo ;

  if mtPropsRoleType.AsInteger = cLego then
  Begin
   mtPropsOwnerNo.AsInteger     :=  VIDA_WOOD_COMPANY_NO ;
   mtPropsPIPNo.AsInteger       :=  dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo) ;
  End
  else
  mtPropsOwnerNo.AsInteger      :=  ThisUser.CompanyNo ;

  mtPropsInputOption.AsInteger  :=  0 ;
  mtPropsRegDate.AsDateTime     :=  Now ;
  mtPropsCopyPcs.AsInteger      :=  1 ;
  mtPropsRunNo.AsInteger        :=  -1 ;
  mtPropsProducerNo.AsInteger   :=  ThisUser.CompanyNo ;
  mtPropsAutoColWidth.AsInteger :=  1 ;
  mtPropsSupplierCode.AsString  := dmsContact.GetClientCode(mtPropsProducerNo.AsInteger) ;
  mtPropsLengthGroupNo.AsInteger:= 1 ;
  mtProps.Post ;
 End ;
 cds_Props.Active:= False ;
End ;

procedure TdmsPkg.SaveUserProps (const Form : String) ;
Var x : Integer ;
Begin
 if mtProps.State in [dsEdit, dsInsert] then
 mtProps.Post ;
 sq_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if cds_Props.Eof then
 Begin
  cds_Props.Insert ;
  cds_PropsForm.AsString    := Form ;
  cds_PropsUserID.AsInteger := ThisUser.UserID ;
 End
   else
    cds_Props.Edit ;

  For x := 0 to 14 do
   cds_Props.Fields.Fields[x].AsVariant:= mtProps.Fields.Fields[x].AsVariant ;
  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
   cds_Props.ApplyUpdates(0) ;

 cds_Props.Active:= False ;
End ;

procedure TdmsPkg.cds_PropsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

function TdmsPkg.SearchORCreatePkgType(mtPcsPerLength : TkbmMemTable;const ProductNo, BarCodeID, GradeStamp, TotalNoOfPieces : Integer) : Integer ;
  Var
     PackageTypeNo, iDtls : Integer ;
     PcsPerLength : String ;

    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('ProductNo'       ).AsInteger := PRODUCTNO ;

      if BARCODEID = -1 then
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := BARCODEID ;

      if GRADESTAMP = -1 then
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := GRADESTAMP ;
      sp_NewPackageType.ParamByName('TotalNoOfPieces' ).AsInteger := TotalNoOfPieces ;
      sp_NewPackageType.ParamByName('UserID'          ).AsInteger := ThisUser.UserID;
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
      mtPcsPerLength.First ;
      While not mtPcsPerLength.Eof do
       begin
        Try
        sp_NewPackageDetail.ParamByName('PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('ProductLengthNo').AsInteger  := mtPcsPerLengthProductLengthNo.AsInteger ;
        sp_NewPackageDetail.ParamByName('NoOfPieces'     ).AsInteger  := mtPcsPerLengthNoOfPieces.AsInteger ;
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
        mtPcsPerLength.Next ;
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

Function GetPcsPerLength : String ;
Begin
 mtPcsPerLength.First ;
 While not mtPcsPerLength.Eof do
 Begin
  Result:= Result + mtPcsPerLengthNoOfPieces.AsString+' / '+mtPcsPerLengthALMM.AsString+', ' ;
  mtPcsPerLength.Next ;
 End ;
 Result:= Copy(Result, 1, Length(Result)-2) ;
End ;

Function GetPkgTypeNo : Integer ;
Begin
 PcsPerLength                                             := GetPcsPerLength ;
 sq_GetPkgTypeNo.ParamByName('PcsPerLength').AsString     := PcsPerLength ;
 sq_GetPkgTypeNo.ParamByName('ProductNo').AsInteger       := ProductNo ;
 sq_GetPkgTypeNo.ParamByName('BarCodeID').AsInteger       := BarCodeID ;
 sq_GetPkgTypeNo.ParamByName('GradeStamp').AsInteger      := GradeStamp ;
 sq_GetPkgTypeNo.ParamByName('TotalNoOfPieces').AsInteger := TotalNoOfPieces ;
 sq_GetPkgTypeNo.Open ;
 if not sq_GetPkgTypeNo.Eof then
  Result:= sq_GetPkgTypeNoPackageTypeNo.AsInteger
   else
    Result:= -1 ;
 sq_GetPkgTypeNo.Close ;
End ;

//SearchORCreatePkgType proc
Begin
  PackagetypeNo:= GetPkgTypeNo ;
  if PackagetypeNo = NO_MATCH then
  Begin
   NewPackageType ;
   SavePkgTotals(PackageTypeNo);
   SavePackageTypeLengths ;
   dmsSystem.AddPkgTypeColumns(PackageTypeNo);
  End ;
 Result:= PackagetypeNo ;
End ;
end.
