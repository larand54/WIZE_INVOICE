unit UnitCarrier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxTextEdit, ActnList, ImgList, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, System.Actions;

type
  TFormCarrier = class(TForm)
    Panel1: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    grdCarrierDBTableView1: TcxGridDBTableView;
    grdCarrierLevel1: TcxGridLevel;
    grdCarrier: TcxGrid;
    grdCarrierDBTableView1CarrierName: TcxGridDBColumn;
    ImageList1: TImageList;
    ActionList1: TActionList;
    acNewCarrier: TAction;
    acSave: TAction;
    acClose: TAction;
    procedure acNewCarrierExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
  private
    { Private declarations }
    function DataSaved: Boolean;
  public
    { Public declarations }
  end;

  // var   FormCarrier: TFormCarrier;

implementation

uses dmBooking, dmsVidaSystem;

{$R *.dfm}

function TFormCarrier.DataSaved: Boolean;
begin
  with dmsSystem do
  Begin
    Result := True;
    if cdsCarrier.ChangeCount > 0 then
      Result := False;
    if cdsCarrier.State in [dsEdit, dsInsert] then
      Result := False;
  End;
end;

procedure TFormCarrier.acNewCarrierExecute(Sender: TObject);
begin
  with dmsSystem do
  Begin
    cdsCarrier.Insert;
  End;
end;

procedure TFormCarrier.acSaveExecute(Sender: TObject);
begin
  with dmsSystem do
  Begin
    if cdsCarrier.State in [dsEdit, dsInsert] then
      cdsCarrier.Post;
    if cdsCarrier.ChangeCount > 0 then
      cdsCarrier.ApplyUpdates(0);
  End;
end;

procedure TFormCarrier.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormCarrier.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not DataSaved;
end;

end.
