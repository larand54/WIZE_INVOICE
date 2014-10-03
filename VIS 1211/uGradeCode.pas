unit uGradeCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, StdCtrls, Buttons, dxDBTLCl, dxGrClms, DB ;

type
  TfGradeCode = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    grdGrades: TdxDBGrid;
    grdBaseGrade: TdxDBGrid;
    bbKopplaKvalitet: TBitBtn;
    Panel2: TPanel;
    Memo1: TMemo;
    grdBaseGradeGradeNo: TdxDBGridMaskColumn;
    grdBaseGradeLanguagecode: TdxDBGridMaskColumn;
    grdBaseGradeGradeCode: TdxDBGridMaskColumn;
    grdGradesGradeNo: TdxDBGridMaskColumn;
    grdGradesGradeName: TdxDBGridMaskColumn;
    bbRemove: TBitBtn;
    Panel7: TPanel;
    bbApplyUpdates: TBitBtn;
    bbAngraKoppling: TBitBtn;
    grdBaseGradeGradeName: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbRemoveClick(Sender: TObject);
    procedure bbApplyUpdatesClick(Sender: TObject);
    procedure bbKopplaKvalitetClick(Sender: TObject);
    procedure bbAngraKopplingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGradeCode: TfGradeCode;

implementation

Uses dmsVidaSystem ;

{$R *.dfm}

procedure TfGradeCode.FormCreate(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Grade_SV.Active:= True ;
  cds_GradeCode.Active:= True ;
 End ;
end;

procedure TfGradeCode.FormDestroy(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Grade_SV.Active:= False ;
  cds_GradeCode.Active:= False ;
 End ;
end;

procedure TfGradeCode.bbRemoveClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Grade_SV.Insert ;
  cds_Grade_SVGradeNo.AsInteger:= cds_GradeCodeGradeNo.AsInteger ;
  cds_Grade_SVGradeName.AsString:= cds_GradeCodeGradeName.AsString ;
  cds_Grade_SV.Post ;
  
  cds_GradeCode.Delete ;
 End ;
end;

procedure TfGradeCode.bbApplyUpdatesClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_GradeCode.State in [dsInsert, dsEdit] then
   cds_GradeCode.Post ;
  if cds_GradeCode.ChangeCount > 0 then
   cds_GradeCode.ApplyUpdates(0) ;
 End ;
end;

procedure TfGradeCode.bbKopplaKvalitetClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_GradeCode.Insert ;
  cds_Grade_SV.Delete ;
  grdBaseGrade.SetFocus ;
 End ;
end;

procedure TfGradeCode.bbAngraKopplingClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_GradeCode.State in [dsInsert, dsEdit] then
   cds_GradeCode.Cancel ; 
  if cds_GradeCode.ChangeCount > 0 then
   cds_GradeCode.CancelUpdates ;
  if cds_Grade_SV.ChangeCount > 0 then
   cds_Grade_SV.CancelUpdates ;
 End ;
end;

end.
