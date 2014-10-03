unit uPktNrPos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Buttons, ExtCtrls, DB,
  dxExEdtr, FMTBcd, DBClient, Provider, SqlExpr ;

type
  TfPktNrPos = class(TForm)
    Panel1: TPanel;
    bbApplyChanges: TBitBtn;
    bbCancelChanges: TBitBtn;
    grdLevKoder: TdxDBGrid;
    sq_verk: TSQLQuery;
    dsp_verk: TDataSetProvider;
    cds_Verk: TClientDataSet;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    ds_Verk: TDataSource;
    sq_verkClientNo: TIntegerField;
    sq_verkClientName: TStringField;
    sq_verkPktNrLevKod: TStringField;
    sq_verkPaketNoPos: TIntegerField;
    sq_verkPaketNoLength: TIntegerField;
    sq_verkSupplierCodePos: TIntegerField;
    sq_verkSupplierCodeLength: TIntegerField;
    sq_verkROLL: TStringField;
    cds_VerkPktNrLevKod: TStringField;
    cds_VerkPaketNoPos: TIntegerField;
    cds_VerkPaketNoLength: TIntegerField;
    cds_VerkSupplierCodePos: TIntegerField;
    cds_VerkSupplierCodeLength: TIntegerField;
    cds_VerkROLL: TStringField;
    grdLevKoderClientNo: TdxDBGridMaskColumn;
    grdLevKoderROLL: TdxDBGridMaskColumn;
    grdLevKoderClientName: TdxDBGridMaskColumn;
    grdLevKoderPktNrLevKod: TdxDBGridMaskColumn;
    grdLevKoderPaketNoPos: TdxDBGridMaskColumn;
    grdLevKoderPaketNoLength: TdxDBGridMaskColumn;
    grdLevKoderSupplierCodePos: TdxDBGridMaskColumn;
    grdLevKoderSupplierCodeLength: TdxDBGridMaskColumn;
    procedure bbApplyChangesClick(Sender: TObject);
    procedure bbCancelChangesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var fPktNrPos: TfPktNrPos;

implementation

uses dmsVidaContact, dmsDataConn, VidaUser ;

{$R *.dfm}

procedure TfPktNrPos.bbApplyChangesClick(Sender: TObject);
begin
  if cds_Verk.State in [dsInsert, dsEdit] then
  cds_Verk.Post ;
  if cds_Verk.ChangeCount > 0 then
   cds_Verk.ApplyUpdates(0) ;
end;

procedure TfPktNrPos.bbCancelChangesClick(Sender: TObject);
begin
  if cds_Verk.State in [dsInsert, dsEdit] then
  cds_Verk.Post ;
  if cds_Verk.ChangeCount > 0 then
   cds_Verk.CancelUpdates ;
end;

procedure TfPktNrPos.FormCreate(Sender: TObject);
begin
 cds_Verk.Active:= False ;
 cds_Verk.Active:= True ;
 grdLevKoderClientName.ReadOnly:= True ;
 grdLevKoderROLL.ReadOnly:= True ;
 grdLevKoderClientNo.ReadOnly:= True ;
end;

procedure TfPktNrPos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 cds_Verk.Active:= False ;
 CanClose:= True ;
end;

end.
