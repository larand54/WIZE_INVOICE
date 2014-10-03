unit UnitMaintenance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, Buttons, ComCtrls,
  FMTBcd, DB, SqlExpr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls,
  dxDBTLCl, dxGrClms, dxEditor, dxExEdtr, dxEdLib, dxDBELib, cxPC,
  cxControls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxClasses;

type
  TfrmMaintenance = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarLargeButton1: TdxBarLargeButton;
    dxPageControl1: TcxPageControl;
    tsChangeNomSize: TcxTabSheet;
    tsAssignPriceGroups: TcxTabSheet;
    EditActThickMM: TEdit;
    EditActWidthMM: TEdit;
    EditNewNomThickMM: TEdit;
    EditNewNomWidthMM: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    bbApply: TBitBtn;
    tsReCalculatePackageVolume: TcxTabSheet;
    bbApplyPriceGroupNames: TBitBtn;
    Label5: TLabel;
    EditNomThickMM: TEdit;
    EditNomWidthMM: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cmbGrade: TComboBox;
    cmbPriceGroup: TComboBox;
    bbUpdatePackageTypeVolumes: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    ProgressBar1: TProgressBar;
    tsSetProductDescription: TcxTabSheet;
    bSetProductionDescription: TButton;
    sqlSetDescriptionExtraLO: TSQLQuery;
    sqlSetDescriptionNormalLO: TSQLQuery;
    sqlSetDescriptionOrderLine: TSQLQuery;
    tsMarketRegions: TcxTabSheet;
    Panel1: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxBarDockControl2: TdxBarDockControl;
    MarketRegionApply: TdxBarLargeButton;
    MarketRegionRefresh: TdxBarLargeButton;
    MarketRegionCancel: TdxBarLargeButton;
    MarketRegion: TdxBarLargeButton;
    dxDBGrid1ClientNo: TdxDBGridMaskColumn;
    dxDBGrid1ClientName: TdxDBGridMaskColumn;
    dxDBGrid1Market: TdxDBGridLookupColumn;
    dxDBGrid1MarketRegionNo: TdxDBGridMaskColumn;
    Button1: TButton;
    Button2: TButton;
    cmbSpecies: TComboBox;
    Label11: TLabel;
    cmbSurfacing: TComboBox;
    Label12: TLabel;
    EActThickMM: TEdit;
    EActWidthMM: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    tsReservedPkgs: TcxTabSheet;
    Panel2: TPanel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2PackageNo: TdxDBGridMaskColumn;
    dxDBGrid2SupplierCode: TdxDBGridMaskColumn;
    dxDBGrid2UserID: TdxDBGridMaskColumn;
    dxDBGrid2UserName: TdxDBGridMaskColumn;
    dxDBGrid2DateCreated: TdxDBGridColumn;
    dxDBGrid2UniqueKey: TdxDBGridMaskColumn;
    bbDeleteResPkg: TBitBtn;
    bbApplyChangesResPkgs: TBitBtn;
    bbCancelChangesResPkgs: TBitBtn;
    bbRefresh: TBitBtn;
    dxPageControl2: TcxPageControl;
    tsTrpBrev: TcxTabSheet;
    dxDBMemo1: TdxDBMemo;
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure bbApplyClick(Sender: TObject);
    procedure bbApplyPriceGroupNamesClick(Sender: TObject);
    procedure cmbGradeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cmbPriceGroupChange(Sender: TObject);
    procedure bbUpdatePackageTypeVolumesClick(Sender: TObject);
    procedure bSetProductionDescriptionClick(Sender: TObject);
    procedure MarketRegionRefreshClick(Sender: TObject);
    procedure MarketRegionApplyClick(Sender: TObject);
    procedure MarketRegionCancelClick(Sender: TObject);
    procedure MarketRegionClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cmbSurfacingChange(Sender: TObject);
    procedure cmbSpeciesChange(Sender: TObject);
    procedure bbDeleteResPkgClick(Sender: TObject);
    procedure bbApplyChangesResPkgsClick(Sender: TObject);
    procedure bbCancelChangesResPkgsClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    { Private declarations }
    SpeciesNo,
    SurfacingNo,
    GradeNo,
    InteralPriceGroupNo : Integer ;

  public
    { Public declarations }
  end;

//var frmMaintenance: TfrmMaintenance;

implementation

uses UnitdmMaintenance, dmsDataConn, UnitMarketRegion;

{$R *.dfm}

procedure TfrmMaintenance.dxBarLargeButton1Click(Sender: TObject);
begin
 Close ;
end;

procedure TfrmMaintenance.bbApplyClick(Sender: TObject);
var
  Save_Cursor:TCursor;

begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  Try

  with dmMaintenance do
  Begin
   sq_SetNomSize.Close ;
   sq_SetNomSize.ParamByName('ActThickMM').AsFloat:= StrToFloat(EditActThickMM.Text) ;
   sq_SetNomSize.ParamByName('ActWidthMM').AsFloat:= StrToFloat(EditActWidthMM.Text) ;
   sq_SetNomSize.ParamByName('NomThickMM').AsFloat:= StrToFloat(EditNewNomThickMM.Text) ;
   sq_SetNomSize.ParamByName('NomWidthMM').AsFloat:= StrToFloat(EditNewNomWidthMM.Text) ;
   sq_SetNomSize.ExecSQL(False) ;
  End ;
  Finally
   Screen.Cursor := Save_Cursor;
  End ;

end;

procedure TfrmMaintenance.bbApplyPriceGroupNamesClick(Sender: TObject);
var
  Save_Cursor:TCursor;
  RecordsChanged : Integer ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Try

  with dmMaintenance do
  Begin
   sq_SetIntPriceGroup.Close ;
   sq_SetIntPriceGroup.ParamByName('InteralPriceGroupNo').AsInteger:= InteralPriceGroupNo ;
   sq_SetIntPriceGroup.ParamByName('NomThickMM').AsFloat:= StrToFloat(EditNomThickMM.Text) ;
   sq_SetIntPriceGroup.ParamByName('NomWidthMM').AsFloat:= StrToFloat(EditNomWidthMM.Text) ;
   sq_SetIntPriceGroup.ParamByName('ActThickMM').AsFloat:= StrToFloat(EActThickMM.Text) ;
   sq_SetIntPriceGroup.ParamByName('ActWidthMM').AsFloat:= StrToFloat(EActWidthMM.Text) ;
   sq_SetIntPriceGroup.ParamByName('SpeciesNo').AsInteger:= SpeciesNo ;
   sq_SetIntPriceGroup.ParamByName('SurfacingNo').AsInteger:= SurfacingNo ;
   sq_SetIntPriceGroup.ParamByName('GradeNo').AsInteger:= GradeNo ;
   RecordsChanged:= sq_SetIntPriceGroup.ExecSQL(False) ;
  End ;
  Finally
   Screen.Cursor := Save_Cursor;
  End ;

 ShowMessage(IntToStr(RecordsChanged)+' changed') ;
{update dbo.Product
SET InteralPriceGroupNo = :InteralPriceGroupNo
from dbo.ProductGroup pg, dbo.Product P
where pg.NominalThicknessMM = :NomThickMM
and pg.NominalWidthMM = :NomWidthMM
and p.ProductGroupNo = pg.ProductGroupNo
and p.GradeNo = :GradeNo}


end;

procedure TfrmMaintenance.cmbGradeChange(Sender: TObject);
begin
 GradeNo:= integer(cmbGrade.Items.Objects[cmbGrade.ItemIndex]);
end;

procedure TfrmMaintenance.FormShow(Sender: TObject);
begin
  dmMaintenance.GetGrades(cmbGrade.Items);
  dmMaintenance.GetSurfacing(cmbSurfacing.Items);
  dmMaintenance.GetSpecies(cmbSpecies.Items);  
  dmMaintenance.GetPriceGroups(cmbPriceGroup.Items);
end;



procedure TfrmMaintenance.FormCreate(Sender: TObject);
begin
  dmMaintenance:= TdmMaintenance.Create(Nil);
end;

procedure TfrmMaintenance.FormDestroy(Sender: TObject);
begin
 FreeAndNil(dmMaintenance) ;
end;

procedure TfrmMaintenance.cmbPriceGroupChange(Sender: TObject);
begin
 InteralPriceGroupNo:= integer(cmbPriceGroup.Items.Objects[cmbPriceGroup.ItemIndex]);
end;

procedure TfrmMaintenance.bbUpdatePackageTypeVolumesClick(Sender: TObject);
var 
  Save_Cursor:TCursor;
  x: Integer ;
begin
 with dmMaintenance do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Try
  x:= 0 ;
  sq_NoOfProductGroups.Open ;
  Label9.Caption:= 'Total no of records '+IntToStr(sq_NoOfProductGroupsNoOfRecords.AsInteger) ;
  ProgressBar1.Max:= sq_NoOfProductGroupsNoOfRecords.AsInteger ;
  sq_NoOfProductGroups.Close ;


  sp_CalcPackageType.Prepared:= True ;
  sq_ProductGroup.Close ;
  sq_ProductGroup.Open ;

  while not sq_ProductGroup.Eof do
  Begin
   sp_CalcPackageType.ParamByName('ProductGroupNo').AsInteger:= sq_ProductGroupProductGroupNo.AsInteger ;
   sp_CalcPackageType.ExecProc ;
   sq_ProductGroup.Next ;
   Application.ProcessMessages ;
   X:= succ(x) ;
   Label10.Caption:= 'Processing record no '+IntToStr(x) ;
   ProgressBar1.Position:= x ;
  End ;
  sq_ProductGroup.Close ;
  Finally
   Screen.Cursor := Save_Cursor;
  End ;
 End ;
end;

procedure TfrmMaintenance.bSetProductionDescriptionClick(Sender: TObject);
begin
 sqlSetDescriptionOrderLine.ExecSQL(False) ;
end;

procedure TfrmMaintenance.MarketRegionRefreshClick(Sender: TObject);
begin
 if dmMaintenance.cdsMarketRegions.Active = True then
 if dmMaintenance.cdsMarketRegions.ChangeCount > 0 then
  dmMaintenance.cdsMarketRegions.ApplyUpdates(0) ;

  dmMaintenance.cdsMarketRegions.Active:= False ;
  dmMaintenance.cdsMarketRegions.Active:= True ;
end;

procedure TfrmMaintenance.MarketRegionApplyClick(Sender: TObject);
begin
 if dmMaintenance.cdsMarketRegions.State in [dsEdit, dsInsert] then
  dmMaintenance.cdsMarketRegions.Post ;
 if dmMaintenance.cdsMarketRegions.Active = True then
 if dmMaintenance.cdsMarketRegions.ChangeCount > 0 then
  dmMaintenance.cdsMarketRegions.ApplyUpdates(0) ;

 if dmMaintenance.cds_ClientTrpBrev.State in [dsEdit, dsInsert] then
  dmMaintenance.cds_ClientTrpBrev.Post ;
 if dmMaintenance.cds_ClientTrpBrev.ChangeCount > 0 then
  dmMaintenance.cds_ClientTrpBrev.ApplyUpdates(0) ;
end;

procedure TfrmMaintenance.MarketRegionCancelClick(Sender: TObject);
begin
 if dmMaintenance.cdsMarketRegions.Active = True then
 if dmMaintenance.cdsMarketRegions.ChangeCount > 0 then
  dmMaintenance.cdsMarketRegions.CancelUpdates ;
 if dmMaintenance.cds_ClientTrpBrev.ChangeCount > 0 then
  dmMaintenance.cds_ClientTrpBrev.ApplyUpdates(0) ;
end;

procedure TfrmMaintenance.MarketRegionClick(Sender: TObject);
var frmMarketRegion: TfrmMarketRegion;
begin
 frmMarketRegion:= TfrmMarketRegion.Create(Nil);
 Try
  if frmMarketRegion.ShowModal = mrOK then
   Begin
    dmMaintenance.cdsMR_Names.Insert ;
    dmMaintenance.cdsMR_NamesMarketRegionName.AsString:=  frmMarketRegion.EditMR_Name.Text ;
    dmMaintenance.cdsMR_NamesMarketRegionNo.AsInteger:= dmsConnector.NextMaxNo('MarketRegion') ;
    dmMaintenance.cdsMR_Names.Post ;
    if dmMaintenance.cdsMR_Names.ChangeCount > 0 then
     dmMaintenance.cdsMR_Names.ApplyUpdates(0) ;
   End
   else
   dmMaintenance.cdsMR_Names.Cancel ;
 Finally
  FreeAndNil(frmMarketRegion) ;
 End ;
end;

procedure TfrmMaintenance.Button1Click(Sender: TObject);
begin
 sqlSetDescriptionNormalLO.ExecSQL(False) ;

end;

procedure TfrmMaintenance.Button2Click(Sender: TObject);
begin
 sqlSetDescriptionExtraLO.ExecSQL(False) ;
end;

procedure TfrmMaintenance.cmbSurfacingChange(Sender: TObject);
begin
 SurfacingNo:= integer(cmbSurfacing.Items.Objects[cmbSurfacing.ItemIndex]);
end;

procedure TfrmMaintenance.cmbSpeciesChange(Sender: TObject);
begin
 SpeciesNo:= integer(cmbSpecies.Items.Objects[cmbSpecies.ItemIndex]);
end;

procedure TfrmMaintenance.bbDeleteResPkgClick(Sender: TObject);
begin
 With dmMaintenance do
 Begin
  if cds_ResPkgs.Active then
  cds_ResPkgs.Delete ;
 End ;
end;

procedure TfrmMaintenance.bbApplyChangesResPkgsClick(Sender: TObject);
begin
 With dmMaintenance do
 Begin
  if cds_ResPkgs.Active then
  Begin
   if cds_ResPkgs.ChangeCount > 0 then
    cds_ResPkgs.ApplyUpdates(0) ;
  End ;
 End ;

end;

procedure TfrmMaintenance.bbCancelChangesResPkgsClick(Sender: TObject);
begin
 With dmMaintenance do
 Begin
  if cds_ResPkgs.Active then
  Begin
   if cds_ResPkgs.ChangeCount > 0 then
    cds_ResPkgs.CancelUpdates ;
  End ;
 End ;

end;

procedure TfrmMaintenance.bbRefreshClick(Sender: TObject);
begin
 With dmMaintenance do
 Begin
  cds_ResPkgs.Active:= False ;
  cds_ResPkgs.Active:= True ;  
 End ;

end;

end.
