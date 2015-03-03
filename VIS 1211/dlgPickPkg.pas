unit dlgPickPkg;

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
  TfrmPackagePicker = class(TForm)
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
    grdPackagesNoOfLengths: TcxGridDBColumn;
    grdPackagesProductLengthNo: TcxGridDBColumn;
    siLangLinked_frmPackagePicker: TsiLangLinked;
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

  // var frmPackagePicker: TfrmPackagePicker;

implementation

{$R *.dfm}

uses
  vidaUser, // dmcLoadEntry,
  dmsDataConn, udmLanguage;

{ TfrmPackagePicker }

function TfrmPackagePicker.getDataSource: TDataSource;
begin
  Result := grdPackages.DataController.DataSource;
end;

procedure TfrmPackagePicker.setDataSource(const Value: TDataSource);
begin
  grdPackages.DataController.DataSource := Value;
end;

procedure TfrmPackagePicker.btnOKClick(Sender: TObject);
begin
  FSupplierCode :=
    trim(grdPackages.DataController.DataSource.DataSet.FieldValues
    ['SupplierCode']);
  FSupplierNo := grdPackages.DataController.DataSource.DataSet.FieldValues
    ['SupplierNo'];
  FProductNo := grdPackages.DataController.DataSource.DataSet.FieldValues
    ['ProductNo'];
  FProductLengthNo := grdPackages.DataController.DataSource.DataSet.FieldValues
    ['ProductLengthNo'];
  FNoOfLengths := grdPackages.DataController.DataSource.DataSet.FieldValues
    ['NoOfLengths'];
end;

procedure TfrmPackagePicker.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

end.
