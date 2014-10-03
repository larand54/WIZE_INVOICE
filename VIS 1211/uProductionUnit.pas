unit uProductionUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxCntner,
  StdCtrls, Buttons, DB, dxExEdtr ;

type
  TfrmProductionUnit = class(TForm)
    Panel1: TPanel;
    grdProdUnits: TdxDBGrid;
    grdProdUnitsProductionUnitNo: TdxDBGridMaskColumn;
    grdProdUnitsClientNo: TdxDBGridMaskColumn;
    grdProdUnitsCreatedUser: TdxDBGridMaskColumn;
    grdProdUnitsModifiedUser: TdxDBGridMaskColumn;
    grdProdUnitsDateCreated: TdxDBGridColumn;
    grdProdUnitsLogicalInventoryPointNo: TdxDBGridMaskColumn;
    bbInsert: TBitBtn;
    bbRemove: TBitBtn;
    bbCancelRow: TBitBtn;
    bbApplyChanges: TBitBtn;
    bbCancelChanges: TBitBtn;
    grdProdUnitsOnSticks: TdxDBGridCheckColumn;
    grdProdUnitsSurfacingNo: TdxDBGridMaskColumn;
    grdProdUnitsDIM_DIV: TdxDBGridMaskColumn;
    grdProdUnitsProductionUnitName: TdxDBGridLookupColumn;
    cmbClients: TComboBox;
    grdProdUnitsSequenceNo: TdxDBGridCheckColumn;
    procedure bbInsertClick(Sender: TObject);
    procedure bbRemoveClick(Sender: TObject);
    procedure bbCancelRowClick(Sender: TObject);
    procedure bbApplyChangesClick(Sender: TObject);
    procedure bbCancelChangesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbClientsChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Procedure Filter_cds_ProductionUnit(ClientNo : Integer ) ;
  public
    { Public declarations }

  end;

//var frmProductionUnit: TfrmProductionUnit;

implementation

uses dmsVidaContact;

{$R *.dfm}
Procedure TfrmProductionUnit.Filter_cds_ProductionUnit(ClientNo : Integer ) ;
Begin
 With dmsContact do
 Begin
  if cmbClients.Items.Count > 0 then
  Begin
//  cds_LogInv.Filter:= 'OwnerNo = '+IntToStr(ClientNo);
//  cds_LogInv.Filtered:= True ;
   cds_ProductionUnit.Filter:= 'ClientNo = '+IntToStr(ClientNo);
   cds_ProductionUnit.Filtered:= True ;
  End ;
 End ;
End ;

procedure TfrmProductionUnit.bbInsertClick(Sender: TObject);
begin
 if cmbClients.Items.Count > 0 then
 Begin
  With dmsContact do
  Begin
   if cds_ProductionUnit.State in [dsInsert, dsEdit] then
   cds_ProductionUnit.Post ;
   cds_ProductionUnit.Insert ;
   cds_ProductionUnitClientNo.AsInteger:= integer(cmbClients.Items.Objects[cmbClients.ItemIndex] ) ;
  End ;
 End
 else
 ShowMessage('Välj ett verk') ;
end;

procedure TfrmProductionUnit.bbRemoveClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Delete ;
 End ;
end;

procedure TfrmProductionUnit.bbCancelRowClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Cancel ;
 End ;
end;

procedure TfrmProductionUnit.bbApplyChangesClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_ProductionUnit.State in [dsInsert, dsEdit] then
  cds_ProductionUnit.Post ;
  if cds_ProductionUnit.ChangeCount > 0 then
   cds_ProductionUnit.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmProductionUnit.bbCancelChangesClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_ProductionUnit.State in [dsInsert, dsEdit] then
  cds_ProductionUnit.Post ;
  if cds_ProductionUnit.ChangeCount > 0 then
   cds_ProductionUnit.CancelUpdates ;
 End ;
end;

procedure TfrmProductionUnit.FormCreate(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Active:= True ;
  LoadMatPunktsAgare(cmbClients.Items);
  if cmbClients.Items.Count > 0 then
   cmbClients.ItemIndex:= 0 ;
  Filter_cds_ProductionUnit( integer(cmbClients.Items.Objects[cmbClients.ItemIndex] )) ; 
 End ;  
end;

procedure TfrmProductionUnit.cmbClientsChange(Sender: TObject);
begin
  Filter_cds_ProductionUnit( integer(cmbClients.Items.Objects[cmbClients.ItemIndex] )) ;
end;

procedure TfrmProductionUnit.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Active:= False ;
  cds_ProductionUnit.Filtered:= False ;
 End ;
 CanClose:= True ;
end;

end.
