unit fMoveInvPkgToInventory;

// Move packages on inventory to selected inventory
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, Menus,
  Db, dxmdaset,
  dxBar, dxBarExtItems,
  ImgList, Variants,
  Grids, DBGrids,
  kbmMemTable, SqlTimSt, cxPC,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid,
  ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxDBEdit, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxNavigator,
  dxSkinsdxBarPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, System.Actions, siComp, siLngLnk;

type
  TformfMoveInvPkgToInventory = class(TForm)
    PanelKontraktHuvud: TPanel;
    Panel35: TPanel;
    Panel4: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager22: TdxBarManager;
    dxBarLargeCLOSE: TdxBarLargeButton;
    dxBarConfirmLoad: TdxBarLargeButton;
    Panel6: TPanel;
    dsRemovedPkgs: TDataSource;
    dxPageControl1: TcxPageControl;
    dxTSMain: TcxTabSheet;
    Panel7: TPanel;
    imglOutbar_large: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxBarConfirmLoadAndManuallyInvoiceNo: TdxBarLargeButton;
    grdPkgGridDBTableView1: TcxGridDBTableView;
    grdPkgGridLevel1: TcxGridLevel;
    grdPkgGrid: TcxGrid;
    grdPkgGridDBTableView1LoadNo: TcxGridDBColumn;
    grdPkgGridDBTableView1LoadDetailNo: TcxGridDBColumn;
    grdPkgGridDBTableView1PackageNo: TcxGridDBColumn;
    grdPkgGridDBTableView1SupplierCode: TcxGridDBColumn;
    grdPkgGridDBTableView1ProductDescription: TcxGridDBColumn;
    grdPkgGridDBTableView1Pieces: TcxGridDBColumn;
    grdPkgGridDBTableView1AktM3: TcxGridDBColumn;
    grdPkgGridDBTableView1PcsPerLength: TcxGridDBColumn;
    grdPkgGridDBTableView1LINEAL_MET: TcxGridDBColumn;
    ActionList1: TActionList;
    acGenInvNoManually: TAction;
    acGenInvNoAutomatically: TAction;
    acClose: TAction;
    mtProps: TkbmMemTable;
    mtPropsFakturanr: TIntegerField;
    mtPropsPIPNo: TIntegerField;
    mtPropsLIPNo: TIntegerField;
    meFakturanr: TcxDBMaskEdit;
    lcPIP: TcxDBLookupComboBox;
    lcLIP: TcxDBLookupComboBox;
    dsProps: TDataSource;
    ds_LIP2: TDataSource;
    ds_PIP2: TDataSource;
    cds_PIP2: TFDQuery;
    cds_PIP2PIPNO: TIntegerField;
    cds_PIP2PIPNAME: TStringField;
    cds_LIP2: TFDQuery;
    cds_LIP2LIPNo: TIntegerField;
    cds_LIP2LIPName: TStringField;
    mtPropsPIP: TStringField;
    mtPropsLIP: TStringField;
    mtPropsOwnerNo: TIntegerField;
    cds_GetInvoicedPkgs: TFDQuery;
    cds_GetInvoicedPkgsInternalInvoiceNo: TIntegerField;
    cds_GetInvoicedPkgsDESCRIPTION: TStringField;
    cds_GetInvoicedPkgsPKGNO: TIntegerField;
    cds_GetInvoicedPkgsSUPPCODE: TStringField;
    cds_GetInvoicedPkgsPKGTYPENO: TIntegerField;
    cds_GetInvoicedPkgsNOOFPCS: TIntegerField;
    cds_GetInvoicedPkgsLINEAL_MET: TFloatField;
    cds_GetInvoicedPkgsM3_ACT: TFloatField;
    cds_GetInvoicedPkgsLoadNo: TIntegerField;
    cds_GetInvoicedPkgsLoadDetailNo: TIntegerField;
    cds_GetInvoicedPkgsPCS_PER_LENGTH: TStringField;
    sq_Insert_Confirmed_Load: TFDQuery;
    sq_Insert_Confirmed_Package_Log: TFDQuery;
    sq_ChangeInventory_PackageNumber: TFDQuery;
    sq_Delete_Delete_Confirmed_Package_Log: TFDQuery;
    sq_ProformaInvNo: TFDQuery;
    sq_ProformaInvNoInternalInvoiceNo: TIntegerField;
    GetPIPandLIPNos: TFDQuery;
    GetPIPandLIPNosShipToCityNo: TIntegerField;
    GetPIPandLIPNosShipToLIPNo: TIntegerField;
    siLangLinked_formfMoveInvPkgToInventory: TsiLangLinked;
    procedure FormShow(Sender: TObject);
    procedure dxBarConfirmLoadClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acGenInvNoManuallyExecute(Sender: TObject);
    procedure acGenInvNoAutomaticallyExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acGenInvNoManuallyUpdate(Sender: TObject);
    procedure acGenInvNoAutomaticallyUpdate(Sender: TObject);
    procedure mtPropsPIPNoChange(Sender: TField);
  private
    InvoiceNoAssigned: Boolean;
    { Private declarations }
    // procedure SetConfirmed_Load_Table(Sender: TObject) ;
    Procedure SetPIPandLIPNo;
    procedure PopulatePackageTableWithPkgNo(Sender: TObject);
    // function  ChangeInventoryOnPackagesWithPKGNO(Sender: TObject;Var NoOfPkgsMoved : Integer) : Boolean ;
    procedure Insert_Confirmed_Log_and_Confirmed_Package_Log;
    Function ProformaInvNoExist: Integer;
  public
    { Public declarations }
    // AVROP_CUSTOMERNO, LO_SUPPLIERNO,
    LO_CUSTOMERNO: Integer;
    InternalInvoiceNo: Integer;
    LONo: Integer;
  end;

implementation

uses dmsDataConn, VidaUser, dmcVidaInvoice,
  dmsVidaContact, dmsVidaSystem, udmLanguage;

{$R *.DFM}

Procedure TformfMoveInvPkgToInventory.SetPIPandLIPNo;
Begin
  mtProps.Edit;
  GetPIPandLIPNos.ParamByName('ShippingPlanNo').AsInteger := LONo;
  GetPIPandLIPNos.Active := True;
  Try
    if not GetPIPandLIPNos.Eof then
    Begin
      if not GetPIPandLIPNosShipToCityNo.IsNull then
        mtPropsPIPNo.AsInteger := GetPIPandLIPNosShipToCityNo.AsInteger;
      if not GetPIPandLIPNosShipToLIPNo.IsNull then
        mtPropsLIPNo.AsInteger := GetPIPandLIPNosShipToLIPNo.AsInteger;
    End
  Finally
    GetPIPandLIPNos.Active := False;
  End;
  if mtProps.State in [dsEdit] then
    mtProps.Post;
End;

procedure TformfMoveInvPkgToInventory.FormShow(Sender: TObject);
// Var PIPNo, LIPNo : Integer ;
begin
  // dxMDRemovedPkgs.Open ;
  // dxMDNewPkgs.Active:= True ;

  // dmArrivingLoads.sq_MovePkgNumber.Close ;
  // dmArrivingLoads.sq_MovePkgNumber.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  // dmArrivingLoads.cdsMovePkgNumber.Active:= True ;
  // if dmArrivingLoads.cdsMovePkgNumber.RecordCount = 0 then
  // showmessage('0 paket') ;


  // dm_UserProps.LoadUserProps('TformfMoveInvPkgToInventory', mtUserProp) ;

  // LM? dmArrivingLoads.cdsConfirmed_Load.Active:= True ;

  PopulatePackageTableWithPkgNo(Sender);

  mtProps.Active := False;
  mtProps.Active := True;

  mtProps.Insert;
  mtPropsOwnerNo.AsInteger := LO_CUSTOMERNO;
  mtProps.Post;

  cds_PIP2.Active := False;
  cds_PIP2.ParamByName('OwnerNo').AsInteger := mtPropsOwnerNo.AsInteger;
  cds_PIP2.Active := True;

  if (cds_PIP2.Active) and (cds_PIP2.RecordCount > 0) and
    (cds_PIP2PIPNO.AsInteger > 0) then
  Begin
    cds_LIP2.Active := False;
    cds_LIP2.ParamByName('PIPNo').AsInteger := cds_PIP2PIPNO.AsInteger;
    cds_LIP2.Active := True;
  End
  else
  Begin
    cds_LIP2.Active := False;
    cds_LIP2.ParamByName('PIPNo').AsInteger := -1;
    cds_LIP2.Active := True;
  End;

  SetPIPandLIPNo;
end;

procedure TformfMoveInvPkgToInventory.PopulatePackageTableWithPkgNo
  (Sender: TObject);
begin
  // With dmVidaInvoice do
  // Begin
  // dxMDRemovedPkgs.DisableControls ;
  cds_GetInvoicedPkgs.DisableControls;
  Try
    cds_GetInvoicedPkgs.Active := False;
    cds_GetInvoicedPkgs.ParamByName('InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    // sq_GetInvoicedPkgs.Open ;
    cds_GetInvoicedPkgs.Active := True;
    { While not sq_GetInvoicedPkgs.Eof do
      Begin
      dxMDRemovedPkgs.Insert ;
      dxMDRemovedPkgsPackageNo.AsInteger        := sq_GetInvoicedPkgs.FieldByName('PKGNO').AsInteger ;
      dxMDRemovedPkgsSupplierCode.AsString      := sq_GetInvoicedPkgs.FieldByName('SUPPCODE').AsString ;
      dxMDRemovedPkgsPackageTypeNo.AsInteger    := sq_GetInvoicedPkgs.FieldByName('PKGTYPENO').AsInteger ;
      dxMDRemovedPkgsProductDescription.AsString:= sq_GetInvoicedPkgs.FieldByName('DESCRIPTION').AsString ;
      dxMDRemovedPkgsPieces.AsInteger           := sq_GetInvoicedPkgs.FieldByName('NOOFPCS').AsInteger ;
      dxMDRemovedPkgsPcsPerLength.AsString      := sq_GetInvoicedPkgs.FieldByName('PCS_PER_LENGTH').AsString ;
      dxMDRemovedPkgsAktM3.AsFloat              := sq_GetInvoicedPkgs.FieldByName('M3_ACT').AsFloat ;
      dxMDRemovedPkgsLINEAL_MET.AsFloat         := sq_GetInvoicedPkgs.FieldByName('LINEAL_MET').AsFloat ;
      dxMDRemovedPkgs.Post ;
      sq_GetInvoicedPkgs.Next ;
      End ;
      sq_GetInvoicedPkgs.Close ; }
  Finally
    cds_GetInvoicedPkgs.EnableControls;
    // dxMDRemovedPkgs.EnableControls ;
  End;
  // End ; // with
end;


// Change inventory location of packages removed from load
(* function TformfMoveInvPkgToInventory.ChangeInventoryOnPackagesWithPKGNO(Sender: TObject;Var NoOfPkgsMoved : Integer) : Boolean ;
  //Var SupplierCode : String ;
  Begin
  Result:= False ;
  NoOfPkgsMoved:= 0 ;
  if cds_GetInvoicedPkgs.RecordCount > 0 then
  Begin
  with dmArrivingLoads do
  Begin
  cds_GetInvoicedPkgs.DisableControls ;
  Try
  //Change inventory in PACKAGENUMBER
  cds_GetInvoicedPkgs.First ;
  While not dxMDRemovedPkgs.Eof do
  Begin
  //  SupplierCode:= Trim(cds_GetInvoicedPkgsSUPPCODE.AsString) ;
  if cdsMovePkgNumber.Locate('PackageNo;SupplierCode', VarArrayOf([cds_GetInvoicedPkgsPKGNO.AsInteger, cds_GetInvoicedPkgsSUPPCODE.AsString]),[]) then
  Begin
  //Set Package Status to 1 and put into selected Inventory
  cdsMovePkgNumber.Edit ;
  Try
  cdsMovePkgNumberLogicalInventoryPointNo.AsInteger:= integer(cmbLogicalInv.Items.Objects[cmbLogicalInv.ItemIndex]) ;
  cdsMovePkgNumberStatus.AsInteger:= 1 ;
  cdsMovePkgNumber.Post ;
  NoOfPkgsMoved:= Succ(NoOfPkgsMoved) ;
  Except
  showMessage('Problem, cannot change packageno ' + cds_GetInvoicedPkgsPKGNO.AsString+' / ' + cds_GetInvoicedPkgsSUPPCODE.AsString) ;
  Result := True ;
  End ;

  End
  else
  Begin
  showMessage('Problem, cannot find packageno ' + cds_GetInvoicedPkgsPKGNO.AsString + ' / ' + cds_GetInvoicedPkgsSUPPCODE.AsString) ;
  Result := True ;
  Exit ;
  End ;

  cds_GetInvoicedPkgs.Next ;
  End ;


  Finally
  cds_GetInvoicedPkgs.EnableControls ;
  End ;
  End ; //with
  End ;
  End ; *)

// Move ALL packages to Vida_Wood Transfer inventory from current Transfer inventory
procedure TformfMoveInvPkgToInventory.dxBarConfirmLoadClick(Sender: TObject);
begin

end;

// Get invoiced load not confirmed and confirmed them so no changes can be made to them
// If load is confirmed already then "sq_GetInvoicedLods" does not return anything
(* procedure TformfMoveInvPkgToInventory.SetConfirmed_Load_Table(Sender: TObject) ;
  Begin
  With dmVidaInvoice, dmArrivingLoads do
  Begin
  //fixa logg på paketnr här
  sq_GetInvoicedLods.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
  sq_GetInvoicedLods.Open ;
  While not sq_GetInvoicedLods.Eof do
  Begin
  cdsConfirmed_Load.Insert ;
  cdsConfirmed_LoadConfirmed_LoadNo.AsInteger            := sq_GetInvoicedLodsLoadNo.AsInteger ;
  cdsConfirmed_LoadConfirmed_ShippingPlanNo.AsInteger    := sq_GetInvoicedLodsShippingPlanNo.AsInteger ;
  cdsConfirmed_LoadNewLoadNo.AsInteger                   := sq_GetInvoicedLodsLoadNo.AsInteger ;
  cdsConfirmed_LoadNewShippingPlanNo.AsInteger           := sq_GetInvoicedLodsShippingPlanNo.AsInteger ;
  cdsConfirmed_LoadDateCreated.AsSQLTimeStamp            := DateTimeToSQLTimeStamp(Now) ;
  cdsConfirmed_LoadCreatedUser.AsInteger                 := ThisUser.UserID ;
  cdsConfirmed_LoadModifiedUser.AsInteger                := ThisUser.UserID ;
  cdsConfirmed_Load.Post ;
  sq_GetInvoicedLods.Next ;
  End ;
  sq_GetInvoicedLods.Close ;
  End ; //with
  End ; *)

// Aktiverar paketet och ger det nytt lagerställe
procedure TformfMoveInvPkgToInventory.Insert_Confirmed_Log_and_Confirmed_Package_Log;
Begin
  Try
    sq_Delete_Delete_Confirmed_Package_Log.ParamByName('InternalInvoiceNo')
      .AsInteger := InternalInvoiceNo;
    sq_Delete_Delete_Confirmed_Package_Log.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      ShowMessage(E.Message);
      Raise;
    End;
  end;

  Try
    sq_Insert_Confirmed_Load.ParamByName('InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sq_Insert_Confirmed_Load.ParamByName('UserID').AsInteger := ThisUser.UserID;
    sq_Insert_Confirmed_Load.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      ShowMessage(E.Message);
      Raise;
    End;
  end;

  Try
    sq_Insert_Confirmed_Package_Log.ParamByName('InternalInvoiceNo').AsInteger
      := InternalInvoiceNo;
    sq_Insert_Confirmed_Package_Log.ParamByName('ToLIPNo').AsInteger :=
      mtPropsLIPNo.AsInteger;
    sq_Insert_Confirmed_Package_Log.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      ShowMessage(E.Message);
      Raise;
    End;
  end;

  Try
    sq_ChangeInventory_PackageNumber.ParamByName('InternalInvoiceNo').AsInteger
      := InternalInvoiceNo;
    sq_ChangeInventory_PackageNumber.ParamByName('ToLIPNo').AsInteger :=
      mtPropsLIPNo.AsInteger;
    sq_ChangeInventory_PackageNumber.ParamByName('Status').AsInteger := 1;
    // Aktivera paket i lagret
    sq_ChangeInventory_PackageNumber.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      ShowMessage(E.Message);
      Raise;
    End;
  end;

End;

procedure TformfMoveInvPkgToInventory.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // dxMDNewPkgs.Close ;
  // dxMDRemovedPkgs.Close ;
  // LM? dmArrivingLoads.cdsConfirmed_Load.Active := False ;
  // dmArrivingLoads.cdsMovePkgNumber.Active  := False ;
  cds_GetInvoicedPkgs.Active := False;

  cds_PIP2.Active := False;
  CanClose := True;
end;

Function TformfMoveInvPkgToInventory.ProformaInvNoExist: Integer;
Begin
  sq_ProformaInvNo.ParamByName('ProformaInvoiceNo').AsInteger :=
    mtPropsFakturanr.AsInteger;
  sq_ProformaInvNo.Open;
  Try
    Result := sq_ProformaInvNoInternalInvoiceNo.AsInteger;
  Finally
    sq_ProformaInvNo.Close;
  End;
End;

procedure TformfMoveInvPkgToInventory.acGenInvNoManuallyExecute
  (Sender: TObject);
var
  myRollBack: Boolean;
  Save_Cursor: TCursor;
  // InternalInvoiceNo : Integer ;
  // NoOfPkgsMoved : Integer ;
begin
  if mtProps.State in [dsEdit, dsInsert] then
    mtProps.Post;

  if (mtPropsLIPNo.AsInteger = -1) then
  Begin
    ShowMessage('Select a inventory.');
    Exit;
  End;

  if mtPropsFakturanr.AsInteger > 0 then
  Begin
    // InternalInvoiceNo:= ProformaInvNoExist ;
    if ProformaInvNoExist > 0 then
    Begin
      ShowMessage('Invoice number ' + mtPropsFakturanr.AsString +
        ' is taken, please use another one.');
      Exit;
    End;

    if MessageDlg('Do you want to move the packages to inventory ' + lcPIP.Text + '/' +
      lcLIP.Text, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin

      With dmVidaInvoice do
      Begin
        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }

        Try
          myRollBack := False;
          // START A TRANSACTION
          dmsConnector.StartTransaction;

          Try
            // Make an entry to Confirmed_Load so the load cannot be released again and we know who did it!
            // if myRollBack = False then
            Insert_Confirmed_Log_and_Confirmed_Package_Log;
            // SetConfirmed_Load_Table(Sender) ;
            // if dmArrivingLoads.cdsConfirmed_Load.ChangeCount > 0 then
            // if dmArrivingLoads.cdsConfirmed_Load.ApplyUpdates(0) > 0 then myRollBack := True ;

            // Set Status = 1 on Packages that are moved to an inventory
            // if  myRollBack = False then
            // myRollBack := ChangeInventoryOnPackagesWithPKGNO(Sender, NoOfPkgsMoved) ;

            { if dmArrivingLoads.cdsMovePkgNumber.ChangeCount > 0 then
              Begin
              if dmArrivingLoads.cdsMovePkgNumber.ApplyUpdates(0) > 0 then  myRollBack := True ;
              End
              else myRollBack := True ; }

            // keyviolation on cdsProformaInvNo
            cdsProformaInvNo.Insert;
            cdsProformaInvNoInternalInvoiceNo.AsInteger := InternalInvoiceNo;

            cdsProformaInvNoProformaInvoiceNo.AsInteger :=
              mtPropsFakturanr.AsInteger;
            cdsProformaInvNoUserCreated.AsInteger := ThisUser.UserID;
            cdsProformaInvNoUserModified.AsInteger := ThisUser.UserID;
            cdsProformaInvNoDateCreated.AsSQLTimeStamp :=
              DateTimeToSQLTimeStamp(Now);
            cdsProformaInvNo.Post;

            PkgLogInvoiced(InternalInvoiceNo, 25);

            if cdsProformaInvNo.ChangeCount > 0 then
            Begin
              if cdsProformaInvNo.ApplyUpdates(0) > 0 then
                myRollBack := True
              else
                cdsProformaInvNo.CommitUpdates;
            End
            else
              myRollBack := True;

            if myRollBack = True then
            Begin
              dmsConnector.Rollback;
              ShowMessage('Problem to move packages, operation rollbacked.');
            End
            else
            Begin
              dmsConnector.Commit;
              InvoiceNoAssigned := True;
              ShowMessage('Packages moved to inventory ' + lcLIP.Text);
            End;

          Except
            On E: Exception do
            Begin
              dmsConnector.Rollback;
              dmsSystem.FDoLog(E.Message);
              ShowMessage('Problem to move packages, operation rollbacked. ' +
                E.Message);
              Raise;
            End;
          End;

        Finally
          Screen.Cursor := Save_Cursor; { Always restore to normal }
        End;

      End;
    End // if StrToInt(eProformaNo.Text) > 0 then
    else
      ShowMessage('Please enter Proforma invoice number.');
  End; // if..
end;

procedure TformfMoveInvPkgToInventory.acGenInvNoAutomaticallyExecute
  (Sender: TObject);
var
  myRollBack: Boolean;
  Save_Cursor: TCursor;
  NoOfPkgsMoved: Integer;
begin

  if (mtPropsLIPNo.AsInteger < 1) or (mtPropsLIPNo.IsNull) then
  Begin
    ShowMessage('Please select a inventory.');
    Exit;
  End;


  // if StrToIntDef(OvcNumericField1.Text,0) > 0 then
  // Begin

  With dmVidaInvoice do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }

    Try
      myRollBack := False;

      // START A TRANSACTION
      dmsConnector.StartTransaction;

      Try
        // Make an entry to Confirmed_Load so the load cannot be released again and we know who did it!
        // if myRollBack = False then
        Insert_Confirmed_Log_and_Confirmed_Package_Log;
        // SetConfirmed_Load_Table(Sender) ;
        // if dmArrivingLoads.cdsConfirmed_Load.ChangeCount > 0 then
        // if dmArrivingLoads.cdsConfirmed_Load.ApplyUpdates(0) > 0 then myRollBack := True ;

        // Set Status = 1 on Packages that are moved to an inventory
        // if  myRollBack = False then
        // myRollBack := ChangeInventoryOnPackagesWithPKGNO(Sender, NoOfPkgsMoved) ;

        { if dmArrivingLoads.cdsMovePkgNumber.ChangeCount > 0 then
          Begin
          if dmArrivingLoads.cdsMovePkgNumber.ApplyUpdates(0) > 0 then  myRollBack := True ;
          End
          else myRollBack := True ; }

        if myRollBack = False then
          dmVidaInvoice.NextProformaNo(InternalInvoiceNo);

        { cdsProformaInvNo.Insert ;
          cdsProformaInvNoInternalInvoiceNo.AsInteger  := InternalInvoiceNo ;
          cdsProformaInvNoProformaInvoiceNo.AsInteger  := StrToIntDef(OvcNumericField1.Text,0) ;
          cdsProformaInvNoUserCreated.AsInteger        := ThisUser.UserID ;
          cdsProformaInvNoUserModified.AsInteger       := ThisUser.UserID ;
          cdsProformaInvNoDateCreated.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
          cdsProformaInvNo.Post ;

          if cdsProformaInvNo.ChangeCount > 0 then
          Begin
          if cdsProformaInvNo.ApplyUpdates(0) > 0 then myRollBack := True ;
          End
          else myRollBack := True ; }

        if myRollBack = True then
        Begin
          dmsConnector.Rollback;
          ShowMessage
            ('Error moving packages to inventory, operation rollbacked.');
        End
        else
        Begin
          dmsConnector.Commit;
          InvoiceNoAssigned := True;
          ShowMessage('Packages moved to inventory ' + lcLIP.Text);
          if mtProps.State in [dsBrowse] then
            mtProps.Edit;
          mtPropsFakturanr.AsInteger := GetGetProFormInvNo(InternalInvoiceNo);

        End;

      Except
        On E: Exception do
        Begin
          dmsConnector.Rollback;
          dmsSystem.FDoLog(E.Message);
          ShowMessage('Problem to move packages, operation rollbacked. ' +
            E.Message);
          Raise;
        End;
      End;

    Finally
      cdsProformaInvNo.Active := False;
      cdsProformaInvNo.Active := True;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with dmVidaInvoice
end;

procedure TformfMoveInvPkgToInventory.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TformfMoveInvPkgToInventory.FormCreate(Sender: TObject);
begin
  InvoiceNoAssigned := False;
end;

procedure TformfMoveInvPkgToInventory.acGenInvNoManuallyUpdate(Sender: TObject);
begin
  acGenInvNoManually.Enabled := not InvoiceNoAssigned;
end;

procedure TformfMoveInvPkgToInventory.acGenInvNoAutomaticallyUpdate
  (Sender: TObject);
begin
  acGenInvNoAutomatically.Enabled := not InvoiceNoAssigned;
end;

procedure TformfMoveInvPkgToInventory.mtPropsPIPNoChange(Sender: TField);
begin
  if (mtProps.Active) and (mtProps.RecordCount > 0) and
    (mtPropsPIPNo.AsInteger > 0) then
  Begin
    cds_LIP2.Active := False;
    cds_LIP2.ParamByName('PIPNo').AsInteger := mtPropsPIPNo.AsInteger;
    cds_LIP2.Active := True;
  End
  else
  Begin
    cds_LIP2.Active := False;
    cds_LIP2.ParamByName('PIPNo').AsInteger := -1;
    cds_LIP2.Active := True;
  End;
end;

End.
