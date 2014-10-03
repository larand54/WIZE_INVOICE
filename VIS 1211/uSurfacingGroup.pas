unit uSurfacingGroup ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, cxCheckBox, cxDBLookupComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  FMTBcd, DBClient, Provider, SqlExpr, cxLabel;

type
  TfSurfacingGroup = class(TForm)
    ActionList1: TActionList;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    acToGroup: TAction;
    acFromGroup: TAction;
    Panel6: TPanel;
    grdSurfacing: TcxGrid;
    grdSurfacingDBTableView1: TcxGridDBTableView;
    grdSurfacingLevel1: TcxGridLevel;
    Panel2: TPanel;
    acSave: TAction;
    acCancelChanges: TAction;
    acNewGroup: TAction;
    acDeleteGroup: TAction;
    ds_SurfacingGroupRow: TDataSource;
    ds_SurfacingGroupHdr: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    grdSurfacingGroup: TcxGrid;
    grdSurfacingGroupDBTableView1: TcxGridDBTableView;
    grdSurfacingGroupLevel1: TcxGridLevel;
    grdSurfacingGroupRow: TcxGrid;
    grdSurfacingGroupRowDBTableView1: TcxGridDBTableView;
    grdSurfacingGroupRowLevel1: TcxGridLevel;
    Panel9: TPanel;
    Splitter1: TSplitter;
    sq_Surfacing_SV: TSQLQuery;
    dsp_Surfacing_SV: TDataSetProvider;
    cds_Surfacing_SV: TClientDataSet;
    cds_Surfacing_SVSurfacingNo: TIntegerField;
    cds_Surfacing_SVSurfacingName: TStringField;
    ds_Surfacing_SV: TDataSource;
    grdSurfacingDBTableView1SurfacingName: TcxGridDBColumn;
    grdSurfacingGroupDBTableView1SurfacingGroupNo: TcxGridDBColumn;
    grdSurfacingGroupDBTableView1ClientNo: TcxGridDBColumn;
    grdSurfacingGroupDBTableView1SurfacingGroupName: TcxGridDBColumn;
    grdSurfacingGroupDBTableView1DateCreated: TcxGridDBColumn;
    grdSurfacingGroupDBTableView1CreatedUser: TcxGridDBColumn;
    grdSurfacingGroupRowDBTableView1SurfacingGroupNo: TcxGridDBColumn;
    grdSurfacingGroupRowDBTableView1SurfacingNo: TcxGridDBColumn;
    grdSurfacingGroupRowDBTableView1UTFRANDE: TcxGridDBColumn;
    procedure acToGroupExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acFromGroupExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acNewGroupExecute(Sender: TObject);
    procedure acDeleteGroupExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ds_SurfacingGroupHdrDataChange(Sender: TObject; Field: TField);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function  DataSparat : Boolean ;
    procedure CopyToGroup(Sender: TObject);
    procedure RemoveFromGroup(Sender: TObject);
    procedure RefreshSurfaces ;
  public
    { Public declarations }
    FClientNo : Integer ;
    Class procedure Execute (const ClientNo : Integer) ;
  end;

//var fProdLengthGroup: TfProdLengthGroup;

implementation

uses dmsDataConn, dmcInvCtrl, dmsVidaSystem;

{$R *.dfm}

Class procedure TfSurfacingGroup.Execute (const ClientNo : Integer) ;
Begin
 With Self.Create(nil) do begin
  try
   FClientNo := ClientNo ;
   ShowModal ;
  Finally
   Free ;
  End
 End ;//with
End ;

function TfSurfacingGroup.DataSparat : Boolean ;
Begin
 Result:= True ;
 With dmInvCtrl do
 Begin
  if cds_SurfGrpHdr.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_SurfGrpHdr.ChangeCount > 0 then
   Result:= False ;

  if cds_SurGrpRow.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_SurGrpRow.ChangeCount > 0 then
   Result:= False ;
 End ;
End ;

procedure TfSurfacingGroup.CopyToGroup(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmInvCtrl do
 Begin
  grdSurfacingDBTableView1.BeginUpdate ;
  grdSurfacingDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdSurfacingDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdSurfacingDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdSurfacingDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdSurfacingDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('SurfacingNo',RecID,[]) ;

    cds_SurGrpRow.Insert ;
    cds_SurGrpRowSurfacingNo.AsInteger:= ADataSet.FieldByName('SurfacingNo').AsInteger ;
    cds_SurGrpRow.Post ;
   End ;

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

 Finally
  grdSurfacingDBTableView1.DataController.EndLocate ;
  grdSurfacingDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfSurfacingGroup.acToGroupExecute(Sender: TObject);
begin
 CopyToGroup(Sender) ;
 acSaveExecute(Sender) ;
 RefreshSurfaces ;
end;

procedure TfSurfacingGroup.acSaveExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  Try
  if cds_SurfGrpHdr.State in [dsEdit, dsInsert] then
   cds_SurfGrpHdr.Post ;
  if cds_SurfGrpHdr.ChangeCount > 0 then
   cds_SurfGrpHdr.ApplyUpdates(0) ;

  if cds_SurGrpRow.State in [dsEdit, dsInsert] then
   cds_SurGrpRow.Post ;
  if cds_SurGrpRow.ChangeCount > 0 then
   cds_SurGrpRow.ApplyUpdates(0) ;

  Except

  End ;
 End ;
end;

procedure TfSurfacingGroup.acCancelChangesExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_SurGrpRow.State in [dsEdit, dsInsert] then
   cds_SurGrpRow.Cancel ;
  if cds_SurGrpRow.ChangeCount > 0 then
   cds_SurGrpRow.CancelUpdates ;

  if cds_SurfGrpHdr.State in [dsEdit, dsInsert] then
   cds_SurfGrpHdr.Cancel ;
  if cds_SurfGrpHdr.ChangeCount > 0 then
   cds_SurfGrpHdr.CancelUpdates ;

  RefreshSurfaces ;
 End ;
end;

procedure TfSurfacingGroup.RemoveFromGroup(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmInvCtrl do
 Begin
  grdSurfacingGroupRowDBTableView1.BeginUpdate ;
  grdSurfacingGroupRowDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdSurfacingGroupRowDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdSurfacingGroupRowDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdSurfacingGroupRowDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdSurfacingGroupRowDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('SurfacingGroupNo;SurfacingNo',RecID,[]) ;
    ADataSet.Delete ;
   End ;

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

 Finally
  grdSurfacingGroupRowDBTableView1.DataController.EndLocate ;
  grdSurfacingGroupRowDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfSurfacingGroup.acFromGroupExecute(Sender: TObject);
begin
 RemoveFromGroup(Sender) ;
 acSaveExecute(Sender) ;
 RefreshSurfaces ;
end;

procedure TfSurfacingGroup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSparat then
 CanClose:= True
 else
 Begin
  if MessageDlg('Ändringar ej sparade, vill du stänga?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   CanClose := True
    else
     CanClose := False ;

 End ;
 if CanClose then
  cds_Surfacing_SV.Active:= False ;
end;

procedure TfSurfacingGroup.acNewGroupExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_SurfGrpHdr.Insert ;
  cds_SurfGrpHdrClientNo.AsInteger:= FClientNo ;
 End ;
end;

procedure TfSurfacingGroup.acDeleteGroupExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmInvCtrl do
 Begin
  cds_SurfGrpHdr.Delete ;
 End ;
end;

procedure TfSurfacingGroup.FormCreate(Sender: TObject);
begin
 ds_SurfacingGroupHdr.DataSet:= dmInvCtrl.cds_SurfGrpHdr ;
 ds_SurfacingGroupRow.DataSet:= dmInvCtrl.cds_SurGrpRow ;
end;

procedure TfSurfacingGroup.FormDestroy(Sender: TObject);
begin
 ds_SurfacingGroupRow.DataSet:= Nil ;
 ds_SurfacingGroupHdr.DataSet:= Nil ;
end;

procedure TfSurfacingGroup.ds_SurfacingGroupHdrDataChange(Sender: TObject;
  Field: TField);
begin
 With dmInvCtrl do
 Begin
  cds_SurGrpRow.DisableControls ;
  Try
  RefreshSurfaces ;
  Finally
   cds_SurGrpRow.EnableControls ;
  End ;
 End ;
end;

procedure TfSurfacingGroup.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:=  not DataSparat ;
end;

procedure TfSurfacingGroup.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:=  not DataSparat ;
end;

procedure TfSurfacingGroup.RefreshSurfaces ;
Begin
 cds_Surfacing_SV.Active:= False ;
 sq_Surfacing_SV.ParamByName('ClientNo').AsInteger:= FClientNo ;
 cds_Surfacing_SV.Active:= True ;
End ;

procedure TfSurfacingGroup.FormShow(Sender: TObject);
begin
 RefreshSurfaces ;
end;

end.
