unit uInvPriceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, dxBarExtItems, ActnList, ImgList,
  cxCalendar, StdCtrls, kbmMemTable, cxGridBandedTableView,
  cxGridDBBandedTableView, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel;

type
  TfInvPriceList = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    imglistActions: TImageList;
    acNewPriceList: TAction;
    acDeletePriceList: TAction;
    acClose: TAction;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    Panel2: TPanel;
    Splitter1: TSplitter;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    acSave: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    grdPriceGrpDBTableView1: TcxGridDBTableView;
    grdPriceGrpLevel1: TcxGridLevel;
    grdPriceGrp: TcxGrid;
    Panel3: TPanel;
    grdPriceRowDBTableView1: TcxGridDBTableView;
    grdPriceRowLevel1: TcxGridLevel;
    grdPriceRow: TcxGrid;
    acNewRow: TAction;
    acDeleteRow: TAction;
    dxBarDockControl2: TdxBarDockControl;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    acCopyRow: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    grdPriceGrpDBTableView1PriceListNo: TcxGridDBColumn;
    grdPriceGrpDBTableView1SpeciesNo: TcxGridDBColumn;
    grdPriceGrpDBTableView1PriceListDate: TcxGridDBColumn;
    grdPriceGrpDBTableView1Note: TcxGridDBColumn;
    grdPriceGrpDBTableView1CreatedUser: TcxGridDBColumn;
    grdPriceGrpDBTableView1DateCreated: TcxGridDBColumn;
    grdPriceGrpDBTableView1TS: TcxGridDBColumn;
    grdPriceRowDBTableView1PriceListNo: TcxGridDBColumn;
    grdPriceRowDBTableView1PriceListRowNo: TcxGridDBColumn;
    grdPriceRowDBTableView1MinAT: TcxGridDBColumn;
    grdPriceRowDBTableView1MaxAT: TcxGridDBColumn;
    grdPriceRowDBTableView1MinAB: TcxGridDBColumn;
    grdPriceRowDBTableView1MaxAB: TcxGridDBColumn;
    grdPriceRowDBTableView1SpeciesNo: TcxGridDBColumn;
    grdPriceRowDBTableView1GradeNo: TcxGridDBColumn;
    grdPriceRowDBTableView1SurfacingNo: TcxGridDBColumn;
    grdPriceRowDBTableView1PricePerAM3: TcxGridDBColumn;
    grdPriceRowDBTableView1TS: TcxGridDBColumn;
    grdPriceRowDBTableView1KV: TcxGridDBColumn;
    grdPriceRowDBTableView1UT: TcxGridDBColumn;
    mtLocalFilter: TkbmMemTable;
    mtLocalFilterClientNo: TIntegerField;
    mtLocalFilterVERK: TStringField;
    lcClient: TcxDBLookupComboBox;
    grdPriceRowDBBandedTableView1: TcxGridDBBandedTableView;
    grdPriceRowDBBandedTableView1PriceListNo: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1PriceListRowNo: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1MinAT: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1MaxAT: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1MinAB: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1MaxAB: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1GradeNo: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1PricePerAM3: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1TS: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1KV: TcxGridDBBandedColumn;
    grdPriceRowDBBandedTableView1UT: TcxGridDBBandedColumn;
    dsLocalFilter: TDataSource;
    acGradeGroup: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    acSurfacingGroup: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    procedure acNewPriceListExecute(Sender: TObject);
    procedure acDeletePriceListExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acNewRowExecute(Sender: TObject);
    procedure acDeleteRowExecute(Sender: TObject);
    procedure acCopyRowExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure mtLocalFilterClientNoChange(Sender: TField);
    procedure acGradeGroupExecute(Sender: TObject);
    procedure acSurfacingGroupExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
  private
    { Private declarations }
    dmInvCtrlAssigned : Boolean ;
    function DataInteSparad : Boolean ;
  public
    { Public declarations }
   Class procedure Execute ;
  end;

//var fInvPriceList: TfInvPriceList;

implementation

uses dmcInvCtrl, dmsVidaContact, VidaUser , uGradeGroup, uSurfacingGroup;

{$R *.dfm}


Class procedure TfInvPriceList.Execute ;
Begin
 With Self.Create(nil) do begin
  try
   ShowModal ;
  Finally
   Free ;
  End
 End ;//with
End ;

function TfInvPriceList.DataInteSparad : Boolean ;
begin
 Result:= False ;
 with dmInvCtrl do
 Begin
  if cds_PriceListGrp.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_PriceListGrp.ChangeCount > 0 then
   Result:= True ;

  if cds_PriceListRow.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_PriceListRow.ChangeCount > 0 then
   Result:= True ;
 End ;
end;

procedure TfInvPriceList.acNewPriceListExecute(Sender: TObject);
begin
 with dmInvCtrl do
 Begin
  cds_PriceListGrp.Insert ;
  cds_PriceListGrpClientNo.AsInteger:= mtLocalFilterClientNo.AsInteger ;
 End ;
end;

procedure TfInvPriceList.acDeletePriceListExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker? '
 ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 with dmInvCtrl do
 Begin
  cds_PriceListGrp.Delete ;
 End ;
end;

procedure TfInvPriceList.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfInvPriceList.acSaveExecute(Sender: TObject);
begin
 with dmInvCtrl do
 Begin
  if cds_PriceListGrp.State in [dsEdit, dsInsert] then
   cds_PriceListGrp.Post ;
  if cds_PriceListGrp.ChangeCount > 0 then
   cds_PriceListGrp.ApplyUpdates(0) ;

  if cds_PriceListRow.State in [dsEdit, dsInsert] then
   cds_PriceListRow.Post ;
  if cds_PriceListRow.ChangeCount > 0 then
   cds_PriceListRow.ApplyUpdates(0) ;
 End ;
end;

procedure TfInvPriceList.acNewRowExecute(Sender: TObject);
begin
 with dmInvCtrl do
 Begin
  cds_PriceListRow.Insert ;
 End ;
end;

procedure TfInvPriceList.acDeleteRowExecute(Sender: TObject);
begin
 with dmInvCtrl do
 Begin
  cds_PriceListRow.Delete ;
 End ;
end;

procedure TfInvPriceList.acCopyRowExecute(Sender: TObject);
begin
//
end;

procedure TfInvPriceList.FormCreate(Sender: TObject);
begin
  dmInvCtrlAssigned:= False ;
 if not assigned(dmInvCtrl) then
  Begin
   dmInvCtrlAssigned:= True ;
   dmInvCtrl:= TdmInvCtrl.Create(Nil) ;
  End ;
 with dmInvCtrl do
 Begin
  mtLocalFilter.Active:= True ;
  mtLocalFilter.Insert ;
  mtLocalFilterClientNo.AsInteger:= ThisUser.CompanyNo ;
  mtLocalFilter.Post ;

  cds_GradeGroupHdr.Active:= False ;
  sq_GradeGroupHdr.ParamByName('ClientNo').AsInteger:= mtLocalFilterClientNo.AsInteger ;
  cds_GradeGroupHdr.Active:= True ;
  cds_GradeGroupRow.Active:= False ;
  cds_GradeGroupRow.Active:= True ;

  cds_SurfGrpHdr.Active:= False ;
  sq_SurfGrpHdr.ParamByName('ClientNo').AsInteger:= mtLocalFilterClientNo.AsInteger ;
  cds_SurfGrpHdr.Active:= True ;
  cds_SurGrpRow.Active:= False ;
  cds_SurGrpRow.Active:= True ;

  cds_PriceListGrp.Active:= False ;
  sq_PriceListGrp.ParamByName('ClientNo').AsInteger:= mtLocalFilterClientNo.AsInteger ;
  cds_PriceListGrp.Active:= True ;
  cds_PriceListRow.Active:= True ;
 End ;
end;

procedure TfInvPriceList.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataInteSparad = True then
 if MessageDlg('Vill du spara innan du stänger? '
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 acSaveExecute(Sender) ;
 with dmInvCtrl do
 Begin
  cds_PriceListGrp.Active:= False ;
  cds_PriceListRow.Active:= False ;
  cds_GradeGroupRow.Active:= False ;
  cds_GradeGroupHdr.Active:= False ;

  cds_SurfGrpHdr.Active:= False ;
  cds_SurGrpRow.Active:= False ;
 End ;
 mtLocalFilter.Active:= False ;
 CanClose:= True ;
end;

procedure TfInvPriceList.FormDestroy(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if dmInvCtrlAssigned then
   FreeAndNil(dmInvCtrl) ;
 End ;
end;

procedure TfInvPriceList.mtLocalFilterClientNoChange(Sender: TField);
begin
 With dmInvCtrl do
 Begin
  cds_PriceListGrp.Active:= False ;
  sq_PriceListGrp.ParamByName('ClientNo').AsInteger:= mtLocalFilterClientNo.AsInteger ;
  cds_PriceListGrp.Active:= True ;

  cds_GradeGroupHdr.Active:= False ;
  sq_GradeGroupHdr.ParamByName('ClientNo').AsInteger:= mtLocalFilterClientNo.AsInteger ;
  cds_GradeGroupHdr.Active:= True ;
  cds_GradeGroupRow.Active:= False ;
  cds_GradeGroupRow.Active:= True ;
  
 End ;
end;

procedure TfInvPriceList.acGradeGroupExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  TfGradeGroup.Execute(mtLocalFilterClientNo.AsInteger) ;
 End ;
end;

procedure TfInvPriceList.acSurfacingGroupExecute(Sender: TObject);
begin
 TfSurfacingGroup.Execute(mtLocalFilterClientNo.AsInteger) ;
end;

procedure TfInvPriceList.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= DataInteSparad ;
end;

end.
