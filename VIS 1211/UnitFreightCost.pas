unit UnitFreightCost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ActnList, ImgList,
  ComCtrls, ExtCtrls, ToolWin, DB, kbmMemTable, dxDBTLCl, dxGrClms,
  dxmdaset, StdCtrls, SqlTimSt, dxExEdtr, Menus ;

type
  TfrmFreightCost = class(TfrmDBForm)
    grdFraktKostnad: TdxDBGrid;
    btnRefresh: TToolButton;
    ToolButton1: TToolButton;
    btnApplyChanges: TToolButton;
    dsLoadFreight: TDataSource;
    grdFraktKostnadRecId: TdxDBGridColumn;
    grdFraktKostnadLOADNO: TdxDBGridMaskColumn;
    grdFraktKostnadFS: TdxDBGridMaskColumn;
    grdFraktKostnadLOADID: TdxDBGridMaskColumn;
    grdFraktKostnadLOADEDDATE: TdxDBGridDateColumn;
    grdFraktKostnadSHIPPER: TdxDBGridMaskColumn;
    grdFraktKostnadFROM_PLACE: TdxDBGridMaskColumn;
    grdFraktKostnadDESTINATION: TdxDBGridMaskColumn;
    grdFraktKostnadM3_NET: TdxDBGridMaskColumn;
    grdFraktKostnadPRICE: TdxDBGridMaskColumn;
    grdFraktKostnadINVOICEAMOUNT: TdxDBGridMaskColumn;
    grdFraktKostnadChecked: TdxDBGridCheckColumn;
    atOpenLoad: TAction;
    PopupMenu1: TPopupMenu;
    OpenLoad1: TMenuItem;
    grdFraktKostnadSUPPLIERNO: TdxDBGridMaskColumn;
    atCustomizeLayout: TAction;
    procedure btnRefreshClick(Sender: TObject);
    procedure btnApplyChangesClick(Sender: TObject);
    procedure atExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdFraktKostnadCheckedToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure FormDestroy(Sender: TObject);
    procedure atOpenLoadExecute(Sender: TObject);
    procedure atCustomizeLayoutExecute(Sender: TObject);
  private
    { Private declarations }
    ExitOption : Integer ;
    function IsShipperSameOnSelected(Sender: TObject) : Boolean ;
    function SaveDetails(Sender: TObject;AvrakningsNo : Integer) : Boolean ;
    procedure DeleteSavedDetails(Sender: TObject);
    procedure PrintAvraking(Sender: TObject);
  public
    { Public declarations }
    constructor CreateCo(CompanyNo : Integer);
    destructor  Destroy; override;
  end;

var
  frmFreightCost: TfrmFreightCost;

implementation

uses   VidaConst,  VidaUser,   VidaUtils,  UnitdmModule1, dmsDataConn,
  UnitCRViewReport, UnitLoadHead;

{$R *.dfm}

destructor TfrmFreightCost.Destroy;
begin
 grdFraktKostnad.SaveToIniFile(ChangeFileExt(Application.ExeName, '.'+ThisUser.UserName));
 with dmModule1 do
 Begin
  cdsLoadFreightCost.Active:= False ;

 End ;
  inherited;
end;

constructor TfrmFreightCost.CreateCo(CompanyNo: Integer);
//var iSupplier : integer;
begin
//  inherited Create(AOwner);
    ExitOption:= 0 ;

    dmModule1.tblLoadFreight3.Active:= True ;  

  // Load column widths set last time.
  grdFraktKostnad.LoadFromIniFile(ChangeFileExt(Application.ExeName, '.'+ThisUser.UserName));

end;

procedure TfrmFreightCost.btnRefreshClick(Sender: TObject);
Var x: Byte ;
    Save_Cursor:TCursor;
begin
  inherited;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 with dmModule1 do
 Begin
// grdFraktKostnad.DataSource:= Nil ;
 tblLoadFreight3.DisableControls ;
 Try

  tblLoadFreight3.Active:= False ;
  tblLoadFreight3.Active:= True ;
  sp_LoadFreightCost.Open ;
  sp_LoadFreightCost.First ;
  While not sp_LoadFreightCost.Eof do
  Begin
   tblLoadFreight3.Insert ;
   For x:= 0 to tblLoadFreight3.FieldCount - 1 do
    tblLoadFreight3.Fields.Fields[x].AsVariant:= sp_LoadFreightCost.Fields.Fields[x].AsVariant ;
   tblLoadFreight3Checked.AsBoolean:= False ;
   tblLoadFreight3.Post ;
   sp_LoadFreightCost.Next ;
  End ; //while
  sp_LoadFreightCost.Close ;

 Finally
//  grdFraktKostnad.DataSource:= dsLoadFreight ;
  tblLoadFreight3.EnableControls ;
//  tblLoadFreight3.Last ;
  Screen.Cursor := Save_Cursor ;
 End ;
 End ; //with
end;

function TfrmFreightCost.IsShipperSameOnSelected(Sender: TObject) : Boolean ;
Var LBShippers : TStringList ;
    x       : Integer ;
begin
 LBShippers:= TStringList.Create ;
 with dmModule1 do
 Begin
 Result:= True ;
  tblLoadFreight3.Filter:= 'Checked = TRUE' ;
  tblLoadFreight3.Filtered:=  True ;
  tblLoadFreight3.First ;
 Try

   LBShippers.Add(tblLoadFreight3SHIPPER.AsString) ;
  While not tblLoadFreight3.Eof do
  Begin
   For x := 0 to LBShippers.Count-1 do
    if LBShippers[x] <> tblLoadFreight3SHIPPER.AsString then
     Result:= False 
      else
       LBShippers.Add(tblLoadFreight3SHIPPER.AsString) ;
   tblLoadFreight3.Next ;
  End ;

 Finally
  LBShippers.Free ;
  tblLoadFreight3.Filtered:=  False ;
 End ;
 End ;
End ;

function TfrmFreightCost.SaveDetails(Sender: TObject;AvrakningsNo : Integer) : Boolean ;
begin
 with dmModule1 do
 Begin
  Result:= True ;
  tblLoadFreight3.Filter:= 'Checked = TRUE' ;
  tblLoadFreight3.Filtered:=  True ;
  tblLoadFreight3.First ;
 Try

  While not tblLoadFreight3.Eof do
  Begin
   cdsLoadFreightCost.Insert ;
   Try
    cdsLoadFreightCostAvrakningsNo.AsInteger:= AvrakningsNo ;
    cdsLoadFreightCostLoadNo.AsInteger:= tblLoadFreight3LoadNo.AsInteger ;
    cdsLoadFreightCostM3_NET.AsFloat:= tblLoadFreight3M3_NET.AsFloat ;
    cdsLoadFreightCostPricePerM3_NET.AsFloat:= tblLoadFreight3PRICE.AsFloat ;
    cdsLoadFreightCostTotalSUM.AsFloat:= tblLoadFreight3INVOICEAMOUNT.AsFloat ;
    cdsLoadFreightCost.Post ;
   Except
    Result:= False ;
   End ;
   tblLoadFreight3.Next ;
  End ;


 Finally
  tblLoadFreight3.Filtered:=  False ;
 End ;
 End ;
End ;

procedure TfrmFreightCost.DeleteSavedDetails(Sender: TObject);
begin
 with dmModule1 do
 Begin
  tblLoadFreight3.Filtered:=  True ;
  tblLoadFreight3.First ;
 Try
  While not tblLoadFreight3.Eof do
  Begin
   tblLoadFreight3.Delete ;
  End ;

 Finally
  tblLoadFreight3.Filtered:=  False ;
 End ;
 End ;
End ;

procedure TfrmFreightCost.btnApplyChangesClick(Sender: TObject);
Var    Save_Cursor:TCursor;
begin
  inherited;
 with dmModule1 do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
// grdFraktKostnad.DataSource:= Nil ;
 tblLoadFreight3.DisableControls ;

 Try


  if tblLoadFreight3.State = dsedit then
   tblLoadFreight3.Post ;

  if IsShipperSameOnSelected(Sender) = False then
  Begin
   ShowMessage('Selected rows have different shipper, shipper must be the same on all rows') ;
   Exit ;
  End ;
  cds_LoadFreightCostHeader.Active:= True ;

  cdsLoadFreightCost.Active:= True ;

  cds_LoadFreightCostHeader.Insert ;
  cds_LoadFreightCostHeaderAvrakningsNo.AsInteger:= dmsConnector.NextMaxNo('LoadFreightCostHeader') ;
  cds_LoadFreightCostHeaderAvrakningsDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderDateModified.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderCreatedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadFreightCostHeaderModifiedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadFreightCostHeaderStatus.AsInteger := 0 ;
  cds_LoadFreightCostHeader.Post ;

  if SaveDetails(Sender, cds_LoadFreightCostHeaderAvrakningsNo.AsInteger) then
  Begin
   if (cds_LoadFreightCostHeader.ChangeCount > 0) and (cdsLoadFreightCost.ChangeCount > 0) then
   Begin
    cds_LoadFreightCostHeader.ApplyUpdates(0) ;
    cdsLoadFreightCost.ApplyUpdates(0) ;

    if MessageDlg('Avräkning nr '+cds_LoadFreightCostHeaderAvrakningsNo.AsString+' skapad. Skriva ut ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    PrintAvraking(sender) ;

   End
    else
    Begin
      cds_LoadFreightCostHeader.CancelUpdates ;
      cdsLoadFreightCost.CancelUpdates ;
     End ;
  End
  else
  Begin
    cds_LoadFreightCostHeader.CancelUpdates ;
    cdsLoadFreightCost.CancelUpdates ;
  End ;

  cdsLoadFreightCost.Active:= False ;
  cds_LoadFreightCostHeader.Active:= False ;

  DeleteSavedDetails(Sender) ;


(*  While not tblLoadFreight3.Eof do
  Begin
  if tblLoadFreight3INVOICENO.AsInteger > 0 then
  Begin
   if cdsLoadFreightCost.Locate('LoadNo',tblLoadFreight3LOADNO.AsInteger,[]) then
   Begin
    cdsLoadFreightCost.Edit ;
    cdsLoadFreightCostInvoiceNo.AsInteger:= tblLoadFreight3INVOICENO.AsInteger ;
    cdsLoadFreightCostInvoiceDate.AsSQLTimeStamp:= tblLoadFreight3INVOICEDATE.AsSQLTimeStamp ;
    cdsLoadFreightCostInvoiceAmount.AsFloat := tblLoadFreight3INVOICEAMOUNT.AsFloat ;
    cdsLoadFreightCostCostDescription.AsString:= tblLoadFreight3COSTDESCRIPTION.AsString ;
    cdsLoadFreightCostModifiedUser.AsInteger:= 8 ;
    cdsLoadFreightCost.Post ;
   End
   else
   Begin
    cdsLoadFreightCost.Insert ;
    cdsLoadFreightCostLoadNo.AsInteger:= tblLoadFreight3LOADNO.AsInteger ;
    cdsLoadFreightCostLocalShipperNo.AsInteger:= -1 ;
    cdsLoadFreightCostInvoiceNo.AsInteger:= tblLoadFreight3INVOICENO.AsInteger ;
    cdsLoadFreightCostInvoiceDate.AsSQLTimeStamp:= tblLoadFreight3INVOICEDATE.AsSQLTimeStamp ;
    cdsLoadFreightCostInvoiceAmount.AsFloat := tblLoadFreight3INVOICEAMOUNT.AsFloat ;
    cdsLoadFreightCostCostDescription.AsString:= tblLoadFreight3COSTDESCRIPTION.AsString ;
    cdsLoadFreightCostModifiedUser.AsInteger:= 8 ;
    cdsLoadFreightCostCreatedUser.AsInteger:= 8 ;
    cdsLoadFreightCostDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
    cdsLoadFreightCost.Post ;
   End ;
  End ; //if tblLodFreight2INVOICENO.AsInteger > 0
   tblLoadFreight3.Next ;
  End ; //while

  if cdsLoadFreightCost.ChangeCount > 0 then
   cdsLoadFreightCost.ApplyUpdates(0) ;
  cdsLoadFreightCost.Active:= False ; *)
  tblLoadFreight3.First ;

 Finally
//  grdFraktKostnad.DataSource:= dsLoadFreight ;
  tblLoadFreight3.EnableControls ;
  Screen.Cursor := Save_Cursor ;
 End ;
 End ; //with
end;

procedure TfrmFreightCost.atExitExecute(Sender: TObject);
begin
 ExitOption:= 1 ; //kill the form
  inherited;
end;

procedure TfrmFreightCost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

 if ExitOption = 1 then
  Action:= caFree
  else
    Action:= caHide ;

end;

procedure TfrmFreightCost.grdFraktKostnadCheckedToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
begin
  inherited;
{ with dmModule1 do
 Begin
  if State = cbsChecked then
  Begin
   tblLoadFreight3.Edit ;
   tblLoadFreight3Checked.AsBoolean:= True ;
   tblLoadFreight3.Post ;
  End ;
 End ; }
end;

procedure TfrmFreightCost.FormDestroy(Sender: TObject);
begin
 with dmModule1 do
 Begin
  tblLoadFreight3.Close ;
  cds_LoadFreightCostHeader.Close ;
  cdsLoadFreightCost.Close ;
 End ;
  inherited;

end;

procedure TfrmFreightCost.PrintAvraking(Sender: TObject);
begin
 with dmModule1 do
 Begin
 FormCRViewReport:= TFormCRViewReport.Create(Self);
 Try

 FormCRViewReport.CreateCo(Self,'FRAKT_AVRAKNING.RPT',Application.ExeName) ;

 FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(cds_LoadFreightCostHeaderAvrakningsNo.AsInteger);
 FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 Finally
  FormCRViewReport.Free ;
 End ;

 End ;
End ;

procedure TfrmFreightCost.atOpenLoadExecute(Sender: TObject);
begin
  inherited;
  fLoadHead:= TfLoadHead.Create(Self);
  Try
  fLoadhead.LoadNo := grdFraktKostnad.DataSource.DataSet.FieldByName('LOADNO').AsInteger ;
  fLoadHead.ShowModal ;
  Finally
   fLoadHead.Free ;
  End ;
end;

procedure TfrmFreightCost.atCustomizeLayoutExecute(Sender: TObject);
begin
  inherited;
 grdFraktKostnad.ColumnsCustomizing ;
end;

end.
