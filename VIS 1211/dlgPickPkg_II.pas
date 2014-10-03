unit dlgPickPkg_II;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB,

  VidaType, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid ;

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
    procedure btnOKClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FSupplierCode: string3;
    FSupplierNo: Integer;
    FProductNo : Integer ;
    FProductLengthNo : Integer ;
    FNoOfLengths : Integer ;
    function getDataSource: TDataSource;
    procedure setDataSource(const Value: TDataSource);
    { Private declarations }
  public
    { Public declarations }
    property DataSource : TDataSource read getDataSource write setDataSource;
    property SupplierCodeForSelectedPkg : string3 read FSupplierCode;
    property SupplierNoForSelectedpkg   : Integer read FSupplierNo;
    property ProductNoForSelectedpkg   : Integer read FProductNo;
    property ProductLengthNoForSelectedpkg   : Integer read FProductLengthNo;
    property NoOfLengthsForSelectedpkg   : Integer read FNoOfLengths;
  end;

//var frmPackagePicker_II: TfrmPackagePicker_II;

implementation

{$R *.dfm}

uses
  vidaUser, //dmcLoadEntry,
  dmsDataConn ;

{ TfrmPackagePicker }

function TfrmPackagePicker_II.getDataSource: TDataSource;
begin
  Result := grdPackages.Datacontroller.DataSource;
end;

procedure TfrmPackagePicker_II.setDataSource(const Value: TDataSource);
begin
  grdPackages.DataController.DataSource := Value;
end;

procedure TfrmPackagePicker_II.btnOKClick(Sender: TObject);
begin
  FSupplierCode := trim(grdPackages.DataController.DataSource.DataSet.FieldValues['SupplierCode']);
  FSupplierNo   := grdPackages.DataController.DataSource.DataSet.FieldValues['SupplierNo'] ;
  FProductNo    := grdPackages.DataController.DataSource.DataSet.FieldValues['ProductNo'] ;
//  FProductLengthNo := grdPackages.DataSource.DataSet.FieldValues['ProductLengthNo'] ;
//  FNoOfLengths := grdPackages.DataSource.DataSet.FieldValues['NoOfLengths'] ;
end;

procedure TfrmPackagePicker_II.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:= True ;
end;

end.
