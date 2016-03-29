unit uPayControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseListForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ActnList, dxBar,
  cxClasses, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxLabel, cxCalc, cxCheckBox,
  cxCalendar, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxMaskEdit, StdCtrls, cxGridExportLink, SqlTimSt,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, ComCtrls, dxCore,
  cxDateUtils, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  System.Actions, siComp, siLngLnk;

type
  TfPayControl = class(TfBaseListForm)
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bcInvoiceType: TcxComboBox;
    bcFakturaStatus: TcxComboBox;
    deFOM: TcxDateEdit;
    grdInvPaid: TcxGrid;
    grdInvPaidDBTableView1: TcxGridDBTableView;
    grdInvPaidDBTableView1FAKTURANR: TcxGridDBColumn;
    grdInvPaidDBTableView1FAKTURA_DATUM: TcxGridDBColumn;
    grdInvPaidDBTableView1KUND: TcxGridDBColumn;
    grdInvPaidDBTableView1AGENT: TcxGridDBColumn;
    grdInvPaidDBTableView1BETALVILLKOR: TcxGridDBColumn;
    grdInvPaidDBTableView1BELOPP: TcxGridDBColumn;
    grdInvPaidDBTableView1KASSARABATT: TcxGridDBColumn;
    grdInvPaidDBTableView1BELOP_EXKL_KASSA: TcxGridDBColumn;
    grdInvPaidDBTableView1BETALD: TcxGridDBColumn;
    grdInvPaidDBTableView1DATUM_BETALD: TcxGridDBColumn;
    grdInvPaidDBTableView1SUMMA_BETALD: TcxGridDBColumn;
    grdInvPaidDBTableView1MEDDELANDE: TcxGridDBColumn;
    grdInvPaidDBTableView1VALUTA: TcxGridDBColumn;
    grdInvPaidDBTableView1POST_IT: TcxGridDBColumn;
    grdInvPaidDBTableView1VARUVARDE_NO_FREIGHT: TcxGridDBColumn;
    grdInvPaidDBTableView1PROVISION: TcxGridDBColumn;
    grdInvPaidDBTableView1Trading: TcxGridDBColumn;
    grdInvPaidDBTableView1FRAKT: TcxGridDBColumn;
    grdInvPaidDBTableView1AttBetala: TcxGridDBColumn;
    grdInvPaidLevel1: TcxGridLevel;
    dxBarLargeButton5: TdxBarLargeButton;
    acCancelChanges: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    Panel7: TPanel;
    Label4: TLabel;
    Edit1: TEdit;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acOpenInvoice: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    siLangLinked1: TsiLangLinked;
    procedure acRefreshExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acExportXLSExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acSaveUpdate(Sender: TObject);
    procedure acOpenInvoiceExecute(Sender: TObject);
    procedure acOpenInvoiceUpdate(Sender: TObject);
    procedure acExportXLSUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure OpenInvoice(const IntInvNo, IntInvNoToAttestAgainst,
      DelKredit: Integer);
    function DataSparat: Boolean;
    function ActiveChanges(Sender: TObject): Boolean;
    procedure GenerateSQL(Sender: TObject; const InvoiceNo: Integer);
  public
    { Public declarations }
  end;

var
  fPayControl: TfPayControl;

implementation

uses UnitdmModule1, dmsVidaSystem, VidaUser, dmcVidaInvoice, fInvoice,
  udmLanguage;

{$R *.dfm}

function TfPayControl.DataSparat: Boolean;
begin
  Result := True;
  With dmModule1 do
  Begin
    if cds_InvoicePayStatus.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_InvoicePayStatus.ChangeCount > 0 then
      Result := False;
  End;
end;

procedure TfPayControl.acRefreshExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
  InvoiceNo: Integer;
begin
  inherited;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  InvoiceNo := 0;

  Try

    With dmModule1 do
    Begin
      if ActiveChanges(Sender) then
        if MessageDlg('Ändringar ej sparade.  vill du spara ?', mtConfirmation,
          [mbYes, mbNo], 0) = mrYes then
          acSaveExecute(Sender)
        else
          acCancelChangesExecute(Sender);

      if cds_InvoicePayStatus.Active then
        InvoiceNo := cds_InvoicePayStatusFAKTURANR.AsInteger;
      cds_InvoicePayStatus.Active := False;
      GenerateSQL(Sender, -1);
      cds_InvoicePayStatus.Active := True;
      if InvoiceNo > 0 then
        if not cds_InvoicePayStatus.FindKey([InvoiceNo]) then;
    End;

  Finally
    Screen.Cursor := Save_Cursor;
  End;

end;

procedure TfPayControl.acSaveExecute(Sender: TObject);
begin
  inherited;
  With dmModule1 do
  Begin
    ApplyUpdatesToInvoicePayStatus;

    // cds_InvoicePayStatus.co

    cds_InvoicePayStatus.CancelUpdates;
    cds_InvoicePayStatus.Refresh;

    acRefreshExecute(Sender);

    { if cds_InvoicePayStatus.State in [dsEdit, dsInsert] then
      cds_InvoicePayStatus.Post ;
      if cds_InvoicePayStatus.ChangeCount > 0 then
      Begin
      if cds_InvoicePayStatus.ApplyUpdates(0) = 0 then
      Begin
      cds_InvoicePayStatus.CommitUpdates ;
      acRefreshExecute(Sender) ;
      End ;
      End ; }

  End;
end;

function TfPayControl.ActiveChanges(Sender: TObject): Boolean;
begin
  With dmModule1 do
  Begin
    if (cds_InvoicePayStatus.ChangeCount > 0) or
      (cds_InvoicePayStatus.State in [dsEdit, dsInsert]) then
      Result := True
    else
      Result := False;
  End;
end;

procedure TfPayControl.acCancelChangesExecute(Sender: TObject);
begin
  inherited;
  With dmModule1 do
  Begin
    if cds_InvoicePayStatus.ChangeCount > 0 then
      cds_InvoicePayStatus.CancelUpdates;
  End;
end;

procedure TfPayControl.acExportXLSExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName: String;
begin
  inherited;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    SaveDialog1.Filter := 'Excel files (*.xlsx)|*.xlsx';
    SaveDialog1.DefaultExt := 'xlsx';
    SaveDialog1.InitialDir := dmsSystem.Get_Dir('ExcelDir');
    if SaveDialog1.Execute then
    Begin
      FileName := SaveDialog1.FileName;
//      ExportGridToExcel(FileName, grdInvPaid, False, False, True, 'xls');
      ExportGridToXLSX(FileName, grdInvPaid, true,true,true,'xlsx');
      ShowMessage('Tabell exporterad till Excel fil ' + FileName);
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfPayControl.GenerateSQL(Sender: TObject; const InvoiceNo: Integer);
Begin
  With dmModule1 do
  Begin
    cds_InvoicePayStatus.SQL.Clear;
    cds_InvoicePayStatus.SQL.Add('Select inos.InvoiceNo AS FAKTURANR,');
    cds_InvoicePayStatus.SQL.Add
      ('IH.QuickInvoice, IH.InternalInvoiceNo AS IH_InternalInvoiceNo,');
    cds_InvoicePayStatus.SQL.Add
      ('IH.InvoiceDate AS FAKTURA_DATUM, CR.idXOR AS KUND, IH.AgentName AS AGENT,');
    cds_InvoicePayStatus.SQL.Add('IH.PaymentDescription AS BETALVILLKOR,');
    cds_InvoicePayStatus.SQL.Add
      ('ROUND(CAST((  IH.Inv_Value_To_Be_Paid_2    ) As decimal(18,2)),2) AS BELOPP,');
    cds_InvoicePayStatus.SQL.Add
      ('ROUND(CAST((  IH.Discount    ) As decimal(18,2)),2) AS KASSARABATT,');
    cds_InvoicePayStatus.SQL.Add
      ('ROUND(CAST((  IH.Inv_Value_To_Be_Paid_2-IH.Discount    ) As decimal(18,2)),2) AS BELOP_EXKL_KASSA,');
    cds_InvoicePayStatus.SQL.Add
      ('isnull(IP.Paid,0) AS Paid, IP.DatePaid, IP.AmountPaid, IP.Note,');
    cds_InvoicePayStatus.SQL.Add('IP.InternalInvoiceNo,');
    cds_InvoicePayStatus.SQL.Add('IH.CurrencyName AS VALUTA,');
    cds_InvoicePayStatus.SQL.Add('IH.StickyNote AS POST_IT,');
    cds_InvoicePayStatus.SQL.Add
      ('IH.Total_Product_Value_No_Freight AS VARUVARDE_NO_FREIGHT,');
    cds_InvoicePayStatus.SQL.Add('IH.Commission AS PROVISION, IH.Trading, ');
    cds_InvoicePayStatus.SQL.Add
      (' (Select SUM(InD.ProductValue) from dbo.InvoiceDetail InD');
    cds_InvoicePayStatus.SQL.Add('WHERE');
    cds_InvoicePayStatus.SQL.Add
      ('InD.InternalInvoiceNo = IH.InternalInvoiceNo');
    cds_InvoicePayStatus.SQL.Add('AND (InD.TypeOfRow = 2');
    cds_InvoicePayStatus.SQL.Add('OR InD.TypeOfRow = 3)) AS FRAKT');

    cds_InvoicePayStatus.SQL.Add('FROM dbo.InvoiceHeader IH');
    cds_InvoicePayStatus.SQL.Add
      ('Left Outer Join dbo.InvoiceNos inos on inos.InternalInvoiceNo = IH.InternalInvoiceNo');

    Case bcInvoiceType.ItemIndex of
      0:
        cds_InvoicePayStatus.SQL.Add
          ('Inner join dbo.InvoiceNumber INV on INV.InternalInvoiceNo = IH.InternalInvoiceNo');
      1:
        cds_InvoicePayStatus.SQL.Add
          ('Inner join dbo.ProformaInvoiceNumber INV on INV.InternalInvoiceNo = IH.InternalInvoiceNo');
      2:
        cds_InvoicePayStatus.SQL.Add
          ('Inner join dbo.ProformaInvoiceNumber INV on INV.InternalInvoiceNo = IH.InternalInvoiceNo');
      3:
        cds_InvoicePayStatus.SQL.Add
          ('Inner join dbo.InvoiceNumber_PO INV on INV.InternalInvoiceNo = IH.InternalInvoiceNo');
      4:
        cds_InvoicePayStatus.SQL.Add
          ('Inner join dbo.InvoiceNo_USA INV on INV.InternalInvoiceNo = IH.InternalInvoiceNo');
      5:
        cds_InvoicePayStatus.SQL.Add
          ('Inner join dbo.InvNo_FW INV on INV.InternalInvoiceNo = IH.InternalInvoiceNo');
    End;

    cds_InvoicePayStatus.SQL.Add
      ('INNER JOIN  dbo.ClientRole    CR ON CR.ClientNo = IH.CustomerNo');
    cds_InvoicePayStatus.SQL.Add
      ('LEFT OUTER JOIN dbo.InvoicePayStatus IP ON IP.InternalInvoiceNo = IH.InternalInvoiceNo');
    cds_InvoicePayStatus.SQL.Add('WHERE CR.RoleType = 1');

    if InvoiceNo <= 0 then
    Begin

      if bcFakturaStatus.ItemIndex = 2 then // FULL BETALDA
        cds_InvoicePayStatus.SQL.Add
          (' AND IH.InvoiceDate >= :StartInvoiceDate');


      // DEL OCH OBETALDA
      // ENDAST DEL BETALDA
      // FULL BETALDA

      if bcFakturaStatus.ItemIndex = 0 then // DEL OCH OBETALDA
      Begin
        cds_InvoicePayStatus.SQL.Add('AND IH.InternalInvoiceNo not IN');
        cds_InvoicePayStatus.SQL.Add
          ('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 1)');
      End
      else if bcFakturaStatus.ItemIndex = 1 then // ENDAST DEL BETALDA
      Begin
        cds_InvoicePayStatus.SQL.Add('AND IH.InternalInvoiceNo IN');
        cds_InvoicePayStatus.SQL.Add
          ('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 0 AND AmountPaid > 0)');
      End
      else if bcFakturaStatus.ItemIndex = 2 then // FULL BETALDA
      Begin
        cds_InvoicePayStatus.SQL.Add('AND IH.InternalInvoiceNo IN');
        cds_InvoicePayStatus.SQL.Add
          ('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 1)');
      End;

      if bcFakturaStatus.ItemIndex = 2 then // FULL BETALDA
        cds_InvoicePayStatus.ParamByName('StartInvoiceDate').AsSQLTimeStamp :=
          DateTimeToSQLTimeStamp(deFOM.Date);

    End
    else if InvoiceNo > -1 then
    Begin
      cds_InvoicePayStatus.SQL.Add('AND inos.InvoiceNo = ' +
        IntToStr(InvoiceNo));
    End;
    // if thisuser.UserID = 8 then cds_InvoicePayStatus.SQL.SaveToFile('cds_InvoicePayStatus.txt');

  End; // With
End;

procedure TfPayControl.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsForm.AsString := Self.Name;

end;

procedure TfPayControl.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Status: Integer;
begin
  inherited;
  if Key <> VK_RETURN then
    Exit;
  With dmModule1 do
  Begin
    if not cds_InvoicePayStatus.FindKey([StrToIntDef(Trim(Edit1.Text), 0)]) then
    Begin
      cds_InvoicePayStatus.Active := False;
      GenerateSQL(Sender, StrToIntDef(Trim(Edit1.Text), 0));
      cds_InvoicePayStatus.Active := True;
      grdInvPaid.SetFocus;
    End;
    Edit1.Text := '';
  End;
end;

procedure TfPayControl.acSaveUpdate(Sender: TObject);
begin
  inherited;
  acSave.Enabled := not DataSparat;
end;

procedure TfPayControl.acOpenInvoiceExecute(Sender: TObject);
begin
  inherited;
  with dmModule1 do
  Begin
    OpenInvoice(grdInvPaidDBTableView1.DataController.DataSet.FieldByName
      ('IH_InternalInvoiceNo').AsInteger, -1, -1);
  End;
end;

procedure TfPayControl.acOpenInvoiceUpdate(Sender: TObject);
begin
  inherited;
  With dmModule1 do
  Begin
    acOpenInvoice.Enabled :=
      (grdInvPaidDBTableView1.DataController.DataSet.Active) and
      (grdInvPaidDBTableView1.DataController.DataSet.RecordCount > 0);
  End;
end;

procedure TfPayControl.acExportXLSUpdate(Sender: TObject);
begin
  inherited;
  With dmModule1 do
  Begin
    acExportXLS.Enabled :=
      (grdInvPaidDBTableView1.DataController.DataSet.Active) and
      (grdInvPaidDBTableView1.DataController.DataSet.RecordCount > 0);
  End;
end;

procedure TfPayControl.OpenInvoice(const IntInvNo, IntInvNoToAttestAgainst,
  DelKredit: Integer);
Var
  frmInvoice: TfrmInvoice;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    with dmVidaInvoice do
    Begin
      frmInvoice := TfrmInvoice.Create(NIL);
      Try
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cdsInvoiceShipTo.Active := True;
        frmInvoice.TabControl1.Tabs.Clear;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cdsInvoiceHead.Active := False;
        cdsInvoiceHead.ParamByName('InternalInvoiceNo').AsInteger := IntInvNo;
        // cdsInvoiceHead.Open ;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cdsInvoiceHead.Active := True;

        if (IntInvNoToAttestAgainst > 0) and (DelKredit > 0) then
        Begin
          cdsInvoiceHead.Edit;
          cdsInvoiceHeadIntInvNoToAttestAgainst.AsInteger :=
            IntInvNoToAttestAgainst;
          cdsInvoiceHeadDelKredit.AsInteger := DelKredit;
          cdsInvoiceHead.Post;
        End;

        cdsInvoiceLO.Active := False;
        // sq_InvoiceLO.Close ;
        cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger := IntInvNo;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        // cdsInvoiceLO.Active:= False ;
        // cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString ;
        // cdsInvoiceLO.Filtered:= True ;

        cdsInvoiceLO.Active := True;

        cds_PIP.Active := False;
        cds_PIP.ParamByName('OwnerNo').AsInteger :=
          cdsInvoiceHeadSupplierNo.AsInteger;
        cds_PIP.Active := True;

        cds_IH_SpecLoad.Active := False;
        cds_IH_SpecLoad.ParamByName('InternalInvoiceNo').AsInteger := IntInvNo;
        cds_IH_SpecLoad.Active := True;
        if cds_IH_SpecLoad.RecordCount = 0 then
        Begin
          cds_IH_SpecLoad.Insert;
          cds_IH_SpecLoad.Post;
        End;

        cdsInvoiceLO.First;
        While not cdsInvoiceLO.Eof do
        Begin
          frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString);
          cdsInvoiceLO.Next;
        End;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }

        if frmInvoice.TabControl1.Tabs.Count > 0 then
        Begin
          cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
            cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND ShippingPlanNo = '
            + frmInvoice.TabControl1.Tabs[0];
          cdsInvoiceLO.Filtered := True;
          cdsInvoiceDetail.Close;
          cdsInvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger
            := IntInvNo;
          cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
            cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND ShippingPlanNo = '
            + frmInvoice.TabControl1.Tabs[0];
          cdsInvoiceDetail.Filtered := True;
          cdsInvoiceDetail.Active := True;
          Screen.Cursor := crSQLWait; { Show hourglass cursor }

          frmInvoice.ShowModal;

          if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
            dmVidaInvoice.cds_IH_SpecLoad.Post;
          if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
          Begin
            dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0);
            dmVidaInvoice.cds_IH_SpecLoad.CommitUpdates;
          End;
        End
        else
        Begin
          Exit;
        End;

      Finally
        fInternalInvoiceNo := -1;
        cdsInvoiceDetail.Close;
        cdsInvoiceLO.Filtered := False;
        cdsInvoiceLO.Active := False;
        cdsInvoiceDetail.Filtered := False;
        cdsInvoiceDetail.Filter := '';
        cdsInvoiceDetail.Active := False;
        cdsInvoiceShipTo.Active := False;
        FreeAndNil(frmInvoice);
      End;
    End; // with
  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
End;

procedure TfPayControl.FormCreate(Sender: TObject);
begin
  inherited;
  if (not Assigned(dmVidaInvoice)) then
    dmVidaInvoice := TdmVidaInvoice.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmFreightExternLoad', 'dmVidaInvoice');
  dmsSystem.LoadGridLayout(ThisUser.UserID, grdInvPaidDBTableView1.Name,
    grdInvPaidDBTableView1);
  deFOM.Date := Date;
end;

procedure TfPayControl.FormDestroy(Sender: TObject);
begin
  inherited;
  if dmsSystem.DeleteAssigned('TfrmFreightExternLoad', 'dmVidaInvoice') = True
  then
  Begin
    dmVidaInvoice.Free;
    dmVidaInvoice := Nil;
  End;
end;

procedure TfPayControl.acCancelChangesUpdate(Sender: TObject);
begin
  inherited;
  acCancelChanges.Enabled := not DataSparat;
end;

procedure TfPayControl.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  dmsSystem.StoreGridLayout(ThisUser.UserID, grdInvPaidDBTableView1.Name,
    grdInvPaidDBTableView1);
end;

end.
