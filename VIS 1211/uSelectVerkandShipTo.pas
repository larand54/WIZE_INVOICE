unit uSelectVerkandShipTo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxGridCardView,
  cxGridDBCardView, cxDBLookupComboBox, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxGridCustomLayoutView, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, siComp, siLngLnk,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfSelectVerkandShipTo = class(TForm)
    grdSelVerkDBTableView1: TcxGridDBTableView;
    grdSelVerkLevel1: TcxGridLevel;
    grdSelVerk: TcxGrid;
    grdSelVerkDBTableView1VerkNo: TcxGridDBColumn;
    grdSelVerkDBTableView1ShipToInvPointNo: TcxGridDBColumn;
    grdSelVerkDBTableView1VERK: TcxGridDBColumn;
    grdSelVerkDBTableView1LASTSTALLE: TcxGridDBColumn;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tvSelVerk: TcxGridDBCardView;
    tvSelVerkVERK: TcxGridDBCardViewRow;
    tvSelVerkLEVTILL: TcxGridDBCardViewRow;
    tvSelVerkLIPName: TcxGridDBCardViewRow;
    siLangLinked1: TsiLangLinked;
    grdSelVerkDBTableView2: TcxGridDBTableView;
    tvSelVerkVerkNo: TcxGridDBCardViewRow;
    tvSelVerkShipToInvPointNo: TcxGridDBCardViewRow;
    tvSelVerkLIPNo: TcxGridDBCardViewRow;
    procedure tvSelVerkLASTSTALLEPropertiesInitPopup(Sender: TObject);
    procedure tvSelVerkLEVTILLPropertiesInitPopup(Sender: TObject);
    procedure tvSelVerkLEVTILLPropertiesCloseUp(Sender: TObject);
    procedure tvSelVerkLIPNamePropertiesInitPopup(Sender: TObject);
    procedure tvSelVerkLIPNamePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvSelVerkLASTSTALLEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Avbryt  : Boolean ;
  public
    { Public declarations }
    OrderType         : Integer ;
    KopieraFranAvrop  : Boolean ;
  end;

//var fSelectVerkandShipTo: TfSelectVerkandShipTo;

implementation

uses dmcVidaOrder, dmsVidaContact, Vidaconst , udmLanguage, dmcLoadEntryCSD;

{$R *.dfm}

procedure TfSelectVerkandShipTo.tvSelVerkLASTSTALLEPropertiesInitPopup(
  Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_LL_Verk.Filtered:= True ;
  Try
  if dmLoadEntryCSD.mtVerkforLOVerkNo.AsInteger > 0 then
   cds_LL_Verk.Filter:= 'OwnerNo = '+dmLoadEntryCSD.mtVerkforLOVerkNo.AsString ;
  Except
   cds_LL_Verk.Filtered:= False ;
  End ;
 End ;
end;

procedure TfSelectVerkandShipTo.tvSelVerkLEVTILLPropertiesInitPopup(
  Sender: TObject);
begin
{ With dmsContact do
 Begin
  cds_PhysInvByCityNo.Filtered:= True ;
  Try
  if dmLoadEntryCSD.mtVerkforLOVerkNo.AsInteger > 0 then
   cds_PhysInvByCityNo.Filter:= 'OwnerNo = '+dmLoadEntryCSD.mtVerkforLOVerkNo.AsString ;
  Except
   cds_PhysInvByCityNo.Filtered:= False ;
  End ;
 End ; }
end;

procedure TfSelectVerkandShipTo.tvSelVerkLEVTILLPropertiesCloseUp(
  Sender: TObject);
begin
{ With dmsContact do
 Begin
  Try
   cds_PhysInvByCityNo.Filtered:= False ;
  Except
  End ;
 End ; }
end;

procedure TfSelectVerkandShipTo.tvSelVerkLIPNamePropertiesInitPopup(
  Sender: TObject);
begin
 With dmLoadEntryCSD, dmsContact do
 Begin
//  if cds_OrderHdrOrderType.AsInteger = 0 then
//   cds_GrpInv.Filter   := 'CityNo = ' + cds_LOShipToInvPointNo.AsString + ' AND OwnerNo = ' + cds_LOSupplierNo.AsString
//    else


// if cds_OrderHdrOrderType.AsInteger = c_Sales then
// Begin
{  if (mtVerkforLOShipToInvPointNo.AsString > '') and (not mtVerkforLOShipToInvPointNo.Isnull) then
   cds_GrpInv.Filter   := 'CityNo = ' + mtVerkforLOShipToInvPointNo.AsString + ' AND OwnerNo = 741' // + cds_OrderHdrSalesRegionNo.AsString
    else
     ShowMessage('Please select destination.') ; }
{
   End
     else
      Begin
        if (mtVerkforLOLoadingLocationNo.AsString > '') and (not mtVerkforLOLoadingLocationNo.Isnull) then
         cds_GrpInv.Filter   := 'CityNo = ' + mtVerkforLOLoadingLocationNo.AsString + ' AND OwnerNo = ' + mtVerkforLOVerkNo.AsString
          else
            ShowMessage('Please select a loading location') ;
      End;
}


  cds_GrpInv.Filtered := True ;
 End ;
end;

procedure TfSelectVerkandShipTo.tvSelVerkLIPNamePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
{
   With dmLoadEntryCSD, dmsContact do
   Begin
  //  cds_GrpInv.Filter   := 'CityNo = ' + cds_LOShipToInvPointNo.AsString ;
    cds_GrpInv.Filtered := False ;
    Error:= False ;
   End ;
}
end;

procedure TfSelectVerkandShipTo.tvSelVerkLASTSTALLEPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
 With dmsContact do
 Begin
  Try
   cds_LL_Verk.Filtered:= False ;
  Except
  End ;
 End ;
end;

procedure TfSelectVerkandShipTo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmLoadEntryCSD do
 Begin
  if Avbryt then
  CanClose := True
  else
  Begin
   if ((KopieraFranAvrop = True) and (mtVerkforLOShipToInvPointNo.AsInteger > 0) and
   (mtVerkforLOLIPNo.AsInteger > 0) and
   (mtVerkforLOVerkNo.AsInteger > 0))
   OR
   ((KopieraFranAvrop = False)  and (mtVerkforLOVerkNo.AsInteger > 0)) then
   CanClose := True
   else
   Begin
    CanClose:= False ;
    ShowMessage('Data missing... can not continue, click Cancel to interupt.') ;
   End ;
  End ; 
 End ;
end;

procedure TfSelectVerkandShipTo.BitBtn2Click(Sender: TObject);
begin
 Avbryt:= True ;
end;

procedure TfSelectVerkandShipTo.FormCreate(Sender: TObject);
begin
 KopieraFranAvrop:= False ;
end;

procedure TfSelectVerkandShipTo.FormShow(Sender: TObject);
begin
   tvSelVerkVERK.Caption        := 'Internal customer' ;
   tvSelVerkLEVTILL.Caption     := 'Deliver to' ;
   tvSelVerkLIPName.Caption     := 'Deliver to inventory group' ;
end;

end.
