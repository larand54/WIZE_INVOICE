unit dmcInvCtrl;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DB, SqlExpr, DBClient, kbmMemTable, SqlTimSt, VidaType,
  Controls, Dialogs, Forms ;


type
 TAmbiguityEvent = procedure(
    Sender : TObject;

    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer;
    var ProductNo : Integer;
    Var LogicalInventoryPointNo : Integer;
    Var PackageTypeNo : Integer) of object;

  TdmInvCtrl = class(TDataModule)
    sq_InvCtrlGrp: TSQLQuery;
    sq_InvCtrlRow: TSQLQuery;
    sq_InvCtrlMetod: TSQLQuery;
    sq_InvCtrl_LagerStallen: TSQLQuery;
    dsp_InvCtrlGrp: TDataSetProvider;
    dsp_InvCtrlRow: TDataSetProvider;
    dsp_InvCtrlMetod: TDataSetProvider;
    dsp_PhysInv: TDataSetProvider;
    cds_InvCtrlGrp: TClientDataSet;
    cds_PhysInv: TClientDataSet;
    cds_InvCtrlMetod: TClientDataSet;
    ds_InvCtrlGrp: TDataSource;
    ds_InvCtrlMetod: TDataSource;
    sq_InvCtrlGrpIC_grpno: TIntegerField;
    sq_InvCtrlGrpPhyInvPointNameNo: TIntegerField;
    sq_InvCtrlGrpOwnerNo: TIntegerField;
    sq_InvCtrlGrpInventeringsdatum: TSQLTimeStampField;
    sq_InvCtrlGrpNote: TMemoField;
    sq_InvCtrlGrpVerkNo: TIntegerField;
    cds_InvCtrlGrpIC_grpno: TIntegerField;
    cds_InvCtrlGrpPhyInvPointNameNo: TIntegerField;
    cds_InvCtrlGrpOwnerNo: TIntegerField;
    cds_InvCtrlGrpInventeringsdatum: TSQLTimeStampField;
    cds_InvCtrlGrpNote: TMemoField;
    cds_InvCtrlGrpVerkNo: TIntegerField;
    sq_PhysInv: TSQLQuery;
    sq_PhysInvPhyInvPointNameNo: TIntegerField;
    sq_PhysInvLagerStalle: TStringField;
    sq_InvCtrlMetodIC_grpNo: TIntegerField;
    sq_InvCtrlMetodLogicalInventoryPointNo: TIntegerField;
    sq_InvCtrlMetodInventeringsMetod: TIntegerField;
    cds_InvCtrlMetodIC_grpNo: TIntegerField;
    cds_InvCtrlMetodLogicalInventoryPointNo: TIntegerField;
    cds_InvCtrlMetodInventeringsMetod: TIntegerField;
    ds_PhysInv: TDataSource;
    sq_InvCtrl_LagerStallenIC_grpno: TIntegerField;
    dsp_InvCtrl_LagerStallen: TDataSetProvider;
    cds_InvCtrl_LagerStallen: TClientDataSet;
    ds_InvCtrl_LagerStallen: TDataSource;
    cds_InvCtrl_LagerStallenIC_grpno: TIntegerField;
    cds_PhysInvPhyInvPointNameNo: TIntegerField;
    cds_PhysInvLagerStalle: TStringField;
    sq_PhysInvPhysicalInventoryPointNo: TIntegerField;
    cds_PhysInvPhysicalInventoryPointNo: TIntegerField;
    sq_InvCtrl_LagerStallenPhysicalInventoryPointNo: TIntegerField;
    cds_InvCtrl_LagerStallenPhysicalInventoryPointNo: TIntegerField;
    cds_InvCtrl_LagerStallenLAGERSTALLE: TStringField;
    sq_InvCtrlGrpStatus: TIntegerField;
    cds_InvCtrlGrpStatus: TIntegerField;
    sq_GetLagergrupper: TSQLQuery;
    sq_GetLagergrupperLOGINVNAME: TStringField;
    sq_GetLagergrupperLIP: TIntegerField;
    sq_InvCtrlMetodLogicalInventoryName: TStringField;
    cds_InvCtrlMetodLogicalInventoryName: TStringField;
    sq_GetLagergrupperclientName: TStringField;
    sq_InvCtrlMetodOwnerName: TStringField;
    cds_InvCtrlMetodOwnerName: TStringField;
    sq_GetLagergrupperOwnerno: TIntegerField;
    sq_InvCtrl_LagerStallenOwnerName: TStringField;
    cds_InvCtrl_LagerStallenOwnerName: TStringField;
    sq_PhysInvClientName: TStringField;
    cds_PhysInvClientName: TStringField;
    sq_SaveToInvCtrlRow_PktNr: TSQLQuery;
    sq_InvCtrl_LG: TSQLQuery;
    sq_InvCtrl_LGIC_grpno: TIntegerField;
    sq_InvCtrl_LGLogicalInventoryName: TStringField;
    sq_InvCtrl_LGInventeringsMetod: TIntegerField;
    dsp_InvCtrl_LG: TDataSetProvider;
    cds_InvCtrl_LG: TClientDataSet;
    ds_InvCtrl_LG: TDataSource;
    cds_InvCtrl_LGIC_grpno: TIntegerField;
    cds_InvCtrl_LGLogicalInventoryName: TStringField;
    cds_InvCtrl_LGInventeringsMetod: TIntegerField;
    mtMetod: TkbmMemTable;
    mtMetodInventeringsMetod: TIntegerField;
    mtMetodMetod: TStringField;
    cds_InvCtrlMetodMetod: TStringField;
    sq_printPktNrMetod: TSQLQuery;
    dsp_printPktNrMetod: TDataSetProvider;
    cds_printPktNrMetod: TClientDataSet;
    ds_printPktNrMetod: TDataSource;
    cds_printPktNrMetodIC_grpno: TIntegerField;
    cds_printPktNrMetodLIP: TIntegerField;
    cds_printPktNrMetodInventeringsMetod: TIntegerField;
    cds_printPktNrMetodPAKETNR: TIntegerField;
    cds_printPktNrMetodLEVKOD: TStringField;
    cds_printPktNrMetodPackageTypeNo: TIntegerField;
    cds_printPktNrMetodLagergrupp: TStringField;
    cds_printPktNrMetodSTATUS: TIntegerField;
    cds_printPktNrMetodClientName: TStringField;
    cds_printPktNrMetodOriginal_In_Date: TSQLTimeStampField;
    cds_printPktNrMetoddatecreated: TSQLTimeStampField;
    cds_printPktNrMetodCreatedOfPkgStr: TIntegerField;
    cds_printPktNrMetodLagerStlle: TStringField;
    cds_printPktNrMetodTS: TStringField;
    cds_printPktNrMetodUT: TStringField;
    cds_printPktNrMetodKV: TStringField;
    cds_printPktNrMetodAT: TFloatField;
    cds_printPktNrMetodAB: TFloatField;
    cds_printPktNrMetodPPP: TIntegerField;
    cds_printPktNrMetodAM3: TFloatField;
    cds_printPktNrMetodNM3: TFloatField;
    cds_printPktNrMetodPROD: TStringField;
    sq_InvCtrlGrpGrupperRapportPerTS: TIntegerField;
    cds_InvCtrlGrpGrupperRapportPerTS: TIntegerField;
    mtInvCtrlStatus: TkbmMemTable;
    mtInvCtrlStatusStatus: TIntegerField;
    mtInvCtrlStatusStatusNamn: TStringField;
    ds_InvCtrlStatus: TDataSource;
    cds_InvCtrl_LGMETOD: TStringField;
    sq_SaveToInvCtrlRow_PktTyp: TSQLQuery;
    sq_InvCtrlRowLogicalInventoryPointNo: TIntegerField;
    sq_InvCtrlRowPackageNo: TIntegerField;
    sq_InvCtrlRowSuppliercode: TStringField;
    sq_InvCtrlRowPackageTypeNo: TIntegerField;
    sq_InvCtrlRowOwnerNo: TIntegerField;
    sq_SaveInvLista_PktNr: TSQLQuery;
    sq_SaveInvListaPktTyp: TSQLQuery;
    sq_InvCtrlGrpMaxDatum: TSQLTimeStampField;
    cds_InvCtrlGrpMaxDatum: TSQLTimeStampField;
    sq_DelCtrlRowPktNr: TSQLQuery;
    sq_DelCtrlRowPktTyp: TSQLQuery;
    cds_InvCtrlRow: TClientDataSet;
    cds_InvCtrlRowLogicalInventoryPointNo: TIntegerField;
    cds_InvCtrlRowPackageNo: TIntegerField;
    cds_InvCtrlRowSuppliercode: TStringField;
    cds_InvCtrlRowPackageTypeNo: TIntegerField;
    cds_InvCtrlRowOwnerNo: TIntegerField;
    ds_InvCtrlRow: TDataSource;
    sq_GetPkt: TSQLQuery;
    dsp_GetPkt: TDataSetProvider;
    cds_GetPkt: TClientDataSet;
    ds_GetPkt: TDataSource;
    cds_GetPktPackageNo: TIntegerField;
    cds_GetPktCityNo: TIntegerField;
    cds_GetPktLagerStalle: TStringField;
    cds_GetPktPIP: TIntegerField;
    cds_GetPktClientName: TStringField;
    cds_GetPktSupplierCode: TStringField;
    cds_GetPktLogicalInventoryName: TStringField;
    cds_GetPktLIP: TIntegerField;
    cds_GetPktSupplierNo: TIntegerField;
    cds_GetPktProductDisplayName: TStringField;
    cds_GetPktLengthDescription: TStringField;
    cds_GetPktProductNo: TIntegerField;
    sq_INS_CtrlRowPktNr: TSQLQuery;
    sq_GetLagergrupperLogicalInventoryName: TStringField;
    cds_GetPktPackageTypeNo: TIntegerField;
    sq_SetPkgTypeNo_PktNr: TSQLQuery;
    sq_InvCtrlMetodOwnerNo: TIntegerField;
    cds_InvCtrlMetodOwnerNo: TIntegerField;
    sq_SetNoOfPkg_PKTTYP: TSQLQuery;
    sq_InsPkgType_NoOfPkgs: TSQLQuery;
    sq_PkgTypExistIn_InvCtrlPkt: TSQLQuery;
    sq_PkgTypExistIn_InvCtrlPktPackageTypeNo: TIntegerField;
    sq_InvCtrlList: TSQLQuery;
    dsp_InvCtrlList: TDataSetProvider;
    cds_InvCtrlList: TClientDataSet;
    ds_InvCtrlList: TDataSource;
    cds_InvCtrlListIC_grpno: TIntegerField;
    cds_InvCtrlListPhyInvPointNameNo: TIntegerField;
    cds_InvCtrlListOwnerNo: TIntegerField;
    cds_InvCtrlListInventeringsdatum: TSQLTimeStampField;
    cds_InvCtrlListNote: TMemoField;
    cds_InvCtrlListVerkNo: TIntegerField;
    cds_InvCtrlListStatus: TIntegerField;
    cds_InvCtrlListGrupperRapportPerTS: TIntegerField;
    cds_InvCtrlListMaxDatum: TSQLTimeStampField;
    sq_InvCtrl_Pkgs: TSQLQuery;
    dsp_InvCtrl_Pkgs: TDataSetProvider;
    cds_InvCtrl_Pkgs: TClientDataSet;
    sq_InvCtrl_PkgsIC_GrpNo: TIntegerField;
    sq_InvCtrl_PkgsPackageNo: TIntegerField;
    sq_InvCtrl_PkgsSupplierCode: TStringField;
    sq_InvCtrl_PkgsOperation: TIntegerField;
    cds_InvCtrl_PkgsIC_GrpNo: TIntegerField;
    cds_InvCtrl_PkgsPackageNo: TIntegerField;
    cds_InvCtrl_PkgsSupplierCode: TStringField;
    cds_InvCtrl_PkgsOperation: TIntegerField;
    ds_InvCtrl_Pkgs: TDataSource;
    sq_InvCtrl_PkgsDateCreated: TSQLTimeStampField;
    cds_InvCtrl_PkgsDateCreated: TSQLTimeStampField;
    sq_InvCtrl_PaReg: TSQLQuery;
    dsp_InvCtrl_PaReg: TDataSetProvider;
    sq_InvCtrl_PaRegIC_GrpNo: TIntegerField;
    sq_InvCtrl_PaRegPackageNo: TIntegerField;
    sq_InvCtrl_PaRegSupplierCode: TStringField;
    sq_InvCtrl_PaRegOperation: TIntegerField;
    sq_InvCtrl_PaRegDateCreated: TSQLTimeStampField;
    cds_InvCtrl_PaReg: TClientDataSet;
    ds_InvCtrl_PaReg: TDataSource;
    cds_InvCtrl_PaRegIC_GrpNo: TIntegerField;
    cds_InvCtrl_PaRegPackageNo: TIntegerField;
    cds_InvCtrl_PaRegSupplierCode: TStringField;
    cds_InvCtrl_PaRegOperation: TIntegerField;
    cds_InvCtrl_PaRegDateCreated: TSQLTimeStampField;
    sq_InvCtrlPkt: TSQLQuery;
    dsp_InvCtrlPkt: TDataSetProvider;
    cds_InvCtrlPkt: TClientDataSet;
    sq_InvCtrlPktIC_GrpNo: TIntegerField;
    sq_InvCtrlPktLogicalInventoryPointNo: TIntegerField;
    sq_InvCtrlPktInventeringsMetod: TIntegerField;
    sq_InvCtrlPktPackageNo: TIntegerField;
    sq_InvCtrlPktSuppliercode: TStringField;
    sq_InvCtrlPktPackageTypeNo: TIntegerField;
    sq_InvCtrlPktNoOfPkgs: TIntegerField;
    sq_InvCtrlPktAntalPaketILager: TIntegerField;
    sq_InvCtrlPktLogicalInventoryName: TStringField;
    sq_InvCtrlPktStatus: TSmallintField;
    sq_InvCtrlPktOwnerNo: TIntegerField;
    cds_InvCtrlPktIC_GrpNo: TIntegerField;
    cds_InvCtrlPktLogicalInventoryPointNo: TIntegerField;
    cds_InvCtrlPktInventeringsMetod: TIntegerField;
    cds_InvCtrlPktPackageNo: TIntegerField;
    cds_InvCtrlPktSuppliercode: TStringField;
    cds_InvCtrlPktPackageTypeNo: TIntegerField;
    cds_InvCtrlPktNoOfPkgs: TIntegerField;
    cds_InvCtrlPktAntalPaketILager: TIntegerField;
    cds_InvCtrlPktLogicalInventoryName: TStringField;
    cds_InvCtrlPktStatus: TSmallintField;
    cds_InvCtrlPktOwnerNo: TIntegerField;
    sp_PkgCngInv: TSQLStoredProc;
    sp_PkgAddInv: TSQLStoredProc;
    sq_InvCtrl_LGLogicalInventoryPointNo: TIntegerField;
    cds_InvCtrl_LGLogicalInventoryPointNo: TIntegerField;
    sq_InsInLeveranser: TSQLQuery;
    sq_InLev: TSQLQuery;
    dsp_InLev: TDataSetProvider;
    cds_InLev: TClientDataSet;
    ds_InLev: TDataSource;
    cds_InLevIC_GrpNo: TIntegerField;
    cds_InLevPackageNo: TIntegerField;
    cds_InLevSupplierCode: TStringField;
    cds_InLevOperation: TIntegerField;
    cds_InLevDateCreated: TSQLTimeStampField;
    sq_UtLev: TSQLQuery;
    dsp_UtLev: TDataSetProvider;
    cds_UtLev: TClientDataSet;
    ds_UtLev: TDataSource;
    cds_UtLevIC_GrpNo: TIntegerField;
    cds_UtLevPackageNo: TIntegerField;
    cds_UtLevSupplierCode: TStringField;
    cds_UtLevOperation: TIntegerField;
    cds_UtLevDateCreated: TSQLTimeStampField;
    sq_GetPrd: TSQLQuery;
    dsp_GetPrd: TDataSetProvider;
    cds_GetPrd: TClientDataSet;
    ds_GetPrd: TDataSource;
    cds_GetPrdIC_GrpNo: TIntegerField;
    cds_GetPrdPackageNo: TIntegerField;
    cds_GetPrdSupplierCode: TStringField;
    cds_GetPrdOperation: TIntegerField;
    cds_GetPrdDateCreated: TSQLTimeStampField;
    sq_AddToICR: TSQLQuery;
    sq_InvCtrl_PaRegLogicalInventoryPointNo: TIntegerField;
    cds_InvCtrl_PaRegLogicalInventoryPointNo: TIntegerField;
    sq_RemFromICR: TSQLQuery;
    sq_PkgExist: TSQLQuery;
    sq_PkgExistStatus: TIntegerField;
    sq_PkgExistInKL: TSQLQuery;
    sq_PkgExistInKLStatus: TIntegerField;
    sq_CleanICR: TSQLQuery;
    sq_PriceListGrp: TSQLQuery;
    sq_PriceListGrpPriceListNo: TIntegerField;
    sq_PriceListGrpSpeciesNo: TIntegerField;
    sq_PriceListGrpPriceListDate: TSQLTimeStampField;
    sq_PriceListGrpNote: TStringField;
    sq_PriceListGrpCreatedUser: TIntegerField;
    sq_PriceListGrpDateCreated: TSQLTimeStampField;
    sq_PriceListRow: TSQLQuery;
    dsp_PriceListGrp: TDataSetProvider;
    dsp_PriceListRow: TDataSetProvider;
    cds_PriceListGrp: TClientDataSet;
    cds_PriceListRow: TClientDataSet;
    ds_PriceListGrp: TDataSource;
    ds_PriceListRow: TDataSource;
    cds_PriceListGrpPriceListNo: TIntegerField;
    cds_PriceListGrpSpeciesNo: TIntegerField;
    cds_PriceListGrpPriceListDate: TSQLTimeStampField;
    cds_PriceListGrpNote: TStringField;
    cds_PriceListGrpCreatedUser: TIntegerField;
    cds_PriceListGrpDateCreated: TSQLTimeStampField;
    sq_PriceListRowPriceListNo: TIntegerField;
    sq_PriceListRowPriceListRowNo: TIntegerField;
    sq_PriceListRowMinAT: TFloatField;
    sq_PriceListRowMaxAT: TFloatField;
    sq_PriceListRowMinAB: TFloatField;
    sq_PriceListRowMaxAB: TFloatField;
    sq_PriceListRowSpeciesNo: TIntegerField;
    sq_PriceListRowPricePerAM3: TFloatField;
    cds_PriceListRowPriceListNo: TIntegerField;
    cds_PriceListRowPriceListRowNo: TIntegerField;
    cds_PriceListRowMinAT: TFloatField;
    cds_PriceListRowMaxAT: TFloatField;
    cds_PriceListRowMinAB: TFloatField;
    cds_PriceListRowMaxAB: TFloatField;
    cds_PriceListRowSpeciesNo: TIntegerField;
    cds_PriceListRowPricePerAM3: TFloatField;
    cds_PriceListGrpTS: TStringField;
    cds_PriceListRowTS: TStringField;
    cds_PriceListRowKV: TStringField;
    cds_PriceListRowUT: TStringField;
    sq_PriceListGrpClientNo: TIntegerField;
    cds_PriceListGrpClientNo: TIntegerField;
    sq_GradeGroupHdr: TSQLQuery;
    sq_GradeGroupHdrGradeGroupNo: TIntegerField;
    sq_GradeGroupHdrClientNo: TIntegerField;
    sq_GradeGroupHdrGradeGroupName: TStringField;
    sq_GradeGroupHdrDateCreated: TSQLTimeStampField;
    sq_GradeGroupHdrCreatedUser: TIntegerField;
    dsp_GradeGroupHdr: TDataSetProvider;
    cds_GradeGroupHdr: TClientDataSet;
    ds_GradeGroupHdr: TDataSource;
    sq_GradeGroupRow: TSQLQuery;
    sq_GradeGroupRowGradeGroupNo: TIntegerField;
    sq_GradeGroupRowGradeNo: TIntegerField;
    dsp_GradeGroupRow: TDataSetProvider;
    cds_GradeGroupRow: TClientDataSet;
    ds_GradeGroupRow: TDataSource;
    cds_GradeGroupHdrGradeGroupNo: TIntegerField;
    cds_GradeGroupHdrClientNo: TIntegerField;
    cds_GradeGroupHdrGradeGroupName: TStringField;
    cds_GradeGroupHdrDateCreated: TSQLTimeStampField;
    cds_GradeGroupHdrCreatedUser: TIntegerField;
    cds_GradeGroupRowGradeGroupNo: TIntegerField;
    cds_GradeGroupRowGradeNo: TIntegerField;
    cds_GradeGroupRowKV: TStringField;
    sq_PriceListRowGradeGroupNo: TIntegerField;
    sq_PriceListRowSurfacingGroupNo: TIntegerField;
    cds_PriceListRowGradeGroupNo: TIntegerField;
    cds_PriceListRowSurfacingGroupNo: TIntegerField;
    sq_SurfGrpHdr: TSQLQuery;
    sq_SurGrpRow: TSQLQuery;
    dsp_SurfGrpHdr: TDataSetProvider;
    dsp_SurGrpRow: TDataSetProvider;
    cds_SurfGrpHdr: TClientDataSet;
    cds_SurGrpRow: TClientDataSet;
    ds_SurfGrpHdr: TDataSource;
    ds_SurGrpRow: TDataSource;
    sq_SurfGrpHdrSurfacingGroupNo: TIntegerField;
    sq_SurfGrpHdrClientNo: TIntegerField;
    sq_SurfGrpHdrSurfacingGroupName: TStringField;
    sq_SurfGrpHdrDateCreated: TSQLTimeStampField;
    sq_SurfGrpHdrCreatedUser: TIntegerField;
    cds_SurfGrpHdrSurfacingGroupNo: TIntegerField;
    cds_SurfGrpHdrClientNo: TIntegerField;
    cds_SurfGrpHdrSurfacingGroupName: TStringField;
    cds_SurfGrpHdrDateCreated: TSQLTimeStampField;
    cds_SurfGrpHdrCreatedUser: TIntegerField;
    cds_SurGrpRowSurfacingGroupNo: TIntegerField;
    cds_SurGrpRowSurfacingNo: TIntegerField;
    cds_SurGrpRowUTFRANDE: TStringField;
    sq_SurGrpRowSurfacingGroupNo: TIntegerField;
    sq_SurGrpRowSurfacingNo: TIntegerField;
    sq_SaveToInvCtrlRow_PktNr2: TSQLQuery;
    sq_GetChangesToPackages: TSQLQuery;
    sp_GenInvenSummary: TSQLStoredProc;
    procedure cds_InvCtrl_LagerStallenAfterInsert(DataSet: TDataSet);
    procedure cds_InvCtrlMetodAfterInsert(DataSet: TDataSet);
    procedure cds_InvCtrlGrpAfterInsert(DataSet: TDataSet);
    procedure ds_InvCtrlGrpDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ds_InvCtrlMetodDataChange(Sender: TObject; Field: TField);
    procedure cds_InvCtrl_PkgsAfterInsert(DataSet: TDataSet);
    procedure cds_InvCtrl_PaRegAfterInsert(DataSet: TDataSet);
    procedure cds_InvCtrl_PkgsAfterPost(DataSet: TDataSet);
    procedure cds_InvCtrl_PkgsBeforeDelete(DataSet: TDataSet);
    procedure cds_InvCtrl_PkgsBeforePost(DataSet: TDataSet);
    procedure cds_InvCtrl_PaRegAfterPost(DataSet: TDataSet);
    procedure cds_InvCtrl_PaRegBeforePost(DataSet: TDataSet);
    procedure cds_PriceListGrpAfterInsert(DataSet: TDataSet);
    procedure cds_PriceListRowAfterInsert(DataSet: TDataSet);
    procedure cds_GradeGroupHdrAfterInsert(DataSet: TDataSet);
    procedure cds_GradeGroupRowAfterInsert(DataSet: TDataSet);
    procedure cds_SurfGrpHdrAfterInsert(DataSet: TDataSet);
    procedure cds_SurGrpRowAfterInsert(DataSet: TDataSet);
    procedure cds_SurGrpRowReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_PriceListGrpBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FOnAmbiguousPkgNo: TAmbiguityEvent ;
    function  PkgTypExistIn_InvCtrlPkt (ic_grpNo, PackageTypeNo, LogicalInventoryPointNo : Integer) : Boolean ;
  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer;
      Var PackageTypeNo : Integer;
      Var LogicalInventoryPointNo : Integer     );


procedure PkgAddInv(
const PackageNo : Integer;
const SupplierCode : String3;
const RegistrationPointNo,
UserID,
Status,
Operation,
LogicalInventoryPointNo,
InventeringsMetod,
PackageTypeNo : Integer ;
const LogicalInventoryName : String;
const OwnerNo : Integer) ;

  public
    { Public declarations }
    Function  CheckIfPkgExistInKontrollist(const IC_grpno, PkgNo : Integer;const SuppCode : String) : Integer ;
    Function  CheckIfPkgExist (const PkgNo : Integer;const SuppCode : String) : Integer ;
    procedure GetNormalAvReg ;
    procedure GetProduction ;
    procedure GetInLeveranser ;
    procedure GetUTLeveranser ;
    function  PkgCngInv (const PackageNo, Status, Operation, IC_GrpNo : Integer; const SupplierCode : String) : Boolean ;
    procedure SetPkgTypeNo_PktNr(const PackageNo,PackageTypeNo : Integer; const SupplierCode : String3) ;
    procedure GetLagerGrupper ;
    procedure GetLagerStallen ;
    procedure SparaKontrollistor ;
    procedure SparaLagerListor ;
    procedure OppnaLagerStallen ;
    function  Get_PaketetsAgareNo(const Status, PackageNo : Integer;
                Var SupplierCode : String3;Var PackageTypeNo, LogicalInventoryPointNo : Integer) : Integer ;

    function  HamtaPaket(const Status,PackageNo : Integer;Var SupplierCode : String3;
                Var PackageTypeNo, LogicalInventoryPointNo : Integer;Var BackInfo : String) : Integer ;

    function  SetNoOfPkgs_PKTTYP (const LogicalInventoryName : String;const OwnerNo, ic_grpNo, NoOfPkgs, PackageTypeNo, LogicalInventoryPointNo : Integer) : Boolean ;

    property OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmInvCtrl: TdmInvCtrl;

implementation

uses dmsDataConn, dmsVidaContact, dlgPickPkg_III, VidaUser , dmsVidaSystem, recerror ;

{$R *.dfm}

Function TdmInvCtrl.CheckIfPkgExist (const PkgNo : Integer;const SuppCode : String) : Integer ;
Begin
 sq_PkgExist.ParamByName('PkgNo').AsInteger:= PkgNo ;
 sq_PkgExist.ParamByName('SuppCode').AsString:= SuppCode ;
 sq_PkgExist.Open ;
 if not sq_PkgExist.Eof then
  Result:= sq_PkgExistStatus.AsInteger
   else
    Result:= -1 ;
 sq_PkgExist.Close ;
End ;

Function TdmInvCtrl.CheckIfPkgExistInKontrollist(const IC_grpno, PkgNo : Integer;const SuppCode : String) : Integer ;
Begin
 sq_PkgExistInKL.ParamByName('IC_grpno').AsInteger:= IC_grpno ;
 sq_PkgExistInKL.ParamByName('PackageNo').AsInteger:= PkgNo ;
 sq_PkgExistInKL.ParamByName('SupplierCode').AsString:= SuppCode ;
 sq_PkgExistInKL.Open ;
 if not sq_PkgExistInKL.Eof then
  Result:= 1 //sq_PkgExistStatus.AsInteger
   else
    Result:= -1 ;
 sq_PkgExistInKL.Close ;
End ;

procedure TdmInvCtrl.cds_InvCtrl_LagerStallenAfterInsert(
  DataSet: TDataSet);
begin
 cds_InvCtrl_LagerStallenIC_grpno.AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
end;

procedure TdmInvCtrl.cds_InvCtrlMetodAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrlMetodIC_grpNo.AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
end;

procedure TdmInvCtrl.cds_InvCtrlGrpAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrlGrpIC_grpno.AsInteger:= dmsConnector.NextMaxNo('InvControlGrp') ;
 cds_InvCtrlGrpGrupperRapportPerTS.AsInteger:= 1 ;
 cds_InvCtrlGrpStatus.AsInteger:= 0 ;
end;

procedure TdmInvCtrl.GetLagerGrupper ;
Begin
 if cds_InvCtrlGrpIC_grpno.AsInteger > 0 then
 Begin
  While not cds_InvCtrlMetod.Eof do
   cds_InvCtrlMetod.Delete ;

  sq_GetLagergrupper.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_GetLagergrupper.Open ;
  While not sq_GetLagergrupper.Eof do
  Begin
   cds_InvCtrlMetod.Insert ;
   cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger:= sq_GetLagergrupperLIP.AsInteger ;
   cds_InvCtrlMetodInventeringsMetod.AsInteger:= 1 ;
   cds_InvCtrlMetodLogicalInventoryName.AsString:= sq_GetLagergrupperLogicalInventoryName.AsString ; // sq_GetLagergrupperLOGINVNAME.AsString ;
   cds_InvCtrlMetodOwnerName.AsString:= sq_GetLagergrupperclientName.AsString ;
   cds_InvCtrlMetodOwnerNo.AsInteger:= sq_GetLagergrupperOwnerNo.AsInteger ;
//   sq_GetLagergrupperLogicalInventoryName
   cds_InvCtrlMetod.Post ;
   sq_GetLagergrupper.Next ;
  End ;
  sq_GetLagergrupper.Close ;
 End ;
End ;

procedure TdmInvCtrl.GetLagerStallen ;
Begin
 With dmInvCtrl do
 Begin
  While not cds_InvCtrl_LagerStallen.Eof do
   cds_InvCtrl_LagerStallen.Delete ;

  cds_PhysInv.Active:= False ;
  sq_PhysInv.ParamByName('OwnerNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
  cds_PhysInv.Active:= True ;
  While not cds_PhysInv.Eof do
  Begin
   cds_InvCtrl_LagerStallen.Insert ;
   cds_InvCtrl_LagerStallenPhysicalInventoryPointNo.AsInteger:= cds_PhysInvPhysicalInventoryPointNo.AsInteger ;
   cds_InvCtrl_LagerStallenOwnerName.AsString:= cds_PhysInvClientName.AsString ;
   cds_InvCtrl_LagerStallen.Post ;
   cds_PhysInv.Next ;
  End ;
 End ;
End ;


procedure TdmInvCtrl.SparaKontrollistor ;
Begin
 sq_DelCtrlRowPktNr.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_DelCtrlRowPktNr.ExecSQL(False) ;

//paket På laster
  sq_SaveToInvCtrlRow_PktNr2.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_SaveToInvCtrlRow_PktNr2.ParamByName('SupplierNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
  sq_SaveToInvCtrlRow_PktNr2.ExecSQL(False) ;

 cds_InvCtrlMetod.First ;
 While not cds_InvCtrlMetod.Eof do
 Begin
  if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
  Begin
   sq_SaveToInvCtrlRow_PktNr.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveToInvCtrlRow_PktNr.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveToInvCtrlRow_PktNr.ParamByName('InventeringsMetod').AsInteger:= cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveToInvCtrlRow_PktNr.ExecSQL(False) ;
  End
  else
  Begin
   sq_SaveToInvCtrlRow_PktTyp.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveToInvCtrlRow_PktTyp.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveToInvCtrlRow_PktTyp.ParamByName('InventeringsMetod').AsInteger:= cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveToInvCtrlRow_PktTyp.ExecSQL(False) ;
  End ;
  cds_InvCtrlMetod.Next ;
 End ;
End ;

procedure TdmInvCtrl.OppnaLagerStallen ;
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then
  Begin
   cds_PhysInv.Active:= False ;
   sq_PhysInv.ParamByName('OwnerNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
   cds_PhysInv.Active:= True ;
  End ;
 End ;
end;

procedure TdmInvCtrl.ds_InvCtrlGrpDataChange(Sender: TObject;
  Field: TField);
begin
 OppnaLagerStallen ;
// if fInvCtrl <> nil then fInvCtrl.Erd ;
end;

procedure TdmInvCtrl.DataModuleCreate(Sender: TObject);
begin
 OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
 mtMetod.Active:= True ;
 mtMetod.InsertRecord([1,'PaketNr']);
 mtMetod.InsertRecord([2,'PaketTyp']);

 mtInvCtrlStatus.Active:= True ;
 mtInvCtrlStatus.InsertRecord([0,'0: NY']);
 mtInvCtrlStatus.InsertRecord([1,'1: SKAPA KONTROLLISTOR']);
 mtInvCtrlStatus.InsertRecord([2,'2: ÄNDRA PAKET']);
 mtInvCtrlStatus.InsertRecord([3,'3: SKAPA LAGERLISTOR']);
 mtInvCtrlStatus.InsertRecord([4,'4: INVENTERING AVSLUTAD']);
// mtInvCtrlStatus.InsertRecord([3,'Inv.lista skapad']);
end;

procedure TdmInvCtrl.DataModuleDestroy(Sender: TObject);
begin
 mtMetod.Active:= False ;
 mtInvCtrlStatus.Active:= False ;
end;

function TdmInvCtrl.Get_PaketetsAgareNo(const Status, PackageNo : Integer;
Var SupplierCode : String3;Var PackageTypeNo, LogicalInventoryPointNo : Integer) : Integer ;
Var ProductNo : Integer ;
    OwnerNo : Integer ;
Begin
 cds_InvCtrlRow.Active:= False ;
 //Hämta paket data, paket måste finnas i invControlRow
 sq_InvCtrlRow.ParamByName('PackageNo').AsInteger:= PackageNo ;
 sq_InvCtrlRow.ParamByName('IC_grpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_InvCtrlRow.ParamByName('Status').AsInteger:= Status ;
 sq_InvCtrlRow.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;

 cds_InvCtrlRow.Active:= True ;
  case cds_InvCtrlRow.RecordCount of
    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SupplierCode := '';
           OwnerNo := 0 ;
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SupplierCode   := cds_InvCtrlRowSuppliercode.AsString;
           OwnerNo := cds_InvCtrlRowOwnerNo.AsInteger;
           ProductNo  := 0 ;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_InvCtrlRow,SupplierCode,OwnerNo, ProductNo,
             PackageTypeNo, LogicalInventoryPointNo);
           end;
    end;

 Result:= OwnerNo ;
 cds_InvCtrlRow.Active:= False ;
End ;

procedure TdmInvCtrl.SparaLagerListor ;
Begin
 cds_InvCtrlMetod.First ;
 While not cds_InvCtrlMetod.Eof do
 Begin
  if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
  Begin
  //Markera alla som 1
  //Deleta 3 , 4 och 5 och lägg till i nästa steg
  sq_CleanICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_CleanICR.ExecSQL(False) ;

  //Add 3 inleverans 4 nyprod och 5 gamla påreg
   sq_AddToICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_AddToICR.ExecSQL(False) ;

  //Markera bort 0 avreg och 2 utleverans och 6 normal avreg
  sq_RemFromICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_RemFromICR.ExecSQL(False) ;

  //Ändra packagetype och LIP på de paket i ICR som har ändrats före maxdatum
  //Hämta
  sq_GetChangesToPackages.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_GetChangesToPackages.ExecSQL(False) ;

{   sq_SaveInvLista_PktNr.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('InventeringsMetod').AsInteger:= cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('MaxDatum').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(cds_InvCtrlGrpMaxDatum.AsDateTime) ;
   sq_SaveInvLista_PktNr.ExecSQL(False) ; }
  End
  else
  Begin
   sq_SaveInvListaPktTyp.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveInvListaPktTyp.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveInvListaPktTyp.ParamByName('InventeringsMetod').AsInteger:= cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveInvListaPktTyp.ExecSQL(False) ;
  End ;
  cds_InvCtrlMetod.Next ;
 End ;
End ;

function TdmInvCtrl.HamtaPaket(const Status, PackageNo : Integer;Var SupplierCode : String3;
Var PackageTypeNo, LogicalInventoryPointNo : Integer;Var BackInfo : String) : Integer ;
Var ProductNo : Integer ;
    OwnerNo : Integer ;
Begin
 OwnerNo := 0 ;
 cds_GetPkt.Active:= False ;
 //Hämta paket data, paket måste finnas i invControlRow
 sq_GetPkt.ParamByName('PackageNo').AsInteger:= PackageNo ;
 sq_GetPkt.ParamByName('OwnerNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
 sq_GetPkt.ParamByName('Status').AsInteger:= Status ; 
// sq_GetPkt.ParamByName('Status').AsInteger:= Status ;
 cds_GetPkt.Active:= True ;
  case cds_GetPkt.RecordCount of
    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
          cds_GetPkt.Active:= False ;
          sq_GetPkt.ParamByName('PackageNo').AsInteger:= PackageNo ;
          sq_GetPkt.ParamByName('OwnerNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
          if Status = 0 then
           sq_GetPkt.ParamByName('Status').AsInteger:= 1
            else
             sq_GetPkt.ParamByName('Status').AsInteger:= 0 ;
          cds_GetPkt.Active:= True ;

          if cds_GetPkt.RecordCount > 0 then
           Begin
            BackInfo:= cds_GetPktClientName.AsString+' / '+cds_GetPktLogicalInventoryName.AsString ;
            OwnerNo := -1
           End
            else
             OwnerNo := 0 ;
           SupplierCode := '';

           end;

{    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SupplierCode   := cds_GetPktSuppliercode.AsString;
           OwnerNo := cds_GetPktOwnerNo.AsInteger;
           ProductNo  := 0 ;
           end; }
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_GetPkt,SupplierCode,OwnerNo, ProductNo,
             PackageTypeNo, LogicalInventoryPointNo);
           end;
    end;

 Result:= OwnerNo ;
 cds_GetPkt.Active:= False ;
End ;

procedure TdmInvCtrl.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer;
  Var PackageTypeNo : Integer;
  Var LogicalInventoryPointNo : Integer
  );
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to add to the load. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker_III.Create(Self) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg; //Ägare
      ProductNo  := ProductNoForSelectedpkg ;
      PackageTypeNo := PackageTypeNoForSelectedpkg ;
      LogicalInventoryPointNo := LogicalInventoryPointNoForSelectedpkg ;
      end
    else
     Begin
      Choice := '';
      SupplierNo:= -2 ;
     End ;
  finally
    free;
    end;
end;

procedure TdmInvCtrl.SetPkgTypeNo_PktNr(const PackageNo,PackageTypeNo : Integer; const SupplierCode : String3) ;
Begin
 Try
 sq_SetPkgTypeNo_PktNr.ParamByName('ic_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_SetPkgTypeNo_PktNr.ParamByName('PackageNo').AsInteger:= PackageNo ;
 sq_SetPkgTypeNo_PktNr.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
 sq_SetPkgTypeNo_PktNr.ParamByName('SupplierCode').AsString:= SupplierCode ;

 sq_SetPkgTypeNo_PktNr.ExecSQL(False) ;
 Except
 End ;
End ;

function TdmInvCtrl.PkgTypExistIn_InvCtrlPkt (ic_grpNo, PackageTypeNo, LogicalInventoryPointNo : Integer) : Boolean ;
Begin
 Try
 sq_PkgTypExistIn_InvCtrlPkt.ParamByName('ic_grpNo').AsInteger:= ic_grpNo ;
 sq_PkgTypExistIn_InvCtrlPkt.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
 sq_PkgTypExistIn_InvCtrlPkt.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
 sq_PkgTypExistIn_InvCtrlPkt.Open ;
 if not sq_PkgTypExistIn_InvCtrlPkt.Eof then
  Result:= True
   else
    Result:= False ;
 Finally
  sq_PkgTypExistIn_InvCtrlPkt.Close ;
 End ;
End ;

function TdmInvCtrl.SetNoOfPkgs_PKTTYP (const LogicalInventoryName : String;const OwnerNo, ic_grpNo, NoOfPkgs, PackageTypeNo, LogicalInventoryPointNo : Integer) : Boolean ;
Begin
 if PkgTypExistIn_InvCtrlPkt(ic_grpNo, PackageTypeNo, LogicalInventoryPointNo) then
 Begin
  Try
   sq_SetNoOfPkg_PKTTYP.ParamByName('ic_grpNo').AsInteger:= ic_grpNo ;
   sq_SetNoOfPkg_PKTTYP.ParamByName('NoOfPkgs').AsInteger:= NoOfPkgs ;
   sq_SetNoOfPkg_PKTTYP.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
   sq_SetNoOfPkg_PKTTYP.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
   sq_SetNoOfPkg_PKTTYP.ExecSQL(False) ;
   Except
    on eDatabaseError do
    Begin
     Result:= False ;
     Raise ;
    End ;
   End ;
 End
 else
  Begin //Insert post to invCtrlRowPkt
   Try
   sq_InsPkgType_NoOfPkgs.ParamByName('OwnerNo').AsInteger:= OwnerNo ;
   sq_InsPkgType_NoOfPkgs.ParamByName('ic_grpNo').AsInteger:= ic_grpNo ;
   sq_InsPkgType_NoOfPkgs.ParamByName('NoOfPkgs').AsInteger:= NoOfPkgs ;
   sq_InsPkgType_NoOfPkgs.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
   sq_InsPkgType_NoOfPkgs.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
   sq_InsPkgType_NoOfPkgs.ParamByName('LogicalInventoryName').AsString:= LogicalInventoryName ;
   sq_InsPkgType_NoOfPkgs.ExecSQL(False) ;
   Except
    on eDatabaseError do
    Begin
     Result:= False ;
     Raise ;
    End ;
   End ;
 End ;

End ;

procedure TdmInvCtrl.ds_InvCtrlMetodDataChange(Sender: TObject;
  Field: TField);
begin
// if fInvCtrl <> nil then fInvCtrl.SattKnappStatus ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PkgsAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrl_PkgsIC_GrpNo.AsInteger             := cds_InvCtrlGrpIC_grpno.AsInteger ;
 cds_InvCtrl_PkgsDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
 cds_InvCtrl_PkgsOperation.AsInteger           := 0 ; //av reg
end;

procedure TdmInvCtrl.cds_InvCtrl_PaRegAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrl_PaRegIC_GrpNo.AsInteger            := cds_InvCtrlGrpIC_grpno.AsInteger ;
 cds_InvCtrl_PaRegDateCreated.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(Now) ;
 cds_InvCtrl_PaRegOperation.AsInteger           := 5 ; //På reg
 cds_InvCtrl_PaRegLogicalInventoryPointNo.AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
end;

{procedure TdmInvCtrl.SetStatusPkt_i_Inventering ;
Begin
 sq_InvCtrlPkt.ParamByName('IC_GrpNo').AsInteger:= IC_GrpNo ;
 sq_InvCtrlPkt.ParamByName('PackageNo').AsInteger:= PackageNo ;
 sq_InvCtrlPkt.ParamByName('Suppliercode').AsString:= Suppliercode ;

End ; }

function TdmInvCtrl.PkgCngInv (const PackageNo, Status, Operation, IC_GrpNo : Integer; const SupplierCode : String) : Boolean ;
Var
  Save_Cursor  : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  try
      sp_PkgCngInv.Close ;
      sp_PkgCngInv.ParamByName('PackageNo').AsInteger:= PACKAGENO ;
      sp_PkgCngInv.ParamByName('SupplierCode').AsString:= SupplierCode ;
      sp_PkgCngInv.ParamByName('RegistrationPointNo').AsInteger:= 5 ; //Inventerings diff RegistrationPointNo ;
      sp_PkgCngInv.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
      sp_PkgCngInv.ParamByName('DateCreated').AsSQLTimeStamp := dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp ; //DateTimeToSQLTimeStamp(WhenCreated) ;
      sp_PkgCngInv.ParamByName('Status').AsInteger:= Status ;
      sp_PkgCngInv.ParamByName('Operation').AsInteger:= Operation ;
      sp_PkgCngInv.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
      sp_PkgCngInv.ExecProc ;
    Result:= True ;
  except
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmInvCtrl.PkgAddInv(
const PackageNo : Integer;
const SupplierCode : String3;
const RegistrationPointNo,
UserID,
Status,
Operation,
LogicalInventoryPointNo,
InventeringsMetod,
PackageTypeNo : Integer ;
const LogicalInventoryName : String;
const OwnerNo : Integer) ;
Begin
 Try
 sp_PkgAddInv.ParamByName('PackageNo').AsInteger:= PackageNo ;
 sp_PkgAddInv.ParamByName('SupplierCode').AsString:= SupplierCode ;
 sp_PkgAddInv.ParamByName('RegistrationPointNo').AsInteger:= RegistrationPointNo ;
 sp_PkgAddInv.ParamByName('UserID').AsInteger:= UserID ;
 sp_PkgAddInv.ParamByName('DateCreated').AsSQLTimeStamp := dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp ; //DateTimeToSQLTimeStamp(WhenCreated) ;
 sp_PkgAddInv.ParamByName('Status').AsInteger:= Status ;
 sp_PkgAddInv.ParamByName('Operation').AsInteger:= Operation ;
 sp_PkgAddInv.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sp_PkgAddInv.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
 sp_PkgAddInv.ParamByName('InventeringsMetod').AsInteger:= InventeringsMetod ;
 sp_PkgAddInv.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
 sp_PkgAddInv.ParamByName('LogicalInventoryName').AsString:= LogicalInventoryName ;
 sp_PkgAddInv.ParamByName('OwnerNo').AsInteger:= OwnerNo ;
 sp_PkgAddInv.ExecProc ;
 Except
 End ;
End ;

procedure TdmInvCtrl.cds_InvCtrl_PkgsAfterPost(DataSet: TDataSet);
begin
// if cds_InvCtrl_PkgsOperation.AsInteger = 0 then
 PkgCngInv (cds_InvCtrl_PkgsPackageNo.AsInteger,
 cds_InvCtrl_PkgsOperation.AsInteger,     //används för Status
 3, //Operation 0 på, 3 av
 cds_InvCtrlGrpIC_grpno.AsInteger,
 cds_InvCtrl_PkgsSupplierCode.AsString ) ;
 if cds_InvCtrl_Pkgs.ChangeCount > 0 then
   cds_InvCtrl_Pkgs.ApplyUpdates(0) ;

end;

procedure TdmInvCtrl.cds_InvCtrl_PkgsBeforeDelete(DataSet: TDataSet);
begin
//Lägg tillbaka paket till lager
 PkgCngInv (cds_InvCtrl_PkgsPackageNo.AsInteger,
 1,     //används för Status
 0, //Operation 0 på, 3 av
 cds_InvCtrlGrpIC_grpno.AsInteger,
 cds_InvCtrl_PkgsSupplierCode.AsString ) ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PkgsBeforePost(DataSet: TDataSet);
begin
 if cds_InvCtrl_PkgsPackageNo.IsNull then
 Begin
  ShowMessage('paketnummer saknas!') ;
  Abort ;
 End ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PaRegAfterPost(DataSet: TDataSet);
begin
 PkgAddInv(cds_InvCtrl_PaRegPackageNo.AsInteger,
 cds_InvCtrl_PaRegSupplierCode.AsString,
 5, //Inventerings diff RegistrationPointNo ;
 ThisUser.UserID,
 1, //Status
 0, //0 = på  - operation
// cds_InvCtrl_LGLogicalInventoryPointNo.AsInteger,
 cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
 1, //InventeringsMetod,
 -1,
 cds_InvCtrlMetodLogicalInventoryName.AsString,
 cds_InvCtrlMetodOwnerNo.AsInteger )

{
const PackageNo : Integer;
const SupplierCode : String3;
const RegistrationPointNo,
UserID,
Status,
Operation,
LogicalInventoryPointNo,
InventeringsMetod,
PackageTypeNo : Integer ;
const LogicalInventoryName : String;
const OwnerNo : Integer) ; }
end;


procedure TdmInvCtrl.GetNormalAvReg ;
Begin
 With sq_InsInLeveranser do
 Begin
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 6') ;
  ExecSQL(False) ;

  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',PP.PackageNo, PP.SupplierCode, 6, GetDate(), ') ;
  SQL.Add('pn.LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.Package_Production PP ') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = PP.PackageNo  ') ;
  SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;
  SQL.Add('WHERE PP.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND PP.ProductionDate > '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;

  SQL.Add('AND PP.Operation = 3') ;
  //och att paketet inte avreg före maxdatum
  SQL.SaveToFile('sq_AvregNormal.txt');
  ExecSQL(False) ;
 End ; //with
End ;


//Lägg sen till dessa paket till ICR
//Laster som har paket som Inte ej finns i ICR och har ett utlastningsdatum mindre än MaxDatum
//och att lasten är ankomstregistrerad.
//och att paketet inte avregistrerades före maxdatum
procedure TdmInvCtrl.GetInLeveranser ;
Begin
 With sq_InsInLeveranser do
 Begin
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 3') ;
  ExecSQL(False) ;

  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 3, GetDate(), ') ;
  SQL.Add('pn.LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.Loads L ') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo ') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  SQL.Add('Inner Join dbo.Confirmed_Load CL ON CL.Confirmed_LoadNo = L.LoadNo ') ;//AR
  SQL.Add('WHERE L.customerNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND L.LoadedDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//  SQL.Add('AND pn.Status = 1 ') ;
  //och att paketet inte avreg före maxdatum

  SQL.Add('AND LD.PackageNo not in (Select P2.PackageNo FROM dbo.Package_Production P2') ;
  SQL.Add('WHERE P2.SupplierCode = LD.SupplierCode') ;
  SQL.Add('AND P2.Operation = 3') ; // -- avreg
  SQL.Add('AND P2.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND P2.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add(')') ;

  SQL.Add('AND LD.PackageNo not in (Select PackageNo ') ;
  SQL.Add('from dbo.InvControlrow icr ') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = LD.PackageNo ') ;
  SQL.Add('AND SupplierCode = LD.SupplierCode) ') ;
  SQL.SaveToFile('sq_InsINLeveranser.txt');
  ExecSQL(False) ;
 End ; //with
End ;

//Utleveranser
//Markera sen bort dessa paket från ICR
//Bara laster som har paket som finns i ICR och har lastats ut före maxdatum.
//Paket som produceras och lastas ut mellan inv och maxdatum markeras bort här.
procedure TdmInvCtrl.GetUTLeveranser ;
Begin
 With sq_InsInLeveranser do
 Begin
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 2') ;
  ExecSQL(False) ;
  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 2, GetDate(),-1 ') ;
  SQL.Add('FROM dbo.Loads L ') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo ') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  SQL.Add('WHERE L.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND L.LoadedDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND L.SenderLoadStatus <> 0 ') ;
  SQL.Add('AND LD.PackageNo in (Select PackageNo ') ;
  SQL.Add('from dbo.InvControlrow icr ') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = LD.PackageNo ') ;
  SQL.Add('AND SupplierCode = LD.SupplierCode) ') ;
  SQL.SaveToFile('sq_InsUTLeveranser.txt');
  ExecSQL(False) ;
 End ; //with
End ;

//Producerade paket
//Lägg in dessa paket sen till ICR
//Bara paket som är producerade mellan inventeringsdatum och maxdatum och inte är avregistrerade före maxdatum
procedure TdmInvCtrl.GetProduction ;
Begin
 With sq_InsInLeveranser do
 Begin
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 4') ;
  ExecSQL(False) ;

  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;

  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',PP.PackageNo, PP.SupplierCode, 4, GetDate(), pn.LogicalInventoryPointNo') ;

  SQL.Add('FROM dbo.Package_Production PP ') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = PP.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;

  SQL.Add('WHERE PP.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND PP.ProductionDate > '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.Operation = 0 ') ;
//  SQL.Add('AND pn.Status = 1 ') ;
  SQL.Add('AND PP.PackageNo not in (Select P2.PackageNo FROM dbo.Package_Production P2') ;
  SQL.Add('WHERE P2.SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND P2.Operation = 3') ; // -- avreg
  SQL.Add('AND P2.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND P2.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add(')') ;
  SQL.Add('AND PP.PackageNo not in (Select PackageNo ') ;
  SQL.Add('from dbo.InvCtrl_Pkgs icr ') ;//InvControlrow
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = PP.PackageNo ') ;
  SQL.Add('AND SupplierCode = PP.SupplierCode) ') ;
  SQL.SaveToFile('sq_GetProduction.txt');
  ExecSQL(False) ;
 End ; //with
End ;

procedure TdmInvCtrl.cds_InvCtrl_PaRegBeforePost(DataSet: TDataSet);
begin
 if cds_InvCtrl_PaRegLogicalInventoryPointNo.IsNull then
 Begin
  ShowMessage('Lagergrupp registrerades inte, prova igen!') ;
  Abort ;
 End ;
end;

procedure TdmInvCtrl.cds_PriceListGrpAfterInsert(DataSet: TDataSet);
begin
 cds_PriceListGrpPriceListNo.AsInteger        := dmsConnector.NextMaxNo('PriceListGrp') ;
 cds_PriceListGrpCreatedUser.AsInteger        := ThisUser.UserID ;
 cds_PriceListGrpDateCreated.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
 cds_PriceListGrpPriceListDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmInvCtrl.cds_PriceListRowAfterInsert(DataSet: TDataSet);
begin
 cds_PriceListRowPriceListNo.AsInteger    := cds_PriceListGrpPriceListNo.AsInteger ;
 cds_PriceListRowPriceListRowNo.AsInteger := dmsConnector.NextMaxNo('PriceListRow') ;
 cds_PriceListRowMinAT.AsFloat            := 0 ;
 cds_PriceListRowMaxAT.AsFloat            := 999 ;
 cds_PriceListRowMinAB.AsFloat            := 0 ;
 cds_PriceListRowMaxAB.AsFloat            := 999 ;
 cds_PriceListRowSpeciesNo.AsInteger      := cds_PriceListGrpSpeciesNo.AsInteger ;
end;

procedure TdmInvCtrl.cds_GradeGroupHdrAfterInsert(DataSet: TDataSet);
begin
 cds_GradeGroupHdrGradeGroupNo.AsInteger      := dmsConnector.NextMaxNo('GradeGroupHdr') ;
 cds_GradeGroupHdrDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_GradeGroupHdrCreatedUser.AsInteger       := ThisUser.UserID ;
end;

procedure TdmInvCtrl.cds_GradeGroupRowAfterInsert(DataSet: TDataSet);
begin
 cds_GradeGroupRowGradeGroupNo.AsInteger:= cds_GradeGroupHdrGradeGroupNo.AsInteger ;
end;

procedure TdmInvCtrl.cds_SurfGrpHdrAfterInsert(DataSet: TDataSet);
begin
 cds_SurfGrpHdrSurfacingGroupNo.AsInteger      := dmsConnector.NextMaxNo('SurfacingGroupHdr') ;
 cds_SurfGrpHdrDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_SurfGrpHdrCreatedUser.AsInteger       := ThisUser.UserID ;
end;

procedure TdmInvCtrl.cds_SurGrpRowAfterInsert(DataSet: TDataSet);
begin
 cds_SurGrpRowSurfacingGroupNo.AsInteger:= cds_SurfGrpHdrSurfacingGroupNo.AsInteger ;
end;

procedure TdmInvCtrl.cds_SurGrpRowReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdmInvCtrl.cds_PriceListGrpBeforePost(DataSet: TDataSet);
begin
 cds_PriceListGrpDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

end.
