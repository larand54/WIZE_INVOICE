unit uGenShipCost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, ImgList, StdCtrls,
  DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxDropDownEdit, cxContainer, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookAndFeels, cxLookAndFeelPainters ;

type
  TfrmGenShipCost = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    lbExit: TdxBarLargeButton;
    lbApplyUpdates: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    lbNew: TdxBarLargeButton;
    lbDeleteRow: TdxBarLargeButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsName: TStringField;
    cds_PropsVerkNo: TIntegerField;
    cds_PropsOwnerNo: TIntegerField;
    cds_PropsPIPNo: TIntegerField;
    cds_PropsLIPNo: TIntegerField;
    cds_PropsInputOption: TIntegerField;
    cds_PropsRegPointNo: TIntegerField;
    cds_PropsRegDate: TSQLTimeStampField;
    cds_PropsCopyPcs: TIntegerField;
    cds_PropsRunNo: TIntegerField;
    cds_PropsProducerNo: TIntegerField;
    cds_PropsAutoColWidth: TIntegerField;
    cds_PropsSupplierCode: TStringField;
    cds_PropsLengthOption: TIntegerField;
    cds_PropsLengthGroupNo: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    cds_PropsSalesRegionNo: TIntegerField;
    cds_PropsMarketRegionNo: TIntegerField;
    cds_PropsOrderTypeNo: TIntegerField;
    cds_PropsStatus: TIntegerField;
    cds_PropsFilterOrderDate: TIntegerField;
    cds_PropsStartPeriod: TSQLTimeStampField;
    cds_PropsEndPeriod: TSQLTimeStampField;
    cds_PropsClientNo: TIntegerField;
    cds_PropsSalesPersonNo: TIntegerField;
    cds_PropsVerkSupplierNo: TIntegerField;
    cds_PropsVerkKundNo: TIntegerField;
    cds_PropsLOObjectType: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    cds_PropsMarknad: TStringField;
    cds_PropsKund: TStringField;
    cds_PropsSR: TStringField;
    cds_PropsSaljgrupp: TStringField;
    cds_PropsVerk: TStringField;
    cds_PropsShipper: TStringField;
    cds_PropsBokningstyp: TStringField;
    cds_PropsLaststalle: TStringField;
    cds_PropsAgentNamn: TStringField;
    ds_Props: TDataSource;
    grdGenFraktKostUSADBTableView1: TcxGridDBTableView;
    grdGenFraktKostUSALevel1: TcxGridLevel;
    grdGenFraktKostUSA: TcxGrid;
    lcSR: TcxDBLookupComboBox;
    cbPlaceInCostChain: TcxComboBox;
    peSalesRegion: TcxComboBox;
    pecosttype: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure lbExitClick(Sender: TObject);
    procedure lbNewClick(Sender: TObject);
    procedure lbDeleteRowClick(Sender: TObject);
    procedure lbApplyUpdatesClick(Sender: TObject);
    procedure lbCancelUpdatesClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure peSalesRegionChange(Sender: TObject);
    procedure pecosttypeChange(Sender: TObject);
  private
    { Private declarations }
    procedure FilterSC(Sender: TObject);
  public
    { Public declarations }
  end;

//var frmGenShipCost: TfrmGenShipCost;

implementation

uses UnitdmModule1, dmsVidaContact, dmc_UserProps;

{$R *.dfm}

procedure TfrmGenShipCost.FormCreate(Sender: TObject);
begin
{ dmsContact.LoadRegions(peSalesRegion.Items);
 if peSalesRegion.Items.Count > 0 then
  peSalesRegion.ItemIndex:= 0 ;

 With dmModule1 do
 Begin
  cds_genfreight.Active:= True ;
  FilterSC(Sender) ;
 End ;
 }
end;

procedure TfrmGenShipCost.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmGenShipCost.lbNewClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_genfreight.Insert ;
  cds_genfreighttype.AsString:= pecosttype.Text ;
  cds_genfreightSalesRegionNo.AsInteger:= integer(peSalesRegion.Properties.Items.Objects[peSalesRegion.ItemIndex]) ;
 End ;
end;

procedure TfrmGenShipCost.lbDeleteRowClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_genfreight.Delete ;
 End ;
end;

procedure TfrmGenShipCost.lbApplyUpdatesClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  if cds_genfreight.State in [dsEdit, dsInsert] then
   cds_genfreight.Post ;
  if cds_genfreight.ChangeCount > 0 then
   cds_genfreight.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmGenShipCost.lbCancelUpdatesClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  if cds_genfreight.State in [dsEdit, dsInsert] then
   cds_genfreight.Cancel ;
  if cds_genfreight.ChangeCount > 0 then
   cds_genfreight.CancelUpdates ;
 End ;
end;

procedure TfrmGenShipCost.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmModule1 do
 Begin
  if (cds_genfreight.State in [dsEdit, dsInsert])
  or (cds_genfreight.changecount > 0) then
   Begin
    if MessageDlg('Data är inte sparad.  vill du avsluta?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     CanClose := True
     else
     CanClose:= False ;
   End
    else
     CanClose := True ;
  if CanClose then
  Begin
   With dmModule1 do
   Begin
    cds_genfreight.Filtered:= False ;
    cds_genfreight.Active:= False ;
   End ;
  End ;
 End ;
end;

procedure TfrmGenShipCost.peSalesRegionChange(Sender: TObject);
begin
 FilterSC(Sender) ;
end;

procedure TfrmGenShipCost.FilterSC(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_genfreight.Filter:= 'SalesRegionNo = ' + cds_PropsSalesRegionNo.AsString
  +' AND type = ' + QuotedStr(pecosttype.Text) ;
  cds_genfreight.Filtered:= True ;
 End ;
end;




procedure TfrmGenShipCost.pecosttypeChange(Sender: TObject);
begin
 FilterSC(Sender) ;
end;

end.
