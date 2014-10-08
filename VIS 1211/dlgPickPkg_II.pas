unit dlgPickPkg_II;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB,

  VidaType, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TfrmPackagePicker_II = class(TForm)
    pnlButtons: TPanel;
    pnlGrid: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    grdPackages: TcxGridDBTableView;
    grdPkgsLevel1: TcxGridLevel;
    grdPkgs: TcxGrid;
    grdPackagesPackageNo: TcxGridDBColumn;
    grdPackagesSupplierCode: TcxGridDBColumn;
    grdPackagesSupplierNo: TcxGridDBColumn;
    grdPackagesLengthDescription: TcxGridDBColumn;
    grdPackagesProductDisplayName: TcxGridDBColumn;
    grdPackagesProductNo: TcxGridDBColumn;
    siLangLinked_frmPackagePicker_II: TsiLangLinked;
    procedure btnOKClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FSupplierCode: string3;
    FSupplierNo: Integer;
    FProductNo: Integer;
    FProductLengthNo: Integer;
    FNoOfLengths: Integer;
    function getDataSource: TDataSource;
    procedure setDataSource(const Value: TDataSource);
    { Private declarations }
  public
    { Public declarations }
    property DataSource: TDataSource read getDataSource write setDataSource;
    property SupplierCodeForSelectedPkg: string3 read FSupplierCode;
    property SupplierNoForSelectedpkg: Integer read FSupplierNo;
    property ProductNoForSelectedpkg: Integer read FProductNo;
    property ProductLengthNoForSelectedpkg: Integer read FProductLengthNo;
    property NoOfLengthsForSelectedpkg: Integer read FNoOfLengths;
  end;

  // var frmPackagePicker_II: TfrmPackagePicker_II;

implementation

{$R *.dfm}

uses
  vidaUser, // dmcLoadEntry,
  dmsDataConn;

{ TfrmPackagePicker }

function TfrmPackagePicker_II.getDataSource: TDataSource;
begin
  Result := grdPackages.Datacontroller.DataSource;
end;

procedure TfrmPackagePicker_II.setDataSource(const Value: TDataSource);
begin
  grdPackages.Datacontroller.DataSource := Value;
end;

procedure TfrmPackagePicker_II.btnOKClick(Sender: TObject);
begin
  FSupplierCode :=
    trim(grdPackages.Datacontroller.DataSource.DataSet.FieldValues
    ['SupplierCode']);
  FSupplierNo := grdPackages.Datacontroller.DataSource.DataSet.FieldValues
    ['SupplierNo'];
  FProductNo := grdPackages.Datacontroller.DataSource.DataSet.FieldValues
    ['ProductNo'];
  // FProductLengthNo := grdPackages.DataSource.DataSet.FieldValues['ProductLengthNo'] ;
  // FNoOfLengths := grdPackages.DataSource.DataSet.FieldValues['NoOfLengths'] ;
end;

procedure TfrmPackagePicker_II.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

end.
