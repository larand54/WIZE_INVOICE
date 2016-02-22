unit uLastLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems,
  ImgList, StdCtrls, DB, Menus, SqlTimSt,
  Buttons, ComCtrls, DateUtils,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, kbmMemTable, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter,
  cxImageComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookAndFeels,
  cxLookAndFeelPainters, cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  siComp, siLngLnk;

type
  TfLastLista = class(TForm)
    imglistActions: TImageList;
    PopupMenu2: TPopupMenu;
    PackageInfo1: TMenuItem;
    il_LastStatus: TImageList;
    Panel1: TPanel;
    bbUppdatera: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    bbSkrivut: TBitBtn;
    bbClose: TBitBtn;
    bbSkrivUtMedPktNr: TBitBtn;
    grdLastListaDBTableView1: TcxGridDBTableView;
    grdLastListaLevel1: TcxGridLevel;
    grdLastLista: TcxGrid;
    grdLastListaDBTableView1LASTNR: TcxGridDBColumn;
    grdLastListaDBTableView1FS: TcxGridDBColumn;
    grdLastListaDBTableView1DATUM: TcxGridDBColumn;
    grdLastListaDBTableView1STATUS: TcxGridDBColumn;
    grdLastListaDBTableView1LOAD_ID: TcxGridDBColumn;
    grdLastListaDBTableView1INT_DEST: TcxGridDBColumn;
    grdLastListaDBTableView1LASTSTALLE: TcxGridDBColumn;
    grdLastListaDBTableView1VERK: TcxGridDBColumn;
    grdLastListaDBTableView1INT_KUND: TcxGridDBColumn;
    mtMarkedRows: TkbmMemTable;
    mtMarkedRowsLoadNo: TIntegerField;
    Panel2: TPanel;
    Panel3: TPanel;
    cxSplitter1: TcxSplitter;
    grdLoadPackages: TcxGrid;
    grdLoadPackagesDBTableView1: TcxGridDBTableView;
    grdLoadPackagesDBTableView1PACKAGE_NO: TcxGridDBColumn;
    grdLoadPackagesDBTableView1SUPPLIERCODE: TcxGridDBColumn;
    grdLoadPackagesDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdLoadPackagesDBTableView1PSCPERLENGTH: TcxGridDBColumn;
    grdLoadPackagesDBTableView1M3_NET: TcxGridDBColumn;
    grdLoadPackagesDBTableView1PCS: TcxGridDBColumn;
    grdLoadPackagesDBTableView1M3_NOM: TcxGridDBColumn;
    grdLoadPackagesDBTableView1LO: TcxGridDBColumn;
    grdLoadPackagesDBTableView1MFBM: TcxGridDBColumn;
    grdLoadPackagesDBTableView1LOAD_DETAILNO: TcxGridDBColumn;
    grdLoadPackagesDBTableView1PACKAGE_LOG: TcxGridDBColumn;
    grdLoadPackagesDBTableView1LoadNo: TcxGridDBColumn;
    grdLoadPackagesDBTableView1PACKAGEOK: TcxGridDBColumn;
    grdLoadPackagesLevel1: TcxGridLevel;
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
    deStartPeriod: TcxDBDateEdit;
    grdLastListaDBTableView1AM3: TcxGridDBColumn;
    grdLastListaDBTableView1NM3: TcxGridDBColumn;
    grdLastListaDBTableView1Styck: TcxGridDBColumn;
    grdLastListaDBTableView1Paket: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    siLangLinked_fLastLista: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PackageInfo1Click(Sender: TObject);
    procedure bbUppdateraClick(Sender: TObject);
    procedure SkrivSamlingsSpecifikationClick(Sender: TObject);
    procedure bbSkrivutClick(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSkrivUtMedPktNrClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure LoadProps;
    Procedure SaveProps;
    procedure RefreshLoads;
    // procedure SkrivUtLevLaster(Sender: TObject);
    // procedure SkrivUtLevLasterPKTNR(Sender: TObject);
    procedure PrintSamlingsspecifikation(Sender: TObject;
      const SamLastNr: Integer);
    procedure PrintSamlingsspecifikationPKTNR(Sender: TObject;
      const SamLastNr: Integer);
    procedure BuildSQL;
    Procedure GetMarkedRows;
  public
    { Public declarations }
    Procedure CreateCo;
  end;

var
  fLastLista: TfLastLista;

implementation

uses UnitCRViewReport, dmc_ArrivingLoads, VidaUtils, Vidauser,
  UnitPkgInfo, dmsVidaContact, dmcVidaSystem, dmsDataConn, VidaConst,
  dmsVidaSystem, dmc_UserProps, udmLanguage;

{$R *.dfm}

Procedure TfLastLista.LoadProps;
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Self.Name;
  cds_Props.Active := True;
  // if cds_Props.Eof then
  // cds_Props.Insert ;
End;

Procedure TfLastLista.SaveProps;
Begin
  if cds_Props.State in [dsEdit, dsInsert] then
    cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;
End;

Procedure TfLastLista.CreateCo;
Var
  x: Integer;
begin
  // Load column widths set last time.

  // dmsContact.Load_Int_and_Lego(peCompany.Items) ;

  if  dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then // = VIDA_WOOD_COMPANY_NO then
    lcVerk.Properties.ReadOnly := False;

  LoadProps;

  if cds_Props.RecordCount > 0 then
  Begin

  End
  else
  Begin
    cds_Props.Insert;
    cds_PropsVerkNo.AsInteger           := ThisUser.CompanyNo;
    cds_PropsStartPeriod.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
    cds_Props.Post;
  End;

end;

procedure TfLastLista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfLastLista.FormDestroy(Sender: TObject);
begin
  fLastLista := NIL;

  if dmsSystem.DeleteAssigned('TfLastLista', 'dmArrivingLoads') = True then
  Begin
    dmArrivingLoads.Free;
    dmArrivingLoads := Nil;
  End;
end;

procedure TfLastLista.RefreshLoads;
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  // deFOM.Date:= RecodeHour(deFOM.Date,0) ;
  // deFOM.Date:= RecodeMinute(deFOM.Date,0) ;
  // deFOM.Date:= RecodeSecond(deFOM.Date,0) ;
  // ShowMessage('deFOM.Date = '+DateTimeToStr(deFOM.Date)) ;
  // ShowMessage('SQLTimedate'+SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deFOM.Date))) ;
  With dmArrivingLoads do
  Begin
    cds_verkLaster.DisableControls;
    ds_verkLaster.OnDataChange := Nil;

    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    try

      if Self.cds_PropsVerkNo.AsInteger > 0 then
      Begin
        cds_verkLaster.Active := False;
        BuildSQL;
        cds_verkLaster.Active := True;
        cds_VerkLastPkgs.Active := False;
        cds_VerkLastPkgs.Close;
        cds_VerkLastPkgs.ParamByName('LoadNo').AsInteger :=
          cds_verkLasterLastNr.AsInteger;
        cds_VerkLastPkgs.Open;
        cds_VerkLastPkgs.Active := True;

      end;
    finally
      cds_verkLaster.EnableControls;
      ds_verkLaster.OnDataChange := dmArrivingLoads.ds_verkLasterDataChange;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End;
end;

procedure TfLastLista.PackageInfo1Click(Sender: TObject);
Var
  frmPkgInfo: TfrmPkgInfo;
begin
  frmPkgInfo := TfrmPkgInfo.Create(Nil);
  Try
    frmPkgInfo.PackageNo := dmArrivingLoads.cds_VerkLastPkgsPACKAGE_NO.
      AsInteger;
    frmPkgInfo.SupplierCode :=
      dmArrivingLoads.cds_VerkLastPkgsSupplierCode.AsString;
    frmPkgInfo.ShowModal;
  Finally
    FreeAndNil(frmPkgInfo);
  End;
end;

(*
  procedure TfLastLista.SkrivUtLevLaster(Sender: TObject);
  Var
  Roll_Back: Boolean ;
  Save_Cursor:TCursor;
  Duplicate : Boolean ;
  samLastnr, y,x : Integer ;
  begin
  inherited;
  Roll_Back:= False ;

  with grdVerkLast, dmArrivingLoads do
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  Try

  ds_verkLaster.OnDataChange:= Nil ;

  lbLO_To_Invoice.Items.Clear ;
  DataSource.DataSet.DisableControls;
  //Insert LO # to ListBox list
  for x := 0 to (SelectedCount - 1) do
  begin
  Duplicate := False ;
  DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant
  For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
  Begin
  if cds_verkLasterLASTNR.AsString = lbLO_To_Invoice.Items[y] then
  Duplicate := True ;
  End ;
  if Duplicate = False then
  Begin
  lbLO_To_Invoice.Items.Add(cds_verkLasterLASTNR.AsString) ;
  End ;
  end; //for..

  if lbLO_To_Invoice.Items.Count < 1 then
  Begin
  ShowMessage('Måste markera minst en last') ;
  Exit ;
  End ;

  samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
  sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= samLastnr ;
  sq_deleteSamLaster.ExecSQL(False) ;
  For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
  Begin
  sq_samLast.ParamByName('SamLastNr').AsInteger:= samLastNr ;
  sq_samLast.ParamByName('LoadNo').AsInteger:= StrToInt(lbLO_To_Invoice.Items[x]) ;
  sq_samLast.ExecSQL(False) ;
  End ;

  PrintSamlingsspecifikation(Sender, samLastNr) ;
  Finally
  DataSource.DataSet.EnableControls;
  ClearSelection ;
  ds_verkLaster.OnDataChange:= dmArrivingLoads.ds_verkLasterDataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
  End ; //with
  end; *)

(* procedure TfLastLista.SkrivUtLevLasterPKTNR(Sender: TObject);
  Var
  Roll_Back: Boolean ;
  Save_Cursor:TCursor;
  Duplicate : Boolean ;
  samLastnr, y,x : Integer ;
  begin
  inherited;
  Roll_Back:= False ;

  with grdVerkLast, dmArrivingLoads do
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  Try

  ds_verkLaster.OnDataChange:= Nil ;

  lbLO_To_Invoice.Items.Clear ;
  DataSource.DataSet.DisableControls;
  //Insert LO # to ListBox list
  for x := 0 to (SelectedCount - 1) do
  begin
  Duplicate := False ;
  DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant
  For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
  Begin
  if cds_verkLasterLASTNR.AsString = lbLO_To_Invoice.Items[y] then
  Duplicate := True ;
  End ;
  if Duplicate = False then
  Begin
  lbLO_To_Invoice.Items.Add(cds_verkLasterLASTNR.AsString) ;
  End ;
  end; //for..

  if lbLO_To_Invoice.Items.Count < 1 then
  Begin
  ShowMessage('Måste markera minst en last') ;
  Exit ;
  End ;

  samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
  sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= samLastnr ;
  sq_deleteSamLaster.ExecSQL(False) ;

  For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
  Begin
  sq_samLast.ParamByName('SamLastNr').AsInteger:= samLastNr ;
  sq_samLast.ParamByName('LoadNo').AsInteger:= StrToInt(lbLO_To_Invoice.Items[x]) ;
  sq_samLast.ExecSQL(False) ;
  End ;

  PrintSamlingsspecifikationPKTNR(Sender, samLastNr) ;

  Finally
  DataSource.DataSet.EnableControls;
  ClearSelection ;
  ds_verkLaster.OnDataChange:= dmArrivingLoads.ds_verkLasterDataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
  End ; //with
  end; *)

procedure TfLastLista.PrintSamlingsspecifikation(Sender: TObject;
  const SamLastNr: Integer);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if dmArrivingLoads.cds_verkLasterLastNr.AsInteger < 1 then
    exit;
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := SamLastNr;
    FormCRViewReport.CreateCo('SAM_LAST.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfLastLista.PrintSamlingsspecifikationPKTNR(Sender: TObject;
  const SamLastNr: Integer);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if dmArrivingLoads.cds_verkLasterLastNr.AsInteger < 1 then
    exit;
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := SamLastNr;
    FormCRViewReport.CreateCo('SAM_LAST_PKTNR.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfLastLista.bbUppdateraClick(Sender: TObject);
begin
  RefreshLoads;
end;

procedure TfLastLista.SkrivSamlingsSpecifikationClick(Sender: TObject);
begin
  // SkrivUtLevLaster(Sender);
end;

procedure TfLastLista.bbSkrivutClick(Sender: TObject);
begin
  GetMarkedRows;
  PrintSamlingsspecifikation(Sender, ThisUser.UserID);
  // SkrivUtLevLaster(Sender) ;
end;

procedure TfLastLista.bbCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfLastLista.FormCreate(Sender: TObject);
begin
  if (not Assigned(dmArrivingLoads)) then
  Begin
    dmArrivingLoads := TdmArrivingLoads.Create(nil);
  End;
  dmsSystem.AssignDMToThisWork('TfLastLista', 'dmArrivingLoads');

  dmsSystem.LoadGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdLastListaDBTableView1.Name, grdLastListaDBTableView1);
  dmsSystem.LoadGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdLoadPackagesDBTableView1.Name,
    grdLoadPackagesDBTableView1);
end;

procedure TfLastLista.bbSkrivUtMedPktNrClick(Sender: TObject);
begin
  GetMarkedRows;
  PrintSamlingsspecifikationPKTNR(Sender, ThisUser.UserID);
  // SkrivUtLevLasterPKTNR(Sender) ;
end;

procedure TfLastLista.BuildSQL;
Begin
  With dmArrivingLoads.cds_verkLaster.SQL do
  Begin
    Clear;
    Add('SELECT distinct');
    Add('L.LoadNo				AS	LASTNR,');
    Add('L.FS				AS	FS,');
    Add('L.LoadedDate			AS	DATUM,');
    Add('L.SenderLoadStatus		AS	STATUS,');
    Add('L.LoadID				AS	LOAD_ID,');
    Add('ShipTo.CityName                 	AS INT_DEST,');
    Add('Loading.CityName                 AS LASTSTALLE,');

    Add('SUPP.ClientName			AS VERK,');
    Add('CUST.ClientName			AS INT_KUND,');

    Add('SUM(P.Totalm3Actual)	AS 	AM3,');
    Add('SUM(P.Totalm3Nominal)		AS 	NM3,');
    Add('SUM(P.TotalNoOfPieces)		AS	Styck,');
    Add('Count(LD.LoadDetailNo) AS Paket');

    Add('FROM dbo.LoadShippingPlan LSP');
    Add('INNER JOIN dbo.Loads L  		ON 	L.LoadNo = LSP.LoadNo');
    Add('INNER JOIN dbo.Loaddetail LD ON LD.LoadNo = LSP.LoadNo');
    Add('AND LD.ShippingPlanNo = LSP.ShippingPlanNo');
    Add('INNER JOIN dbo.PackageType P		ON 	P.PackageTypeNo = LD.PackageTypeNo');
    // Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo') ;
    Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.SupplierShipPlanObjectNo = LD.defsspno');
    Add('					AND     L.supplierno 		= SP.SUPPLIERno');
 //   Add('					AND     L.CustomerNo 		= SP.CustomerNo');

    Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
    Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');

    Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = L.SupplierNo');
    Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = L.CustomerNo');

    Add('WHERE  L.SupplierNo = ' + Self.cds_PropsVerkNo.AsString);
    Add('AND L.LoadedDate >= ' +
      QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
      Self.cds_PropsStartPeriod.AsSQLTimeStamp)));

    Add('Group By L.LoadNo, L.FS,');
    Add('L.LoadedDate,');
    Add('L.SenderLoadStatus,');
    Add('L.LoadID,');
    Add('ShipTo.CityName,');
    Add('Loading.CityName,');
    Add('SUPP.ClientName,');
    Add('CUST.ClientName');

    // if ThisUser.UserID = 8 then    SaveToFile('sq_VerkLaster.txt');
  End;

End;

procedure TfLastLista.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  dmsSystem.StoreGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdLastListaDBTableView1.Name, grdLastListaDBTableView1);
  dmsSystem.StoreGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdLoadPackagesDBTableView1.Name,
    grdLoadPackagesDBTableView1);
  SaveProps;
  CanClose := True;
end;

Procedure TfLastLista.GetMarkedRows;
Var
  i, RecIDX: Integer;
  RecID: variant;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
  SamLastNr: Integer;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }

  mtMarkedRows.Active := False;
  mtMarkedRows.Active := True;
  With dmArrivingLoads do
  Begin
    SamLastNr := ThisUser.UserID;
    // Ta bort tidigare genererade data
    sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger := SamLastNr;
    sq_deleteSamLaster.ExecSQL;
    // Välj alla lastrader
    grdLastListaDBTableView1.BeginUpdate;
    grdLastListaDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLastListaDBTableView1.DataController.DataSource.DataSet;
      For i := 0 to grdLastListaDBTableView1.Controller.
        SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLastListaDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        RecID := grdLastListaDBTableView1.DataController.GetRecordId(RecIDX);
        ADATASET.Locate('LastNr', RecID, []);

        sq_samLast.ParamByName('SamLastNr').AsInteger := SamLastNr;
        sq_samLast.ParamByName('LoadNo').AsInteger :=
          ADATASET.FieldByName('Lastnr').AsInteger;
        // sq_samLast.ParamByName('Reference').AsString          := '' ;
        sq_samLast.ExecSQL;

        { if not mtMarkedRows.Locate('LoadNo',  ADataSet.FieldByName('Lastnr').AsInteger, []) then
          Begin
          mtMarkedRows.Insert ;
          mtMarkedRowsLoadNo.AsInteger         := ADataSet.FieldByName('Lastnr').AsInteger ;
          mtMarkedRows.Post ;
          End ; }
      End; // For I...

    Finally
      grdLastListaDBTableView1.DataController.EndLocate;
      grdLastListaDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with
End;

procedure TfLastLista.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsForm.AsString := Self.Name;
end;

end.
