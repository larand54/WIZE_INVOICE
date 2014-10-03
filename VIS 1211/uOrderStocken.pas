unit uOrderStocken;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseListForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ActnList, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon,  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxContainer,
  cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridExportLink,
  cxExport, cxCalc, cxCurrencyEdit, cxCheckBox, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, StdCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxSSLnk, dxSkinsdxRibbonPainter ;

type
  TfOrderStocken = class(TfBaseListForm)
    grdOrderStockDBTableView1: TcxGridDBTableView;
    grdOrderStockLevel1: TcxGridLevel;
    grdOrderStock: TcxGrid;
    grdOrderStockDBBandedTableView1: TcxGridDBBandedTableView;
    grdOrderStockDBBandedTableView1Lev_Land: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1Valuta: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderNM3int: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1LevNM3int: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderstockNM3int: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderNM3ext: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1LevNM3ext: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderstockNM3ext: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderstockValuta: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderstockSEK: TcxGridDBBandedColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    grdOrderStockDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn;
    cxLabel1: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarLargeButton5: TdxBarLargeButton;
    acGenerateOrderstock: TAction;
    grdOrderStockDBBandedTableView1SalesRegionNo: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1CountryNo: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1CurrencyNo: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1MPNH: TcxGridDBBandedColumn;
    acSaveGridLayout: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    grdOrderStockDBBandedTableView1PriceOK: TcxGridDBBandedColumn;
    acShowOSDetails: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    grdOrderStockDBBandedTableView1InternalValue: TcxGridDBBandedColumn;
    procedure acRefreshExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure acGenerateOrderstockExecute(Sender: TObject);
    procedure acExportXLSExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveGridLayoutExecute(Sender: TObject);
    procedure acShowOSDetailsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdOrderStockDBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
  private
    { Private declarations }
    procedure CalcSummaries ;
  public
    { Public declarations }
  end;

var  fOrderStocken: TfOrderStocken;

implementation

uses UnitdmModule1, VidaUser , dmsVidaSystem, dmsDataConn,
  uOrderStockDetails;

{$R *.dfm}

procedure TfOrderStocken.acRefreshExecute(Sender: TObject);
begin
  inherited;
 With dmModule1 do
 Begin
  sp_Orderstock.DisableControls ;
  Try
  sp_Orderstock.Active  := False ;
  sp_Orderstock.ParamByName('@UserID').AsInteger := 8 ; //ThisUser.UserID ;
  sp_Orderstock.Active  := True ;
  Finally
   sp_Orderstock.EnableControls ;
  End ;
 End ;
end;

procedure TfOrderStocken.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action := caFree ;
end;

procedure TfOrderStocken.acPrintExecute(Sender: TObject);
begin
  inherited;
 dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Orderstock') ;

 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfOrderStocken.FormDestroy(Sender: TObject);
begin
  inherited;
 fOrderStocken := NIL;
end;

procedure TfOrderStocken.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  inherited;
 cds_PropsUserID.AsInteger  := ThisUser.UserID ;
 cds_PropsForm.AsString     := Self.Name ;
end;

procedure TfOrderStocken.acGenerateOrderstockExecute(Sender: TObject);
begin
  inherited;
 With dmModule1 do
 Begin
  Try
  sp_vis_GenOSRunAll.ParamByName('@UserID').AsInteger := ThisUser.UserID ;
  sp_vis_GenOSRunAll.ExecProc ;
  acRefreshExecute(Sender) ;
  except
   On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
     Raise ;
    End ;
  end;
 End ;
end;

procedure TfOrderStocken.acExportXLSExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  ExcelDir,
  FileName    : String ;
begin
  inherited;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 ExcelDir       := dmsSystem.Get_Dir('ExcelDir') ;
 Try
 SaveDialog1.Filter     := 'Excel files (*.xls)|*.xls';
 SaveDialog1.DefaultExt := 'xls';
 SaveDialog1.InitialDir := ExcelDir ;
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
  ExportGridToExcel(FileName, grdOrderStock, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil ' + FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfOrderStocken.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
 dmsSystem.StoreGridLayout(ThisUser.UserID, grdOrderStock.Name, grdOrderStockDBBandedTableView1) ;
end;

procedure TfOrderStocken.acSaveGridLayoutExecute(Sender: TObject);
begin
  inherited;
 dmsSystem.StoreGridLayout(ThisUser.UserID, grdOrderStock.Name, grdOrderStockDBBandedTableView1) ;
end;

procedure TfOrderStocken.acShowOSDetailsExecute(Sender: TObject);
Var  fOrderStockDetails: TfOrderStockDetails;
begin
  inherited;
 fOrderStockDetails:= TfOrderStockDetails.Create(nil) ;
 Try
 fOrderStockDetails.ShowModal ;
 Finally
  FreeAndNil(fOrderStockDetails) ;
 End ;
end;

procedure TfOrderStocken.FormShow(Sender: TObject);
begin
  inherited;
 dmsSystem.LoadGridLayout(ThisUser.UserID, grdOrderStock.Name, grdOrderStockDBBandedTableView1) ;
 CalcSummaries ;
end;

procedure TfOrderStocken.CalcSummaries ;
var
  I               : Integer;
  InternalValue,
  NM3             : Variant;
//  AGroups: TcxDataControllerGroups;

begin
  with grdOrderStockDBBandedTableView1.DataController.Summary do
  begin
   InternalValue  := 0 ;
   NM3            := 0 ;
    for I := 0 to FooterSummaryItems.Count - 1 do
    begin
      //NM3
      if TcxGridDBTableSummaryItem(FooterSummaryItems[I]).Column = grdOrderStockDBBandedTableView1OrderstockNM3int then
      begin
        NM3 := FooterSummaryValues[I];
      end;
      //Internal value
      if TcxGridDBTableSummaryItem(FooterSummaryItems[I]).Column = grdOrderStockDBBandedTableView1InternalValue then
      begin
        InternalValue := FooterSummaryValues[I];
      end;
    end;
  end;
 //Internal value / NM3
 if (NM3 <> null) and (NM3 > 0) then
 grdOrderStockDBBandedTableView1.DataController.Summary.FooterSummaryValues[7]:= InternalValue / NM3 ;


 (*
 AGroups := grdOrderStockDBBandedTableView1.DataController.Groups;

  with grdOrderStockDBBandedTableView1.DataController.Summary do
  begin
   InternalValue  := 0 ;
   NM3            := 0 ;
    for I := 0 to GroupSummaryItems[0].Count - 1 do
    begin
      //NM3
      if TcxGridDBTableSummaryItem(GroupSummaryItems[0].Items[I]).Column = grdOrderStockDBBandedTableView1OrderstockNM3int then
      begin
//        NM3 := GroupSummaryValues[0,I];
        NM3 :=         GroupSummaryValues[AGroups.ChildDataGroupIndex[-1, 0], I];
      end;
      //Internal value
      if TcxGridDBTableSummaryItem(GroupSummaryItems[0].Items[I]).Column = grdOrderStockDBBandedTableView1InternalValue then
      begin
//        InternalValue := GroupSummaryValues[0,I];
        InternalValue :=         GroupSummaryValues[AGroups.ChildDataGroupIndex[-1, 0], I];
      end;
    end;
  end;
 //Internal value / NM3


 if (NM3 <> null) and (NM3 > 0) then
 grdOrderStockDBBandedTableView1.DataController.Summary.GroupSummaryValues[0,0]:= InternalValue / NM3 ;

*)

end;

procedure TfOrderStocken.grdOrderStockDBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
 CalcSummaries ;
end;

end.
