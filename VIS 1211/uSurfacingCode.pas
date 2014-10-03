unit uSurfacingCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, StdCtrls, Buttons, dxDBTLCl, dxGrClms, DB, FMTBcd, DBClient,
  Provider, SqlExpr ;

type
  TfSurfacingCode = class(TForm)
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
    bbRemove: TBitBtn;
    Panel7: TPanel;
    bbApplyUpdates: TBitBtn;
    bbAngraKoppling: TBitBtn;
    grdGradesSurfacingNo: TdxDBGridMaskColumn;
    grdGradesSurfacingName: TdxDBGridMaskColumn;
    grdBaseGradeSurfacingNo: TdxDBGridMaskColumn;
    grdBaseGradeLanguagecode: TdxDBGridMaskColumn;
    grdBaseGradeSurfacingCode: TdxDBGridMaskColumn;
    grdBaseGradeSurfacingName: TdxDBGridMaskColumn;
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
  fSurfacingCode: TfSurfacingCode;

implementation

Uses dmsVidaSystem ;

{$R *.dfm}

procedure TfSurfacingCode.FormCreate(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Surfacing_SV.Active:= True ;
  cds_SurfacingCode.Active:= True ;
 End ;
end;

procedure TfSurfacingCode.FormDestroy(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Surfacing_SV.Active:= False ;
  cds_SurfacingCode.Active:= False ;
 End ;
end;

procedure TfSurfacingCode.bbRemoveClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_SurfacingCode.RecordCount > 0 then
  Begin
   cds_Surfacing_SV.Insert ;
   cds_Surfacing_SVSurfacingNo.AsInteger:= cds_SurfacingCodeSurfacingNo.AsInteger ;
   cds_Surfacing_SVSurfacingName.AsString:= cds_SurfacingCodeSurfacingName.AsString ;
   cds_Surfacing_SV.Post ;
   cds_SurfacingCode.Delete ;
  End ; 
 End ;
end;

procedure TfSurfacingCode.bbApplyUpdatesClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_SurfacingCode.State in [dsInsert, dsEdit] then
   cds_SurfacingCode.Post ;
  if cds_SurfacingCode.ChangeCount > 0 then
   cds_SurfacingCode.ApplyUpdates(0) ;
 End ;
end;

procedure TfSurfacingCode.bbKopplaKvalitetClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_SurfacingCode.Insert ;
  cds_Surfacing_SV.Delete ;
  grdBaseGrade.SetFocus ;
 End ;
end;

procedure TfSurfacingCode.bbAngraKopplingClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_SurfacingCode.State in [dsInsert, dsEdit] then
   cds_SurfacingCode.Cancel ; 
  if cds_SurfacingCode.ChangeCount > 0 then
   cds_SurfacingCode.CancelUpdates ;
  if cds_Surfacing_SV.ChangeCount > 0 then
   cds_Surfacing_SV.CancelUpdates ;
 End ;
end;

end.
