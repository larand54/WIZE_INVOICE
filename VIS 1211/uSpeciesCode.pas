unit uSpeciesCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, StdCtrls, Buttons, dxDBTLCl, dxGrClms, DB, FMTBcd, DBClient,
  Provider, SqlExpr ;

type
  TfSpeciesCode = class(TForm)
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
    grdGradesSpeciesNo: TdxDBGridMaskColumn;
    grdGradesSpeciesName: TdxDBGridMaskColumn;
    grdBaseGradeSpeciesNo: TdxDBGridMaskColumn;
    grdBaseGradeLanguagecode: TdxDBGridMaskColumn;
    grdBaseGradeSpeciesCode: TdxDBGridMaskColumn;
    grdBaseGradeSpeciesName: TdxDBGridMaskColumn;
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
  fSpeciesCode: TfSpeciesCode;

implementation

Uses dmsVidaSystem ;

{$R *.dfm}

procedure TfSpeciesCode.FormCreate(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Species_SV.Active:= True ;
  cds_SpeciesCode.Active:= True ;
 End ;
end;

procedure TfSpeciesCode.FormDestroy(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Species_SV.Active:= False ;
  cds_SpeciesCode.Active:= False ;
 End ;
end;

procedure TfSpeciesCode.bbRemoveClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_Species_SV.Insert ;
  cds_Species_SVSpeciesNo.AsInteger:= cds_SpeciesCodeSpeciesNo.AsInteger ;
  cds_Species_SVSpeciesName.AsString:= cds_SpeciesCodeSpeciesName.AsString ;
  cds_Species_SV.Post ;
  
  cds_SpeciesCode.Delete ;
 End ;
end;

procedure TfSpeciesCode.bbApplyUpdatesClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_SpeciesCode.State in [dsInsert, dsEdit] then
   cds_SpeciesCode.Post ;
  if cds_SpeciesCode.ChangeCount > 0 then
   cds_SpeciesCode.ApplyUpdates(0) ;
 End ;
end;

procedure TfSpeciesCode.bbKopplaKvalitetClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_SpeciesCode.Insert ;
  cds_Species_SV.Delete ;
  grdBaseGrade.SetFocus ;
 End ;
end;

procedure TfSpeciesCode.bbAngraKopplingClick(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_SpeciesCode.State in [dsInsert, dsEdit] then
   cds_SpeciesCode.Cancel ;
  if cds_SpeciesCode.ChangeCount > 0 then
   cds_SpeciesCode.CancelUpdates ;
  if cds_Species_SV.ChangeCount > 0 then
   cds_Species_SV.CancelUpdates ;
 End ;
end;

end.
