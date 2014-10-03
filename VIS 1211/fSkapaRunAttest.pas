unit fSkapaRunAttest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, StdCtrls, dxEditor, dxExEdtr, dxEdLib,
  dxDBTLCl, dxGrClms, Menus, SqlTimSt, DBXpress, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, fDBForm, dxBar,
  dxBarExtItems, cxCheckBox, cxSplitter, cxCurrencyEdit, Buttons;

type
  TfrmSkapaRunAttest = class(TForm)
    PopupMenu1: TPopupMenu;
    OpenLoad1: TMenuItem;
    pmLoadDetails: TPopupMenu;
    miPackageInfo: TMenuItem;
    ActionList1: TActionList;
    acClose: TAction;
    Panel3: TPanel;
    acRefresh: TAction;
    Panel2: TPanel;
    bcCompany: TcxComboBox;
    Label2: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarDockControl2: TdxBarDockControl;
    dxBarLargeButton6: TdxBarLargeButton;
    imglistActions: TImageList;
    Panel6: TPanel;
    Panel1: TPanel;
    grdLoadRows: TcxGrid;
    grdLoadRowsDBTableView1: TcxGridDBTableView;
    grdLoadRowsLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Panel7: TPanel;
    grdLoads: TcxGrid;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsLevel1: TcxGridLevel;
    Panel8: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    dxBarLargeButton7: TdxBarLargeButton;
    acConfirmLoads: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    grdLoadsDBTableView1RegPointNo: TcxGridDBColumn;
    grdLoadsDBTableView1SupplierNo: TcxGridDBColumn;
    grdLoadsDBTableView1RunNo: TcxGridDBColumn;
    grdLoadsDBTableView1MaxDatum: TcxGridDBColumn;
    grdLoadsDBTableView1MinDatum: TcxGridDBColumn;
    grdLoadsDBTableView1Verk: TcxGridDBColumn;
    grdLoadsDBTableView1Mtpunkt: TcxGridDBColumn;
    grdLoadsDBTableView1AM3: TcxGridDBColumn;
    grdLoadsDBTableView1NM3: TcxGridDBColumn;
    grdLoadsDBTableView1Styck: TcxGridDBColumn;
    grdLoadsDBTableView1Paket: TcxGridDBColumn;
    grdLoadRowsDBTableView1RunNo: TcxGridDBColumn;
    grdLoadRowsDBTableView1ProductNo: TcxGridDBColumn;
    grdLoadRowsDBTableView1Produkt: TcxGridDBColumn;
    grdLoadRowsDBTableView1AM3: TcxGridDBColumn;
    grdLoadRowsDBTableView1NM3: TcxGridDBColumn;
    grdLoadRowsDBTableView1Styck: TcxGridDBColumn;
    grdLoadRowsDBTableView1Paket: TcxGridDBColumn;
    grdLoadRowsDBTableView1Pris: TcxGridDBColumn;
    grdLoadRowsDBTableView1RowValue: TcxGridDBColumn;
    grdLoadRowsDBTableView1Mtpunkt: TcxGridDBColumn;
    grdLoadRowsDBTableView1ProductionUnitNo: TcxGridDBColumn;
    grdLoadRowsDBTableView1MinDatum: TcxGridDBColumn;
    grdLoadRowsDBTableView1MaxDatum: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acCloseExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure bcCompanyPropertiesChange(Sender: TObject);
    procedure grdLoadsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure grdLoadRowsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure acConfirmLoadsExecute(Sender: TObject);
    procedure acConfirmLoadsUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fSupplierNo : Integer ;
    procedure RemoveRunNoFromList ;
  public
    { Public declarations }
    Procedure CreateCo(const CompanyNo : Integer);
  end;

var
  frmSkapaRunAttest : TfrmSkapaRunAttest;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils,
  dmsDataConn,
  dmsVidaContact,
  dmcVidaSystem ,
  dmsVidaSystem, dmcRunAttest;

{$R *.dfm}

Procedure TfrmSkapaRunAttest.CreateCo(const CompanyNo : Integer);
Var x : Integer ;
begin
//  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdLoads.Name, grdLoadsDBTableView1) ;
//  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdLoadRows.Name, grdLoadRowsDBTableView1) ;


  bcCompany.Properties.OnChange:= nil ;
  Try
  dmsContact.LoadSuppliers(bcCompany.Properties.Items);

  if Thisuser.CompanyNo = VIDA_WOOD_COMPANY_NO then bcCompany.Enabled:= True ;

  For x:= 0 to bcCompany.Properties.Items.Count -1 do
  if ThisUser.CompanyNo = integer(bcCompany.Properties.Items.Objects[x]) then
  Begin
   bcCompany.ItemIndex:= x ;
   fSupplierNo:= integer(bcCompany.Properties.Items.Objects[x]);
  End ;

  Finally
   bcCompany.Properties.OnChange:= bcCompanyPropertiesChange ;
  End ;
end;

procedure TfrmSkapaRunAttest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmSkapaRunAttest.FormDestroy(Sender: TObject);
begin
 frmSkapaRunAttest:= Nil ;
end;

procedure TfrmSkapaRunAttest.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdLoads.Name, grdLoadsDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdLoadRows.Name, grdLoadRowsDBTableView1) ;

 With dmRunAttest do
 Begin
  cds_Runs.Active   := False ;
  cds_RunDtl.Active := False ;
 End ;
 CanClose:= True ;
end;

procedure TfrmSkapaRunAttest.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmSkapaRunAttest.acRefreshExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 With dmRunAttest do
 Begin
  cds_Runs.DisableControls ;
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
   cds_RunDtl.Active  := False ;
   cds_Runs.Active  := False ;
   sq_Runs.ParamByName('SupplierNo').AsInteger  := integer(bcCompany.Properties.Items.Objects[bcCompany.ItemIndex]);
   cds_Runs.Active  := True ;
   cds_RunDtl.Active  := True ;

  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  grdLoads.SetFocus ;
  finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
   cds_Runs.EnableControls ;
  end;
 end ;
end;

procedure TfrmSkapaRunAttest.cxComboBox1PropertiesChange(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  cds_Runs.Active  := False ;
//  cdsArrivingPackages.Active:= False ;
 End ;
end;

procedure TfrmSkapaRunAttest.bcCompanyPropertiesChange(Sender: TObject);
begin
 fSupplierNo:= integer(bcCompany.Properties.Items.Objects[bcCompany.ItemIndex]);
 With dmRunAttest do
 Begin
  cds_Runs.Active  := False ;
//  cdsArrivingPackages.Active:= False ;
 End ;
// acRefreshExecute(Sender) ;
end;

procedure TfrmSkapaRunAttest.grdLoadsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
Var
  PrisOK : integer;
begin
// if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRISOK').Index] <> null then
// PrisOK:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRISOK').Index] ;

// if PrisOK = 0 then
// AStyle := cxStyleRed ;
end;

procedure TfrmSkapaRunAttest.grdLoadRowsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
Var
  PRICE : Double ;
begin
// if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRICE').Index] <> null then
// PRICE:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRICE').Index] ;

// if Price = 0 then
// AStyle := cxStyleRed ;
end;

procedure TfrmSkapaRunAttest.acConfirmLoadsExecute(Sender: TObject);
 //Kolla först om det finns en passande aktiv avräkning, i annat fall skapa en ny
 //En passande avräkning är samma typeof, kund och aktiv
Var AttestNo, x, y        : Integer ;
    Save_Cursor           : TCursor;
    TransactionNo         : LongWord;
begin
 With dmRunAttest do
 Begin
  if CheckPriceExist then
  Begin
 Save_Cursor := Screen.Cursor;
 Try
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 TransactionNo := dmsConnector.StartTransaction;
 try

{ cds_AttestHdr.Active  := False ;
 sq_AttestHdr.ParamByName('SupplierNo').AsInteger := integer(bcCompany.Properties.Items.Objects[bcCompany.ItemIndex]);
 cds_AttestHdr.Active := True ;
 if cds_AttestHdr.Locate('Status', 0, []) then
  AttestNo:= cds_AttestHdrAttestNo.AsInteger
   else
    AttestNo:= -1 ; }

//Function TdmRunAttest.GetAttestNo(const SupplierNo, Status : Integer) : Integer ;
 AttestNo := GetAttestNo(integer(bcCompany.Properties.Items.Objects[bcCompany.ItemIndex]), 0 ) ;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 if AttestNo = -1 then
 Begin
  cds_AttestHdr.Insert ;
  cds_AttestHdrSupplierNo.AsInteger   := integer(bcCompany.Properties.Items.Objects[bcCompany.ItemIndex]);
  cds_AttestHdrStatus.AsInteger       := 0 ;
  AttestNo                            := cds_AttestHdrAttestNo.AsInteger ;
  cds_AttestHdr.Post ;
  if cds_AttestHdr.ChangeCount > 0 then
   cds_AttestHdr.ApplyUpdates(0) ;
 End ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 InsertAttestRows(AttestNo) ;


   dmsConnector.Commit(TransactionNo);
   RemoveRunNoFromList ;
  except
   dmsConnector.Rollback(TransactionNo);
  end;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
//  dm_Avrakning.cdsArrivingPackages.EnableControls ;
 End ;
 End
  else
   ShowMessage('Kan ej godkänna, pris saknas!');
 end ; // with
end;

procedure TfrmSkapaRunAttest.RemoveRunNoFromList ;
begin
 With dmRunAttest do
 Begin
  cds_Runs.Delete ;
 End ;
end;

procedure TfrmSkapaRunAttest.acConfirmLoadsUpdate(Sender: TObject);
begin
 acConfirmLoads.Enabled:= grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 ;
end;


procedure TfrmSkapaRunAttest.FormCreate(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  if not Assigned(dmRunAttest) then
   dmRunAttest:= TdmRunAttest.Create(nil) ;
 End ;
end;

end.
