unit uPkgNoSeries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, DB, dxExEdtr ;

type
  TfPkgNoSeries = class(TForm)
    Panel1: TPanel;
    grdPkgNoSerie: TdxDBGrid;
    grdPkgNoSerieClientNo: TdxDBGridMaskColumn;
    grdPkgNoSerieCurrentPkgNo: TdxDBGridMaskColumn;
    grdPkgNoSerieHighestPkgNo: TdxDBGridMaskColumn;
    grdPkgNoSerieVerk: TdxDBGridLookupColumn;
    bbNy: TBitBtn;
    bbSpara: TBitBtn;
    bbAngra: TBitBtn;
    bbTaBort: TBitBtn;
    procedure bbNyClick(Sender: TObject);
    procedure bbSparaClick(Sender: TObject);
    procedure bbAngraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbTaBortClick(Sender: TObject);
    procedure grdPkgNoSerieHighestPkgNoValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
  private
    { Private declarations }
    function  UnSavedData : Boolean ;
  public
    { Public declarations }
  end;

//var fPkgNoSeries: TfPkgNoSeries;

implementation

uses dmsVidaContact, VidaConst ;

{$R *.dfm}

procedure TfPkgNoSeries.bbNyClick(Sender: TObject);
begin
 with dmsContact do
 Begin
  cds_PkgNoSerie.Append ;
 End ;
end;

procedure TfPkgNoSeries.bbSparaClick(Sender: TObject);
begin
 with dmsContact do
 Begin
  if cds_PkgNoSerie.State in [dsEdit, dsInsert] then
   cds_PkgNoSerie.Post ;
  if cds_PkgNoSerie.ChangeCount > 0 then
  cds_PkgNoSerie.ApplyUpdates(0) ;
 End ;
end;

procedure TfPkgNoSeries.bbAngraClick(Sender: TObject);
begin
 with dmsContact do
 Begin
  if cds_PkgNoSerie.State in [dsEdit, dsInsert] then
   cds_PkgNoSerie.Cancel ;
  if cds_PkgNoSerie.ChangeCount > 0 then
   cds_PkgNoSerie.CancelUpdates ;
 End ;
end;

procedure TfPkgNoSeries.FormCreate(Sender: TObject);
begin
 with dmsContact do
 Begin
  cds_PkgNoSerie.Active:= True ;
 End ;
end;

function TfPkgNoSeries.UnSavedData : Boolean ;
begin
 with dmsContact do
 Begin
  if cds_PkgNoSerie.State in [dsEdit, dsInsert] then
   cds_PkgNoSerie.Post ;
  if cds_PkgNoSerie.ChangeCount > 0 then
   Result := True
    else
     Result := False ;
 End ;
end;

procedure TfPkgNoSeries.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if UnSavedData then
  if MessageDlg('Data inte sparad, vill du stänga?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     CanClose := True
      else
       CanClose := False ;

 if CanClose then
 Begin
  with dmsContact do
  Begin
   cds_PkgNoSerie.Active:= False ;
  End ;
 End ; 
end;

procedure TfPkgNoSeries.bbTaBortClick(Sender: TObject);
begin
 with dmsContact do
 Begin
  if cds_PkgNoSerie.State in [dsEdit, dsInsert] then
   cds_PkgNoSerie.Cancel
    else
     cds_PkgNoSerie.Delete ;
 End ;
end;

procedure TfPkgNoSeries.grdPkgNoSerieHighestPkgNoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
 with dmsContact do
 Begin
  if cds_PkgNoSerieHighestPkgNo.AsInteger > Const_MAX_PKG_NO then
   Begin
    ErrorText:='Max paketnr tillåtet är '+IntToStr(Const_MAX_PKG_NO) ;
    Accept:= False ;
   End
    else
     Accept:= True ;
 End ;
end;

end.
