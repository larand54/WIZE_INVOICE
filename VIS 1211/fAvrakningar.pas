unit fAvrakningar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ExtCtrls, ActnList,
  ImgList, ComCtrls, ToolWin, Menus,
  StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxImageComboBox,
  cxCalendar, cxTextEdit, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxCalc, dxBar, dxBarExtItems,
  cxGridExportLink, cxSplitter, cxContainer, cxMaskEdit,
  cxDropDownEdit, Buttons, SqlTimSt, cxCurrencyEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  System.Actions, siComp, siLngLnk;

type
  TfrmGjordaAvrakningar = class(TForm)
    PopupMenu1: TPopupMenu;
    Paymentrecieved1: TMenuItem;
    Progress1: TMenuItem;
    ImageList1: TImageList;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Panel3: TPanel;
    Panel1: TPanel;
    grdAvrRows: TcxGrid;
    grdAvrRowsDBTableView1: TcxGridDBTableView;
    grdAvrRowsDBTableView1AVRAKNING_NO: TcxGridDBColumn;
    grdAvrRowsDBTableView1VIS_FS: TcxGridDBColumn;
    grdAvrRowsDBTableView1LOAD_DATE: TcxGridDBColumn;
    grdAvrRowsDBTableView1AKT_THICK: TcxGridDBColumn;
    grdAvrRowsDBTableView1AKT_WIDTH: TcxGridDBColumn;
    grdAvrRowsDBTableView1ACT_M3: TcxGridDBColumn;
    grdAvrRowsDBTableView1NOM_LPM: TcxGridDBColumn;
    grdAvrRowsDBTableView1NOM_THICK: TcxGridDBColumn;
    grdAvrRowsDBTableView1NOM_WIDTH: TcxGridDBColumn;
    grdAvrRowsDBTableView1NOM_M3: TcxGridDBColumn;
    grdAvrRowsDBTableView1PRICE: TcxGridDBColumn;
    grdAvrRowsDBTableView1VALUE: TcxGridDBColumn;
    grdAvrRowsDBTableView1MOMS_VALUE: TcxGridDBColumn;
    grdAvrRowsDBTableView1SUPPCODE: TcxGridDBColumn;
    grdAvrRowsDBTableView1GRADENAME: TcxGridDBColumn;
    grdAvrRowsLevel1: TcxGridLevel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    ActionList1: TActionList;
    acSpara: TAction;
    ImageList2: TImageList;
    acUppdatera: TAction;
    acSkrivUt: TAction;
    acClose: TAction;
    acAngraAndringar: TAction;
    acDeleteAvrakning: TAction;
    acExportToExcel: TAction;
    acSearchAvrNo: TAction;
    SaveDialog2: TSaveDialog;
    dxBarLargeButton8: TdxBarLargeButton;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Panel6: TPanel;
    grdPayment: TcxGrid;
    grdPaymentDBTableView1: TcxGridDBTableView;
    grdPaymentDBTableView1MILL_InvoiceNo: TcxGridDBColumn;
    grdPaymentDBTableView1PaymentNo: TcxGridDBColumn;
    grdPaymentDBTableView1DateCreated: TcxGridDBColumn;
    grdPaymentDBTableView1SenderStatus: TcxGridDBColumn;
    grdPaymentDBTableView1CustName: TcxGridDBColumn;
    grdPaymentLevel1: TcxGridLevel;
    acCreateAdjustmentInvoice: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    acCreditLoad: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    grdAvrRowsDBTableView1NLMM: TcxGridDBColumn;
    grdPaymentDBTableView1TypeOf: TcxGridDBColumn;
    grdPaymentDBTableView1Notering: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    acCancelLoad: TAction;
    BitBtn2: TBitBtn;
    grdPaymentDBTableView1PaymentType: TcxGridDBColumn;
    acUppdateraPriser: TAction;
    BitBtn3: TBitBtn;
    grdAvrRowsDBTableView1Pris1: TcxGridDBColumn;
    grdAvrRowsDBTableView1PaymentType: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    cxStyleclFuchsia: TcxStyle;
    grdAvrRowsDBTableView1ALMM: TcxGridDBColumn;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    Action1: TAction;
    acUpdateAllPrices: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    acOpenLoad: TAction;
    BitBtn5: TBitBtn;
    grdAvrRowsDBTableView1CreditToPaymentNo: TcxGridDBColumn;
    cxStyleCreditToPaymentNo: TcxStyle;
    ngraF41: TMenuItem;
    abortlastShiftF51: TMenuItem;
    StngF121: TMenuItem;
    Skapandringsfaktura1: TMenuItem;
    Krediteralaster1: TMenuItem;
    abortavrkningF51: TMenuItem;
    ExporteraF111: TMenuItem;
    ppnalastF91: TMenuItem;
    SkLastnrF71: TMenuItem;
    SkrivutF81: TMenuItem;
    SparaF31: TMenuItem;
    Action11: TMenuItem;
    UpdallapriserShiftF61: TMenuItem;
    UppdateraF61: TMenuItem;
    UppdaterapriserF101: TMenuItem;
    grdPaymentDBTableView1Leverantr: TcxGridDBColumn;
    grdAvrRowsDBTableView1LO: TcxGridDBColumn;
    grdAvrRowsDBTableView1Attesterad: TcxGridDBColumn;
    grdAvrRowsDBTableView1Objecttype: TcxGridDBColumn;
    cxStyleNotAttesterad: TcxStyle;
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
    ds_Props: TDataSource;
    lcVerk: TcxDBLookupComboBox;
    icStatus: TcxDBImageComboBox;
    grdAvrRowsDBTableView1AR_AV: TcxGridDBColumn;
    siLangLinked_frmGjordaAvrakningar: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Paymentrecieved1Click(Sender: TObject);
    procedure Progress1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acSparaUpdate(Sender: TObject);
    procedure acSparaExecute(Sender: TObject);
    procedure acUppdateraExecute(Sender: TObject);
    procedure acSkrivUtExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acAngraAndringarExecute(Sender: TObject);
    procedure acAngraAndringarUpdate(Sender: TObject);
    procedure acDeleteAvrakningExecute(Sender: TObject);
    procedure acSearchAvrNoExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure acExportToExcelUpdate(Sender: TObject);
    procedure acDeleteAvrakningUpdate(Sender: TObject);
    procedure acCreditLoadExecute(Sender: TObject);
    procedure acUppdateraPriserExecute(Sender: TObject);
    procedure acUppdateraPriserUpdate(Sender: TObject);
    procedure acCreditLoadUpdate(Sender: TObject);
    procedure grdAvrRowsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acCancelLoadExecute(Sender: TObject);
    procedure acCancelLoadUpdate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure acUpdateAllPricesExecute(Sender: TObject);
    procedure acOpenLoadExecute(Sender: TObject);
    procedure acOpenLoadUpdate(Sender: TObject);
    procedure acUpdateAllPricesUpdate(Sender: TObject);
    procedure cds_PropsVerkNoChange(Sender: TField);
    procedure cds_PropsStatusChange(Sender: TField);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    ExcelDir: String;
    fSupplierNo: Integer;
    procedure SaveUserProps(const Form: String);
    procedure LoadUserProps(const Form: String);
    function AllLoadsAttesterad: Boolean;
    function DataSparat: Boolean;
    procedure LoadUserPreferences;
    procedure SaveUserPreferences;
    Procedure GetMarkedLoads;
    Procedure InsertTo_cdsPaymentLoads(const TypeOf, NewPaymentNo,
      OldPaymentNo: Integer);
    Procedure UppdateraPriser;
    function AreLoadsAlreadyCredited: Boolean;
    procedure UpdateAllPricesExecute;
    Procedure Set_CreditToPaymentNo_To_One_In_LastAvrDtl(const OldPaymentNo
      : Integer);
  public
    { Public declarations }
    procedure CreateCo(const CompanyNo, TypeOfPayment: Integer);
  end;

var
  frmGjordaAvrakningar: TfrmGjordaAvrakningar;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils,
  dmsDataConn,
  UnitCRViewReport,
  dmsVidaContact,
  uEntryField,
  dmc_ArrivingLoads,
  dmsVidaSystem, dmcAvrakning, uWait, UnitLoadEntrySSP, dmc_UserProps,
  udmLanguage, udmFR, uReport, uReportController;

{$R *.dfm}

procedure TfrmGjordaAvrakningar.SaveUserPreferences;
begin
  // Save column widths so we can use same ones next time.
  dmsSystem.StoreGridLayout(ThisUser.UserID, grdPayment.Name,
    grdPaymentDBTableView1);
  dmsSystem.StoreGridLayout(ThisUser.UserID, grdAvrRows.Name,
    grdAvrRowsDBTableView1);
  SaveUserProps(Self.Caption);
end;

procedure TfrmGjordaAvrakningar.LoadUserPreferences;
var
  LoadNo: String;
  x: Integer;
begin
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
  dmsSystem.LoadGridLayout(ThisUser.UserID, grdPayment.Name,
    grdPaymentDBTableView1);
  dmsSystem.LoadGridLayout(ThisUser.UserID, grdAvrRows.Name,
    grdAvrRowsDBTableView1);
end;

procedure TfrmGjordaAvrakningar.CreateCo(const CompanyNo,
  TypeOfPayment: Integer);
// Var x : Integer ;
begin
  LoadUserProps(Self.Caption);

  cds_Props.Edit;
  cds_PropsVerkNo.AsInteger := ThisUser.CompanyNo;
  cds_Props.Post;
end;

procedure TfrmGjordaAvrakningar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmGjordaAvrakningar.FormCreate(Sender: TObject);
begin
  if (not Assigned(dmArrivingLoads)) then
    dmArrivingLoads := TdmArrivingLoads.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmGjordaAvrakningar', 'dmArrivingLoads');

  if (not Assigned(dm_Avrakning)) then
    dm_Avrakning := Tdm_Avrakning.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmGjordaAvrakningar1', 'dm_Avrakning');

  LoadUserPreferences;
  if ThisUser.UserID = 8 then
    BitBtn4.Visible := True
  else
    BitBtn4.Visible := False;
end;

procedure TfrmGjordaAvrakningar.Paymentrecieved1Click(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    cdsPaymentHead.Edit;
    cdsPaymentHeadSenderStatus.AsInteger := 1;
    cdsPaymentHead.Post;
  End;
end;

procedure TfrmGjordaAvrakningar.Progress1Click(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    cdsPaymentHead.Edit;
    cdsPaymentHeadSenderStatus.AsInteger := 0;
    cdsPaymentHead.Post;
  End;
end;

procedure TfrmGjordaAvrakningar.FormDestroy(Sender: TObject);
begin
  frmGjordaAvrakningar := Nil;

  if dmsSystem.DeleteAssigned('TfrmGjordaAvrakningar', 'dmArrivingLoads') = True
  then
  Begin
    dmArrivingLoads.Free;
    dmArrivingLoads := Nil;
  End;

  if dmsSystem.DeleteAssigned('TfrmGjordaAvrakningar1', 'dm_Avrakning') = True
  then
  Begin
    dm_Avrakning.Free;
    dm_Avrakning := Nil;
  End;
end;

procedure TfrmGjordaAvrakningar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  SaveUserPreferences;
  With dm_Avrakning do
  Begin
    cdsPaymentHead.Active := False;
    // sq_PaymentLoadList.Close ;
    cdsPaymentLoadListII.Active := False;
  End;
  CanClose := True;
end;

procedure TfrmGjordaAvrakningar.acSaveExecute(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    if cdsPaymentHead.State in [dsEdit, dsInsert] then
      cdsPaymentHead.Post;
    if cdsPaymentHead.ChangeCount > 0 then
    Begin
      cdsPaymentHead.ApplyUpdates(0);
      cdsPaymentHead.CommitUpdates;
    End;
  End;
end;

procedure TfrmGjordaAvrakningar.acCancelChangesExecute(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    if cdsPaymentHead.ChangeCount > 0 then
      cdsPaymentHead.CancelUpdates;
  End;
end;

function TfrmGjordaAvrakningar.DataSparat: Boolean;
begin
  With dm_Avrakning do
  Begin
    if cdsPaymentHead.Active = False then
    Begin
      Result := True;
      Exit;
    End;
    Result := True;
    if cdsPaymentHead.State in [dsInsert, dsEdit] then
      Result := False;

    if cdsPaymentHead.ChangeCount > 0 then
      Result := False;
  End;
end;

procedure TfrmGjordaAvrakningar.acSparaUpdate(Sender: TObject);
begin
  acSpara.Enabled := not DataSparat;
end;

procedure TfrmGjordaAvrakningar.acSparaExecute(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    if (AllLoadsAttesterad) or (cdsPaymentHeadSenderStatus.AsInteger = 0) or
      (cdsPaymentHeadSenderStatus.AsInteger = 1) then
    Begin
      if cdsPaymentHead.State in [dsEdit, dsInsert] then
        cdsPaymentHead.Post;
      if cdsPaymentHeadSenderStatus.AsInteger = 1 then
        UpdateAllPricesExecute;
      if cdsPaymentHead.ChangeCount > 0 then
      Begin
        cdsPaymentHead.ApplyUpdates(0);
        cdsPaymentHead.CommitUpdates;
      End;
    End
    else
    Begin
      acAngraAndringarExecute(Sender);
      ShowMessage('Alla rader är inte attesterade av säljaren, kan ej avsluta');
    End;
  End;
end;

function TfrmGjordaAvrakningar.AllLoadsAttesterad: Boolean;
Begin
  With dm_Avrakning do
  Begin
    cdsPaymentLoadListII.Filter := 'Attesterad is null';
    cdsPaymentLoadListII.Filtered := True;
    Try
      if cdsPaymentLoadListII.RecordCount > 0 then
        Result := False
      else
        Result := True;
    Finally
      cdsPaymentLoadListII.Filtered := False;
    End;
  End;
End;

procedure TfrmGjordaAvrakningar.acUppdateraExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crHourGlass; { Show hourglass cursor }

    With dm_Avrakning do
    Begin
      cdsPaymentHead.Active := False;
      cdsPaymentHead.Close;
      cdsPaymentHead.ParamByName('SupplierNo').AsInteger :=
        cds_PropsVerkNo.AsInteger;
      cdsPaymentHead.ParamByName('SenderStatus').AsInteger :=
        cds_PropsStatus.AsInteger;
      cdsPaymentHead.Active := True;
      cdsPaymentLoadListII.Active := False;
      // sq_PaymentLoadList.Close ;
      // sq_PaymentLoadList.Open ;
      cdsPaymentLoadListII.Active := True;
    End;
    grdPayment.SetFocus;
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfrmGjordaAvrakningar.acSkrivUtExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  RepNo: integer;
  Params: TCMParams;
begin
  grdPayment.SetFocus;
  if dm_Avrakning.cdsPaymentHeadPaymentNo.AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin
    RepNo := 557;      // AVRAKNING_ver_II.RPT (557)
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('@PaymentNo', dm_Avrakning.cdsPaymentHeadPaymentNo.AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
    finally
      freeAndNil(Params);
      freeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dm_Avrakning.cdsPaymentHeadPaymentNo.AsInteger;
      FormCRViewReport.CreateCo('AVRAKNING_ver_II.RPT', A);
      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      freeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmGjordaAvrakningar.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmGjordaAvrakningar.acAngraAndringarExecute(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    if cdsPaymentHead.State in [dsEdit, dsInsert] then
      cdsPaymentHead.Cancel;
    if cdsPaymentHead.ChangeCount > 0 then
      cdsPaymentHead.CancelUpdates;
  End;
end;

procedure TfrmGjordaAvrakningar.acAngraAndringarUpdate(Sender: TObject);
begin
  acAngraAndringar.Enabled := not DataSparat;
end;

procedure TfrmGjordaAvrakningar.acDeleteAvrakningExecute(Sender: TObject);
Var
  SupplierNo: Integer;
begin
  if MessageDlg('Vill du ta bort?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
    With dm_Avrakning do
    Begin

      sq_UpdateLoadDtlVal.ParamByName('SetPaymentNo').AsInteger := -1;
      sq_UpdateLoadDtlVal.ParamByName('PaymentNo').AsInteger :=
        cdsPaymentHeadPaymentNo.AsInteger;
      sq_UpdateLoadDtlVal.ParamByName('PaymentType').AsInteger := 0;
      sq_UpdateLoadDtlVal.ParamByName('LoadDtlValPaymentNo').AsInteger :=
        cdsPaymentHeadPaymentNo.AsInteger;
      if cds_PropsVerkNo.AsInteger = ThisUser.CompanyNo then
        SupplierNo := cdsPaymentHeadCustomerNo.AsInteger
      else
        SupplierNo := cds_PropsVerkNo.AsInteger;
      sq_UpdateLoadDtlVal.ParamByName('SupplierNo').AsInteger := SupplierNo;
      sq_UpdateLoadDtlVal.ExecSQL;
      cdsPaymentHead.Delete;

      if dm_Avrakning.cdsPaymentHead.ChangeCount > 0 then
      Begin
        dm_Avrakning.cdsPaymentHead.ApplyUpdates(0);
        dm_Avrakning.cdsPaymentHead.CommitUpdates;
      End;
    End;
end;

procedure TfrmGjordaAvrakningar.acSearchAvrNoExecute(Sender: TObject);
Var
  AvrNo: Integer;
  verk: String;
  VerkNo: Integer;
  fEntryField: TfEntryField;
begin
  With dm_Avrakning do
  Begin
    fEntryField := TfEntryField.Create(Nil);
    fEntryField.Caption := 'Ange LastNr';
    fEntryField.Label1.Caption := 'LastNr:';
    Try
      if fEntryField.ShowModal = mrOK then
      Begin
        AvrNo := GetFraktAvrakningsNoForLoadNo
          (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0), verk, VerkNo);
        ShowMessage('Lastnr ' + Trim(fEntryField.eNoofpkgs.Text) +
          ' finns på avräkningsnr ' + intToStr(AvrNo) + ' verk ' + verk);
      End;
    Finally
      FreeAndNil(fEntryField); // .Free ;
    End;
  End;
end;

procedure TfrmGjordaAvrakningar.acExportToExcelExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
    SaveDialog2.DefaultExt := 'xls';
    SaveDialog2.InitialDir := ExcelDir;
    if SaveDialog2.Execute then
    Begin
      FileName := SaveDialog2.FileName;

      Try
        ExportGridToExcel(FileName, grdPayment, False, False, True, 'xls');
        ShowMessage('Tabell exporterad till Excel fil ' + FileName);
      Except
      End;
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmGjordaAvrakningar.acExportToExcelUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acExportToExcel.Enabled := (cdsPaymentHead.Active) and
      (cdsPaymentHead.RecordCount > 0);
  End;
end;

procedure TfrmGjordaAvrakningar.acDeleteAvrakningUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acDeleteAvrakning.Enabled := (cdsPaymentHead.Active) and
      (cdsPaymentHead.RecordCount > 0) and
      (cdsPaymentHeadSenderStatus.AsInteger < 2) and
      (cdsPaymentHeadPaymentType.AsInteger = 1);
  End;
end;

procedure TfrmGjordaAvrakningar.acCreditLoadExecute(Sender: TObject);
// När en last krediteras läggs de på en ny korrigeringsavräkning som minus, alla värden är lika förutom PaymentType som är
// -1 i stället för 1 som på normala avräkningar.
// Krediterade laster läggs tillbaks till skapa avräkningslistan
// **Efter att dessa laster justerats och godkänts åter i skapa avräkning skall de kopplas till korrigeringsavräkningen
// **om den fortfarande är aktiv, i annat fall läggs den på en "Normal" avräkning.
// Rättelse till ovan **
// Korrigeringsavräkning skall väl bara innehålla krediter? som en normal kredit
// Hur tänkte vi först, jo att man inte krediterade hela lasten utan bara skillnaden mellan kreditlasten och den nya.
// enklare om vi kör som så att korrigeringar är kredit sen om lasten kommer igen så läggs den på en normal avräkning
// *** Ändring:
// När lasten krediteras sätts dbo.LastAvrDtl.CreditToPaymentNo till en etta(1), då kommer den inte med som utlastad på
// vis_lager leveransstatistik


// Hur blir lasten synlig i

Var
  PaymentNo: Integer;
  myRollBack: Boolean;
  Save_Cursor: TCursor;
begin
  if MessageDlg('Vill du kreditera markerade laster?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    With dm_Avrakning do
    Begin
      Save_Cursor := Screen.Cursor;
      Try
        Screen.Cursor := crHourGlass; { Show hourglass cursor }
        GetMarkedLoads;
        if AreLoadsAlreadyCredited = True then
          Exit;
        myRollBack := False;

        // cdsLastAvr.Active      := True ;
        cdsPaymentLoads.Active := True;
        Try
          cdsPayHead.Active := False;
          cdsPayHead.ParamByName('SupplierNo').AsInteger :=
            cdsPaymentHeadSupplierNo.AsInteger;
          cdsPayHead.ParamByName('CustomerNo').AsInteger :=
            cdsPaymentHeadCustomerNo.AsInteger;
          cdsPayHead.ParamByName('TypeOf').AsInteger :=
            cdsPaymentHeadTypeof.AsInteger;
          cdsPayHead.ParamByName('PaymentType').AsInteger := -1;
          cdsPayHead.ParamByName('SenderStatus').AsInteger := 0;
          cdsPayHead.Active := True;
          if cdsPayHeadPaymentNo.AsInteger > 0 then
            PaymentNo := cdsPayHeadPaymentNo.AsInteger
          else
          Begin
            cdsPayHead.Insert;
            cdsPayHeadPaymentType.AsInteger := -1;
            cdsPayHeadPaymentNo.AsInteger :=
              dmsConnector.NextMaxNo('LastAvrHdr');
            PaymentNo := cdsPayHeadPaymentNo.AsInteger;
            cdsPayHeadSenderStatus.AsInteger := 0;
            cdsPayHeadMILL_InvoiceNo.AsString := '';
            cdsPayHeadReceiverStatus.AsInteger := 0;
            cdsPayHeadCreatedUser.AsInteger := ThisUser.UserID;
            cdsPayHeadModifiedUser.AsInteger := ThisUser.UserID;
            cdsPayHeadDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
            cdsPayHeadTypeOf.AsInteger := cdsPaymentHeadTypeof.AsInteger;
            // En försäljning är supplier alltid det verk som är valt som supplier i droplistan.
            cdsPayHeadSupplierNo.AsInteger :=
              cdsPaymentHeadSupplierNo.AsInteger;
            // Är det ett köp är customer det verk som är valt i droplistan.
            cdsPayHeadCustomerNo.AsInteger :=
              cdsPaymentHeadCustomerNo.AsInteger;
            cdsPayHead.Post;

            if cdsPayHead.ApplyUpdates(0) > 0 then
            Begin
              myRollBack := True;
              ShowMessage('Misslyckades med att spara avräkningshuvud');
              Exit;
            End
            else
              cdsPayHead.CommitUpdates;

          End; // if cdsPayHead...

          if myRollBack = False then
          Begin
            Try
              GetMarkedLoads;
              InsertTo_cdsPaymentLoads(cdsPaymentHeadTypeof.AsInteger,
                PaymentNo, cdsPaymentHeadPaymentNo.AsInteger);
              if cdsPaymentLoads.ApplyUpdates(0) > 0 then
                myRollBack := True
              else
                cdsPaymentLoads.CommitUpdates;

              if myRollBack = False then
              Begin
                Set_CreditToPaymentNo_To_One_In_LastAvrDtl
                  (cdsPaymentHeadPaymentNo.AsInteger);
              End;
              // if cdsLastAvr.ApplyUpdates(0)  > 0 then myRollBack := True ;
              Screen.Cursor := crHourGlass; { Show hourglass cursor }
            Except
              ShowMessage('Error lägga laster till avräkning!');
              raise;
            End;
          End;

        Finally
          cdsPayHead.Active := False;
          cdsPaymentLoads.Active := False;
          // cdsLastAvr.Active       := False ;
        End;

      Finally
        Screen.Cursor := Save_Cursor; { Always restore to normal }
        // dm_Avrakning.cdsArrivingPackages.EnableControls ;
      End;
    end; // with
end;

Procedure TfrmGjordaAvrakningar.GetMarkedLoads;
Var
  PaymentType, LoadNo, i, RecIDX: Integer;
  ColIdx: variant;
Begin
  With dm_Avrakning do
  Begin
    mtLoadNos.Active := False;
    mtLoadNos.Active := True;
    grdAvrRowsDBTableView1.BeginUpdate;
    grdAvrRowsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdAvrRowsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        // RecIDx:= grdAvrRowsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
        // RecID:= grdAvrRowsDBTableView1.DataController.GetRecordId(RecIdx) ;

        RecIDX := grdAvrRowsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdAvrRowsDBTableView1.DataController.GetItemByFieldName
          ('VIS_FS').Index;
        LoadNo := grdAvrRowsDBTableView1.DataController.Values[RecIDX, ColIdx];
        ColIdx := grdAvrRowsDBTableView1.DataController.GetItemByFieldName
          ('PaymentType').Index;
        PaymentType := grdAvrRowsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        if not mtLoadNos.FindKey([LoadNo]) then
        Begin
          mtLoadNos.Insert;
          mtLoadNosLoadNo.AsInteger := LoadNo;
          mtLoadNosPaymentType.AsInteger := PaymentType;
          mtLoadNosPaymentNo.AsInteger := cdsPaymentHeadPaymentNo.AsInteger;
          if cds_PropsVerkNo.AsInteger = ThisUser.CompanyNo then
            mtLoadNosSupplierNo.AsInteger := cdsPaymentHeadCustomerNo.AsInteger
          else
            mtLoadNosSupplierNo.AsInteger := cdsPaymentHeadSupplierNo.AsInteger;
          mtLoadNos.Post;
        End;
      End; // for

    Finally
      grdAvrRowsDBTableView1.DataController.EndLocate;
      grdAvrRowsDBTableView1.EndUpdate;
      // Screen.Cursor := Save_Cursor;  { Always restore to normal }
    End;
  End; // With dm_Avrakning do
End; // proc

Procedure TfrmGjordaAvrakningar.InsertTo_cdsPaymentLoads(const TypeOf,
  NewPaymentNo, OldPaymentNo: Integer);
Begin
  With dm_Avrakning do
  Begin
    mtLoadNos.First;
    While not mtLoadNos.Eof do
    Begin
      cdsPaymentLoads.Insert;
      cdsPaymentLoadsPaymentType.AsInteger := -1;
      cdsPaymentLoadsPaymentNo.AsInteger := NewPaymentNo;
      cdsPaymentLoadsLoadNo.AsInteger := mtLoadNosLoadNo.AsInteger;
      cdsPaymentLoadsTypeOf.AsInteger := TypeOf;
      cdsPaymentLoads.Post;

      // Lägg till nya records till LoadDtlVal För Kreditavräkningen
      sq_InsLoadDtlVal.ParamByName('OldPaymentNo').AsInteger := OldPaymentNo;
      sq_InsLoadDtlVal.ParamByName('NewPaymentNo').AsInteger := NewPaymentNo;
      sq_InsLoadDtlVal.ParamByName('NewPaymentType').AsInteger := -1; // Kredit
      sq_InsLoadDtlVal.ParamByName('LoadNo').AsInteger :=
        mtLoadNosLoadNo.AsInteger;
      sq_InsLoadDtlVal.ExecSQL;

      // Lägg till nya records till LoadDtlVal som standard värden för lasten i skapa avräknings listan
      sq_InsLoadDtlVal.ParamByName('OldPaymentNo').AsInteger := OldPaymentNo;
      sq_InsLoadDtlVal.ParamByName('NewPaymentNo').AsInteger := -1;
      sq_InsLoadDtlVal.ParamByName('NewPaymentType').AsInteger := 0;
      sq_InsLoadDtlVal.ParamByName('LoadNo').AsInteger :=
        mtLoadNosLoadNo.AsInteger;
      sq_InsLoadDtlVal.ExecSQL;

      // Uppdatera LoadDtlVal.Credited för den last och PaymentNo som blev krediterad
      sq_UpdCredInLoadDtlVal.ParamByName('OldPaymentNo').AsInteger :=
        OldPaymentNo;
      // sq_InsLoadDtlVal.ParamByName('NewPaymentNo').AsInteger       := -1 ;
      // sq_InsLoadDtlVal.ParamByName('NewPaymentType').AsInteger     := 0 ;
      sq_UpdCredInLoadDtlVal.ParamByName('LoadNo').AsInteger :=
        mtLoadNosLoadNo.AsInteger;
      sq_UpdCredInLoadDtlVal.ExecSQL;

      // cdsLastAvr.Insert ;
      // cdsLastAvrPaymentNo.AsInteger                       := PaymentNo ;
      // cdsLastAvrLoadNo.AsInteger                          := mtLoadNosLoadNo.AsInteger ;
      // cdsLastAvr.Post ;

      sq_DelLastAvr.ParamByName('PaymentNo').AsInteger :=
        mtLoadNosPaymentNo.AsInteger;
      sq_DelLastAvr.ParamByName('LoadNo').AsInteger :=
        mtLoadNosLoadNo.AsInteger;
      sq_DelLastAvr.ExecSQL;
      mtLoadNos.Next;
    End; // while

    // Sätts till mtLoadNos.Active:= False  i proceduren Set_CreditToPaymentNo_To_One_In_LastAvrDtl
    // mtLoadNos.Active:= False ;
  End; // With dm_Avrakning do
End; // proc

Procedure TfrmGjordaAvrakningar.Set_CreditToPaymentNo_To_One_In_LastAvrDtl
  (const OldPaymentNo: Integer);
Begin
  With dm_Avrakning do
  Begin
    mtLoadNos.First;
    While not mtLoadNos.Eof do
    Begin
      Upd_CreditToPaymentNo(OldPaymentNo, mtLoadNosLoadNo.AsInteger);
      mtLoadNos.Next;
    End; // while
    mtLoadNos.Active := False;
  End; // With dm_Avrakning do
End; // proc

Procedure TfrmGjordaAvrakningar.UppdateraPriser;
Var
  SupplierNo: Integer;
Begin
  With dm_Avrakning do
  Begin
    mtLoadNos.First;
    While not mtLoadNos.Eof do
    Begin
      if mtLoadNosPaymentType.AsInteger = 1 then
      Begin
        // om det är ett inköp är vw leverantör, då måste vi byts ut supplierno mot köparens
        if cds_PropsVerkNo.AsInteger = ThisUser.CompanyNo then
          SupplierNo := cdsPaymentHeadCustomerNo.AsInteger
        else
          SupplierNo := cds_PropsVerkNo.AsInteger;
        dmArrivingLoads.GetIntPrice(True {force update}, SupplierNo, mtLoadNosPaymentType.AsInteger,
          mtLoadNosPaymentNo.AsInteger, mtLoadNosLoadNo.AsInteger, False);
      End;
      mtLoadNos.Next;
    End; // while
    mtLoadNos.Active := False;
  End; // With dm_Avrakning do
End; // proc

function TfrmGjordaAvrakningar.AreLoadsAlreadyCredited: Boolean;
Begin
  Result := False;
  With dm_Avrakning do
  Begin
    mtLoadNos.First;
    While not mtLoadNos.Eof do
    Begin
      sq_IsLoadCredited.ParamByName('LoadNo').AsInteger :=
        mtLoadNosLoadNo.AsInteger;
      sq_IsLoadCredited.ParamByName('PaymentType').AsInteger := -1;
      sq_IsLoadCredited.Open;
      if not sq_IsLoadCredited.Eof then
      Begin
        ShowMessage('Lastnr ' + mtLoadNosLoadNo.AsString +
          ' är redan krediterad. Se avräkningnr ' +
          sq_IsLoadCreditedPaymentNo.AsString);
        Result := True;
      End;

      sq_IsLoadCredited.Close;
      mtLoadNos.Next;
    End; // while
    mtLoadNos.Active := False;
  End; // With dm_Avrakning do
End; // proc

procedure TfrmGjordaAvrakningar.acUppdateraPriserExecute(Sender: TObject);
begin
  GetMarkedLoads;
  UppdateraPriser;
  dm_Avrakning.cdsPaymentLoadListII.Refresh;
end;

procedure TfrmGjordaAvrakningar.acUppdateraPriserUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acUppdateraPriser.Enabled := (cdsPaymentHeadSenderStatus.AsInteger < 2) and
      (cdsPaymentLoadListII.Active) and (cdsPaymentLoadListII.RecordCount > 0)
      and (cds_PropsVerkNo.AsInteger <> 0) and (cds_PropsStatus.AsInteger <> 4);
  End;
end;

procedure TfrmGjordaAvrakningar.acCreditLoadUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acCreditLoad.Enabled := (cdsPaymentHeadSenderStatus.AsInteger > 1) and
      (cdsPaymentHeadPaymentType.AsInteger = 1) and
      (cds_PropsVerkNo.AsInteger <> 0) and (cds_PropsStatus.AsInteger <> 4);
  End;
end;

procedure TfrmGjordaAvrakningar.grdAvrRowsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
  Price, Pris1, Belopp: Double;
  Attesterad, CreditToPaymentNo: Integer;
begin
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('VALUE').
    Index] <> null then
    Belopp := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('VALUE').Index];
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pris1').
    Index] <> null then
    Pris1 := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('Pris1').Index];
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Price').
    Index] <> null then
    Price := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('Price').Index];

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('Attesterad').Index] <> null then
    Attesterad := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('Attesterad').Index]
  else
    Attesterad := -1;

  if Belopp < 0 then
    AStyle := cxStyleRed;

  if Price <> Pris1 then
    AStyle := cxStyleclFuchsia;

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('CreditToPaymentNo').Index] <> null then
    CreditToPaymentNo := ARecord.Values
      [TcxGridDBTableView(Sender).GetColumnByFieldName
      ('CreditToPaymentNo').Index];
  if CreditToPaymentNo > 0 then
    AStyle := cxStyleCreditToPaymentNo;

  if Attesterad = -1 then
    AStyle := cxStyleNotAttesterad;

end;

procedure TfrmGjordaAvrakningar.acCancelLoadExecute(Sender: TObject);
begin
  if MessageDlg('Vill du ta bort markerade laster från avräkningen?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    With dm_Avrakning do
    Begin
      cdsPaymentLoads.Active := False;
      cdsPaymentLoads.ParamByName('PaymentNo').AsInteger :=
        cdsPaymentHeadPaymentNo.AsInteger;
      cdsPaymentLoads.Active := True;

      GetMarkedLoads;
      mtLoadNos.First;
      While not mtLoadNos.Eof do
      Begin
        // *************************************************************************************
        // **om lasten är en kredit och tar bort lasten då skall den inte synas i skapa avräkning. men man kanske redan har ändrat på den!
        // **En kredit last får inte tas bort helt enkelt...
        // **har man krediterat fel last kan man lägga lasten oförändrad till korrigeringsfakturan och får då ett noll belopp.
        sq_UpdLoadDtlValSingleLoad.ParamByName('SetPaymentNo').AsInteger := -1;
        sq_UpdLoadDtlValSingleLoad.ParamByName('PaymentNo').AsInteger :=
          mtLoadNosPaymentNo.AsInteger;
        sq_UpdLoadDtlValSingleLoad.ParamByName('PaymentType').AsInteger := 0;
        sq_UpdLoadDtlValSingleLoad.ParamByName('LoadNo').AsInteger :=
          mtLoadNosLoadNo.AsInteger;
        sq_UpdLoadDtlValSingleLoad.ParamByName('SupplierNo').AsInteger :=
          mtLoadNosSupplierNo.AsInteger;
        sq_UpdLoadDtlValSingleLoad.ExecSQL;

        sq_DelLastAvr.ParamByName('PaymentNo').AsInteger :=
          mtLoadNosPaymentNo.AsInteger;
        sq_DelLastAvr.ParamByName('LoadNo').AsInteger :=
          mtLoadNosLoadNo.AsInteger;
        sq_DelLastAvr.ExecSQL;

        mtLoadNos.Next;

        if cdsPaymentLoads.FindKey([mtLoadNosLoadNo.AsInteger]) then
        Begin
          cdsPaymentLoads.Delete;
        End;
      End; // while
      mtLoadNos.Active := False;
      if cdsPaymentLoads.ChangeCount > 0 then
      Begin
        cdsPaymentLoads.ApplyUpdates(0);
        cdsPaymentLoads.CommitUpdates;
      End;
      cdsPaymentLoads.Active := False;
      dm_Avrakning.cdsPaymentLoadListII.Refresh;
    End; // With dm_Avrakning do
end;

procedure TfrmGjordaAvrakningar.acCancelLoadUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acCancelLoad.Enabled := (cdsPaymentHeadSenderStatus.AsInteger < 2) and
      (cdsPaymentLoadListIIPaymentType.AsInteger = 1) and
      (cdsPaymentHeadPaymentType.AsInteger = 1);
  End;
end;

procedure TfrmGjordaAvrakningar.Action1Execute(Sender: TObject);
begin
  GetMarkedLoads;
  UppdateraPriser;
  dm_Avrakning.cdsPaymentLoadListII.Refresh;
end;

procedure TfrmGjordaAvrakningar.acUpdateAllPricesExecute(Sender: TObject);
begin
  if MessageDlg('Är du säker?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    UpdateAllPricesExecute;
  End;
end;

procedure TfrmGjordaAvrakningar.UpdateAllPricesExecute;
var
  fWait: TfWait;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    fWait := TfWait.Create(nil);
    Try
      fWait.Show;
      Application.ProcessMessages;
      grdAvrRowsDBTableView1.Controller.SelectAll;
      GetMarkedLoads;
      UppdateraPriser;
      grdAvrRowsDBTableView1.Controller.ClearSelection;
      dm_Avrakning.cdsPaymentLoadListII.Refresh;
    Finally
      FreeAndNil(fWait);
    End;
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfrmGjordaAvrakningar.acOpenLoadExecute(Sender: TObject);
Var
  LSupplierNo: Integer;
begin
  With dm_Avrakning do
  Begin
    // dmcOrder.SupplierNo är valt företag i droplistan
    // Endast vidawood användare kan välja ett annat än sitt eget företag
    // Väljer en vida wood användare ett annat företag används LO.supplierNo som supplier till last form.
    if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
      LSupplierNo := cdsPaymentHeadSupplierNo.AsInteger
    else
      LSupplierNo := cdsPaymentHeadSupplierNo.AsInteger;


    // if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then
    // Exit ;

    LockWindowUpdate(grdAvrRows.Handle);
    try
      // LoadBM := grdLoads.DataSource.DataSet.Bookmark;
      try
        with TfLoadEntrySSP.CreateWithExistingLoad(Self,
          // om användaren är vida wood skall supplierno vara LOens supplierno
          // då är det ingen risk att fel lager väljs
          // dmcOrder.SupplierNo,
          LSupplierNo, cdsPaymentLoadListIIVIS_FS.AsInteger, 0, 0, 0,
          cdsPaymentHeadSupplierNo.AsInteger, 0
          // grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
          // grdLODBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger,
          // grdLODBTableView1.DataController.DataSet.FieldByName('LoadingLocationNo').AsInteger,
          // grdLODBTableView1.DataController.DataSet.FieldByName('CSH_CustomerNo').AsInteger,
          // grdFSDBTableView1.DataController.DataSet.FieldByName('SupplierNo').AsInteger
          ) do
          try
            ShowModal;
            Application.ProcessMessages;

          finally
            Free
          end;
      finally
        try
          // grdLoads.DataSource.DataSet.Bookmark := LoadBM;
        except
          on E: Exception do
            { Nothing };
        end;
      end;
    finally
      LockWindowUpdate(0);
    end;
  End; // with
end;

procedure TfrmGjordaAvrakningar.acOpenLoadUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acOpenLoad.Enabled := (cdsPaymentLoadListII.Active) and
      (cdsPaymentLoadListII.RecordCount > 0);
  End;
end;

procedure TfrmGjordaAvrakningar.acUpdateAllPricesUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acUpdateAllPrices.Enabled := (cdsPaymentLoadListII.Active) and
      (cdsPaymentLoadListII.RecordCount > 0) and
      (cds_PropsVerkNo.AsInteger <> 0) and (cds_PropsStatus.AsInteger <> 4);
  End; // With dm_Avrakning do
end;

procedure TfrmGjordaAvrakningar.LoadUserProps(const Form: String);
Var
  x: Integer;
  SalesGroup, ClientNo, MarknadNo, RegionNo: Integer;
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if cds_Props.Eof then
  Begin
    cds_Props.Insert;
    cds_Props.Post;
  End;
End;

procedure TfrmGjordaAvrakningar.SaveUserProps(const Form: String);
Var
  x: Integer;
Begin
  // cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  // cds_Props.ParamByName('Form').AsString    := Form ;
  // cds_Props.Active:= True ;
  if cds_Props.Eof then
  Begin
    cds_Props.Insert;
    cds_PropsForm.AsString := Form;
    cds_PropsUserID.AsInteger := ThisUser.UserID;
  End;
  // else
  // cds_Props.Edit ;
  if cds_Props.State in [dsEdit, dsInsert] then
    cds_Props.Post;

  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;

procedure TfrmGjordaAvrakningar.cds_PropsVerkNoChange(Sender: TField);
begin
  With dm_Avrakning do
  Begin
    if cdsPaymentHead.Active then
      cdsPaymentHead.Active := False;
    cdsPaymentLoadListII.Active := False;
  End;
end;

procedure TfrmGjordaAvrakningar.cds_PropsStatusChange(Sender: TField);
begin
  With dm_Avrakning do
  Begin
    if cdsPaymentHead.Active then
      cdsPaymentHead.Active := False;
    cdsPaymentLoadListII.Active := False;
  End;
end;

procedure TfrmGjordaAvrakningar.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsForm.AsString := Self.Caption;
end;

end.
