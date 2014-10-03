unit UnitShippingInstruction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, SqlTimSt, Menus,
  DateUtils, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGraphics, FMTBcd, DB, 
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLookAndFeelPainters, uADStanIntf,
  uADStanOption, uADStanParam, uADStanError, uADDatSManager, uADPhysIntf,
  uADDAptIntf, uADStanAsync, uADDAptManager, uADCompClient, uADCompDataSet,
  cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar,
  cxDBEdit, dxBar, cxLabel, cxGridExportLink, cxLookAndFeels, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator ;

type
  TfrmShippingInstruction = class(TfrmDBForm)
    acCustomizegrdShipInstruct: TAction;
    pmgrdShipInstruct: TPopupMenu;
    CustomizeLayout1: TMenuItem;
    acRefresh: TAction;
    acPrint: TAction;
    pmShortcut: TPopupMenu;
    Skrivut1: TMenuItem;
    Uppdatera1: TMenuItem;
    Stng1: TMenuItem;
    dsShippingInstruction: TDataSource;
    grdShippingInstructDBTableView1: TcxGridDBTableView;
    grdShippingInstructLevel1: TcxGridLevel;
    grdShippingInstruct: TcxGrid;
    grdShippingInstructDBTableView1ETD: TcxGridDBColumn;
    grdShippingInstructDBTableView1CarrierName: TcxGridDBColumn;
    grdShippingInstructDBTableView1INVOICENO: TcxGridDBColumn;
    grdShippingInstructDBTableView1BOOKING: TcxGridDBColumn;
    grdShippingInstructDBTableView1CONTAINERNO: TcxGridDBColumn;
    grdShippingInstructDBTableView1WEIGHT: TcxGridDBColumn;
    grdShippingInstructDBTableView1PKGS: TcxGridDBColumn;
    grdShippingInstructDBTableView1SEK_VALUE: TcxGridDBColumn;
    grdShippingInstructDBTableView1M3_ACT: TcxGridDBColumn;
    grdShippingInstructDBTableView1LOADNO: TcxGridDBColumn;
    cdsShippingInstruction: TADStoredProc;
    cdsShippingInstructionETD: TSQLTimeStampField;
    cdsShippingInstructionCarrierName: TStringField;
    cdsShippingInstructionINVOICENO: TIntegerField;
    cdsShippingInstructionBOOKING: TStringField;
    cdsShippingInstructionCONTAINERNO: TStringField;
    cdsShippingInstructionWEIGHT: TIntegerField;
    cdsShippingInstructionPKGS: TIntegerField;
    cdsShippingInstructionSEK_VALUE: TFloatField;
    cdsShippingInstructionM3_ACT: TFMTBCDField;
    cdsShippingInstructionLOADNO: TIntegerField;
    cdsShippingInstructionBILL_ADDRESS_NAME: TStringField;
    cdsShippingInstructionAddressLine1: TStringField;
    cdsShippingInstructionAddressLine2: TStringField;
    cdsShippingInstructionAddressLine3: TStringField;
    cdsShippingInstructionAddressLine4: TStringField;
    cdsShippingInstructionStateOrProvince: TStringField;
    cdsShippingInstructionPostalCode: TStringField;
    cdsShippingInstructionAddressCity: TStringField;
    cdsShippingInstructionAddressCountry: TStringField;
    cds_PropsCarrier: TStringField;
    deStartPeriod: TcxDBDateEdit;
    lcCarrier: TcxDBLookupComboBox;
    deEndPeriod: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    acExportToExcel: TAction;
    SaveDialog2: TSaveDialog;
    procedure toolbtnRefreshClick(Sender: TObject);
    procedure acCustomizegrdShipInstructExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure atExitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     AppName: String ;
    constructor CreateCo(CompanyNo: Integer);
    destructor  Destroy;
  end;

var
  frmShippingInstruction: TfrmShippingInstruction;

implementation

uses  VidaConst,   VidaUser,  VidaUtils,
  UnitCRViewReport , dmsVidaContact, dmsDataConn, dmsVidaSystem;

{$R *.dfm}

constructor TfrmShippingInstruction.CreateCo(CompanyNo: Integer);

begin
  inherited ; // Create(AOwner);
  // Load column widths set last time.
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdShippingInstruct.Name, grdShippingInstructDBTableView1)  ;

  // Populate the combo box with names of suppliers from the database
//  dmsContact.LoadCarriers(cbCarrier.Properties.Items);
end;

destructor TfrmShippingInstruction.Destroy;
begin
  inherited;

end;

procedure TfrmShippingInstruction.toolbtnRefreshClick(Sender: TObject) ;
var
  Save_Cursor:TCursor;
begin
 inherited;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

//  StartDate.Datetime:= RecodeHour(StartDate.Date,0) ;
//  StartDate.Datetime:= RecodeMinute(StartDate.Date,0) ;
//  StartDate.Datetime:= RecodeSecond(StartDate.Date,0) ;

//  EndDate.Datetime:= RecodeHour(EndDate.Date,23) ;
//  EndDate.Datetime:= RecodeMinute(EndDate.Date,59) ;
//  EndDate.Datetime:= RecodeSecond(EndDate.Date,59) ;

//  with dmcPayment do
//  Begin
   cdsShippingInstruction.Active:= False ;
   cdsShippingInstruction.ParamByName('@StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(cds_PropsStartPeriod.AsDateTime) ;
   cdsShippingInstruction.ParamByName('@EndDate').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(cds_PropsEndPeriod.AsDateTime) ;
   cdsShippingInstruction.ParamByName('@CarrierNo').AsInteger      := cds_PropsGradeStampNo.AsInteger ;
   cdsShippingInstruction.Active:= True ;
//  End ;

 Finally
  Screen.Cursor:= Save_Cursor ;
 End ;
end;

procedure TfrmShippingInstruction.acCustomizegrdShipInstructExecute(
  Sender: TObject);
begin
  inherited;
  if grdShippingInstruct.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdShippingInstruct.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmShippingInstruction.FormDestroy(Sender: TObject);
begin
 frmShippingInstruction:= Nil ;
  inherited;
end;

procedure TfrmShippingInstruction.acRefreshExecute(Sender: TObject);
var 
  Save_Cursor:TCursor;
begin
 inherited;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

//  StartDate.Datetime:= RecodeHour(StartDate.Date,0) ;
//  StartDate.Datetime:= RecodeMinute(StartDate.Date,0) ;
//  StartDate.Datetime:= RecodeSecond(StartDate.Date,0) ;

//  EndDate.Datetime:= RecodeHour(EndDate.Date,23) ;
//  EndDate.Datetime:= RecodeMinute(EndDate.Date,59) ;
//  EndDate.Datetime:= RecodeSecond(EndDate.Date,59) ;

//  with dmcPayment do
//  Begin
   cdsShippingInstruction.Active:= False ;
   cdsShippingInstruction.ParamByName('@StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(cds_PropsStartPeriod.AsDateTime) ;
   cdsShippingInstruction.ParamByName('@EndDate').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(cds_PropsEndPeriod.AsDateTime) ;
   cdsShippingInstruction.ParamByName('@CarrierNo').AsInteger      := cds_PropsGradeStampNo.AsInteger ;
   cdsShippingInstruction.Active:= True ;
//  End ;

 Finally
  Screen.Cursor:= Save_Cursor ;
 End ;
end;

procedure TfrmShippingInstruction.acPrintExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
     A                 : array of variant ;
begin
  inherited;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  SetLength(A, 3);
  A[0]  := cds_PropsStartPeriod.AsDateTime ;
  A[1]  := cds_PropsEndPeriod.AsDateTime ;
  A[2]  := cds_PropsGradeStampNo.AsInteger ;
 FormCRViewReport.CreateCo('SHIPPING_INSTRUCT.RPT', A) ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.ShowModal ;
 End ;
 Finally
   FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmShippingInstruction.FormShow(Sender: TObject);
begin
  inherited;
  LoadUserProps(Self.Caption) ;
  deStartPeriod.SetFocus ;
end;

procedure TfrmShippingInstruction.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  SaveUserProps(Self.Caption) ;
  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdShippingInstruct.Name, grdShippingInstructDBTableView1) ;
  CanClose:= True ;
end;

procedure TfrmShippingInstruction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action:= CaFree ;
end;

procedure TfrmShippingInstruction.acExportToExcelExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  FileName    : String ;
  ExcelDir    : String ;
begin
  inherited;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog2.DefaultExt:= 'xls';
 SaveDialog2.InitialDir:= ExcelDir ;
 if SaveDialog2.Execute then
 Begin
  FileName:= SaveDialog2.FileName ;

  Try
  ExportGridToExcel(FileName, grdShippingInstruct, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil ' + FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;


procedure TfrmShippingInstruction.atExitExecute(Sender: TObject);
begin
  inherited;
 Close ;
end;

end.
