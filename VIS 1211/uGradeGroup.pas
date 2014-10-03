unit uGradeGroup ;

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
  TfGradeGroup = class(TForm)
    ActionList1: TActionList;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    acToGroup: TAction;
    acFromGroup: TAction;
    Panel6: TPanel;
    grdGrades: TcxGrid;
    grdGradesDBTableView1: TcxGridDBTableView;
    grdGradesLevel1: TcxGridLevel;
    Panel2: TPanel;
    acSave: TAction;
    acCancelChanges: TAction;
    acNewGroup: TAction;
    acDeleteGroup: TAction;
    grdGradesDBTableView1GradeNo: TcxGridDBColumn;
    grdGradesDBTableView1GradeName: TcxGridDBColumn;
    sq_Grade_SV: TSQLQuery;
    dsp_Grade_SV: TDataSetProvider;
    cds_Grade_SV: TClientDataSet;
    cds_Grade_SVGradeNo: TIntegerField;
    cds_Grade_SVGradeName: TStringField;
    ds_Grade_SV: TDataSource;
    ds_GradeGroupRow: TDataSource;
    ds_GradeGroupHdr: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    grdGradeGroup: TcxGrid;
    grdGradeGroupDBTableView1: TcxGridDBTableView;
    grdGradeGroupDBTableView1GradeGroupNo: TcxGridDBColumn;
    grdGradeGroupDBTableView1ClientNo: TcxGridDBColumn;
    grdGradeGroupDBTableView1GradeGroupName: TcxGridDBColumn;
    grdGradeGroupDBTableView1DateCreated: TcxGridDBColumn;
    grdGradeGroupDBTableView1CreatedUser: TcxGridDBColumn;
    grdGradeGroupLevel1: TcxGridLevel;
    grdGradeGroupRow: TcxGrid;
    grdGradeGroupRowDBTableView1: TcxGridDBTableView;
    grdGradeGroupRowDBTableView1KV: TcxGridDBColumn;
    grdGradeGroupRowDBTableView1GradeGroupNo: TcxGridDBColumn;
    grdGradeGroupRowDBTableView1GradeNo: TcxGridDBColumn;
    grdGradeGroupRowLevel1: TcxGridLevel;
    Panel9: TPanel;
    Splitter1: TSplitter;
    procedure acToGroupExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acFromGroupExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acNewGroupExecute(Sender: TObject);
    procedure acDeleteGroupExecute(Sender: TObject);
    procedure cds_Grade_SVFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ds_GradeGroupHdrDataChange(Sender: TObject; Field: TField);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function  DataSparat : Boolean ;
    procedure CopyToGroup(Sender: TObject);
    procedure RemoveFromGroup(Sender: TObject);
    procedure RefreshGrades ;
  public
    { Public declarations }
    FClientNo : Integer ;
    Class procedure Execute (const ClientNo : Integer) ;
  end;

//var fProdLengthGroup: TfProdLengthGroup;

implementation

uses dmsDataConn, dmcInvCtrl, dmsVidaSystem;

{$R *.dfm}

Class procedure TfGradeGroup.Execute (const ClientNo : Integer) ;
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

function TfGradeGroup.DataSparat : Boolean ;
Begin
 Result:= True ;
 With dmInvCtrl do
 Begin
  if cds_GradeGroupHdr.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_GradeGroupHdr.ChangeCount > 0 then
   Result:= False ;

  if cds_GradeGroupRow.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_GradeGroupRow.ChangeCount > 0 then
   Result:= False ;
 End ;
End ;

procedure TfGradeGroup.CopyToGroup(Sender: TObject);
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
  grdGradesDBTableView1.BeginUpdate ;
  grdGradesDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdGradesDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdGradesDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdGradesDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdGradesDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('GradeNo',RecID,[]) ;

    cds_GradeGroupRow.Insert ;
    cds_GradeGroupRowGradeNo.AsInteger:= ADataSet.FieldByName('GradeNo').AsInteger ;
    cds_GradeGroupRow.Post ;
   End ;


//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

 Finally
  grdGradesDBTableView1.DataController.EndLocate ;
  grdGradesDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfGradeGroup.acToGroupExecute(Sender: TObject);
begin
 CopyToGroup(Sender) ;
 acSaveExecute(Sender) ;
 RefreshGrades ;
end;

procedure TfGradeGroup.acSaveExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  Try
  if cds_GradeGroupHdr.State in [dsEdit, dsInsert] then
   cds_GradeGroupHdr.Post ;
  if cds_GradeGroupHdr.ChangeCount > 0 then
   cds_GradeGroupHdr.ApplyUpdates(0) ;

  if cds_GradeGroupRow.State in [dsEdit, dsInsert] then
   cds_GradeGroupRow.Post ;
  if cds_GradeGroupRow.ChangeCount > 0 then
   cds_GradeGroupRow.ApplyUpdates(0) ;
  Except

  End ;
 End ;
end;

procedure TfGradeGroup.acCancelChangesExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_GradeGroupRow.State in [dsEdit, dsInsert] then
   cds_GradeGroupRow.Cancel ;
  if cds_GradeGroupRow.ChangeCount > 0 then
   cds_GradeGroupRow.CancelUpdates ;

  if cds_GradeGroupHdr.State in [dsEdit, dsInsert] then
   cds_GradeGroupHdr.Cancel ;
  if cds_GradeGroupHdr.ChangeCount > 0 then
   cds_GradeGroupHdr.CancelUpdates ;

  RefreshGrades ;
 End ;
end;

procedure TfGradeGroup.RemoveFromGroup(Sender: TObject);
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
  grdGradeGroupRowDBTableView1.BeginUpdate ;
  grdGradeGroupRowDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdGradeGroupRowDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdGradeGroupRowDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdGradeGroupRowDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdGradeGroupRowDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('GradeNo',RecID,[]) ;
    ADataSet.Delete ;
   End ;


//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

 Finally
  grdGradeGroupRowDBTableView1.DataController.EndLocate ;
  grdGradeGroupRowDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfGradeGroup.acFromGroupExecute(Sender: TObject);
begin
 RemoveFromGroup(Sender) ;
 acSaveExecute(Sender) ; 
 RefreshGrades ;
end;

procedure TfGradeGroup.FormCloseQuery(Sender: TObject;
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
  cds_Grade_SV.Active:= False ;
end;

procedure TfGradeGroup.acNewGroupExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_GradeGroupHdr.Insert ;
  cds_GradeGroupHdrClientNo.AsInteger:= FClientNo ;
 End ;
end;

procedure TfGradeGroup.acDeleteGroupExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmInvCtrl do
 Begin
  cds_GradeGroupHdr.Delete ;
 End ;
end;

procedure TfGradeGroup.cds_Grade_SVFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 With dmInvCtrl do
 Begin
//   Accept:= not cds_GradeGroupRow.Locate('GradeNo',DataSet['GradeNo'],[]) ;
 End ;
end;

procedure TfGradeGroup.FormCreate(Sender: TObject);
begin
 ds_GradeGroupHdr.DataSet:= dmInvCtrl.cds_GradeGroupHdr ;
 ds_GradeGroupRow.DataSet:= dmInvCtrl.cds_GradeGroupRow ;  
{ dmInvCtrl.cds_GradeGroupRow.Active:= False ;
 dmInvCtrl.sq_GradeGroupRow.SQL.Clear ;
 dmInvCtrl.sq_GradeGroupRow.SQL.Add('Select * FROM dbo.GradeGroupRow') ;
 dmInvCtrl.sq_GradeGroupRow.SQL.Add('WHERE GradeGroupNo = :GradeGroupNo') ;

 dmInvCtrl.cds_GradeGroupRow.MasterFields:= 'GradeGroupNo' ;
 dmInvCtrl.cds_GradeGroupRow.MasterSource:= ds_GradeGroupHdr ;
 dmInvCtrl.cds_GradeGroupRow.Active:= True ; }
end;

procedure TfGradeGroup.FormDestroy(Sender: TObject);
begin
// dmInvCtrl.cds_GradeGroupRow.Active:= False ;
 ds_GradeGroupRow.DataSet:= Nil ;
 ds_GradeGroupHdr.DataSet:= Nil ;
{ dmInvCtrl.cds_GradeGroupRow.MasterFields:= '' ;
 dmInvCtrl.cds_GradeGroupRow.MasterSource:= Nil ;
 dmInvCtrl.sq_GradeGroupRow.SQL.Clear ;
 dmInvCtrl.sq_GradeGroupRow.SQL.Add('Select * FROM dbo.GradeGroupRow') ;
 dmInvCtrl.sq_GradeGroupRow.SQL.Add('WHERE GradeGroupNo = :GradeGroupNo') ;
 dmInvCtrl.sq_GradeGroupRow.ParamByName('GradeGroupNo').AsInteger:= -1 ;
 dmInvCtrl.cds_GradeGroupRow.Active:= True ; }
end;

procedure TfGradeGroup.ds_GradeGroupHdrDataChange(Sender: TObject;
  Field: TField);
begin
 With dmInvCtrl do
 Begin
  cds_GradeGroupRow.DisableControls ;
  Try
   RefreshGrades ;
  Finally
   cds_GradeGroupRow.EnableControls ;
  End ;
 End ;
end;

procedure TfGradeGroup.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:=  not DataSparat ;
end;

procedure TfGradeGroup.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:=  not DataSparat ;
end;

procedure TfGradeGroup.FormShow(Sender: TObject);
begin
 RefreshGrades ;
end;

procedure TfGradeGroup.RefreshGrades ;
Begin
 cds_Grade_SV.Active:= False ;
 sq_Grade_SV.ParamByName('ClientNo').AsInteger:= FClientNo ;
 cds_Grade_SV.Active:= True ;
End ;

end.
