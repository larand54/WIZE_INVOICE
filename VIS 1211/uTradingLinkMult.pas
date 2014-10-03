unit uTradingLinkMult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ActnList, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, Buttons, cxContainer, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, FMTBcd,
  DBClient, Provider, SqlExpr, cxLookAndFeels, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient;

type
  TfTradingLinkMult = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    PanelPOName: TPanel;
    ActionList1: TActionList;
    BitBtn1: TBitBtn;
    PanelAvrop: TPanel;
    grdTradingAvropDBTableView1: TcxGridDBTableView;
    grdTradingAvropLevel1: TcxGridLevel;
    grdTradingAvrop: TcxGrid;
    ds_AvropTrading: TDataSource;
    grdTradingAvropDBTableView1Kund: TcxGridDBColumn;
    grdTradingAvropDBTableView1Avropsnr: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    cds_AvropLink: TADQuery;
    cds_AvropLinkKund: TStringField;
    cds_AvropLinkAvropsnr: TIntegerField;
    sq_POorderInfo: TADQuery;
    sq_POorderInfoKontrakt: TStringField;
    sq_POorderInfoLeverantr: TStringField;
    sq_POorderInfoAvropsnr: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    POShippingPlanNo : Integer ;
  end;

//var fTradingLinkMult: TfTradingLinkMult;

implementation

uses  dmsDataConn, dmc_ArrivingLoads;

{$R *.dfm}

procedure TfTradingLinkMult.FormShow(Sender: TObject);
begin
// with dmArrivingLoads do
// Begin
  sq_POorderInfo.ParamByName('POShippingPlanNo').AsInteger:= POShippingPlanNo ;
  sq_POorderInfo.Open ;
  Try

  PanelPOName.Caption       := 'Leverantör: ' + sq_POorderInfoLeverantr.AsString
                              + '   Inköpskontrakt: ' + sq_POorderInfoKontrakt.AsString
                              + '   Avropsnr: ' + sq_POorderInfoAvropsnr.AsString ;
  cds_AvropLink.Active:= False ;
  cds_AvropLink.ParamByName('POShippingPlanNo').AsInteger:= POShippingPlanNo ;
  cds_AvropLink.Active:= True ;
  Finally
   sq_POorderInfo.Close ;
  End ;
// End ;//With
end;

procedure TfTradingLinkMult.FormDestroy(Sender: TObject);
begin
 cds_AvropLink.Active:= False ;
end;

end.

