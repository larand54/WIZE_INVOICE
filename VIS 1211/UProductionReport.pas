unit UProductionReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxEditor,
  dxExEdtr, dxEdLib, StdCtrls, Buttons, SqlTimSt, Menus ;

type
  TfrmProductionReport = class(TForm)
    Panel1: TPanel;
    grdProdReport: TdxDBGrid;
    peProductionUnit: TdxPickEdit;
    peSupplier: TdxPickEdit;
    Label11: TLabel;
    StartDate: TdxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    grdProdReportUNIQUEKEY: TdxDBGridMaskColumn;
    grdProdReportProductionDate: TdxDBGridColumn;
    grdProdReportClientName: TdxDBGridMaskColumn;
    grdProdReportPROD_UNIT: TdxDBGridMaskColumn;
    grdProdReportSTD_Length: TdxDBGridMaskColumn;
    grdProdReportINVENTORY: TdxDBGridMaskColumn;
    grdProdReportPRODUCT: TdxDBGridMaskColumn;
    grdProdReportPACKAGENO: TdxDBGridMaskColumn;
    grdProdReportSUPP_CODE: TdxDBGridMaskColumn;
    grdProdReportACT_THICK: TdxDBGridMaskColumn;
    grdProdReportACT_WIDTH: TdxDBGridMaskColumn;
    grdProdReportNOM_THICK: TdxDBGridMaskColumn;
    grdProdReportNOM_WIDTH: TdxDBGridMaskColumn;
    grdProdReportPCS_PER_LENGTH: TdxDBGridMaskColumn;
    grdProdReportL18: TdxDBGridMaskColumn;
    grdProdReportL21: TdxDBGridMaskColumn;
    grdProdReportL24: TdxDBGridMaskColumn;
    grdProdReportL27: TdxDBGridMaskColumn;
    grdProdReportL30: TdxDBGridMaskColumn;
    grdProdReportL33: TdxDBGridMaskColumn;
    grdProdReportL36: TdxDBGridMaskColumn;
    grdProdReportL39: TdxDBGridMaskColumn;
    grdProdReportL42: TdxDBGridMaskColumn;
    grdProdReportL45: TdxDBGridMaskColumn;
    grdProdReportL48: TdxDBGridMaskColumn;
    grdProdReportL51: TdxDBGridMaskColumn;
    grdProdReportL54: TdxDBGridMaskColumn;
    grdProdReportL57: TdxDBGridMaskColumn;
    grdProdReportL60: TdxDBGridMaskColumn;
    grdProdReportAM3: TdxDBGridMaskColumn;
    grdProdReportNM3: TdxDBGridMaskColumn;
    grdProdReportALPM: TdxDBGridMaskColumn;
    grdProdReportMFBM: TdxDBGridMaskColumn;
    grdProdReportKM2: TdxDBGridMaskColumn;
    grdProdReportNO_OF_PCS: TdxDBGridMaskColumn;
    grdProdReportPhyInvPointNameNo: TdxDBGridMaskColumn;
    grdProdReportSupplierNo: TdxDBGridMaskColumn;
    grdProdReportClientCode: TdxDBGridMaskColumn;
    grdProdReportProductNo: TdxDBGridMaskColumn;
    grdProdReportPackageTypeNo: TdxDBGridMaskColumn;
    grdProdReportProductionUnitNo: TdxDBGridMaskColumn;
    bbRefresh: TBitBtn;
    bbPrint: TBitBtn;
    bbExit: TBitBtn;
    PopupMenu1: TPopupMenu;
    Customizegridlayout1: TMenuItem;
    Label4: TLabel;
    endDate: TdxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure peSupplierChange(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure Customizegridlayout1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateCo ;
  end;

var
  frmProductionReport: TfrmProductionReport;

implementation

uses dmsVidaSystem, dmsVidaContact, dm_Inventory, VidaUser,
  UnitCRViewReport;

{$R *.dfm}

procedure TfrmProductionReport.CreateCo ;
Begin
 StartDate.Date:= Date ;
 endDate.Date:= Date ;
 With dmsSystem do
 Begin
  dmsContact.LoadClients(peSupplier.Items, 9 {Internverk});
  peSupplier.Items.Insert(0,'ALL');
  if peSupplier.Items.Count > 0 then
   peSupplier.ItemIndex:= 0 ;

  peProductionUnit.Items.Clear ;
  peProductionUnit.Text:= '' ;
  dmsContact.Load_ProductionUnits(peProductionUnit.Items, integer(peSupplier.Items.Objects[peSupplier.ItemIndex]) {Internverk});
  peProductionUnit.Items.Insert(0,'ALL');
  if peProductionUnit.Items.Count > 0 then
   peProductionUnit.ItemIndex:= 0 ;

 End ;
End ;


procedure TfrmProductionReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmProductionReport.peSupplierChange(Sender: TObject);
begin
 peProductionUnit.Items.Clear ;
 peProductionUnit.Text:= '' ;
 dmsContact.Load_ProductionUnits(peProductionUnit.Items, integer(peSupplier.Items.Objects[peSupplier.ItemIndex]) {Internverk});
  peProductionUnit.Items.Insert(0,'ALL');
  if peProductionUnit.Items.Count > 0 then
   peProductionUnit.ItemIndex:= 0 ;

//  if peSupplier.Items.Count > 0 then
//  fVerkNo:= integer(peSupplier.Items.Objects[peSupplier.ItemIndex]) ;

//  if peProductionUnit.Items.Count > 0 then
//  fProductionUnitNo:= integer(peProductionUnit.Items.Objects[peProductionUnit.ItemIndex]) ;

end;

procedure TfrmProductionReport.bbRefreshClick(Sender: TObject);
begin
 With dmInventory do
 Begin
  cds_PkgProd_Rep.Active:= False ;
  dmInventory.sp_PkgProd_Rep.Close ;
  dmInventory.sp_PkgProd_Rep.ParamByName('StartDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(StartDate.Date) ;
  dmInventory.sp_PkgProd_Rep.ParamByName('EndDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(endDate.Date) ;
  if peProductionUnit.ItemIndex = 0 then
   dmInventory.sp_PkgProd_Rep.ParamByName('ProductionUnitNo').AsInteger:= 0
    else
     dmInventory.sp_PkgProd_Rep.ParamByName('ProductionUnitNo').AsInteger:= integer(peProductionUnit.Items.Objects[peProductionUnit.ItemIndex]) ;

  if peSupplier.ItemIndex = 0 then
   dmInventory.sp_PkgProd_Rep.ParamByName('SupplierNo').AsInteger:= 0
    else
     dmInventory.sp_PkgProd_Rep.ParamByName('SupplierNo').AsInteger:= integer(peSupplier.Items.Objects[peSupplier.ItemIndex]) ;
  dmInventory.sp_PkgProd_Rep.Open ;
  cds_PkgProd_Rep.Active:= True ;
 End ;
end;

procedure TfrmProductionReport.bbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmProductionReport.Customizegridlayout1Click(Sender: TObject);
begin
 grdProdReport.ColumnsCustomizing ;
end;

procedure TfrmProductionReport.FormCreate(Sender: TObject);
begin
 grdProdReport.LoadFromIniFile(ChangeFileExt(Application.ExeName, '.'+ThisUser.UserName));
end;

procedure TfrmProductionReport.FormDestroy(Sender: TObject);
begin
 With dmInventory do
 Begin
  cds_PkgProd_Rep.Active:= False ;
 End ;
 grdProdReport.SaveToIniFile(ChangeFileExt(Application.ExeName, '.'+ThisUser.UserName));
end;

procedure TfrmProductionReport.bbPrintClick(Sender: TObject);
begin

 FormCRViewReport:= TFormCRViewReport.Create(Self);
 Try

 FormCRViewReport.CreateCo(Self,'PKG_PRODUCTION.RPT',Application.ExeName) ;

 FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(StartDate.Date);
 FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(EndDate.Date);
 if peProductionUnit.ItemIndex = 0 then
 FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(0)
 else
 FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(integer(peProductionUnit.Items.Objects[peProductionUnit.ItemIndex])) ;

 if peSupplier.ItemIndex = 0 then
 FormCRViewReport.report.ParameterFields.Item[4].AddCurrentValue(0)
 else
 FormCRViewReport.report.ParameterFields.Item[4].AddCurrentValue(integer(peSupplier.Items.Objects[peSupplier.ItemIndex])) ;

 FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 Finally
  FormCRViewReport.Free ;
 End ;

end;

end.
