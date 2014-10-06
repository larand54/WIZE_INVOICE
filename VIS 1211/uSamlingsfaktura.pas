unit uSamlingsfaktura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,
  Menus, ImgList, ActnList, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxLabel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxBar, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxNavigator, dxSkinsdxBarPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  System.Actions;

type
  TfSamlingsfaktura = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    acRefresh: TAction;
    ImageList1: TImageList;
    acRemove: TAction;
    acPrint: TAction;
    acClose: TAction;
    StngF121: TMenuItem;
    SkrivutF81: TMenuItem;
    UppdateraF61: TMenuItem;
    abortF51: TMenuItem;
    grdInvoiceGroupDBTableView1: TcxGridDBTableView;
    grdInvoiceGroupLevel1: TcxGridLevel;
    grdInvoiceGroup: TcxGrid;
    grdInvoiceGroupDBTableView1InvoiceGroupNo: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1OriginalInvNos: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1Ordernos: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1CreatedUser: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1ModifiedUser: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1CreatedDate: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1ModifiedDate: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1InvoiceText: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1AddressName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1AddressLine1: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1AddressLine2: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1AddressLine3: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1AddressLine4: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1StateOrProvince: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1PostalCode: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1CityName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1CountryName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1CustomerName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1Agentname: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1ST_AddressName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1ST_CityName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1CarrierName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1ETD: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1ETA: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1PaymentText: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1DeliveryTerm: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1PaymentDescription: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1CurrencyName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1SearchName: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1SUM_FreigthCost: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1Total_Product_Value_No_Freight: TcxGridDBColumn;
    grdInvoiceGroupDBTableView1Inv_Value_To_Be_Paid_2: TcxGridDBColumn;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acRefreshExecute(Sender: TObject);
    procedure acRemoveExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acRemoveUpdate(Sender: TObject);
    procedure acPrintUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSamlingsfaktura: TfSamlingsfaktura;

implementation

uses UnitCRViewReport, dmcVidaInvoice, dmLM1, dmsVidaSystem;

{$R *.dfm}

procedure TfSamlingsfaktura.FormCreate(Sender: TObject);
begin
  if (not Assigned(daMoLM1)) then
    daMoLM1 := TdaMoLM1.Create(nil);
  dmsSystem.AssignDMToThisWork('TfSamlingsfaktura', 'daMoLM1');

  with daMoLM1 do
  begin
    cds_InvoiceGroup.Active := True;
  End;
end;

procedure TfSamlingsfaktura.FormDestroy(Sender: TObject);
begin
  fSamlingsfaktura := Nil;

  if dmsSystem.DeleteAssigned('TfSamlingsfaktura', 'daMoLM1') = True then
  Begin
    daMoLM1.Free;
    daMoLM1 := Nil;
  End;
end;

procedure TfSamlingsfaktura.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  with daMoLM1 do
  begin
    cds_InvoiceGroup.Active := False;
  End;
  CanClose := True;
end;

procedure TfSamlingsfaktura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfSamlingsfaktura.acRefreshExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    with daMoLM1 do
    begin
      cds_InvoiceGroup.Active := False;
      cds_InvoiceGroup.Active := True;
    End;
  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

procedure TfSamlingsfaktura.acRemoveExecute(Sender: TObject);
begin
  with daMoLM1 do
  begin
    if MessageDlg('Är du säker ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
    Begin
      cds_InvoiceGroup.Delete;
      cds_InvoiceGroup.ApplyUpdates(0);
    End;
  End;
end;

procedure TfSamlingsfaktura.acPrintExecute(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if daMoLM1.cds_InvoiceGroupInvoiceGroupNo.AsInteger < 1 then
    exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := daMoLM1.cds_InvoiceGroupInvoiceGroupNo.AsInteger;
    FormCRViewReport.CreateCo('SAML_FAKT.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin

      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfSamlingsfaktura.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfSamlingsfaktura.acRemoveUpdate(Sender: TObject);
begin
  with daMoLM1 do
  begin
    acRemove.Enabled := (cds_InvoiceGroup.Active) and
      ((cds_InvoiceGroup.State in [dsEdit, dsInsert]) or
      (cds_InvoiceGroup.RecordCount > 0));
  End; // With
end;

procedure TfSamlingsfaktura.acPrintUpdate(Sender: TObject);
begin
  with daMoLM1 do
  begin
    acPrint.Enabled := (cds_InvoiceGroup.Active) and
      (cds_InvoiceGroup.RecordCount > 0);
  End; // With
end;

end.
