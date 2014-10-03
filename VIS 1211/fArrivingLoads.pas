unit fArrivingLoads;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, dxDBTLCl, dxGrClms,
  ovcbase, ovcef, ovcpb, ovcnf;

type
  TfrmArrivingLoads = class(TfrmDBForm)
    grdArrivingLoads: TdxDBGrid;
    grdArrivingLoadsLO: TdxDBGridMaskColumn;
    grdArrivingLoadsLOADNO: TdxDBGridMaskColumn;
    grdArrivingLoadsLOADEDDATE: TdxDBGridColumn;
    grdArrivingLoadsLOAD_STATUS: TdxDBGridMaskColumn;
    grdArrivingLoadsLOAD_ID: TdxDBGridMaskColumn;
    grdArrivingLoadsDESTINATION: TdxDBGridMaskColumn;
    ToolbtnRefresh: TToolButton;
    ToolButton2: TToolButton;
    Splitter1: TSplitter;
    Panel1: TPanel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2LO: TdxDBGridMaskColumn;
    dxDBGrid2PACKAGE_NO: TdxDBGridMaskColumn;
    dxDBGrid2SUPPLIERCODE: TdxDBGridMaskColumn;
    dxDBGrid2M3_NET: TdxDBGridMaskColumn;
    dxDBGrid2PRODUCT_DESCRIPTION: TdxDBGridMaskColumn;
    dxDBGrid2PCS: TdxDBGridMaskColumn;
    dxDBGrid2PACKAGE_LOG: TdxDBGridMaskColumn;
    ToolBtnConfirmLoad: TToolButton;
    ToolButton4: TToolButton;
    grdArrivingLoadsINVPOINTNAME: TdxDBGridColumn;
    Panel3: TPanel;
    cmbConfirmByReceiver: TComboBox;
    grdArrivingLoadsSUPPCODE: TdxDBGridColumn;
    ToolbtnDeleteLoad: TToolButton;
    ToolButton1: TToolButton;
    ToolbtnPrintLoad: TToolButton;
    dxDBGrid2PACKAGEOK: TdxDBGridCheckColumn;
    grdArrivingLoadsOBJECTTYPE: TdxDBGridColumn;
    grdArrivingLoadsCUSTOMER: TdxDBGridColumn;
    grdArrivingLoadsCUSTOMERNO: TdxDBGridColumn;
    grdArrivingLoadsSUPPLIERNO: TdxDBGridColumn;
    grdArrivingLoadsFS: TdxDBGridColumn;
    grdArrivingLoadsINITIALS: TdxDBGridColumn;
    grdArrivingLoadsORDER_NO: TdxDBGridColumn;
    grdArrivingLoadsAVROP_CUSTOMER: TdxDBGridColumn;
    dxDBGridM3_NOM: TdxDBGridColumn;
    dxDBGridLOAD_DETAILNO: TdxDBGridColumn;
    Label3: TLabel;
    nfSearchLO: TOvcNumericField;
    Label1: TLabel;
    cmbSupplier: TComboBox;
    cbOnlyShowVW: TCheckBox;
    procedure ToolbtnRefreshClick(Sender: TObject);
    procedure ToolBtnConfirmLoadClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbConfirmByReceiverChange(Sender: TObject);
    procedure ToolbtnDeleteLoadClick(Sender: TObject);
    procedure ToolbtnPrintLoadClick(Sender: TObject);
    procedure cmbSupplierChange(Sender: TObject);
    procedure grdArrivingLoadsCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure nfSearchLOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    fSupplierNo : Integer ;
    SomethingChanged : Boolean ;
    function  BackgroundColor(iObjectType: integer;SupplierNo,CustomerNo : Integer) : TColor;
    procedure LoadArrivalLoadQuery ;
    Function  IsLoadValid(LoadNo, ShippingPlanNo, ObjectType : Integer;Sender: TObject) : Boolean ;
    procedure RefreshLoads ;
  public
    { Public declarations }
    Procedure CreateCo(CompanyNo: Integer);
    destructor  Destroy; override;
  end;

var
  frmArrivingLoads: TfrmArrivingLoads;

implementation
uses
  VidaConst,
  VidaUser,
  VidaUtils, fConfirmLoad, dmLM1, UnitCRViewReport, dmsDataConn ;

{$R *.dfm}

Procedure TfrmArrivingLoads.CreateCo(CompanyNo: Integer);
Var x : Integer ;
begin
//  inherited Create(AOwner);

  // Load column widths set last time.
  grdArrivingLoads.LoadFromIniFile(ChangeFileExt(Application.ExeName, '.'+ThisUser.UserName));

  // Populate the combo box with names of suppliers from the database
//  daMoLM1.LoadUsers(cmbUsers.Items);
  daMoLM1.LoadSuppliers(cmbSupplier.Items);


  For x:= 0 to cmbSupplier.Items.Count -1 do
  if ThisUser.CompanyNo = integer(cmbSupplier.Items.Objects[x]) then
  Begin
   cmbSupplier.ItemIndex:= x ;
   fSupplierNo:= integer(cmbSupplier.Items.Objects[x]);
  End ; 

  RefreshLoads ;
//  fSupplierNo:= integer(cmbSupplier.Items.Objects[cmbSupplier.ItemIndex]);
//  ToolbtnRefreshClick(Sender) ;


  // Set the supplier to be the company with which this user is associated
//  iSupplier := 0;
{  cmbSupplier.ItemIndex := -1;
  while (cmbSupplier.ItemIndex = -1) and (iSupplier < cmbSupplier.Items.Count) do
    if integer(cmbSupplier.Items.Objects[iSupplier]) = ThisUser.CompanyNo then begin
      cmbSupplier.ItemIndex := iSupplier;
      getSupplierLoadOrders(Self);
      end
    else
      inc(iSupplier); }

end;

destructor TfrmArrivingLoads.Destroy;
begin
  grdArrivingLoads.SaveToIniFile(ChangeFileExt(Application.ExeName, '.'+ThisUser.UserName));
  inherited;
end;


procedure TfrmArrivingLoads.ToolbtnRefreshClick(Sender: TObject);
begin
  inherited;
 RefreshLoads ;
end;

procedure TfrmArrivingLoads.RefreshLoads ;
var 
  Save_Cursor:TCursor;
begin
  inherited;
 Save_Cursor := Screen.Cursor;
 With daMoLM1 do
 Begin
 cdsArrivingLoads.DisableControls ;
 dsrcArrivingLoads.DataSet:= Nil ;

 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
// daMoLM1.dsrcArrivingLoads.OnDataChange:= Nil ;
 try

  if fSupplierNo > 0 then
  Begin
     cdsArrivingLoads.Active:= False ;
//  sq_ArrivingLoads.Close ;
     if  SomethingChanged = True then
     LoadArrivalLoadQuery ;
     sq_ArrivingLoads.ParamByName('SupplierNo').AsInteger:=   fSupplierNo ;
     cdsArrivingLoads.active:= True ;
//  sq_ArrivingLoads.Open ;
     cdsArrivingLoads.Active:= True ;
    end ;
 finally
  dsrcArrivingLoads.DataSet:= cdsArrivingLoads ;
  cdsArrivingLoads.EnableControls ;

//  dsrcArrivingLoads.OnDataChange:= dsrcArrivingLoadsDataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;


Function TfrmArrivingLoads.IsLoadValid(LoadNo, ShippingPlanNo, ObjectType : Integer;Sender: TObject) : Boolean ;
begin
 Result := False ;
 With daMoLM1 do
 Begin
  sq_Check_CDS_Link.Close ; 
  sq_Check_CDS_Link.ParamByName('LoadNo').AsInteger:= LoadNo ;
  sq_Check_CDS_Link.ParamByName('ShippingPlanNo').AsInteger:= ShippingPlanNo ;
  sq_Check_CDS_Link.ParamByName('ObjectType').AsInteger:= ObjectType ;
  sq_Check_CDS_Link.Open ;
  sq_Check_CDS_Link.First ;
  While not sq_Check_CDS_Link.Eof do
  Begin
   if ObjectType = 2 then
   Begin
    if sq_Check_CDS_LinkCustShipPlanDetailObjectNo.AsVariant = Null then
     Begin
      Result:= False ;
      Exit ;
     End ;
    if sq_Check_CDS_LinkSupplierShipPlanObjectNo.AsVariant = Null then
     Begin
      Result:= False ;
      Exit ;
     End ;
    Result := True ;
   End // objectType = 2
   else
   Begin
    if sq_Check_CDS_LinkSupplierShipPlanObjectNo.AsVariant = Null then
     Begin
      Result:= False ;
      Exit ;
     End ;
     Result := True ; 
   End ;
   sq_Check_CDS_Link.Next ;
  End ; // while


  sq_Check_CDS_Link.Close ;
 End ; // with
End ;

procedure TfrmArrivingLoads.ToolBtnConfirmLoadClick(Sender: TObject);
begin
  inherited;
 With daMoLM1 do
 Begin
//LARS Kolla att lasten ar ok
  if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
  Begin
   if cdsArrivingLoadsObjectType.AsInteger = 2 then
   ShowMessage('Kan inte ankomstregistrera lasten. Problem med länkning till Avrop eller LO, kolla att AVROP / LO samt LAST är OK ')
   else
   ShowMessage('Kan inte ankomstregistrera lasten. Problem med länkning till LO, kolla att LO samt Last är OK ') ;
   Exit ;
  End ;
  Try
  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= daMoLM1.cdsArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= daMoLM1.cdsArrivingLoadsLO.AsInteger ;
  sq_IsLoadConfirmed.Open ;
  if sq_IsLoadConfirmed.Eof then
  Begin

{  if (cdsArrivingLoadsSupplierNo.AsInteger = VIDA_WOOD_CLIENTNO)
  and (cdsArrivingLoadsCustomerNo.AsInteger = VIDA_WOOD_CLIENTNO)
  and (cdsArrivingLoadsObjectType.AsInteger = 2) then
   Begin
    ShowMessage('Vida Wood as supplier and customer. This load will be confirmed when invoiced. To change load open the load in AVROP.') ;
   end
    else }
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmLoad:= TformConfirmLoad.Create(Self);
      Try
       formConfirmLoad.OBJECTTYPE:=  cdsArrivingLoadsOBJECTTYPE.AsInteger ;
       formConfirmLoad.LO_CUSTOMERNO:=  cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmLoad.LO_SUPPLIERNO:=  cdsArrivingLoadsSUPPLIERNO.AsInteger ;
       formConfirmLoad.AVROP_CUSTOMERNO:=  cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger ;       
       formConfirmLoad.LoadNo:= cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmLoad.ShowModal ;
      Finally
       formConfirmLoad.Free ;
      End ;
     End
      else
       ShowMessage('Load status indicate problem within load, please correct before confirm.') ;
    End ;
  End //check IS load confirmed
  else
   ShowMessage('This load have already been confirmed by user id '+sq_IsLoadConfirmedCreatedUser.AsString) ;
  Finally
   sq_IsLoadConfirmed.Close ;
  End ;
 End ; //with

end;

procedure TfrmArrivingLoads.FormCreate(Sender: TObject);
begin
  inherited;
 cmbConfirmByReceiver.ItemIndex:= 0 ;
 SomethingChanged := True ;
end;

procedure TfrmArrivingLoads.cmbConfirmByReceiverChange(Sender: TObject);
begin
  inherited;
 SomethingChanged := True ; 
 if cmbConfirmByReceiver.ItemIndex = 0 then
  ToolBtnConfirmLoad.Enabled:= True
  else
  ToolBtnConfirmLoad.Enabled:= False ;
 ToolbtnRefreshClick(Sender) ;
end;

procedure TfrmArrivingLoads.ToolbtnDeleteLoadClick(Sender: TObject);
begin
  inherited;
 ShowMessage ('Delete funktionen ar tillfalligt ur bruk tills hantering av paket i makulerade laster ar klar') ;

{ if MessageDlg('Are you sure?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   With daMoLM1 do
   Begin
    sq_DeletePkgs.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
    sq_DeletePkgs.ExecSQL(false) ;

    sq_DeleteLoad.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
    sq_DeleteLoad.ExecSQL(false) ;
    ToolbtnRefreshClick(Sender) ;
   End ; //with
  End ; }
end;

procedure TfrmArrivingLoads.ToolbtnPrintLoadClick(Sender: TObject);
begin
  inherited;
 if daMoLM1.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Self);
 Try

 if daMoLM1.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRViewReport.CreateCo(Self,'TALLY_INTERNAL.RPT',Application.ExeName)
 else
 FormCRViewReport.CreateCo(Self,'TALLY.RPT',Application.ExeName) ;
// FormCRViewReport.report := FormCRViewReport.Application1.OpenReport(sPath+'TALLY.rpt', crOpenReportByTempCopy) ;
// FormCRViewReport.report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);

 FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(daMoLM1.cdsArrivingLoadsLOADNO.AsInteger);
 FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 Finally
  FormCRViewReport.Free ;
 End ;

end;

procedure TfrmArrivingLoads.cmbSupplierChange(Sender: TObject);
begin
  inherited;
   SomethingChanged := True ;
  fSupplierNo:= integer(cmbSupplier.Items.Objects[cmbSupplier.ItemIndex]);
  ToolbtnRefreshClick(Sender) ;
end;

procedure TfrmArrivingLoads.grdArrivingLoadsCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iCustomerNoColumn,
  iSupplierNoColumn,
  iObjectTypeColumn: integer;
  iObjectType: integer;
  bmpStatus: TBitmap;
  iSupplierNo, iCustomerNo : Integer ;
begin
//  inherited;
  if ColumnIsGrouped(AColumn, grdArrivingLoads) then
    Exit;

  // get the status of this LO
  iObjectTypeColumn := grdArrivingLoads.ColumnByName('grdArrivingLoadsOBJECTTYPE').Index;
  iObjectType := ANode.Values[iObjectTypeColumn];

  iSupplierNoColumn := grdArrivingLoads.ColumnByName('grdArrivingLoadsSUPPLIERNO').Index;
  iSupplierNo := ANode.Values[iSupplierNoColumn];

  iCustomerNoColumn := grdArrivingLoads.ColumnByName('grdArrivingLoadsCUSTOMERNO').Index;
  iCustomerNo := ANode.Values[iCustomerNoColumn];


  // Set the color for this row, based on LO status
  AColor := BackgroundColor(iObjectType, iSupplierNo,iCustomerNo);



end;

function TfrmArrivingLoads.BackgroundColor(iObjectType: integer;SupplierNo,CustomerNo : Integer) : TColor;
begin
 if iObjectType = 2 then
 Begin
  if SupplierNo <> 741 then
   Result:= $00E6FFFF
    else
     Result:= $00F4FFFF ;
 End
 else
 if iObjectType = 1 then
 Begin
  if CustomerNo <> 741 then
   Result:= $00FFEEDD
    else
     Result:= $00FFF9F2 ;
 End
  else
    Result := clWindow

{  assert(iStatus in [STATUS_PRELIMINARY..STATUS_COMPLETE], 'Invalid Status');
  case iStatus of
    STATUS_PRELIMINARY:  Result := ThisUser.clBackPreliminaryLO;
            STATUS_NEW:  Result := ThisUser.clBackNewLO;
       STATUS_REJECTED:  Result := ThisUser.clBackRejectedLO;
       STATUS_ACCEPTED:  Result := ThisUser.clBackAcceptedLO;
       STATUS_COMPLETE:  Result := ThisUser.clBackCompletedLO;
  else
    Result := clWindow
  end; }
end;

procedure TfrmArrivingLoads.LoadArrivalLoadQuery ;
Begin
with daMoLM1 do
Begin

 sq_ArrivingLoads.SQL.Clear ;
 sq_ArrivingLoads.SQL.Add('SELECT DISTINCT') ;
 sq_ArrivingLoads.SQL.Add('RTRIM(CONVERT(varchar(30), LSP.ShippingPlanNo))+RTRIM(CONVERT(varchar(30), L.LoadNo)) AS LIST_ID,');
 sq_ArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
 sq_ArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
 sq_ArrivingLoads.SQL.Add('L.FS				        AS	FS,');
 sq_ArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
 sq_ArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
 sq_ArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
 sq_ArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
 sq_ArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,');
 sq_ArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
 sq_ArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
 sq_ArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
 sq_ArrivingLoads.SQL.Add('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
 sq_ArrivingLoads.SQL.Add('isNull(IName.CityName, '''')		AS	INVPOINTNAME,');
 sq_ArrivingLoads.SQL.Add('SP.CustomerNo                           AS      CUSTOMERNO,');
 sq_ArrivingLoads.SQL.Add('Cust.ClientCode                         AS      CUSTOMER,');
 sq_ArrivingLoads.SQL.Add('SP.SupplierNo                           AS      SUPPLIERNO,');
 sq_ArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,');
 sq_ArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
 sq_ArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');
 sq_ArrivingLoads.SQL.Add('(SELECT US.INITIALS');
 sq_ArrivingLoads.SQL.Add(' FROM dbo.Confirmed_Load   CL, dbo.Users	US');
 sq_ArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
 sq_ArrivingLoads.SQL.Add('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
 sq_ArrivingLoads.SQL.Add('AND US.UserID = cl.CreatedUser) AS INITIALS');



 sq_ArrivingLoads.SQL.Add('FROM    dbo.Loads L');
 sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON	LSP.LoadNo 		= L.LoadNo');

 sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON 	SP.SHIPPINGPLANNO = LSP.SHIPPINGPLANNO');
 sq_ArrivingLoads.SQL.Add('                                             AND     SP.supplierno 			= L.ORIGINALSUPPLIERNO');
 sq_ArrivingLoads.SQL.Add('                                             AND SP.CustomerNo = L.CustomerNo');

 sq_ArrivingLoads.SQL.Add('left outer JOIN dbo.Client_LoadingLocation     CLL');
 sq_ArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	CLL.PhyInvPointNameNo = IName.CityNo');
 sq_ArrivingLoads.SQL.Add('						ON	CLL.PhyInvPointNameNo = SP.ShipToInvPointNo');


 sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');

 sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');



 sq_ArrivingLoads.SQL.Add('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');
 sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
 sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
 sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
 sq_ArrivingLoads.SQL.Add('					ON    CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');



 sq_ArrivingLoads.SQL.Add('	LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
 sq_ArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
 sq_ArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
 sq_ArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
 sq_ArrivingLoads.SQL.Add('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
 sq_ArrivingLoads.SQL.Add('							AND	ST.Reference		= CSD.Reference');





 sq_ArrivingLoads.SQL.Add('WHERE');
 if fSupplierNo = 741 then
 Begin
  sq_ArrivingLoads.SQL.Add('(CLL.ClientNo          = :SupplierNo  OR ') ;
  sq_ArrivingLoads.SQL.Add('CLL.ClientNo IS NULL)') ;
 End
 else
 Begin
  sq_ArrivingLoads.SQL.Add('CLL.ClientNo          = :SupplierNo') ;
//  sq_ArrivingLoads.SQL.Add('CLL.ClientNo IS NOT NULL)') ;
 End ;

 if cbOnlyShowVW.Checked then
 sq_ArrivingLoads.SQL.Add('AND SP.CustomerNo = 741') ;


 sq_ArrivingLoads.SQL.Add('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');

 if ToolBtnConfirmLoad.Enabled = True then
 sq_ArrivingLoads.SQL.Add('AND L.LOADNO NOT IN (SELECT Confirmed_LoadNo FROM dbo.Confirmed_Load )')
 else
  sq_ArrivingLoads.SQL.Add('AND L.LOADNO IN (SELECT Confirmed_LoadNo FROM dbo.Confirmed_Load )') ;

 sq_ArrivingLoads.SQL.Add('ORDER BY LSP.LoadNo');

// sq_ArrivingLoads.SQL.SaveToFile('sq_ArrivingLoads.TXT');
  SomethingChanged := False ;
End ;
End ;


procedure TfrmArrivingLoads.nfSearchLOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if Key <> VK_RETURN then Exit;
 With daMoLM1 do
 Begin
  cdsArrivingLoads.Locate('LO',nfSearchLO.AsInteger, []) ;
 End ; //with
end;

procedure TfrmArrivingLoads.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action:= caFree ;
end;

end.
