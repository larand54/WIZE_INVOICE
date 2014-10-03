unit uPkgLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, Grids, DBGrids, ImgList, StdCtrls, dxExEdtr, cxClasses;

type
  TfPkgLog = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    lbAskPkgNo: TdxBarLargeButton;
    lbExit: TdxBarLargeButton;
    Panel1: TPanel;
    grdPkgLog: TdxDBGrid;
    grdPkgLogOperation: TdxDBGridMaskColumn;
    grdPkgLogLogicalInventoryPointNo: TdxDBGridMaskColumn;
    grdPkgLogCREATED: TdxDBGridColumn;
    grdPkgLogOPERATION_1: TdxDBGridMaskColumn;
    grdPkgLogREG_POINT: TdxDBGridMaskColumn;
    grdPkgLogUSERID: TdxDBGridMaskColumn;
    grdPkgLogINVENTORY: TdxDBGridMaskColumn;
    grdPkgLogOWNER: TdxDBGridMaskColumn;
    grdPkgLogPRODUCT: TdxDBGridMaskColumn;
    grdPkgLogPCSPERLENGTH: TdxDBGridMaskColumn;
    grdPkgLogAM3: TdxDBGridMaskColumn;
    grdPkgLogPCS: TdxDBGridMaskColumn;
    ImageList1: TImageList;
    Label1: TLabel;
    grdPkgLogColumn13: TdxDBGridMaskColumn;
    grdPkgLogColumn14: TdxDBGridMaskColumn;
    procedure lbAskPkgNoClick(Sender: TObject);
    procedure lbExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    PackageNo : Integer ;
    SupplierCode : String ;
    procedure GetPkgLog(Sender : TObject) ;
  public
    { Public declarations }
  end;

//var  fPkgLog: TfPkgLog;

implementation

uses UnitPkgNo, dmsVidaSystem, VidaUser, dmsDataConn;

{$R *.dfm}

procedure TfPkgLog.lbAskPkgNoClick(Sender: TObject);
Var PkgSupplierNo, ProductNo : Integer ;
    frmPkgNo: TfrmPkgNo;
begin
 frmPkgNo:= TfrmPkgNo.Create(Nil);
 Try
  if frmPkgNo.ShowModal = mrOk then
  Begin
   PackageNo:= StrToInt(Trim(frmPkgNo.dxMaskPackageNo.Text));
   SupplierCode:= Trim(frmPkgNo.dxMaskSupplierCode.Text) ;
   if Length(SupplierCode) = 0 then
   Begin
    SupplierCode := dmsSystem.PkgNoToSuppCode_II(PackageNo, PkgSupplierNo, ProductNo);
    GetPkgLog(Sender) ;
   End
   else
   Begin
    GetPkgLog(Sender) ;
   End ;

  End ;
 Finally
  FreeAndNil(frmPkgNo) ;
 End ;
End ;

procedure TfPkgLog.GetPkgLog(Sender : TObject) ;
var
  Save_Cursor : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try

 With dmsSystem do
 Begin
  Label1.Caption:= 'Package No: '+IntToStr(PackageNo)+'/'+SupplierCode ;
  cds_pkgLog.Active:= False ;
  cds_pkgLog.Close ;
  cds_pkgLog.ParamByName('PackageNo').AsInteger:= PackageNo ;
  cds_pkgLog.ParamByName('SupplierCode').AsString:= SupplierCode ;
  cds_pkgLog.Open ;
  cds_pkgLog.Active:= True ;
 End ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

End ;

procedure TfPkgLog.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfPkgLog.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 With dmsSystem do
 Begin
  cds_pkgLog.Active:= False ;
  cds_pkgLog.Close ;
 End ;
 CanClose := True ;
end;

end.
