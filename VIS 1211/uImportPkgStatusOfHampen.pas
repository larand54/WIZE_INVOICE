unit uImportPkgStatusOfHampen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ActnList, StdCtrls,
  cxButtons, ExtCtrls, cxLookAndFeels, cxPC, cxSplitter, cxLabel,
  cxImageComboBox, cxTextEdit, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxBar, cxContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, dxSkinsdxBarPainter;

type
  TfImportPkgStatusOfHampen = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    acImportPackageStatusOfHampen: TAction;
    dsImportPkgStatus: TDataSource;
    acUpdatePackageStatus: TAction;
    ds_HTFPkgStatus: TDataSource;
    OpenDialog1: TOpenDialog;
    acOpenFile: TAction;
    cxPageControl1: TcxPageControl;
    tsImportedPackages: TcxTabSheet;
    tsImportedLoads: TcxTabSheet;
    acCreateLoad: TAction;
    grdImportFileStatus: TcxGrid;
    grdImportFileStatusDBTableView1: TcxGridDBTableView;
    grdImportFileStatusLevel1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton2: TcxButton;
    grdImportedLoadsDBTableView1: TcxGridDBTableView;
    grdImportedLoadsLevel1: TcxGridLevel;
    grdImportedLoads: TcxGrid;
    ds_TransferFiles: TDataSource;
    grdImportedLoadsDBTableView1FileName: TcxGridDBColumn;
    grdImportedLoadsDBTableView1TransferType: TcxGridDBColumn;
    grdImportedLoadsDBTableView1DateCreated: TcxGridDBColumn;
    grdImportedLoadsDBTableView1CreatedUser: TcxGridDBColumn;
    grdImportedLoadsDBTableView1Complete: TcxGridDBColumn;
    grdImportedLoadsDBTableView1SendDate: TcxGridDBColumn;
    acRefreshTransferFiles: TAction;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    acVisaEjChangedPkgs: TAction;
    cxButton1: TcxButton;
    grdImportFileStatusDBTableView1RecordType: TcxGridDBColumn;
    grdImportFileStatusDBTableView1Prefix: TcxGridDBColumn;
    grdImportFileStatusDBTableView1Paketnr: TcxGridDBColumn;
    grdImportFileStatusDBTableView1Styck: TcxGridDBColumn;
    grdImportFileStatusDBTableView1Status: TcxGridDBColumn;
    grdImportFileStatusDBTableView1StatusDatum: TcxGridDBColumn;
    grdImportFileStatusDBTableView1OriginalStyck: TcxGridDBColumn;
    grdImportFileStatusDBTableView1CreatedUser: TcxGridDBColumn;
    grdImportFileStatusDBTableView1DateCreated: TcxGridDBColumn;
    grdImportFileStatusDBTableView1Complete: TcxGridDBColumn;
    grdImportFileStatusDBTableView1FileName: TcxGridDBColumn;
    grdImportFileStatusDBTableView1LONo: TcxGridDBColumn;
    grdImportFileStatusDBTableView1HTF_FS: TcxGridDBColumn;
    acVisaAndradePaket: TAction;
    cxButton5: TcxButton;
    grdImportedLoadsDBTableView1LONo: TcxGridDBColumn;
    grdImportedLoadsDBTableView1HTF_FS: TcxGridDBColumn;
    grdImportedLoadsDBTableView1LoadNo: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    Panel4: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    acUppdateraLasterTillHampen: TAction;
    ds_TransferFilesTillHTF: TDataSource;
    acSendFileToHampen: TAction;
    cxButton8: TcxButton;
    acShowSkickadeFilerTillHampen: TAction;
    grdImportFileStatusDBTableView1TotalNoOfPieces: TcxGridDBColumn;
    grdImportFileStatusDBTableView1BarCodeID: TcxGridDBColumn;
    grdImportFileStatusDBTableView1Gradestamp: TcxGridDBColumn;
    grdImportFileStatusDBTableView1ProductNo: TcxGridDBColumn;
    grdImportFileStatusDBTableView1SurfacingNo: TcxGridDBColumn;
    grdImportFileStatusDBTableView1NominalThicknessMM: TcxGridDBColumn;
    grdImportFileStatusDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdImportFileStatusDBTableView1LoadNo: TcxGridDBColumn;
    acChangeVISPaketInCaseDifferentNoOfPiecesFromHTF: TAction;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    acGetProductNoOfProductCode: TAction;
    cxButton11: TcxButton;
    grdImportFileStatusDBTableView1ProductCode: TcxGridDBColumn;
    grdImportFileStatusDBTableView1ALMM: TcxGridDBColumn;
    grdImportFileStatusDBTableView1PEFC: TcxGridDBColumn;
    grdImportFileStatusDBTableView1DateAndTime: TcxGridDBColumn;
    acPaketinfo: TAction;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acDeleteRetrievedFiles: TAction;
    cxButton12: TcxButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    cbComplete: TcxComboBox;
    deStart: TcxDateEdit;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure acCreateLoadExecute(Sender: TObject);
    procedure acRefreshTransferFilesExecute(Sender: TObject);
    procedure acVisaEjChangedPkgsExecute(Sender: TObject);
    procedure acVisaAndradePaketExecute(Sender: TObject);
    procedure acCreateLoadUpdate(Sender: TObject);
    procedure acUppdateraLasterTillHampenExecute(Sender: TObject);
    procedure acSendFileToHampenExecute(Sender: TObject);
    procedure acShowSkickadeFilerTillHampenExecute(Sender: TObject);
    procedure acChangeVISPaketInCaseDifferentNoOfPiecesFromHTFExecute(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure acGetProductNoOfProductCodeExecute(Sender: TObject);
    procedure acPaketinfoExecute(Sender: TObject);
    procedure acPaketinfoUpdate(Sender: TObject);
    procedure acDeleteRetrievedFilesExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acPrintLogExecute(Sender: TObject);
  private
    { Private declarations }
    DeleteTdmVidaInvoice  : Boolean ;
    function  GetFileName : String ;
    procedure UppdateChangedPkgs(const Complete : Integer) ;
  public
    { Public declarations }
  end;

//var fImportPkgStatusOfHampen: TfImportPkgStatusOfHampen;

implementation

uses dmcVidaInvoice, VidaConst , dmsVidaSystem, UnitPkgInfo, VidaUser ,
  uWait, UnitCRViewReport;

{$R *.dfm}

procedure TfImportPkgStatusOfHampen.FormShow(Sender: TObject);
begin
 dmsSystem.LoadGridLayout(ThisUser.UserID, 'HTFIMP' + '/' + grdImportFileStatusDBTableView1.Name, grdImportFileStatusDBTableView1) ;
 deStart.Date := Date ;
end;

procedure TfImportPkgStatusOfHampen.FormCreate(Sender: TObject);
begin
 if not Assigned(dmVidaInvoice) then
  Begin
   DeleteTdmVidaInvoice:= True ;
   dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
  End ;
end;

procedure TfImportPkgStatusOfHampen.FormDestroy(Sender: TObject);
begin
  if DeleteTdmVidaInvoice = True then
   FreeAndNil(dmVidaInvoice) ;//.Free ;
 // Screen.Cursor := Save_Cursor;  { Always restore to normal }
end;

function TfImportPkgStatusOfHampen.GetFileName : String ;
begin
 OpenDialog1.Filter := 'Följesedlar (*.csv)|*.csv';
 OpenDialog1.DefaultExt:= 'csv';
 OpenDialog1.InitialDir:= 'C:\Documents and Settings\HP\Mina dokument\' ;//UserDir ;
 if OpenDialog1.Execute then
 Begin
  Result  := OpenDialog1.FileName ;
//  FileName  := ExtractFileName(OpenDialog1.FileName) ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.cxButton1Click(Sender: TObject);
Var Save_Cursor     : TCursor ;
    fWait                 : TfWait;
begin
 fWait:= TfWait.Create(nil);
 Try
 fWait.cxLabel1.Caption  := 'Vänta, hämtar data...' ;
 fWait.Show ;
 Application.ProcessMessages ;

 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try

 //Hämta lastfiler och statusfiler och lägger in header i TransferFile och details(paket) i PackageStatusHTF
 dmVidaInvoice.HamtaFilerFranFTPOchUppdatera ;

 //Fölande uppdaterar gridden att visa complete
 UppdateChangedPkgs(0{Complete}) ;

 acGetProductNoOfProductCodeExecute(Sender) ;

 UppdateChangedPkgs(0{Complete}) ;

 dmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;


(* UppdateChangedPkgs(0{Complete}) ;

 acGetProductNoOfProductCodeExecute(Sender) ;

 UppdateChangedPkgs(0{Complete}) ;

 dmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;


 UppdateChangedPkgs(0{Complete}) ;

 acGetProductNoOfProductCodeExecute(Sender) ;

 UppdateChangedPkgs(0{Complete}) ;

 dmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;
 *)
 






 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
 Finally
  FreeAndNil(fWait) ;
 End ; 
end;

procedure TfImportPkgStatusOfHampen.acCreateLoadExecute(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin

  CreateLoadToShip(sq_TransferFilesLONo.AsInteger, sq_TransferFilesLoadNo.AsInteger) ;

  sq_TransferFiles.Edit ;
  sq_TransferFilesComplete.AsInteger := 2 ;
  sq_TransferFiles.Post ;
 End ; 
end;

procedure TfImportPkgStatusOfHampen.acRefreshTransferFilesExecute(
  Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  sq_TransferFiles.Active := False ;
  sq_TransferFiles.ParamByName('TransferType').AsInteger := c_ImportLoadFile ;
  sq_TransferFiles.ParamByName('Complete').AsInteger     := cbComplete.ItemIndex ;
  sq_TransferFiles.ParamByName('InOut').AsInteger        := 0 ;
  sq_TransferFiles.Active := True ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.acVisaEjChangedPkgsExecute(Sender: TObject);
begin
 UppdateChangedPkgs(0{not Complete}) ;

 acGetProductNoOfProductCodeExecute(Sender) ;

 UppdateChangedPkgs(0{not Complete}) ;

 dmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;
end;

procedure TfImportPkgStatusOfHampen.UppdateChangedPkgs(const Complete : Integer) ;
begin
 With dmVidaInvoice do
 Begin
  sq_HTFPkgStatus.Active  := False ;
  sq_HTFPkgStatus.ParamByName('Complete').AsInteger := Complete ;
  sq_HTFPkgStatus.Active  := True ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.acVisaAndradePaketExecute(
  Sender: TObject);
begin
 UppdateChangedPkgs(1{Complete}) ;
end;

procedure TfImportPkgStatusOfHampen.acCreateLoadUpdate(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  acCreateLoad.Enabled  := (sq_TransferFiles.Active) and
  (sq_TransferFiles.RecordCount > 0) and (sq_TransferFilesComplete.AsInteger = 1)
  and (sq_TransferFilesLoadNo.AsInteger > 0) ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.acUppdateraLasterTillHampenExecute(
  Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  sq_TransferFilesTillHTF.Active := False ;
  sq_TransferFilesTillHTF.ParamByName('TransferType').AsInteger := c_ExportFile ;
  sq_TransferFilesTillHTF.ParamByName('Complete').AsInteger     := 0 ;
  sq_TransferFilesTillHTF.ParamByName('InOut').AsInteger        := 1 ;
  sq_TransferFilesTillHTF.Active := True ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.acSendFileToHampenExecute(
  Sender: TObject);
begin
 dmVidaInvoice.UpLoadNewFileToFTP(cUp) ;
 acShowSkickadeFilerTillHampenExecute(Sender) ;
 acUppdateraLasterTillHampenExecute(Sender) ;
end;

procedure TfImportPkgStatusOfHampen.acShowSkickadeFilerTillHampenExecute(
  Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  sq_TransferFilesTillHTF.Active := False ;
  sq_TransferFilesTillHTF.ParamByName('TransferType').AsInteger := c_ExportFile ;
  sq_TransferFilesTillHTF.ParamByName('Complete').AsInteger     := 1 ;
  sq_TransferFilesTillHTF.ParamByName('InOut').AsInteger        := 1 ;
  sq_TransferFilesTillHTF.Active := True ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.acChangeVISPaketInCaseDifferentNoOfPiecesFromHTFExecute(Sender: TObject);
begin
 dmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;
end;

procedure TfImportPkgStatusOfHampen.cxButton10Click(Sender: TObject);
 Var Save_Cursor     : TCursor ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try

 //Hämta lastfiler och statusfiler och lägger in header i TransferFile och details(paket) i PackageStatusHTF
// dmVidaInvoice.HamtaEndastFilerFranFTP ;
// UppdateChangedPkgs(1{Complete}) ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.acGetProductNoOfProductCodeExecute(
  Sender: TObject);
Var PackageTypeNo, ProductNo : Integer ;
    ALMM  : Double ;
begin
 with dmVidaInvoice do
 Begin
  sq_HTFPkgStatus.DisableControls ;
  Try
  sq_HTFPkgStatus.First ;
  While not sq_HTFPkgStatus.Eof do
  Begin
   dmsSystem.GetCurrentStyckInPackage(sq_HTFPkgStatusPaketnr.AsInteger, sq_HTFPkgStatusPrefix.AsString,
   PackageTypeNo, ProductNo, ALMM) ;

   sq_HTFPkgStatus.Edit ;
   if ProductNo > 0 then
   sq_HTFPkgStatusProductNo.AsInteger     := ProductNo
   else
   sq_HTFPkgStatusProductNo.AsInteger     := dmsSystem.GetProductNoByProductCode(sq_HTFPkgStatusProductCode.AsString) ;

   if (sq_HTFPkgStatusALMM.AsFloat <= 0) or (sq_HTFPkgStatusALMM.IsNull) then
   sq_HTFPkgStatusALMM.AsFloat  := ALMM ;

   sq_HTFPkgStatusPackageTypeNo.AsInteger := PackageTypeNo ;
   if sq_HTFPkgStatus.State in [dsEdit] then
   sq_HTFPkgStatus.Post ;
   sq_HTFPkgStatus.Next ;
  End ;
  Finally
   sq_HTFPkgStatus.EnableControls ;
  End ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.acPaketinfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo    := dmVidaInvoice.sq_HTFPkgStatusPaketnr.AsInteger ;
  frmPkgInfo.SupplierCode := dmVidaInvoice.sq_HTFPkgStatusPrefix.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfImportPkgStatusOfHampen.acPaketinfoUpdate(Sender: TObject);
begin
 acPaketinfo.Enabled  := (dmVidaInvoice.sq_HTFPkgStatus.Active)
 and (dmVidaInvoice.sq_HTFPkgStatus.RecordCount > 0) ;
end;

procedure TfImportPkgStatusOfHampen.acDeleteRetrievedFilesExecute(
  Sender: TObject);
begin
 dmVidaInvoice.DeleteRecievedFiles ;
end;

procedure TfImportPkgStatusOfHampen.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, 'HTFIMP' + '/' + grdImportFileStatusDBTableView1.Name, grdImportFileStatusDBTableView1) ;
end;

procedure TfImportPkgStatusOfHampen.acPrintLogExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 FormCRViewReport.CreateCo('HampenTrfLogg.rpt') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(deStart.Date);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 FormCRViewReport.CreateCo('HampenPaketTrfLogg.rpt') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(deStart.Date);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

end.
