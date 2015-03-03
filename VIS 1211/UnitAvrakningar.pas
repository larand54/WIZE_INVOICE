unit UnitAvrakningar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, dxBar, dxBarExtItems,
  StdCtrls, Buttons, DB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ActnList, cxTextEdit, cxLabel, SqlTimSt,
  Menus, cxImageComboBox, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxSplitter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxSSLnk, dxSkinsdxRibbonPainter, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, System.Actions, siComp,
  siLngLnk;

type
  TfrmAvrakningar = class(TForm)
    dxBarManager1: TdxBarManager;
    lbPrint: TdxBarLargeButton;
    lbExit: TdxBarLargeButton;
    lbDeleteAvrakning: TdxBarLargeButton;
    ImageList1: TImageList;
    ImageList2: TImageList;
    lbRefresh: TdxBarLargeButton;
    lbApplyChanges: TdxBarLargeButton;
    lbCancelChanges: TdxBarLargeButton;
    ButtonPanel: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    bcVerk: TdxBarCombo;
    lbFindAvrNo: TdxBarLargeButton;
    lbSearchAvrNr: TdxBarLargeButton;
    ActionList1: TActionList;
    acSave: TAction;
    acCancelChanges: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    acPrintLoads: TAction;
    acAddRow: TAction;
    acRemoveRow: TAction;
    acClose: TAction;
    acRemoveAvr: TAction;
    acPrintAvr: TAction;
    acSearchLastnr: TAction;
    acSearchAvrNr: TAction;
    PopupMenu1: TPopupMenu;
    Lggtillrad1: TMenuItem;
    ngraF41: TMenuItem;
    StngF121: TMenuItem;
    SkrivutF81: TMenuItem;
    abortF51: TMenuItem;
    abortrad1: TMenuItem;
    SparaF31: TMenuItem;
    SkavrnrShiftF71: TMenuItem;
    SklastnrF71: TMenuItem;
    acRefresh: TAction;
    UppdateraF61: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    grdFraktAvrDBTableView1: TcxGridDBTableView;
    grdFraktAvrLevel1: TcxGridLevel;
    grdFraktAvr: TcxGrid;
    grdFraktAvrDBTableView1AvrakningsNo: TcxGridDBColumn;
    grdFraktAvrDBTableView1LocalShipperNo: TcxGridDBColumn;
    grdFraktAvrDBTableView1AvrakningsDate: TcxGridDBColumn;
    grdFraktAvrDBTableView1CreatedUser: TcxGridDBColumn;
    grdFraktAvrDBTableView1ModifiedUser: TcxGridDBColumn;
    grdFraktAvrDBTableView1DateCreated: TcxGridDBColumn;
    grdFraktAvrDBTableView1DateModified: TcxGridDBColumn;
    grdFraktAvrDBTableView1Note: TcxGridDBColumn;
    grdFraktAvrDBTableView1Status: TcxGridDBColumn;
    grdFraktAvrDBTableView1ShippersInvoiceNo: TcxGridDBColumn;
    grdFraktAvrDBTableView1SHIPPER: TcxGridDBColumn;
    grdFraktAvrDBTableView1ANVANDARE: TcxGridDBColumn;
    grdFraktAvrDBTableView1VERK: TcxGridDBColumn;
    grdFraktAvrDBTableView1VerkNo: TcxGridDBColumn;
    Panel6: TPanel;
    grdLoads: TcxGrid;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsDBTableView1AvrakningsNo: TcxGridDBColumn;
    grdLoadsDBTableView1FS: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_ID: TcxGridDBColumn;
    grdLoadsDBTableView1LOADEDDATE: TcxGridDBColumn;
    grdLoadsDBTableView1SHIPPER: TcxGridDBColumn;
    grdLoadsDBTableView1FROM_PLACE: TcxGridDBColumn;
    grdLoadsDBTableView1DESTINATION: TcxGridDBColumn;
    grdLoadsDBTableView1LoadNo: TcxGridDBColumn;
    grdLoadsDBTableView1M3_NET: TcxGridDBColumn;
    grdLoadsDBTableView1PricePerM3_NET: TcxGridDBColumn;
    grdLoadsDBTableView1TotalSUM: TcxGridDBColumn;
    grdLoadsDBTableView1DateModified: TcxGridDBColumn;
    grdLoadsDBTableView1ModifiedUser: TcxGridDBColumn;
    grdLoadsDBTableView1Note: TcxGridDBColumn;
    grdLoadsLevel1: TcxGridLevel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cxSplitter1: TcxSplitter;
    acSearch: TAction;
    SkF71: TMenuItem;
    ds_Props: TDataSource;
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
    lcVerk: TcxDBLookupComboBox;
    icStatus: TcxDBImageComboBox;
    siLangLinked_frmAvrakningar: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acPrintLoadsExecute(Sender: TObject);
    procedure acAddRowExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acRemoveAvrExecute(Sender: TObject);
    procedure acPrintAvrExecute(Sender: TObject);
    procedure acSearchLastnrExecute(Sender: TObject);
    procedure acSearchAvrNrExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure cds_PropsVerkNoChange(Sender: TField);
    procedure cds_PropsStatusChange(Sender: TField);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SaveUserProps(const Form: String);
    procedure LoadUserProps(const Form: String);
    procedure BuildSQL(Const AvrakningsNr: Integer);
    function DataSparat: Boolean;
    function GetNextFreeLoadNo: Integer;
  public
    { Public declarations }
    constructor CreateCo(CompanyNo: Integer);
  end;

var
  frmAvrakningar: TfrmAvrakningar;

implementation

uses UnitdmModule1, UnitCRViewReport, VidaUser, dmsVidaContact, VidaConst,
  uEntryField, dmsDataConn, dmsVidaSystem, uFreightAvrSearch,
  dmc_UserProps;

{$R *.dfm}

function TfrmAvrakningar.DataSparat: Boolean;
begin
  Result := True;
  With dmModule1 do
  Begin
    if cds_LoadFreightCostHeader2.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_LoadFreightCostHeader2.ChangeCount > 0 then
      Result := False;

    if cds_LoadFreightCostDetails.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_LoadFreightCostDetails.ChangeCount > 0 then
      Result := False;
  End;
end;

constructor TfrmAvrakningar.CreateCo(CompanyNo: Integer);
var
  x: Integer;
begin

  LoadUserProps(Self.Caption);

  cds_Props.Edit;
  if cds_PropsStatus.IsNull then
    cds_PropsStatus.AsInteger := 0;
  cds_PropsVerkNo.AsInteger := Thisuser.CompanyNo;
  cds_Props.Post;

  With dmModule1 do
  Begin
    cds_LoadFreightCostHeader2.Filter := 'STATUS = ' + cds_PropsStatus.AsString;
    cds_LoadFreightCostHeader2.Filtered := True;
  End;
end;

procedure TfrmAvrakningar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmAvrakningar.FormDestroy(Sender: TObject);
begin
  With dmModule1 do
  Begin
    cds_LoadFreightCostHeader2.Active := False;
    cds_LoadFreightCostDetails.Active := False;
  End;
  frmAvrakningar := NIL;
end;

procedure TfrmAvrakningar.BuildSQL(Const AvrakningsNr: Integer);
Var
  Save_Cursor: TCursor;
begin
  if cds_PropsStatus.IsNull then
  Begin
    ShowMessage('Välj en status');
    Exit;
  End;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Try
    With dmModule1.cds_LoadFreightCostHeader2 do
    Begin
      dmModule1.cds_LoadFreightCostDetails.Active := False;
      dmModule1.cds_LoadFreightCostHeader2.Active := False;
      SQL.Clear;
      SQL.Add('Select LFCH.* , C.clientname as SHIPPER, ve.ClientName AS VERK, usr.UserName AS ANVANDARE');
      SQL.Add('FROM');
      SQL.Add('dbo.LoadFreightCostHeader LFCH');
      SQL.Add('Left Outer Join dbo.Client C On C.ClientNo = LFCH.LocalShipperNo');
      SQL.Add('Left Outer Join dbo.Client ve On ve.ClientNo = LFCH.VerkNo');
      SQL.Add('Left Outer Join dbo.Users usr on usr.UserID = LFCH.CreatedUser');

      if AvrakningsNr <> -1 then
        SQL.Add('WHERE LFCH.AvrakningsNo = ' + IntToStr(AvrakningsNr))
      else if cds_PropsVerkNo.AsInteger > 0 then
        if dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) <> cds_PropsVerkNo.AsInteger then // VIDA_WOOD_COMPANY_NO            f <> cds_PropsVerkNo.AsInteger then
          SQL.Add('WHERE LFCH.VerkNo = ' + cds_PropsVerkNo.AsString);

      // SQL.SaveToFile('sq_LoadFreightCostHeader2.txt') ;

      if AvrakningsNr <> -1 then
        dmModule1.cds_LoadFreightCostHeader2.Filtered := False
      else
      Begin
        dmModule1.cds_LoadFreightCostHeader2.Filtered := True;
        dmModule1.cds_LoadFreightCostHeader2.Filter := 'STATUS = ' +
          cds_PropsStatus.AsString;
      End;

      dmModule1.cds_LoadFreightCostHeader2.Active := True;
      dmModule1.cds_LoadFreightCostDetails.Active := True;
    End; // with
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
End;

procedure TfrmAvrakningar.FormCreate(Sender: TObject);
begin
  if dmsSystem.LoadGridLayout(Thisuser.UserID,
    Self.Name + '/' + grdLoadsDBTableView1.Name, grdLoadsDBTableView1) = False
  then;
  if dmsSystem.LoadGridLayout(Thisuser.UserID,
    Self.Name + '/' + grdFraktAvrDBTableView1.Name, grdFraktAvrDBTableView1) = False
  then;
end;

procedure TfrmAvrakningar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if DataSparat = False then
    if MessageDlg('Ändringar är inte sparade, vill du stänga?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    Begin
      CanClose := True;
    End
    else
      CanClose := False;
  if CanClose then
  Begin
    dmsSystem.StoreGridLayout(Thisuser.UserID,
      Self.Name + '/' + grdLoadsDBTableView1.Name, grdLoadsDBTableView1);
    dmsSystem.StoreGridLayout(Thisuser.UserID,
      Self.Name + '/' + grdFraktAvrDBTableView1.Name, grdFraktAvrDBTableView1);
    SaveUserProps(Self.Caption);
  End;
end;

procedure TfrmAvrakningar.acSaveExecute(Sender: TObject);
begin
  if MessageDlg('Är du säker du vill spara de ändringar du gjort?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    With dmModule1 do
    Begin
      if cds_LoadFreightCostHeader2.State in [dsEdit, dsInsert] then
        cds_LoadFreightCostHeader2.Post;
      if cds_LoadFreightCostHeader2.ChangeCount > 0 then
      Begin
        cds_LoadFreightCostHeader2.ApplyUpdates(0);
        cds_LoadFreightCostHeader2.CommitUpdates;
      End;
      if cds_LoadFreightCostDetails.State in [dsEdit, dsInsert] then
        cds_LoadFreightCostDetails.Post;
      if cds_LoadFreightCostDetails.ChangeCount > 0 then
      Begin
        cds_LoadFreightCostDetails.ApplyUpdates(0);
        cds_LoadFreightCostDetails.CommitUpdates;
      End;
    End;
  End;
end;

procedure TfrmAvrakningar.acCancelChangesExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    if cds_LoadFreightCostHeader2.State in [dsEdit, dsInsert] then
      cds_LoadFreightCostHeader2.Cancel;
    if cds_LoadFreightCostHeader2.ChangeCount > 0 then
    Begin
      cds_LoadFreightCostHeader2.CancelUpdates;
    End;

    if cds_LoadFreightCostDetails.State in [dsEdit, dsInsert] then
      cds_LoadFreightCostDetails.Cancel;
    if cds_LoadFreightCostDetails.ChangeCount > 0 then
      cds_LoadFreightCostDetails.CancelUpdates;

    if (cds_LoadFreightCostDetails.ChangeCount = 0) AND
      (cds_LoadFreightCostHeader2.ChangeCount = 0) then
    Begin
      lbApplyChanges.Enabled := False;
      lbCancelChanges.Enabled := False;
    End;
  End;
end;

procedure TfrmAvrakningar.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not DataSparat;
end;

procedure TfrmAvrakningar.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := not DataSparat;
end;

procedure TfrmAvrakningar.acPrintLoadsExecute(Sender: TObject);
begin
  with dmModule1 do
  Begin
    // dxComponentPrinter1.PrintTitle:= 'AvräkningNr: '+cds_LoadFreightCostHeader2AvrakningsNo.AsString ;
    dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear;
    dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear;
    dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add
      ('Avräkningsnr: ' + cds_LoadFreightCostHeader2AvrakningsNo.AsString);
    dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add
      ('Avräknad: ' + SQLTimeStampToStr('yyyy-mm-dd',
      cds_LoadFreightCostHeader2AvrakningsDate.AsSQLTimeStamp));
    dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add
      ('Fakturanr: ' + cds_LoadFreightCostHeader2ShippersInvoiceNo.AsString);
    dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add
      ('Fraktförare: ' + cds_LoadFreightCostHeader2SHIPPER.AsString);

    dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  End;
end;

procedure TfrmAvrakningar.acAddRowExecute(Sender: TObject);
Var
  LoadNo: Integer;
begin
  with dmModule1 do
  Begin
    LoadNo := GetNextFreeLoadNo;
    if LoadNo < 0 then
    // if not cds_LoadFreightCostDetails.Locate('LoadNo', -1, []) then
    Begin
      cds_LoadFreightCostDetails.Insert;
      cds_LoadFreightCostDetailsLoadNo.AsInteger := LoadNo;
    End
    else
      ShowMessage
        ('Fler extrarader kan inte läggas till eftersom max antal extrarader(5) är uppnådd.');
  End;
end;

function TfrmAvrakningar.GetNextFreeLoadNo: Integer;
Var
  x: Integer;
begin
  with dmModule1 do
  Begin
    Result := 0;
    x := -1;
    While (Result = 0) and (x > -10) do
    Begin
      if not cds_LoadFreightCostDetails.Locate('LoadNo', x, []) then
        Result := x
      else
        x := x - 1;
    End;
  End; // with
end;

procedure TfrmAvrakningar.acRemoveRowExecute(Sender: TObject);
begin
  if MessageDlg('Är du säker ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    With dmModule1 do
    Begin
      cds_LoadFreightCostDetails.Delete;
    End;
  End;
end;

procedure TfrmAvrakningar.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmAvrakningar.acRemoveAvrExecute(Sender: TObject);
begin
  if MessageDlg
    ('Är du säker? du kan även ångra genom att klicka på "ångra ändringar". Klickar du däremot'
    + ' på "spara ändringar" sen går det inte att ångra ändringar. Du måste alltså klicka "spara ändringar" '
    + ' för att spara de ändringar som är gjorda.', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  Begin
    With dmModule1 do
    Begin
      cds_LoadFreightCostHeader2.Delete;
      // lbApplyChanges.Enabled:= True ;
    End;
  End;
end;

procedure TfrmAvrakningar.acPrintAvrExecute(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmModule1.cds_LoadFreightCostHeader2AvrakningsNo.AsInteger;
    FormCRViewReport.CreateCo('FRAKT_AVRAKNING.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfrmAvrakningar.acSearchLastnrExecute(Sender: TObject);
Var
  AvrNo: Integer;
  verk: String;
  VerkNo: Integer;
  fEntryField: TfEntryField;
begin
  With dmModule1 do
  Begin
    fEntryField := TfEntryField.Create(Nil);
    fEntryField.Caption := 'Ange LastNr';
    fEntryField.Label1.Caption := 'LastNr:';
    Try
      if fEntryField.ShowModal = mrOK then
      Begin
        AvrNo := GetFraktAvrakningsNoForLoadNo
          (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0), verk, VerkNo);
        if AvrNo > 0 then
        Begin
          BuildSQL(AvrNo);
          cds_LoadFreightCostDetails.Locate('LoadNo',
            StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0), []);
        End
        else
          ShowMessage('Hittar ej lastnr.');
      End;
    Finally
      FreeAndNil(fEntryField); // .Free ;
    End;
  End;
end;

procedure TfrmAvrakningar.acSearchAvrNrExecute(Sender: TObject);
Var
  fEntryField: TfEntryField;
begin
  With dmModule1 do
  Begin
    fEntryField := TfEntryField.Create(Nil);
    fEntryField.Caption := 'Ange Avr.Nr';
    fEntryField.Label1.Caption := 'Avr.Nr:';
    Try
      if fEntryField.ShowModal = mrOK then
      Begin
        BuildSQL(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0));
      End;
    Finally
      FreeAndNil(fEntryField); // .Free ;
    End;
  End;
end;

procedure TfrmAvrakningar.acRefreshExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    BuildSQL(-1);
  End;
end;

procedure TfrmAvrakningar.acSearchExecute(Sender: TObject);
Var
  AvrNr: Integer;
begin
  AvrNr := 0;
  OpenAvrSearch(AvrNr);
  if AvrNr > 0 then
  Begin
    BuildSQL(AvrNr);
    // cds_LoadFreightCostDetails.Locate('LoadNo',StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0), []) ;
  End;
end;

procedure TfrmAvrakningar.cds_PropsVerkNoChange(Sender: TField);
begin
  // acRefreshExecute(Sender) ;
end;

procedure TfrmAvrakningar.cds_PropsStatusChange(Sender: TField);
begin
  With dmModule1 do
  Begin
    if not cds_PropsStatus.IsNull then
      cds_LoadFreightCostHeader2.Filter := 'STATUS = ' +
        cds_PropsStatus.AsString
    else
      cds_LoadFreightCostHeader2.Filter := 'STATUS = -1';
  End;
end;

procedure TfrmAvrakningar.LoadUserProps(const Form: String);
Var
  x: Integer;
  SalesGroup, ClientNo, MarknadNo, RegionNo: Integer;
Begin
  cds_Props.ParamByName('UserID').AsInteger := Thisuser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if cds_Props.Eof then
  Begin
    cds_Props.Insert;
    cds_Props.Post;
  End;
End;

procedure TfrmAvrakningar.SaveUserProps(const Form: String);
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
    cds_PropsUserID.AsInteger := Thisuser.UserID;
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

procedure TfrmAvrakningar.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger := Thisuser.UserID;
  cds_PropsForm.AsString := Self.Caption;
end;

end.
