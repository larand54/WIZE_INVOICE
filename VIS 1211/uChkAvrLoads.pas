unit uChkAvrLoads;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems,
  ImgList, StdCtrls, DB, Menus, SqlTimSt,
  DateUtils, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxSplitter, cxCalc, ActnList, cxImageComboBox,
  cxGridExportLink, cxExport, kbmMemTable, cxLookAndFeels, cxCheckBox,
  FMTBcd, cxDBEdit, DBClient, Provider, SqlExpr, Buttons,
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
  dxSkinscxPCPainter, cxNavigator, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsdxBarPainter, System.Actions, siComp, siLngLnk;

type
  TfChkAvrLoads = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    imglistActions: TImageList;
    DataSource1: TDataSource;
    lbPkgInfo: TdxBarLargeButton;
    bbCustomizeLayout: TdxBarButton;
    pmPrint: TdxBarPopupMenu;
    il_LastStatus: TImageList;
    grdPkgsDBTableView1: TcxGridDBTableView;
    grdPkgsLevel1: TcxGridLevel;
    grdPkgs: TcxGrid;
    grdPkgsDBTableView1LO: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGE_NO: TcxGridDBColumn;
    grdPkgsDBTableView1SUPPLIERCODE: TcxGridDBColumn;
    grdPkgsDBTableView1M3_NET: TcxGridDBColumn;
    grdPkgsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdPkgsDBTableView1PCS: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGEOK: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGE_LOG: TcxGridDBColumn;
    grdPkgsDBTableView1M3_NOM: TcxGridDBColumn;
    grdPkgsDBTableView1LOAD_DETAILNO: TcxGridDBColumn;
    grdPkgsDBTableView1LoadNo: TcxGridDBColumn;
    grdPkgsDBTableView1PSCPERLENGTH: TcxGridDBColumn;
    grdPkgsDBTableView1MFBM: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsLevel1: TcxGridLevel;
    grdLoads: TcxGrid;
    grdLoadsDBTableView1LOADNO: TcxGridDBColumn;
    grdLoadsDBTableView1LOADEDDATE: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_STATUS: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_ID: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPLIER: TcxGridDBColumn;
    grdLoadsDBTableView1CUSTOMER: TcxGridDBColumn;
    grdLoadsDBTableView1FS: TcxGridDBColumn;
    ActionList1: TActionList;
    acPkgInfo: TAction;
    pmPkgs: TdxBarPopupMenu;
    acChangeLoadLayout: TAction;
    acChangePkgLayout: TAction;
    dxBarButton3: TdxBarButton;
    pmLoads: TdxBarPopupMenu;
    Panel1: TPanel;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    Panel4: TPanel;
    dxBarDockControl3: TdxBarDockControl;
    acClose: TAction;
    acRefresh: TAction;
    grdPkgsDBTableView1GS: TcxGridDBColumn;
    grdPkgsDBTableView1BC: TcxGridDBColumn;
    acShowGroupBox: TAction;
    dxBarButton4: TdxBarButton;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    mtSelectedLoads: TkbmMemTable;
    mtSelectedLoadsLoadNo: TIntegerField;
    mtSelectedLoadsLONo: TIntegerField;
    mtSelectedLoadsLIPNo: TIntegerField;
    mtSelectedLoadsCustomerNo: TIntegerField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_1: TcxStyle;
    cxStyle_0: TcxStyle;
    cxStyle_4: TcxStyle;
    fomdate: TcxDateEdit;
    tomdate: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    mtSelectedLoadsStatus: TIntegerField;
    cxStyle_Focus: TcxStyle;
    mtSelectedLoadsOBJECTTYPE: TIntegerField;
    mtSelectedLoadsOrderType: TIntegerField;
    acGetIntPrices: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    sq_Props: TSQLQuery;
    sq_PropsUserID: TIntegerField;
    sq_PropsForm: TStringField;
    sq_PropsVerkNo: TIntegerField;
    sq_PropsOwnerNo: TIntegerField;
    sq_PropsPIPNo: TIntegerField;
    sq_PropsLIPNo: TIntegerField;
    sq_PropsInputOption: TIntegerField;
    sq_PropsRegPointNo: TIntegerField;
    sq_PropsRegDate: TSQLTimeStampField;
    sq_PropsCopyPcs: TIntegerField;
    sq_PropsRunNo: TIntegerField;
    sq_PropsProducerNo: TIntegerField;
    sq_PropsAutoColWidth: TIntegerField;
    sq_PropsSupplierCode: TStringField;
    sq_PropsLengthOption: TIntegerField;
    sq_PropsLengthGroupNo: TIntegerField;
    sq_PropsNewItemRow: TIntegerField;
    dsp_Props: TDataSetProvider;
    cds_Props: TClientDataSet;
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
    cds_PropsForm: TStringField;
    cds_PropsUserID: TIntegerField;
    ds_Props: TDataSource;
    sq_chkLoads: TSQLQuery;
    dsp_hkLoads: TDataSetProvider;
    cds_hkLoads: TClientDataSet;
    cds_hkLoadsLOADNO: TIntegerField;
    cds_hkLoadsLOADEDDATE: TSQLTimeStampField;
    cds_hkLoadsLOAD_STATUS: TIntegerField;
    cds_hkLoadsLOAD_ID: TStringField;
    cds_hkLoadsSUPPLIER: TStringField;
    cds_hkLoadsFS: TStringField;
    ds_hkLoads: TDataSource;
    cds_hkLoadsCUSTOMER: TStringField;
    sq_Pkgs: TSQLQuery;
    dsp_Pkgs: TDataSetProvider;
    cds_Pkgs: TClientDataSet;
    cds_PkgsLO: TIntegerField;
    cds_PkgsPACKAGE_NO: TIntegerField;
    cds_PkgsSUPPLIERCODE: TStringField;
    cds_PkgsM3_NET: TFloatField;
    cds_PkgsPRODUCT_DESCRIPTION: TStringField;
    cds_PkgsPCS: TIntegerField;
    cds_PkgsPACKAGEOK: TSmallintField;
    cds_PkgsPACKAGE_LOG: TStringField;
    cds_PkgsM3_NOM: TFloatField;
    cds_PkgsLOAD_DETAILNO: TIntegerField;
    cds_PkgsLoadNo: TIntegerField;
    cds_PkgsPSCPERLENGTH: TStringField;
    cds_PkgsMFBM: TFloatField;
    cds_PkgsBC: TStringField;
    cds_PkgsGS: TStringField;
    ds_Pkgs: TDataSource;
    sq_DelLastAvr: TSQLQuery;
    sq_DelLastAvrDtl: TSQLQuery;
    eLoadNo: TEdit;
    Label1: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    siLangLinked_fChkAvrLoads: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure acChangePkgLayoutExecute(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acShowGroupBoxExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure acGetIntPricesExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure ds_hkLoadsDataChange(Sender: TObject; Field: TField);
    procedure acManualPriceUpdateExecute(Sender: TObject);

  private
    { Private declarations }
    procedure RefreshLoads;
    procedure LoadArrivalLoadQuery;
    procedure InsertMarkedLoadsToTempTable(Sender: TObject);
  public
    { Public declarations }
    Procedure CreateCo(CompanyNo: Integer);
  end;

var
  fChkAvrLoads: TfChkAvrLoads;

implementation

uses dmc_ArrivingLoads, VidaUtils, Vidauser,
  UnitPkgInfo, dmsVidaContact, dmcVidaSystem, dmsDataConn,
  VidaConst, dmsVidaSystem; // , dmc_Filter;

{$R *.dfm}

Procedure TfChkAvrLoads.CreateCo(CompanyNo: Integer);
Var
  x: Integer;
begin
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoads.Name,
    grdLoadsDBTableView1) = False then;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgs.Name,
    grdPkgsDBTableView1) = False then;

  cds_Props.Active := False;
  sq_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  sq_Props.ParamByName('Form').AsString := Self.Name;
  cds_Props.Active := True;
  if cds_Props.Eof then
    cds_Props.Insert;

end;

procedure TfChkAvrLoads.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfChkAvrLoads.FormDestroy(Sender: TObject);
begin
  fChkAvrLoads := NIL;

  if dmsSystem.DeleteAssigned('TfChkAvrLoads', 'dmArrivingLoads') = True then
  Begin
    dmArrivingLoads.Free;
    dmArrivingLoads := Nil;
  End;
end;

procedure TfChkAvrLoads.FormCreate(Sender: TObject);
begin
  if (not Assigned(dmArrivingLoads)) then
  Begin
    dmArrivingLoads := TdmArrivingLoads.Create(nil);
  End;
  dmsSystem.AssignDMToThisWork('TfChkAvrLoads', 'dmArrivingLoads');

  tomdate.Date := now;
  fomdate.Date := now;
end;

procedure TfChkAvrLoads.RefreshLoads;
var
  Save_Cursor: TCursor;
  LoadNo: Integer;
begin
  Save_Cursor := Screen.Cursor;

  cds_hkLoads.DisableControls;
  // ds_hkLoads.DataSet:= Nil ;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  try
    // LoadNo                   := cds_hkLoadsLoadNo.AsInteger ;
    cds_hkLoads.Active := False;
    // sq_chkLoads.Close ;
    LoadArrivalLoadQuery;
    cds_hkLoads.Active := True;
    // cds_hkLoads.LogChanges   := False ;
    // cds_hkLoads.FindKey([LoadNo]) ;
  finally
    // ds_hkLoads.DataSet:= cds_hkLoads ;
    cds_hkLoads.EnableControls;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;

end;

procedure TfChkAvrLoads.LoadArrivalLoadQuery;
Begin
  sq_chkLoads.SQL.Clear;
  sq_chkLoads.SQL.Add('SELECT DISTINCT');
  sq_chkLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
  sq_chkLoads.SQL.Add('L.FS				        AS	FS,');
  sq_chkLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
  sq_chkLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
  sq_chkLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
  sq_chkLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
  sq_chkLoads.SQL.Add('Cust.ClientName       AS      CUSTOMER');

  sq_chkLoads.SQL.Add('FROM');
  sq_chkLoads.SQL.Add('dbo.Loads L ');

  sq_chkLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
  sq_chkLoads.SQL.Add('cl.Confirmed_LoadNo = l.LoadNo ');

  sq_chkLoads.SQL.Add
    ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= L.SupplierNo');

  sq_chkLoads.SQL.Add
    ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= L.CustomerNo');

  sq_chkLoads.SQL.Add('WHERE');

  sq_chkLoads.SQL.Add('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
  // sq_chkLoads.SQL.Add('AND SP.ObjectType = 1') ;

  sq_chkLoads.SQL.Add('AND (L.SupplierNo = 232 or L.SupplierNo = 76');
  sq_chkLoads.SQL.Add('OR L.SupplierNo = 25 or L.SupplierNo = 172');
  sq_chkLoads.SQL.Add('OR L.SupplierNo = 212 or L.SupplierNo = 578)');

  sq_chkLoads.SQL.Add('AND L.SupplierNo <> L.CustomerNo');

  sq_chkLoads.SQL.Add('AND L.LoadAR = 1');
  sq_chkLoads.SQL.Add('AND L.LoadedDate >= ' +
    QuotedStr(DateTimeToStr(fomdate.Date)));
  sq_chkLoads.SQL.Add('AND L.LoadedDate <= ' +
    QuotedStr(DateTimeToStr(tomdate.Date)));

  sq_chkLoads.SQL.Add('AND');
  sq_chkLoads.SQL.Add('L.LoadNo');
  sq_chkLoads.SQL.Add('NOT IN (SELECT LoadNo');
  sq_chkLoads.SQL.Add('FROM dbo.LoadDtlVal)');


  // LM June 14  fomdate.Date:= RecodeHour(fomdate.Date,0) ;
  // LM June 14  fomdate.Date:= RecodeMinute(fomdate.Date,0) ;
  // LM June 14  fomdate.Date:= RecodeSecond(fomdate.Date,0) ;

  // sq_chkLoads.SQL.Add('AND cl.DateCreated >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(fomdate.Date)))) ;
  // sq_chkLoads.SQL.Add('AND DateCreated >= '+QuotedStr(DateTimeToStr(MittARDatum.Date)));

  // LM June 14  tomdate.Date:= RecodeHour(tomdate.Date,23) ;
  // LM June 14  tomdate.Date:= RecodeMinute(tomdate.Date,59) ;
  // LM June 14  tomdate.Date:= RecodeSecond(tomdate.Date,59) ;

  // sq_chkLoads.SQL.Add('AND DateCreated <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(tomdate.Date)))+')' ) ;
  // sq_chkLoads.SQL.Add('AND cl.DateCreated <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(tomdate.Date)))) ;

  // if thisuser.UserID = 8 then
  // sq_chkLoads.SQL.SaveToFile('sq_chkLoads.TXT');
End;

procedure TfChkAvrLoads.InsertMarkedLoadsToTempTable(Sender: TObject);
Var
  i, RecIDX: Integer;
  // RecID          : Variant ;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  LIPNo, LoadNo, LONo, CustomerNo: Integer;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active := False;
  mtSelectedLoads.Active := True;

  grdLoadsDBTableView1.BeginUpdate;
  grdLoadsDBTableView1.DataController.BeginLocate;
  Try
    For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
    Begin
      RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex;

      ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
        ('LOADNO').Index;
      LoadNo := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

      // if not mtSelectedLoads.Locate('LoadNo;LONo', VarArrayOf([LoadNo, LONo]), []) then
      if not mtSelectedLoads.Locate('LoadNo', LoadNo, []) then
      Begin
        mtSelectedLoads.Insert;
        mtSelectedLoadsLoadNo.AsInteger := LoadNo;
        mtSelectedLoads.Post;
      End;
    End; // for y

  Finally
    grdLoadsDBTableView1.DataController.EndLocate;
    grdLoadsDBTableView1.EndUpdate;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;

end;

procedure TfChkAvrLoads.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if cds_Props.State in [dsEdit, dsInsert] then
    cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
    cds_Props.ApplyUpdates(0);

  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoads.Name,
    grdLoadsDBTableView1);
  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgs.Name,
    grdPkgsDBTableView1);
  cds_hkLoads.Active := False;
  CanClose := True;
end;

procedure TfChkAvrLoads.acPkgInfoExecute(Sender: TObject);
Var
  frmPkgInfo: TfrmPkgInfo;
begin
  frmPkgInfo := TfrmPkgInfo.Create(Nil);
  Try
    frmPkgInfo.PackageNo := cds_PkgsPACKAGE_NO.AsInteger;
    frmPkgInfo.SupplierCode := cds_PkgsSUPPLIERCODE.AsString;
    frmPkgInfo.ShowModal;
  Finally
    FreeAndNil(frmPkgInfo);
  End;
end;

procedure TfChkAvrLoads.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdLoads.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLoads.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfChkAvrLoads.acChangePkgLayoutExecute(Sender: TObject);
begin
  if grdPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgs.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfChkAvrLoads.acPkgInfoUpdate(Sender: TObject);
begin
  acPkgInfo.Enabled := cds_Pkgs.RecordCount > 0;
end;

procedure TfChkAvrLoads.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfChkAvrLoads.acRefreshExecute(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(fomdate.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
    ShowMessage('Ange ett FOM datum');
    Exit;
  End;
  DecodeDate(tomdate.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
    ShowMessage('Ange ett TOM datum');
    Exit;
  End;
  RefreshLoads;
end;

procedure TfChkAvrLoads.acShowGroupBoxExecute(Sender: TObject);
begin
  if grdLoadsDBTableView1.OptionsView.GroupByBox then
    grdLoadsDBTableView1.OptionsView.GroupByBox := False
  else
    grdLoadsDBTableView1.OptionsView.GroupByBox := True;
end;

procedure TfChkAvrLoads.acExpandAllExecute(Sender: TObject);
begin
  grdLoadsDBTableView1.ViewData.Expand(True);
end;

procedure TfChkAvrLoads.acCollapseAllExecute(Sender: TObject);
begin
  grdLoadsDBTableView1.ViewData.Collapse(True);
end;

procedure TfChkAvrLoads.acGetIntPricesExecute(Sender: TObject);
begin
  with dmArrivingLoads do
  Begin
    InsertMarkedLoadsToTempTable(Sender);
    mtSelectedLoads.First;
    While not mtSelectedLoads.Eof do
    Begin
      GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True);
      sq_DelLastAvr.ParamByName('LoadNo').AsInteger :=
        mtSelectedLoadsLoadNo.AsInteger;
      sq_DelLastAvr.ExecSQL(False);

      sq_DelLastAvrDtl.ParamByName('LoadNo').AsInteger :=
        mtSelectedLoadsLoadNo.AsInteger;
      sq_DelLastAvrDtl.ExecSQL(False);
      mtSelectedLoads.Next;
    End; // While not mtSelectedLoads.Eof do
  End;
end;

procedure TfChkAvrLoads.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsForm.AsString := Self.Name;
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsNewItemRow.AsInteger := 1;
end;

procedure TfChkAvrLoads.ds_hkLoadsDataChange(Sender: TObject; Field: TField);
begin
  cds_Pkgs.Active := False;
  // sq_Pkgs.Close ;
  sq_Pkgs.ParamByName('LoadNo').AsInteger := cds_hkLoadsLOADNO.AsInteger;
  // sq_Pkgs.Open ;
  cds_Pkgs.Active := True;
end;

procedure TfChkAvrLoads.acManualPriceUpdateExecute(Sender: TObject);
begin
  with dmArrivingLoads do
  Begin
    if strToIntDef(eLoadNo.Text, 0) > 0 then
    Begin
      if MessageDlg('Vill du påföra/uppdatera internpriser?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
      Begin
        GetIntPrice(-1, 0, -1, strToIntDef(eLoadNo.Text, 0), True);
        sq_DelLastAvr.ParamByName('LoadNo').AsInteger :=
          strToIntDef(eLoadNo.Text, 0);
        sq_DelLastAvr.ExecSQL(False);

        sq_DelLastAvrDtl.ParamByName('LoadNo').AsInteger :=
          strToIntDef(eLoadNo.Text, 0);
        sq_DelLastAvrDtl.ExecSQL(False);
      End;
    End
    else
      ShowMessage('Lastnr saknas för att göra denna operation.');
  End;
end;

end.
