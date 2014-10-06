unit uImportedPackages;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Menus, SqlTimSt, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxBar,
  dxBarExtItems, cxCheckBox, cxSplitter, cxCurrencyEdit, Buttons, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxCalendar,
  kbmMemTable, cxLookAndFeelPainters, cxButtons, cxLookAndFeels,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxNavigator, System.Actions;

type
  TfImportedPackages = class(TForm)
    PopupMenu1: TPopupMenu;
    OpenLoad1: TMenuItem;
    ActionList1: TActionList;
    acClose: TAction;
    Panel3: TPanel;
    acRefresh: TAction;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarDockControl2: TdxBarDockControl;
    dxBarLargeButton6: TdxBarLargeButton;
    imglistActions: TImageList;
    Panel6: TPanel;
    Panel1: TPanel;
    grdImpLengths: TcxGrid;
    grdImpLengthsDBTableView1: TcxGridDBTableView;
    grdImpLengthsLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Panel7: TPanel;
    Panel8: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    Panel9: TPanel;
    grdImpLengthsDBTableView1Identifier: TcxGridDBColumn;
    grdImpLengthsDBTableView1LengthCategory: TcxGridDBColumn;
    grdImpLengthsDBTableView1Lngd: TcxGridDBColumn;
    grdImpLengthsDBTableView1Styck: TcxGridDBColumn;
    acControllPkgs: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    grdImpPkgsDBTableView1: TcxGridDBTableView;
    grdImpPkgsLevel1: TcxGridLevel;
    grdImpPkgs: TcxGrid;
    grdImpPkgsDBTableView1ProductIdentifier: TcxGridDBColumn;
    grdImpPkgsDBTableView1Identifier: TcxGridDBColumn;
    grdImpPkgsDBTableView1ProductNo: TcxGridDBColumn;
    grdImpPkgsDBTableView1Styck: TcxGridDBColumn;
    grdImpPkgsDBTableView1ClientCode: TcxGridDBColumn;
    grdImpPkgsDBTableView1Produkt: TcxGridDBColumn;
    grdImpLengthsDBTableView1ProductLengthNo: TcxGridDBColumn;
    acCreatePkgs: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    grdImpPkgsDBTableView1Logg: TcxGridDBColumn;
    grdImpPkgsDBTableView1Column1: TcxGridDBColumn;
    lcLookUpLength: TcxGridDBColumn;
    mtUserProp: TkbmMemTable;
    mtUserPropVerkNo: TIntegerField;
    mtUserPropOwnerNo: TIntegerField;
    mtUserPropPIPNo: TIntegerField;
    mtUserPropLIPNo: TIntegerField;
    mtUserPropInputOption: TIntegerField;
    mtUserPropRegPointNo: TIntegerField;
    mtUserPropRegDate: TDateTimeField;
    mtUserPropCopyPcs: TIntegerField;
    mtUserPropRunNo: TIntegerField;
    mtUserPropProducerNo: TIntegerField;
    mtUserPropAutoColWidth: TIntegerField;
    mtUserPropSupplierCode: TStringField;
    mtUserPropLengthOption: TIntegerField;
    mtUserPropLengthGroupNo: TIntegerField;
    mtUserPropNewItemRow: TIntegerField;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    mtUserPropLIPChange: TIntegerField;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropSurfacingNo: TIntegerField;
    mtUserPropNOMTHICK: TFloatField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropMCClassNo: TIntegerField;
    dsUserProp: TDataSource;
    mtUserPropExLog: TStringField;
    cxLabel4: TcxLabel;
    acSetPrefixOnMarkedPkgs: TAction;
    Panel10: TPanel;
    grdDelShipDelMsgRef: TcxGrid;
    grdDelShipDelMsgRefDBTableView1: TcxGridDBTableView;
    grdDelShipDelMsgRefLevel1: TcxGridLevel;
    grdDelShipDelMsgRefDBTableView1DeliveryMessageNumber: TcxGridDBColumn;
    grdDelShipDelMsgRefDBTableView1DeliveryShipmentLineItemNumber
      : TcxGridDBColumn;
    grdDelShipDelMsgRefDBTableView1DeliveryMessageReference: TcxGridDBColumn;
    grdDelShipDelMsgRefDBTableView1DeliveryMessageReferenceType
      : TcxGridDBColumn;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    Label1: TLabel;
    lcOWNER: TcxDBLookupComboBox;
    Label8: TLabel;
    lcREGPOINT: TcxDBLookupComboBox;
    lcPIPNAME: TcxDBLookupComboBox;
    Label12: TLabel;
    lcLIPName: TcxDBLookupComboBox;
    Label13: TLabel;
    deRegDate: TcxDBDateEdit;
    Label14: TLabel;
    ds_Klient: TDataSource;
    grdImpPkgsDBTableView1Status: TcxGridDBColumn;
    Panel12: TPanel;
    cxLabel1: TcxLabel;
    teName1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    lcLeverantr: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    teWoodXPartyIdentifier: TcxDBTextEdit;
    Panel11: TPanel;
    cxLabel5: TcxLabel;
    teDeliveryMessageNumber: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    deDeliveryMessageDate: TcxDBDateEdit;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupp_Code: TStringField;
    mtPkgNosOwnerNo: TIntegerField;
    mtPkgNosLIPNo: TIntegerField;
    mtPkgNosPIPNo: TIntegerField;
    mtPkgNosStatus: TIntegerField;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acSetPrefixOnAllPkgs: TAction;
    dxBarButton2: TdxBarButton;
    mtUserPropMarketRegionNo: TIntegerField;
    mtUserPropOrderTypeNo: TIntegerField;
    mtUserPropStatus: TIntegerField;
    mtUserPropFilterOrderDate: TIntegerField;
    mtUserPropClientNo: TIntegerField;
    mtUserPropSalesPersonNo: TIntegerField;
    mtUserPropVerkSupplierNo: TIntegerField;
    mtUserPropVerkKundNo: TIntegerField;
    mtUserPropLOObjectType: TIntegerField;
    mtUserPropLoadingLocationNo: TIntegerField;
    mtUserPropBookingTypeNo: TIntegerField;
    mtUserPropCustomerNo: TIntegerField;
    mtUserPropShowProduct: TIntegerField;
    grdPartyIdentifierDBTableView1: TcxGridDBTableView;
    grdPartyIdentifierLevel1: TcxGridLevel;
    grdPartyIdentifier: TcxGrid;
    grdPartyIdentifierDBTableView1ClientName: TcxGridDBColumn;
    grdPartyIdentifierDBTableView1WoodXPartyIdentifier: TcxGridDBColumn;
    grdPartyIdentifierDBTableView1Name1: TcxGridDBColumn;
    grdPartyIdentifierDBTableView1DeliveryMessageNumber: TcxGridDBColumn;
    grdPartyIdentifierDBTableView1ClientNo: TcxGridDBColumn;
    grdPartyIdentifierDBTableView1PartyIdentifier: TcxGridDBColumn;
    grdPartyIdentifierDBTableView1DeliveryMessageDate: TcxGridDBColumn;
    grdPartyIdentifierDBTableView1WoodXPartyIdentifierType: TcxGridDBColumn;
    grdPartyIdentifierDBTableView1PartyIdentifierType: TcxGridDBColumn;
    cxButton1: TcxButton;
    acSaveClientConnection: TAction;
    teClientName: TcxDBTextEdit;
    tePartyIdentifier: TcxDBTextEdit;
    tePartyIdentifierType: TcxDBTextEdit;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acCloseExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure grdLoadsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acControllPkgsExecute(Sender: TObject);
    procedure acCreatePkgsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acControllPkgsUpdate(Sender: TObject);
    procedure mtUserPropVerkNoChange(Sender: TField);
    procedure mtUserPropPIPNoChange(Sender: TField);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure grdImpPkgsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acSetPrefixOnMarkedPkgsExecute(Sender: TObject);
    procedure acCreatePkgsUpdate(Sender: TObject);
    procedure acSetPrefixOnAllPkgsExecute(Sender: TObject);
    procedure acSaveClientConnectionExecute(Sender: TObject);
  private
    { Private declarations }
    // procedure CreateFields ;
    procedure SetPrefix(const Prefix: String);
    procedure SelectedPkgsOfPkgNosTable(const Prefix: String);
    // procedure AddPkgsTo_MTPackagesTable ;
    procedure AddClient;
  public
    { Public declarations }
    // SupplierNo : Integer ;
    SavedImportedPkgsOK: Boolean;
    DeliveryMessageNumber: String;
    Procedure CreateCo(const CompanyNo, TypeOfPayment: Integer);
    procedure Refresh;
  end;

  // var fImportedPackages: TfImportedPackages;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils, dmsDataConn,
  UnitPkgInfo, dmsVidaSystem, dmc_ImportWoodx, dmsVidaProduct,
  dmsVidaContact, uSelectWoodxClient, dmc_UserProps, uEntryPriceField,
  uEntryField;

{$R *.dfm}

procedure TfImportedPackages.Refresh;
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  With dm_ImportWoodx do
  Begin
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    Try
      cds_ImpClientMap.Active := False;
      cds_ImpClientMap.ParamByName('DeliveryMessageNumber').AsString :=
        DeliveryMessageNumber;
      cds_ImpClientMap.Active := True;

      cds_DSDMR2.Active := False;
      cds_DSDMR2.ParamByName('DeliveryMessageNumber').AsString :=
        DeliveryMessageNumber;
      cds_DSDMR2.Active := True;

      cds_ImpProdMap.Active := False;
      cds_ImpProdMap.ParamByName('DeliveryMessageNumber').AsString :=
        DeliveryMessageNumber;
      cds_ImpProdMap.ParamByName('SalesRegionNo').AsInteger :=
        mtUserPropOwnerNo.AsInteger;
      cds_ImpProdMap.Active := True;

      cds_ImpLenMap.Active := False;
      // cds_ImpLenMap.ParamByName('DeliveryMessageNumber').AsString     := DeliveryMessageNumber ;
      cds_ImpLenMap.Active := True;
    finally
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  end;
end;

Procedure TfImportedPackages.CreateCo(const CompanyNo, TypeOfPayment: Integer);
begin
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdImpPkgs.Name,
    grdImpPkgsDBTableView1);
  dmsSystem.LoadGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdImpLengths.Name, grdImpLengthsDBTableView1);
end;

procedure TfImportedPackages.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdImpPkgs.Name,
    grdImpPkgsDBTableView1);
  dmsSystem.StoreGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdImpLengths.Name, grdImpLengthsDBTableView1);
  dm_UserProps.SaveUserProps(Self.Name, mtUserProp);
  CanClose := True;
end;

procedure TfImportedPackages.acCloseExecute(Sender: TObject);
begin
  if MessageDlg('Vill du avsluta utan att spara?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TfImportedPackages.acRefreshExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  With dm_ImportWoodx do
  Begin
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    Try
      // UpdateClient (mtVisKlientClientNo.AsInteger, cds_ImpClientMapWoodXPartyIdentifier.AsString) ;

      cds_Products.Active := False;
      cds_Products.Active := True;

      cds_ImpClientMap.Active := False;
      cds_ImpClientMap.ParamByName('DeliveryMessageNumber').AsString :=
        DeliveryMessageNumber;
      cds_ImpClientMap.Active := True;

      cds_ImpProdMap.Active := False;
      cds_ImpProdMap.ParamByName('DeliveryMessageNumber').AsString :=
        DeliveryMessageNumber;
      cds_ImpProdMap.Active := True;

      cds_ImpLenMap.Active := False;
      // cds_ImpLenMap.ParamByName('DeliveryMessageNumber').AsString:= DeliveryMessageNumber ;
      cds_ImpLenMap.Active := True;
    finally
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  end;
end;

procedure TfImportedPackages.grdLoadsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

begin
  { if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRISOK').Index] <> null then
    PrisOK:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRISOK').Index] ;

    if PrisOK = 0 then
    AStyle := cxStyleRed ; }
end;

procedure TfImportedPackages.FormCreate(Sender: TObject);
begin
  dm_ImportWoodx := Tdm_ImportWoodx.Create(nil);

  SavedImportedPkgsOK := False;
end;

procedure TfImportedPackages.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dm_ImportWoodx);
end;

procedure TfImportedPackages.acControllPkgsExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  With dm_ImportWoodx do
  Begin
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    Try
      cds_ImpProdMap.DisableControls;
      cds_ImpLenMap.DisableControls;
      Try
        if (cdsClientPartyIdentifier.IsNull) or
          (Length(cdsClientPartyIdentifier.AsString) = 0) then
        Begin
          ShowMessage
            ('Klientkoppling ej fullständig,  Party identifier saknas. Åtgärda genom att spara klientkoppling');
          Exit;
        End;
        if (cdsClientPartyIdentifierType.IsNull) or
          (Length(cdsClientPartyIdentifierType.AsString) = 0) then
        Begin
          ShowMessage
            ('Klientkoppling ej fullständig,  Party identifier typ saknas. Åtgärda genom att spara klientkoppling');
          Exit;
        End;

        if not IsClientConnectionValid then
        Begin
          ShowMessage
            ('WoodX och VIS klienten matchar inte, kontrollera att WoodX klienten är densamma som leverantören i VIS leveransen');
          Exit;
        End;

        { if cds_ImpClientMap.State in [dsEdit, dsInsert] then
          cds_ImpClientMap.Post ;
          if cds_ImpClientMap.ChangeCount > 0 then
          cds_ImpClientMap.ApplyUpdates(0) ; }

        // UpdateClient (mtVisKlientClientNo.AsInteger, cds_ImpClientMapWoodXPartyIdentifier.AsString) ;

        UppdateraPrefix(DeliveryMessageNumber);

        SaveTo_Ins_wx_prod_trsl(mtUserPropOwnerNo.AsInteger);

        cds_ImpProdMap.Active := False;
        cds_ImpProdMap.Active := True;

        ValidateProducts;
        if IsPkgsValid then
        Begin
          // if ValidateLengths then
          // acCreatePkgs.Enabled := True ;
          ImportedLoadOK := True;
          // else
          // ShowMessage('Alla längder är inte godkända') ;
        End
        else
        Begin
          ImportedLoadOK := False;
          ShowMessage('Ett eller flera paket kunde inte godkännas');
        End;
        { if cds_ImpProdMap.State in [dsEdit, dsInsert] then
          cds_ImpProdMap.Post ;
          if cds_ImpProdMap.ChangeCount > 0 then
          cds_ImpProdMap.ApplyUpdates(0) ; }

        // cds_ImpProdMap.Active:= False ;
        // cds_ImpProdMap.Active:= True ;

        // cds_ImpLenMap.Active:= False ;
        // cds_ImpLenMap.Active:= True ;
      Finally
        cds_ImpLenMap.EnableControls;
        cds_ImpProdMap.EnableControls;
      End;
    finally
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  end;
End;

procedure TfImportedPackages.acCreatePkgsExecute(Sender: TObject);
// Var LONo  : Integer ;
begin
  With dmsProduct, dm_ImportWoodx do
  Begin
    Try

      if mtUserProp.State in [dsEdit, dsInsert] then
        mtUserProp.Post;

      // mtPackages.AfterInsert           := nil ;// mtPackagesAfterInsert
      // dmsProduct.InputOption           := INPUT_IMPORTEDPACKAGES ;
      // mtImportedProductLengths.Active  := False ;
      // mtImportedProductLengths.Active  := True ;
      // if mtPackages.Active then
      // mtPackages.Active:= False ;
      // CreateFields ;
      // mtPackages.Active                := True ;
      // AddPkgsTo_MTPackagesTable ;

      if SaveImportedWoodXPackages(mtUserProp) then
      Begin
        SavedImportedPkgsOK := True;

        // Save packages to temp table
        dmsProduct.InsertPkgsToTempTable;

        // Create internal LO (SP "vis_VP_IntLO")
        // LONo  := dmsProduct.Create_VP_IntLO(mtUserPropOwnerNo.AsInteger,
        // dmsContact.GetSalesRegionNo(mtUserPropOwnerNo.AsInteger),
        // 741, {SalesRegionNo,}
        // mtVisKlientClientNo.AsInteger, {SupplierNo}
        // mtUserPropPIPNo.AsInteger
        // ) ;

        // Create Load (SP "Vis_newLoad_II")
        // dmsProduct.Create_newLoad_II(mtVisKlientClientNo.AsInteger, //SupplierNo,
        // LONo, //LONo : Integer;
        // cds_ImpClientMapDeliveryMessageNumber.AsString, // LoadID,
        // '', //FS  : String) : Integer ;
        // cds_ImpClientMapDeliveryMessageDate.AsSQLTimeStamp
        // ) ;

        // Done! refresh and show the imported load in the list.
        Close;
      End
      else
        ShowMessage('Error saving packages.');

      // mtImportedProductLengths.Active  := False ;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message +
          ' :TfImportedPackages.acCreatePkgsExecute');
        ShowMessage('Error skapa last.');
        Raise;
      End;
    end;

  End;
end;

(* procedure TfImportedPackages.AddPkgsTo_MTPackagesTable ;
  Var GlobalCounter : Integer ;
  Begin
  With dmsProduct, dm_ImportWoodx do
  Begin
  {  if mtUserPropMCClassNo.IsNull then
  Begin
  ShowMessage('Ange Fuktkvot!') ;
  Exit ;
  End ; }
  GlobalCounter:= 1 ;
  cds_ImpProdMap.First ;
  While not cds_ImpProdMap.Eof do
  Begin
  mtPackages.Insert ;
  mtPackages.FieldByName('RecId').AsInteger           := GlobalCounter ;
  mtPackages.FieldByName('PackageNo').AsInteger       := cds_ImpProdMapIdentifier.AsInteger ;
  mtPackages.FieldByName('ProductGroupNo').AsInteger  := -1 ;
  mtPackages.FieldByName('ProductNo').AsInteger       := cds_ImpProdMapPRODUCTNO.AsInteger ;
  mtPackages.FieldByName('SupplierCode').AsString     := cds_ImpProdMapClientCode.AsString ;
  mtPackages.FieldByName('Description').AsString      := '' ;
  mtPackages.FieldByName('GradeStampNo').AsInteger    := 0 ;
  mtPackages.FieldByName('BarCodeID').AsInteger       := 0 ;
  mtPackages.FieldByName('TotalPcs').AsInteger        := cds_ImpProdMapStyck.AsInteger ;
  mtPackages.FieldByName('PackageTypeNo').AsInteger   := -1 ;
  mtPackages.FieldByName('MCClassNo').AsInteger       := 10002 ;//mtUserPropMCClassNo.AsInteger ;
  //   mtPackages.FieldByName('NOM_THICK').AsFloat         := dmsProduct.GetNTMM(cds_ImpProdMapPRODUCTNO.AsInteger) ;
  //   mtPackages.FieldByName('NOM_WIDTH').AsFloat         := dmsProduct.GetNBMM(cds_ImpProdMapPRODUCTNO.AsInteger) ;
  mtPackages.Post ;

  cds_ImpLenMap.First ;
  While not cds_ImpLenMap.Eof do
  Begin
  mtImportedProductLengths.Insert ;
  mtImportedProductLengthsPackageNo.AsInteger       := cds_ImpProdMapIdentifier.AsInteger ;
  mtImportedProductLengthsProductLengthNo.AsInteger := cds_ImpLenMapProductLengthNo.AsInteger ;
  mtImportedProductLengthsNoOfPcs.AsInteger         := cds_ImpLenMapStyck.AsInteger ;
  mtImportedProductLengthsALMM.AsFloat              := StrToFloat(cds_ImpLenMapLengthCategory.AsString) ;
  mtImportedProductLengths.Post ;
  cds_ImpLenMap.Next ;
  End ;
  cds_ImpProdMap.Next ;
  End ;
  End ;
  End ;
*)
(*
  procedure TfImportedPackages.CreateFields ;
  Var x : Integer ;
  Begin
  With dmsProduct do
  Begin
  For x:= mtPackages.Fields.Count - 1 downto 0 do
  Begin
  mtPackages.Fields.Remove(mtPackages.Fields.Fields[x]) ;
  End ;

  mtPackages.FieldDefs.Clear ;

  //0
  mtPackages.FieldDefs.Add('RecId',ftInteger,0,False) ;
  mtPackages.FieldDefs[cRECID].CreateField(nil);
  mtPackages.FieldByName('RecId').DisplayLabel:= 'Radnr' ;
  mtPackages.FieldByName('RecId').Visible:= True ;

  //1
  mtPackages.FieldDefs.Add('Description',ftString,100,False) ;
  mtPackages.FieldDefs[CDESCRIPTION].CreateField(nil);
  mtPackages.FieldByName('Description').DisplayLabel:= 'BESKRIVNING' ;
  mtPackages.FieldByName('Description').Visible:= False ;
  //2
  mtPackages.FieldDefs.Add('PackageNo',ftLargeInt,0,False) ;
  mtPackages.FieldDefs[cPACKAGENO].CreateField(nil);
  mtPackages.FieldByName('PackageNo').DisplayLabel:= 'PKT.NR' ;

  //3
  mtPackages.FieldDefs.Add('SupplierCode',ftString,3,False) ;
  mtPackages.FieldDefs[cSUPPLIERCODE].CreateField(nil);
  mtPackages.FieldByName('SupplierCode').DisplayLabel:= 'LEV.KOD' ;
  //4
  mtPackages.FieldDefs.Add('ProductNo',ftInteger,0,False) ;
  mtPackages.FieldDefs[cPRODUCTNO].CreateField(nil);
  mtPackages.FieldByName('ProductNo').Visible:= False ;

  //5
  mtPackages.FieldDefs.Add('ProductGroupNo',ftInteger,0,False) ;
  mtPackages.FieldDefs[cPRODUCTGROUPNO].CreateField(nil);
  mtPackages.FieldByName('ProductGroupNo').Visible:= False ;
  //6
  mtPackages.FieldDefs.Add('TotalPcs',ftInteger,0,False) ;
  mtPackages.FieldDefs[cTOTALPCS].CreateField(nil);
  mtPackages.FieldByName('TotalPcs').DisplayLabel:= 'PCS' ;
  //7
  mtPackages.FieldDefs.Add('TotalActM3',ftFloat,0,False) ;
  mtPackages.FieldDefs[cTOTALACTM3].CreateField(nil);
  mtPackages.FieldByName('TotalActM3').DisplayLabel:= 'AM3' ;
  TFloatField(mtPackages.Fields[cTOTALACTM3]).DisplayFormat := '#######.000';
  //8
  mtPackages.FieldDefs.Add('TotalNOMM3',ftFloat,0,False) ;
  mtPackages.FieldDefs[cTOTALNOMM3].CreateField(nil);
  TFloatField(mtPackages.Fields[cTOTALNOMM3]).DisplayFormat := '#######.000';
  mtPackages.FieldByName('TotalNOMM3').DisplayLabel:= 'NM3' ;
  //9
  mtPackages.FieldDefs.Add('TotalLpm',ftFloat,0,False) ;
  mtPackages.FieldDefs[cTOTALLPM].CreateField(nil);
  mtPackages.FieldByName('TotalLpm').DisplayLabel:= 'LÖPM' ;
  TFloatField(mtPackages.Fields[cTOTALLPM]).DisplayFormat := '#######.0000';
  //10
  mtPackages.FieldDefs.Add('Totalm2',ftFloat,0,False) ;
  mtPackages.FieldDefs[cTOTALM2].CreateField(nil);
  mtPackages.FieldByName('Totalm2').DisplayLabel:= 'M2' ;
  TFloatField(mtPackages.Fields[cTOTALM2]).DisplayFormat := '#######.000';

  //11
  mtPackages.FieldDefs.Add('TotalMFBM',ftFloat,0,False) ;
  mtPackages.FieldDefs[cTOTALMFBM].CreateField(nil);
  TFloatField(mtPackages.Fields[cTOTALMFBM]).DisplayFormat := '#######.000';
  mtPackages.FieldByName('TotalMFBM').DisplayLabel:= 'MFBM' ;
  mtPackages.FieldByName('TotalMFBM').Visible:= False ;

  //12
  mtPackages.FieldDefs.Add('GradeStampNo',ftInteger,0,False) ;
  mtPackages.FieldDefs[cGRADESTAMP].CreateField(nil);
  mtPackages.FieldByName('GradeStampNo').Visible:= False ;

  //13
  mtPackages.FieldDefs.Add('BarCodeID',ftInteger,0,False) ;
  mtPackages.FieldDefs[cBARCODEID].CreateField(nil);
  mtPackages.FieldByName('BarCodeID').Visible:= False ;
  //14
  mtPackages.FieldDefs.Add('OnSticks',ftInteger,0,False) ;
  mtPackages.FieldDefs[cONSTICKS].CreateField(nil);
  mtPackages.FieldByName('OnSticks').Visible:= False ;
  //15
  mtPackages.FieldDefs.Add('WrapTypeNo',ftInteger,0,False) ;
  mtPackages.FieldDefs[cWRAPTYPE].CreateField(nil);
  mtPackages.FieldByName('WrapTypeNo').Visible:= False ;
  //16
  mtPackages.FieldDefs.Add('ACT_THICK',ftFloat,0,False) ;
  mtPackages.FieldDefs[cACTTHICK].CreateField(nil);
  mtPackages.FieldByName('ACT_THICK').Visible:= False ;
  //17
  mtPackages.FieldDefs.Add('ACT_WIDTH',ftFloat,0,False) ;
  mtPackages.FieldDefs[cACTWIDTH].CreateField(nil);
  mtPackages.FieldByName('ACT_WIDTH').Visible:= False ;
  //18
  mtPackages.FieldDefs.Add('NOM_THICK',ftFloat,0,False) ;
  mtPackages.FieldDefs[cNOMTHICK].CreateField(nil);
  mtPackages.FieldByName('NOM_THICK').Visible:= False ;
  //19
  mtPackages.FieldDefs.Add('NOM_WIDTH',ftFloat,0,False) ;
  mtPackages.FieldDefs[cNOMWIDTH].CreateField(nil);
  mtPackages.FieldByName('NOM_WIDTH').Visible:= False ;


  //20
  mtPackages.FieldDefs.Add('LPM_PROD_LEGNTH_NO',ftInteger,0,False) ;
  mtPackages.FieldDefs[cLPM_PROD_LEGNTH_NO].CreateField(nil);
  mtPackages.FieldByName('LPM_PROD_LEGNTH_NO').Visible:= False ;
  //21
  mtPackages.FieldDefs.Add('PackageTypeNo',ftLargeInt,0,False) ;
  mtPackages.FieldDefs[cPACKAGETYPENO].CreateField(nil);
  mtPackages.FieldByName('PackageTypeNo').DisplayLabel:= 'PKGTYPE NO' ;
  mtPackages.FieldByName('PackageTypeNo').Visible:= False ;

  //22
  mtPackages.FieldDefs.Add('INCH_THICK',ftFloat,0,False) ;
  mtPackages.FieldDefs[cINCHTHICK].CreateField(nil);
  mtPackages.FieldByName('INCH_THICK').Visible:= False ;
  //23
  mtPackages.FieldDefs.Add('INCH_WIDTH',ftFloat,0,False) ;
  mtPackages.FieldDefs[cINCHWIDTH].CreateField(nil);
  mtPackages.FieldByName('INCH_WIDTH').Visible:= False ;
  //24
  mtPackages.FieldDefs.Add('MCClassNo',ftInteger,0,False) ;
  mtPackages.FieldDefs[cMCClassNo].CreateField(nil);
  mtPackages.FieldByName('MCClassNo').Visible:= False ;
  //25
  mtPackages.FieldDefs.Add('ExLog',ftString,2,False) ;
  mtPackages.FieldDefs[cExLog].CreateField(nil);
  mtPackages.FieldByName('ExLog').Visible:= False ;
  //26
  mtPackages.FieldDefs.Add('PcsPerBundle',ftInteger,0,False) ;
  mtPackages.FieldDefs[cPcsPerBundle].CreateField(nil);
  mtPackages.FieldByName('PcsPerBundle').Visible:= False ;
  //27
  mtPackages.FieldDefs.Add('BundlesPerPkg',ftInteger,0,False) ;
  mtPackages.FieldDefs[cBundlesPerPkg].CreateField(nil);
  mtPackages.FieldByName('BundlesPerPkg').Visible:= False ;

  //28
  mtPackages.FieldDefs.Add('TypeOfLog',ftInteger,0,False) ;
  mtPackages.FieldDefs[cTypeOfLog].CreateField(nil);
  mtPackages.FieldByName('TypeOfLog').Visible:= False ;
  End ;//with
  End ;

*)

procedure TfImportedPackages.FormShow(Sender: TObject);
// Var x : Integer ;
begin
  With dm_ImportWoodx, dmsProduct do
  Begin
    OpenCurrentSupplier;

    dm_UserProps.LoadUserProps(Self.Name, mtUserProp);

    AdjustLengths(DeliveryMessageNumber);
    Self.Refresh;

    (* mtVisKlient.Active  := True ;
      mtVisKlient.Insert ;
      mtVisKlientClientNo.AsInteger := dm_ImportWoodx.OrderSupplierNo ;
      //cds_ImpClientMapClientNo.AsInteger ;//, cds_ImpClientMapWoodXPartyIdentifier.AsString
      mtVisKlient.Post ; *)

    mtUserProp.Edit;
    mtUserPropVerkNo.AsInteger := cds_ImpClientMapClientNo.AsInteger;
    mtUserPropProducerNo.AsInteger := ThisUser.CompanyNo;
    mtUserPropOwnerNo.AsInteger := ThisUser.CompanyNo;
    mtUserProp.Post;

    // UppdateraPrefixInitially(DeliveryMessageNumber, mtUserPropSupplierCode.AsString) ;
  End; // with
end;

procedure TfImportedPackages.AddClient;
var
  fSelectWoodxClient: TfSelectWoodxClient;
Begin
  With dm_ImportWoodx do
  Begin
    fSelectWoodxClient := TfSelectWoodxClient.Create(nil);
    try
      mtClient.Active := True;
      mtClient.Insert;
      if fSelectWoodxClient.ShowModal = mrOK then
      Begin
        if mtClient.State in [dsEdit, dsInsert] then
          mtClient.Post;
        // UpdateClient (mtClientVisClientNo.AsInteger, cds_ImpClientMapWoodXPartyIdentifier.AsString) ;
        mtClient.Active := False;
      End;
      Self.Refresh;
    finally
      FreeAndNil(fSelectWoodxClient);
    end;
  End; // with
End;

procedure TfImportedPackages.acControllPkgsUpdate(Sender: TObject);
begin
  { With dm_ImportWoodx do
    Begin
    acControllPkgs.Enabled:= (cds_ImpProdMap.Active) and (cds_ImpProdMap.RecordCount > 0)
    and (cds_ImpClientMap.Active) and (cds_ImpClientMap.RecordCount > 0)
    and (cds_ImpLenMap.Active) and (cds_ImpLenMap.RecordCount > 0) ;
    End ; }
end;

procedure TfImportedPackages.mtUserPropVerkNoChange(Sender: TField);
begin
  With dm_UserProps do
  Begin
    mtUserPropSupplierCode.AsString := dmsContact.GetClientCode
      (mtUserPropVerkNo.AsInteger);
  End;
end;

procedure TfImportedPackages.mtUserPropPIPNoChange(Sender: TField);
begin
  With dm_UserProps do
  Begin
    cds_LIP.Active := False;
    cds_LIP.ParamByName('PIPNo').AsInteger := mtUserPropPIPNo.AsInteger;
    cds_LIP.Active := True;
    cds_LIP.First;
    if cds_LIP.RecordCount > 0 then
      mtUserPropLIPNo.AsInteger := cds_LIPLIPNo.AsInteger;
  End;
end;

procedure TfImportedPackages.mtUserPropOwnerNoChange(Sender: TField);
begin
  With dm_UserProps do
  Begin
    cds_PIP.Active := False;
    cds_PIP.ParamByName('OwnerNo').AsInteger := mtUserPropOwnerNo.AsInteger;
    cds_PIP.ParamByName('LegoOwnerNo').AsInteger := mtUserPropOwnerNo.AsInteger;

    {
      if (ThisUser.CompanyNo = cVidaPackaging) or
      (ThisUser.CompanyNo = cOsterlovsta) then
      Begin
      cds_PIP.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
      End
      else
      Begin
      cds_PIP.ParamByName('UserID').AsInteger:= -1 ;
      End ; }

    cds_PIP.Active := True;
    cds_PIP.First;
    if cds_PIP.RecordCount > 0 then
      mtUserPropPIPNo.AsInteger := cds_PIPPIPNO.AsInteger;

    cds_RegPoint.Active := False;
    cds_RegPoint.ParamByName('ClientNo').AsInteger :=
      mtUserPropOwnerNo.AsInteger;
    cds_RegPoint.Active := True;
    cds_RegPoint.First;
    if cds_RegPoint.RecordCount > 0 then
      mtUserPropRegPointNo.AsInteger :=
        cds_RegPointRegistrationPointNo.AsInteger;
  End;
end;

procedure TfImportedPackages.grdImpPkgsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColumn: TcxCustomGridTableItem;
  aValue: Variant;
begin
  aColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Status');
  if (ARecord.Values[aColumn.Index] <> null) and (AItem <> nil) then
  Begin
    aValue := ARecord.Values[aColumn.Index];
    if (aValue <> 0) then
      AStyle := cxStyleRed;
  End;
end;

procedure TfImportedPackages.acSetPrefixOnMarkedPkgsExecute(Sender: TObject);
var
  fEntryPriceField: TfEntryPriceField;
  Prefix: String;
begin
  fEntryPriceField := TfEntryPriceField.Create(nil);
  try
    fEntryPriceField.mePriceField.Properties.EditMask := '';
    fEntryPriceField.LabelForField.Caption := 'Prefix';
    fEntryPriceField.Caption := 'Ange nytt prefix';
    if fEntryPriceField.ShowModal = mrOK then
    Begin
      Prefix := fEntryPriceField.mePriceField.Text;
      mtPkgNos.Active := True;
      SelectedPkgsOfPkgNosTable(Prefix);
      SetPrefix(Prefix);
      mtPkgNos.Active := False;
      grdImpPkgsDBTableView1.Controller.ClearSelection;
    End;
  finally
    FreeAndNil(fEntryPriceField);
  end;
end;

procedure TfImportedPackages.SetPrefix(const Prefix: String);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try

    dm_ImportWoodx.cds_ImpProdMap.DisableControls;
    Try
      mtPkgNos.First;
      While not mtPkgNos.Eof do
      Begin
        if dm_ImportWoodx.cds_ImpProdMap.Locate('Identifier',
          mtPkgNosPackageNo.AsInteger, []) then
        Begin
          dm_ImportWoodx.cds_ImpProdMap.Edit;
          dm_ImportWoodx.cds_ImpProdMap.FieldByName('ClientCode').AsString
            := Prefix;
          dm_ImportWoodx.cds_ImpProdMap.Post;
        End;
        mtPkgNos.Next;
      End;

    Finally
      dm_ImportWoodx.cds_ImpProdMap.EnableControls;
    End;

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
End;

procedure TfImportedPackages.SelectedPkgsOfPkgNosTable(const Prefix: String);
Var
  i, RecIDX: Integer;
  RecID: Variant;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  grdImpPkgsDBTableView1.BeginUpdate;
  grdImpPkgsDBTableView1.DataController.BeginLocate;
  Try
    ADATASET := grdImpPkgsDBTableView1.DataController.DataSource.DataSet;
    For i := 0 to grdImpPkgsDBTableView1.Controller.SelectedRecordCount - 1 do
    Begin
      RecIDX := grdImpPkgsDBTableView1.Controller.SelectedRecords[i]
        .RecordIndex;
      RecID := grdImpPkgsDBTableView1.DataController.GetRecordId(RecIDX);

      { if ADataSet.Locate('Identifier', RecID,[]) then
        Begin
        ADataSet.Edit ;
        ADataSet.FieldByName('ClientCode').AsString  :=  Prefix ;
        ADataSet.Post ;
        End ; }

      if ADATASET.Locate('Identifier', RecID, []) then
      Begin
        mtPkgNos.Insert;
        mtPkgNosPackageNo.AsInteger := ADATASET.FieldByName('Identifier')
          .AsInteger;
        mtPkgNosSupp_Code.AsString :=
          ADATASET.FieldByName('ClientCode').AsString;
        // mtPkgNosOwnerNo.AsInteger   := ADataSet.FieldByName('OwnerNo').AsInteger ;
        // mtPkgNosPIPNo.AsInteger     := ADataSet.FieldByName('PIPNo').AsInteger ;
        // mtPkgNosLIPNo.AsInteger     := ADataSet.FieldByName('LIPNo').AsInteger ;
        // mtPkgNosStatus.AsInteger    := ADataSet.FieldByName('Status').AsInteger ;
        mtPkgNos.Post;
      End;

    End;

  Finally
    grdImpPkgsDBTableView1.DataController.EndLocate;
    grdImpPkgsDBTableView1.EndUpdate;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

procedure TfImportedPackages.acCreatePkgsUpdate(Sender: TObject);
begin
  With dm_ImportWoodx do
  Begin
    acCreatePkgs.Enabled := ImportedLoadOK;
  End;
end;

procedure TfImportedPackages.acSetPrefixOnAllPkgsExecute(Sender: TObject);
var
  fEntryPriceField: TfEntryPriceField;
  Prefix: String;
begin
  fEntryPriceField := TfEntryPriceField.Create(nil);
  try
    fEntryPriceField.mePriceField.Properties.EditMask := '';
    fEntryPriceField.LabelForField.Caption := 'Prefix';
    fEntryPriceField.Caption := 'Ange nytt prefix';
    if fEntryPriceField.ShowModal = mrOK then
    Begin
      grdImpPkgsDBTableView1.Controller.SelectAllRecords;
      Prefix := fEntryPriceField.mePriceField.Text;
      mtPkgNos.Active := True;
      SelectedPkgsOfPkgNosTable(Prefix);
      SetPrefix(Prefix);
      mtPkgNos.Active := False;
      grdImpPkgsDBTableView1.Controller.ClearSelection;
    End;
  finally
    FreeAndNil(fEntryPriceField);
  end;
end;

procedure TfImportedPackages.acSaveClientConnectionExecute(Sender: TObject);
begin
  With dm_ImportWoodx do
  Begin
    EditClient(cds_ImpClientMapWoodXPartyIdentifier.AsString,
      cds_ImpClientMapWoodXPartyIdentifierType.AsString);
    // UpdateClient (mtVisKlientClientNo.AsInteger, cds_ImpClientMapWoodXPartyIdentifier.AsString, cds_ImpClientMapWoodXPartyIdentifierType.AsString) ;
  End;
end;

end.
