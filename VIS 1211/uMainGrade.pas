unit uMainGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, StdCtrls, Buttons, dxExEdtr;

type
  TfMainGrade = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    grdGrades: TdxDBGrid;
    grdGradesGradeNo: TdxDBGridMaskColumn;
    grdGradesGradeName: TdxDBGridMaskColumn;
    grdGradesLanguageCode: TdxDBGridMaskColumn;
    grdGradesSequenceNo: TdxDBGridMaskColumn;
    grdGradesCreatedUser: TdxDBGridMaskColumn;
    grdGradesModifiedUser: TdxDBGridMaskColumn;
    grdGradesDateCreated: TdxDBGridColumn;
    grdGradesMainGradeNo: TdxDBGridMaskColumn;
    bbAdd: TBitBtn;
    bbRemove: TBitBtn;
    bbSpara: TBitBtn;
    grdGradesMainGradeName: TdxDBGridMaskColumn;
    grdBaseGrade: TdxDBGrid;
    grdBaseGradeMainGradeNo: TdxDBGridMaskColumn;
    grdBaseGradeMainGradeName: TdxDBGridMaskColumn;
    grdBaseGradeCreatedUser: TdxDBGridMaskColumn;
    grdBaseGradeModifiedUser: TdxDBGridMaskColumn;
    grdBaseGradeDateCreated: TdxDBGridColumn;
    bbKopplaKvalitet: TBitBtn;
    bbAngraKoppling: TBitBtn;
    bbApplyUpdates: TBitBtn;
    Panel2: TPanel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure bbRemoveClick(Sender: TObject);
    procedure bbSparaClick(Sender: TObject);
    procedure bbApplyUpdatesClick(Sender: TObject);
    procedure bbKopplaKvalitetClick(Sender: TObject);
    procedure bbAngraKopplingClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fMainGrade: TfMainGrade;

implementation

Uses dmsVidaSystem ;

{$R *.dfm}

procedure TfMainGrade.FormCreate(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Grade.Active:= True ;
  cds_MainGrade.Active:= True ;
 End ;
end;

procedure TfMainGrade.bbAddClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_MainGrade.Insert ;
 End ;
end;

procedure TfMainGrade.bbRemoveClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if MessageDlg('Vill du ta bort?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  cds_MainGrade.Delete ;
 End ;
end;

procedure TfMainGrade.bbSparaClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_MainGrade.ChangeCount > 0 then
   cds_MainGrade.ApplyUpdates(0) ;
 End ;
end;

procedure TfMainGrade.bbApplyUpdatesClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_Grade.ChangeCount > 0 then
   cds_Grade.ApplyUpdates(0) ;
 End ;
end;

procedure TfMainGrade.bbKopplaKvalitetClick(Sender: TObject);
Var
 Save_Cursor : TCursor;
 x : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 With dmsSystem do
 Begin

// ListBox1.Items.Clear ;

  for x := 0 to (grdGrades.SelectedCount - 1) do
  begin

//  DataSource.DataSet.Bookmark := SelectedRows[x]; //1st variant
   grdGrades.DataSource.DataSet.GotoBookmark(Pointer(grdGrades.SelectedRows[x])); //2nd variant
   cds_Grade.Edit ;
   cds_GradeMainGradeNo.AsInteger:= cds_MainGradeMainGradeNo.AsInteger ;
   cds_GradeMainGradeName.AsString:= cds_MainGradeMainGradeName.AsString ;
   cds_Grade.Post ;
  end ;
 End ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

end;

procedure TfMainGrade.bbAngraKopplingClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_Grade.ChangeCount > 0 then
   cds_Grade.CancelUpdates ;
 End ;
end;

procedure TfMainGrade.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmsSystem do
 Begin
  cds_Grade.Active:= False ;
  cds_MainGrade.Active:= False ;
 End ;
 CanClose := True ;
end;

end.
