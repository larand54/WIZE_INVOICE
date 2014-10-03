unit uSelectLORowInLoad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxCheckBox, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls;

type
  TfSelectLORowInLoad = class(TForm)
    Panel1: TPanel;
    PanelPaket: TPanel;
    grdLORows: TcxGrid;
    grdLORowsDBBandedTableView1: TcxGridDBBandedTableView;
    grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRODUCTDESCRIPTION: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ORDERNO: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LoadNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SupplierShipPlanObjectNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LoadingLocationNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INTERNPRODDESC: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ShipToInvPointNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MIN_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CustomerNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CustShipPlanDetailObjectNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1Trslag: TcxGridDBBandedColumn;
    grdLORowsLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    grdLORowsDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleAqua: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleSilver: TcxStyle;
    cxStyleHeader: TcxStyle;
    cxStyleContent: TcxStyle;
    cxStyleContentOdd: TcxStyle;
    procedure grdLORowsDBBandedTableView1MATCHPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectLORowInLoad: TfSelectLORowInLoad;

implementation

{$R *.dfm}

uses dmcLoadEntrySSP, vidaconst ;

procedure TfSelectLORowInLoad.grdLORowsDBBandedTableView1MATCHPropertiesChange(
  Sender: TObject);
begin
(*
 With dmLoadEntrySSP do
 Begin
  Try
  ds_LoadPackages2.OnDataChange:= nil ;
  if cds_LoadPackages.State = dsBrowse then
  cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger                 := 1 ;
  cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;

  if cdsLORowsMatch.AsInteger = 1 then
  Begin
   cds_LoadPackagesDefsspno.AsInteger                 := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
   cds_LoadPackagesOverrideRL.AsInteger               := cdsLORowsOverrideRL.AsInteger ;
  End
  else
  Begin
   cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
   cds_LoadPackagesOverrideRL.AsInteger               := 0 ;
  End ;
  cds_LoadPackages.Post ;

  Get_LO_LinesMatched (cds_LoadPackagesPackageNo.AsInteger,  Trim(cds_LoadPackagesSupplierCode.AsString)) ;
  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
 *)
end;

end.
