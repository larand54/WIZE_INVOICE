unit UnitBookingForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  db, StdCtrls, ExtCtrls, dxBar, dxBarExtItems,
  Buttons, ImgList, SqlTimSt, ActnList, Menus,
  cxLookAndFeels, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeelPainters, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtons, cxMemo, cxRichEdit,
  cxSplitter, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, System.Actions, siComp,
  siLngLnk;

type
  TFormBookingForm = class(TForm)
    PanelTop: TPanel;
    PanelBottom: TPanel;
    PanelConfirm: TPanel;
    bbNewCarrier: TBitBtn;
    ImageList1: TImageList;
    ActionList1: TActionList;
    acSave: TAction;
    acPrint: TAction;
    acClose: TAction;
    acChangeLayout: TAction;
    PopupMenu1: TPopupMenu;
    ndralayout1: TMenuItem;
    cxLookAndFeelController1: TcxLookAndFeelController;
    grdLoRowsDBTableView1: TcxGridDBTableView;
    grdLoRowsLevel1: TcxGridLevel;
    grdLoRows: TcxGrid;
    grdLoRowsDBTableView1REFERENCE: TcxGridDBColumn;
    grdLoRowsDBTableView1DEL_ADDRESS: TcxGridDBColumn;
    grdLoRowsDBTableView1SUPPLIER: TcxGridDBColumn;
    grdLoRowsDBTableView1LOADING_LOCATION: TcxGridDBColumn;
    grdLoRowsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdLoRowsDBTableView1LENGTH_DESCRIPTION: TcxGridDBColumn;
    grdLoRowsDBTableView1NOOFUNITS: TcxGridDBColumn;
    grdLoRowsDBTableView1VOLUNIT: TcxGridDBColumn;
    grdLoRowsDBTableView1ACTM3: TcxGridDBColumn;
    grdLoRowsDBTableView1ADDRESS_NO: TcxGridDBColumn;
    grdLoRowsDBTableView1CITY_NO: TcxGridDBColumn;
    grdLoRowsDBTableView1CITY_NAME: TcxGridDBColumn;
    grdLoRowsDBTableView1POSTALCODE: TcxGridDBColumn;
    grdLoRowsDBTableView1KR_Ref: TcxGridDBColumn;
    acNewVesselName: TAction;
    acSetETDandSaveAndExit: TAction;
    PopupMenu2: TPopupMenu;
    Fltvljare1: TMenuItem;
    StngF121: TMenuItem;
    SkrivutF81: TMenuItem;
    SparaF31: TMenuItem;
    SttETDdagensdatumstngF111: TMenuItem;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    eBookingNo: TcxDBTextEdit;
    eShippingPlanNo: TcxDBTextEdit;
    eReadyDate: TcxDBTextEdit;
    leDelTerms: TcxDBLookupComboBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    ePanicNote: TcxDBTextEdit;
    lcShipper: TcxDBLookupComboBox;
    eFreightCost: TcxDBTextEdit;
    lcCurrency: TcxDBLookupComboBox;
    lcFreightVolUnit: TcxDBLookupComboBox;
    lcTypeofbooking: TcxDBLookupComboBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    eShippingCompanyBookingID: TcxDBTextEdit;
    eTrpID: TcxDBTextEdit;
    eETD: TcxDBDateEdit;
    eETA: TcxDBDateEdit;
    deShipperShipDate: TcxDBDateEdit;
    teOrderNoText: TcxDBTextEdit;
    Label42: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label43: TLabel;
    trCustomer: TcxDBTextEdit;
    Label44: TLabel;
    teAgent: TcxDBTextEdit;
    Label45: TLabel;
    teETDYearWeek: TcxDBTextEdit;
    teETDWeekEnd: TcxDBTextEdit;
    Label46: TLabel;
    cbvessel: TcxDBComboBox;
    PanelOK: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    BitBtn1: TBitBtn;
    cxButton2: TcxButton;
    acSetETD: TAction;
    PanelFixedNotes: TPanel;
    mNoteForLoadSheet: TcxDBMemo;
    Label19: TLabel;
    mInvoiceText: TcxDBMemo;
    Label18: TLabel;
    Label17: TLabel;
    mLOText: TcxDBMemo;
    cxSplitter1: TcxSplitter;
    PanelTEXT: TPanel;
    grdOrderDocument: TcxGrid;
    grdOrderDocumentDBTableView1: TcxGridDBTableView;
    grdOrderDocumentDBTableView1DocText: TcxGridDBColumn;
    grdOrderDocumentLevel1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    siLangLinked_FormBookingForm: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acChangeLayoutExecute(Sender: TObject);
    procedure acNewVesselNameExecute(Sender: TObject);
    procedure cbvesselExit(Sender: TObject);
    procedure acSetETDandSaveAndExitExecute(Sender: TObject);
    procedure acSetETDExecute(Sender: TObject);
  private
    { Private declarations }
    OrderType: Integer;
    procedure Save;
    procedure SetETDDate;
    procedure CheckSaveVessel;
    Function DataSaved: Boolean;
  public
    { Public declarations }
    BookingNo: Integer;
    ReadMeOnly: Boolean;
    procedure LoadVessels;
    procedure CreateCo(const ShippingPlanNo: Integer);
  end;

  // var FormBookingForm: TFormBookingForm;

implementation

uses VidaConst,
  VidaUser,
  dmBooking, dmsDataConn, UnitCarrier, UnitCRViewReport, dmsVidaSystem,
  dmsVidaContact, udmLanguage, uReport, uReportController;

{$R *.dfm}

Function TFormBookingForm.DataSaved: Boolean;
Begin
  Result := True;
  with dm_Booking do
  Begin
    if cdsVoyageInvoice.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsVoyageInvoice.ChangeCount > 0 then
      Result := False;

    if cdsBookingInvoice.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsBookingInvoice.ChangeCount > 0 then
      Result := False;
  End;
End;

procedure TFormBookingForm.CreateCo(const ShippingPlanNo : Integer);
begin
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoRows.Name,
    grdLoRowsDBTableView1);

  with dm_Booking do
  Begin
    cdsVoyageInvoice.Active := True;

    cdsAvropInfo.Active := False;
    cdsAvropInfo.ParamByName('ShippingPlanNo').AsInteger := ShippingPlanNo;
    cdsAvropInfo.Active := True;
    OrderType := cdsAvropInfoOrderType.AsInteger;

    cdsBookingProducts.Active := False;
    cdsBookingProducts.ParamByName('ShippingPlanNo').AsInteger :=
      ShippingPlanNo;
    cdsBookingProducts.Active := True;

    cdsBookingInvoice.Active := False;
    cdsBookingInvoice.ParamByName('ShippingPlanNo').AsInteger    := ShippingPlanNo;
    cdsBookingInvoice.ParamByName('InternalInvoiceNo').AsInteger := dm_Booking.InternalInvoiceNo ;
    cdsBookingInvoice.Active := True;

    LoadVessels;

    if not cdsBookingInvoice.Eof then
    Begin
      // Existing booking found
      cdsVoyageInvoice.Active := False;
      cdsVoyageInvoice.ParamByName('VoyageNo').AsInteger           := cdsBookingInvoiceBookingNo.AsInteger ;

      cdsVoyageInvoice.ParamByName('InternalInvoiceNo').AsInteger  := dm_Booking.InternalInvoiceNo ;
      cdsVoyageInvoice.Active := True;

      if (cdsVoyageInvoice.RecordCount = 0) or
        ((cdsVoyageInvoice.RecordCount = 1) and (cdsVoyageInvoiceVoyageno.AsInteger <>
        cdsBookingInvoiceBookingNo.AsInteger)) then
      Begin
        cdsVoyageInvoice.Insert;
        // cdsVoyageVoyageNo.AsInteger     := dmsConnector.NextMaxNo('Voyage') ;
        cdsVoyageInvoiceCarrierNo.AsInteger := 0;
        // cdsVoyageCreatedUser.AsInteger:= ThisUser.UserID ;
        // cdsVoyageModifiedUser.AsInteger:= ThisUser.UserID ;
        // cdsVoyageDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
        cdsVoyageInvoice.Post;

        // cdsBooking.Edit ;
        // cdsBookingVoyageNo.AsInteger:= cdsVoyageVoyageNo.AsInteger ;
        // cdsBooking.Post ;

      End
      else
      Begin
        // deETD.Date:= SQLTimeStampToDateTime(cdsVoyageETD.AsSQLTimeStamp) ;
      End;
    End // if cdsVoyage.RecordCount = 0 then
    else
    Begin
      cdsBookingInvoice.Insert;
      cdsBookingInvoiceBookingNo.AsInteger         := dmsConnector.NextMaxNo('Booking');
      cdsBookingInvoiceInternalInvoiceNo.AsInteger := dm_Booking.InternalInvoiceNo ;
      cdsBookingInvoiceShippingPlanNo.AsInteger    := ShippingPlanNo;
      cdsBookingInvoiceLOText.AsVariant            := cdsAvropInfoLOText.AsVariant;
      cdsBookingInvoiceInvoiceText.AsVariant       := cdsAvropInfoInvoiceText.AsVariant;
      cdsBookingInvoiceNoteForLoadSheet.AsVariant  :=
        cdsAvropInfoNoteForLoadSheet.AsVariant;
      cdsBookingInvoiceVoyageNo.AsInteger          := cdsBookingInvoiceBookingNo.AsInteger;
      cdsBookingInvoice.Post;

      cdsVoyageInvoice.Insert;
      // cdsVoyageVoyageNo.AsInteger          := dmsConnector.NextMaxNo('Voyage') ;
      cdsVoyageInvoiceCarrierNo.AsInteger := 0;
      // cdsVoyageCreatedUser.AsInteger       := ThisUser.UserID ;
      // cdsVoyageModifiedUser.AsInteger      := ThisUser.UserID ;
      // cdsVoyageDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
      cdsVoyageInvoice.Post;
    End;
  End; // with
end;

procedure TFormBookingForm.FormCreate(Sender: TObject);
begin
  BookingNo := -1;
  with dm_Booking, dmsContact, dmsSystem do
  Begin
    cdsDelTerms.Active  := False;
    cdsDelTerms.Active  := True;

    cds_Currency.Active := True;
    cdsPriceUnit.Active := True;

    cdsCarrier.Active     := True;
    cdsBookingType.Active := True;
    cds_volunit.Active    := True;
    cdsCurrency.Active    := True;

    cdsBookingInvoice.Active   := True;
    cdsShippers.Active  := True;
    cdsVoyageInvoice.Active    := True;
  End;

  ReadMeOnly := False;
end;

procedure TFormBookingForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  with dm_Booking do
  Begin
    if DataSaved = False then
      if MessageDlg('Data ej sparad, vill du avsluta?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
        CanClose := True
      else
        CanClose := False;
  End; // with
end;

procedure TFormBookingForm.FormShow(Sender: TObject);
begin
  if ReadMeOnly = True then
  Begin
    PanelTop.Enabled := False;
    mLOText.Properties.ReadOnly := True;
    mInvoiceText.Properties.ReadOnly := True;
    mNoteForLoadSheet.Properties.ReadOnly := True;
    PanelConfirm.Enabled := False;
  end;
end;

procedure TFormBookingForm.acSaveExecute(Sender: TObject);
begin
  Save;
end;

procedure TFormBookingForm.Save;
begin
  with dm_Booking do
  Begin
    CheckSaveVessel;

    if cdsBookingInvoice.State in [dsEdit, dsInsert] then
      cdsBookingInvoice.Post;
    if cdsBookingInvoice.ChangeCount > 0 then
    Begin
      cdsBookingInvoice.ApplyUpdates(0);
      cdsBookingInvoice.CommitUpdates;
    End;

    if cdsVoyageInvoice.State in [dsEdit, dsInsert] then
      cdsVoyageInvoice.Post;
    if cdsVoyageInvoice.ChangeCount > 0 then
    Begin
      cdsVoyageInvoice.ApplyUpdates(0);
      cdsVoyageInvoice.CommitUpdates;
    End;

    BookingNo := cdsBookingInvoiceBookingNo.AsInteger;
  End;
end;

procedure TFormBookingForm.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormBookingForm.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not DataSaved;
end;

procedure TFormBookingForm.acPrintExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  if uReportController.useFR then begin
    if OrderType = 0 then
      RepNo := 22 // TRP_ORDER_NOTE.fr3
    else
      RepNo := 23; // TRP_ORDER_INKOP_NOTE.fr3;
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('@ShippingPlanNo',
        dm_Booking.cdsBookingInvoiceShippingPlanNo.AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dm_Booking.cdsBookingInvoiceShippingPlanNo.AsInteger;
      if OrderType = 0 then
        FormCRViewReport.CreateCo('TRP_ORDER_NOTE.RPT', A)
      else
        FormCRViewReport.CreateCo('trp_order_inkop_NOTE.RPT', A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TFormBookingForm.FormDestroy(Sender: TObject);
begin
  with dm_Booking, dmsContact, dmsSystem do
  Begin
    cdsCarrier.Active := False;
    cdsBookingType.Active := False;
    cds_volunit.Active := False;
    cdsCurrency.Active := False;

    cdsBookingInvoice.Active := False;
    cdsShippers.Active := False;
    cdsVoyageInvoice.Active := False;
    cdsAvropInfo.Active := False;
    dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoRows.Name,
      grdLoRowsDBTableView1);
  End;
end;

procedure TFormBookingForm.acChangeLayoutExecute(Sender: TObject);
begin
  if grdLoRows.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLoRows.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TFormBookingForm.acNewVesselNameExecute(Sender: TObject);
Var
  FormCarrier: TFormCarrier;
begin
  FormCarrier := TFormCarrier.Create(Nil);
  Try
    FormCarrier.ShowModal;
    with dm_Booking do
    Begin
      LoadVessels;
    End;
  Finally
    FreeAndNil(FormCarrier); // .Free ;
  End;
end;

procedure TFormBookingForm.LoadVessels;
Begin
  With dmsSystem do
  Begin
    cbvessel.Properties.Items.Clear;
    with cdsCarrier do
    begin
      // DisableControls;
      if not Active then
        Active := True;
      // Try
      First;
      while not Eof do
      begin
        cbvessel.Properties.Items.Add(FieldByName('CarrierName').AsString);
        Next;
      end;
      // Finally
      // Active  := False ;
      // End ;
      // EnableControls;
    end;
  End; // With dmsSystem do
End;

procedure TFormBookingForm.cbvesselExit(Sender: TObject);
begin
  CheckSaveVessel;
end;

procedure TFormBookingForm.CheckSaveVessel;
Var
  CarrierNo: Integer;
begin
  with dm_Booking do
  Begin
    if Length(Trim(cbvessel.text)) > 0 then
    Begin
      CarrierNo := dmsSystem.GetCarrierNo(cbvessel.text);
      if cdsVoyageInvoice.State = dsBrowse then
        cdsVoyageInvoice.Edit;
      cdsVoyageInvoiceCarrierNo.AsInteger := CarrierNo;
      cdsVoyageInvoice.Post;
    End // if Length(Trim(cbvessel.text)) > 0 then
    else
    Begin
      cdsVoyageInvoice.Edit;
      cdsVoyageInvoiceCarrierNo.Clear;
      cdsVoyageInvoice.Post;
    End;
  End; // with dm_Booking do
end;

procedure TFormBookingForm.SetETDDate;
Begin
  with dm_Booking do
  Begin
    if (cdsVoyageInvoice.Active) and (cdsVoyageInvoice.RecordCount > 0) then
    Begin
      if cdsVoyageInvoice.State in [dsBrowse] then
        cdsVoyageInvoice.Edit;
      cdsVoyageInvoiceETD.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
      cdsVoyageInvoice.Post;
    End;
  End; // With
End;

procedure TFormBookingForm.acSetETDandSaveAndExitExecute(Sender: TObject);
begin
  SetETDDate;
  Save;
  ModalResult := mrOK;
end;

procedure TFormBookingForm.acSetETDExecute(Sender: TObject);
begin
  SetETDDate;
end;

end.
