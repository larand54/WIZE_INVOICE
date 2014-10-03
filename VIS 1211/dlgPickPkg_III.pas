unit dlgPickPkg_III ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, StdCtrls, Buttons, DB,

  VidaType, dxExEdtr;

type
  TfrmPackagePicker_III = class(TForm)
    pnlButtons: TPanel;
    pnlGrid: TPanel;
    grdPackages: TdxDBGrid;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    grdPackagesPackageNo: TdxDBGridMaskColumn;
    grdPackagesSupplierCode: TdxDBGridMaskColumn;
    grdPackagesProductDisplayName: TdxDBGridMaskColumn;
    grdPackagesLengthDescription: TdxDBGridMaskColumn;
    grdPackagesLogicalInventoryName: TdxDBGridMaskColumn;
    grdPackagesClientName: TdxDBGridMaskColumn;
    grdPackagesPackageTypeNo: TdxDBGridMaskColumn;
    grdPackagesLIP: TdxDBGridMaskColumn;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FSupplierCode: string3;
    FSupplierNo: Integer;
    FProductNo : Integer ;
    FProductLengthNo : Integer ;
    FNoOfLengths : Integer ;
    FLogicalInventoryPointNo : Integer ;
    FPackageTypeNo : Integer ;
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
    property PackageTypeNoForSelectedpkg : Integer read FPackageTypeNo ;
    property LogicalInventoryPointNoForSelectedpkg     : Integer read FLogicalInventoryPointNo ;
  end;

//var frmPackagePicker_III: TfrmPackagePicker_III;

implementation

{$R *.dfm}

uses
  vidaUser, dmcInvCtrl, dmsDataConn;

{ TfrmPackagePicker }

function TfrmPackagePicker_III.getDataSource: TDataSource;
begin
  Result := grdPackages.DataSource;
end;

procedure TfrmPackagePicker_III.setDataSource(const Value: TDataSource);
begin
  grdPackages.DataSource := Value;
end;

procedure TfrmPackagePicker_III.btnOKClick(Sender: TObject);
begin
  FSupplierCode := trim(grdPackages.DataSource.DataSet.FieldValues['SupplierCode']);
  FSupplierNo   := grdPackages.DataSource.DataSet.FieldValues['SupplierNo'] ;
  FProductNo := grdPackages.DataSource.DataSet.FieldValues['ProductNo'] ;
  FPackageTypeNo := grdPackages.DataSource.DataSet.FieldValues['PackageTypeNo'] ;
  FLogicalInventoryPointNo := grdPackages.DataSource.DataSet.FieldValues['LIP'] ;
//  FProductLengthNo := grdPackages.DataSource.DataSet.FieldValues['ProductLengthNo'] ;
//  FNoOfLengths := grdPackages.DataSource.DataSet.FieldValues['NoOfLengths'] ;
end;

procedure TfrmPackagePicker_III.FormCreate(Sender: TObject);
begin
  grdPackages.LoadFromIniFile(dmsConnector.InifilesMap+'VisPickPkg_III'+'.'+ThisUser.UserName);
end;

procedure TfrmPackagePicker_III.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  grdPackages.SaveToIniFile(dmsConnector.InifilesMap+'VisPickPkg_III'+'.'+ThisUser.UserName);
  CanClose:= True ;
end;

end.
