unit UnitLoadHead;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxCntner,

  VidaType, db,
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, cxPC, cxControls,
  Grids, DBGrids, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ActnList, cxGraphics, cxLabel,
  cxImageComboBox, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxClasses,
  
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  dxBarExtItems, FMTBcd, DBClient, Provider, SqlExpr ;

type
  TfLoadHead = class(TForm)
    dxBarManager1: TdxBarManager;
    lbSaveLoad: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    ImageList1: TImageList;
    images1616: TImageList;
    siPrint: TdxBarSubItem;
    lbFS: TdxBarLargeButton;
    lbHyvelOrder: TdxBarLargeButton;
    lbLastOrderAllaVerk: TdxBarLargeButton;
    lbLastOrderErtVerk: TdxBarLargeButton;
    lbSpecAllaLasterLO: TdxBarLargeButton;
    bbTally_Ver2: TdxBarButton;
    ActionList1: TActionList;
    acValidatePkg: TAction;
    acValidateAllPkgs: TAction;
    acInsertPkgToInventory: TAction;
    acInsertAllPkgsToInventory: TAction;
    acRemovePkgFromSystem: TAction;
    acRemoveAllPkgsFromSystem: TAction;
    acUndoPkgOperation: TAction;
    acSetDefaultMatchOnAllPkgs: TAction;
    acPkgInfo: TAction;
    acAddPkg: TAction;
    acConnectMarkedPkgsToLO: TAction;
    acAddPkgByPkgCode: TAction;
    acRemoveLO: TAction;
    acUndoRemoveLO: TAction;
    acAddLO: TAction;
    acPickPkgNos: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    acSaveLoad: TAction;
    Panel6: TPanel;
    Panel7: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acPrintTallyUSNote: TAction;
    acKopplaPaketMotLOManuellt: TAction;
    acDeleteLoad: TAction;
    acPrintFS: TAction;
    acPrintHyvelOrder: TAction;
    acLOAllaVerk: TAction;
    acPrintLOErtVerk: TAction;
    acPrintSpecAllaLasterLO: TAction;
    acPkgEntry: TAction;
    acStreckKodsinlasning: TAction;
    acPktNrSerie: TAction;
    acTaBortPaketPerPaketKod: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleAqua: TcxStyle;
    cxStyleBlue: TcxStyle;
    acChangePKGLayout: TAction;
    acChangeLORowLayout: TAction;
    acChangeLOLayout: TAction;
    cxStyleSilver: TcxStyle;
    dxPageControl1: TcxPageControl;
    tsLoadData: TcxTabSheet;
    pLoadHead: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    detLoaded: TcxDBDateEdit;
    imgcbStatus: TcxDBImageComboBox;
    teLoadID: TcxDBTextEdit;
    teFS: TcxDBTextEdit;
    lcLocalShipper: TcxDBLookupComboBox;
    lcFrom: TcxDBLookupComboBox;
    lcTo: TcxDBLookupComboBox;
    eLoadNo: TcxDBTextEdit;
    tsLoadNote: TcxTabSheet;
    meInternalNote: TcxDBMemo;
    sq_LoadHead: TSQLQuery;
    sq_LoadHeadLoadNo: TIntegerField;
    sq_LoadHeadSupplierNo: TIntegerField;
    sq_LoadHeadLoadedDate: TSQLTimeStampField;
    sq_LoadHeadSenderLoadStatus: TIntegerField;
    sq_LoadHeadLoadID: TStringField;
    sq_LoadHeadMsgToShipper: TMemoField;
    sq_LoadHeadInternalNote: TMemoField;
    sq_LoadHeadPackageEntryOption: TIntegerField;
    sq_LoadHeadLocalShippingCompanyNo: TIntegerField;
    sq_LoadHeadLocalLoadingLocation: TIntegerField;
    sq_LoadHeadLocalDestinationNo: TIntegerField;
    sq_LoadHeadCreatedUser: TIntegerField;
    sq_LoadHeadModifiedUser: TIntegerField;
    sq_LoadHeadDateCreated: TSQLTimeStampField;
    sq_LoadHeadFS: TStringField;
    sq_LoadHeadOriginalSupplierNo: TIntegerField;
    sq_LoadHeadCustomerNo: TIntegerField;
    sq_LoadHeadNotering: TMemoField;
    sq_LoadHeadLoadOK: TIntegerField;
    sq_LoadHeadLoadAR: TIntegerField;
    dsp_LoadHead: TDataSetProvider;
    cds_LoadHead: TClientDataSet;
    cds_LoadHeadLoadNo: TIntegerField;
    cds_LoadHeadSupplierNo: TIntegerField;
    cds_LoadHeadLoadedDate: TSQLTimeStampField;
    cds_LoadHeadSenderLoadStatus: TIntegerField;
    cds_LoadHeadLoadID: TStringField;
    cds_LoadHeadMsgToShipper: TMemoField;
    cds_LoadHeadInternalNote: TMemoField;
    cds_LoadHeadPackageEntryOption: TIntegerField;
    cds_LoadHeadLocalShippingCompanyNo: TIntegerField;
    cds_LoadHeadLocalLoadingLocation: TIntegerField;
    cds_LoadHeadLocalDestinationNo: TIntegerField;
    cds_LoadHeadCreatedUser: TIntegerField;
    cds_LoadHeadModifiedUser: TIntegerField;
    cds_LoadHeadDateCreated: TSQLTimeStampField;
    cds_LoadHeadFS: TStringField;
    cds_LoadHeadOriginalSupplierNo: TIntegerField;
    cds_LoadHeadCustomerNo: TIntegerField;
    cds_LoadHeadNotering: TMemoField;
    cds_LoadHeadLoadOK: TIntegerField;
    cds_LoadHeadLoadAR: TIntegerField;
    ds_LoadHead: TDataSource;
    procedure lbCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveLoadExecute(Sender: TObject);
    procedure acSaveLoadUpdate(Sender: TObject);
  private
    { Private declarations }
     function  DataSaved : Boolean ;
     procedure CloseDataSets;
  Protected

  public
    { Public declarations }
    constructor CreateWithNewLoad(AOwner: TComponent; const LoadNo : Integer) ;
    constructor CreateWithExistingLoad(AOwner   : TComponent;const LoadNo : Integer );
    destructor Destroy; override;

  end;

 var  fLoadHead: TfLoadHead;

implementation

uses VidaConst,
  dmsVidaContact,
  VidaUser,
  dmsDataConn ;

{$R *.dfm}

{ TfrmLoadEntry }


function TfLoadHead.DataSaved : Boolean ;
Begin
  Result:= True ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LoadHead.ChangeCount > 0 then
   Result:= False ;
End ;

constructor TfLoadHead.CreateWithExistingLoad(AOwner   : TComponent;const LoadNo : Integer );
var
  Save_Cursor : TCursor;

  Procedure OpenLoadHead ;
  Begin
    cds_LoadHead.Active:= False ;
    sq_LoadHead.ParamByName('LoadNo').AsInteger:= LoadNo ;
    sq_LoadHead.Open ;
    cds_LoadHead.Active:= True ;
  End ;

//Begin with procedure CreateWithExistingLoad(
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  CreateWithNewLoad(AOwner, LoadNo);
  OpenLoadHead ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

constructor TfLoadHead.CreateWithNewLoad(AOwner: TComponent; const LoadNo : Integer) ;
Var x : Integer ;
begin
  inherited Create(AOwner);
  cds_LoadHead.Active:= True ;
end;

destructor TfLoadHead.Destroy;
begin
  CloseDataSets;
  inherited
end;


procedure TfLoadHead.CloseDataSets;
begin
  cds_LoadHead.Active:= False ;
end;

procedure TfLoadHead.lbCloseClick(Sender: TObject);
begin
 Close ;
end;





procedure TfLoadHead.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
begin
  if DataSaved = False then
   Begin
   dResult:= MessageDlg('Ändringar är inte sparade, vill du spara?',
    mtConfirmation, [mbYes, mbNo,mbCancel], 0) ;
   End
    else
    dResult:= mrNo ;

    if dResult = mrYes then
    Begin
     acSaveLoadExecute(Sender) ;
     CanClose := True ;
    End
    else
    if dResult = mrNo then
     Begin
      CanClose := True ;
     End
     else
      CanClose := False ;
end;


procedure TfLoadHead.acSaveLoadExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try
  if cds_LoadHead.State in [dsEdit] then
  cds_LoadHead.Post ;
  if cds_LoadHead.ChangeCount > 0 then
  cds_LoadHead.ApplyUpdates(0) ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLoadHead.acSaveLoadUpdate(Sender: TObject);
begin
 acSaveLoad.Enabled:= (not DataSaved)  ;
end;

end.
