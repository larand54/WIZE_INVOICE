unit UnitPackageEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Db, SqlTimSt, ImgList,
  idGlobal, VidaType, ComCtrls, StdCtrls, cxPC, cxControls, IniFiles,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxGraphics,
  cxLabel, cxDropDownEdit, cxCalendar, ActnList, Buttons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  kbmMemTable, Menus, cxLookAndFeelPainters, cxButtons, cxSplitter,
  cxCheckBox, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxCore,
  cxDateUtils, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  System.Actions, siComp, siLngLnk;

Const
  CM_MOVEIT = WM_USER + 1;

type
  TfrmPackageEntry = class(TForm)
    dxBarManager1: TdxBarManager;
    lbAddPkg: TdxBarLargeButton;
    lbRemovePkg: TdxBarLargeButton;
    lbSavePkgs: TdxBarLargeButton;
    lbCloseForm: TdxBarLargeButton;
    Panel1: TPanel;
    ImageList1: TImageList;
    lbPkgNoInt: TdxBarLargeButton;
    StatusBar1: TStatusBar;
    lbFillInPkgNos: TdxBarLargeButton;
    pmHamtaPktNr: TdxBarPopupMenu;
    bbFyllTommaPaketnr: TdxBarButton;
    bbHamtaPktNrOchLaggUppPaket: TdxBarButton;
    dsmtPackages: TDataSource;
    seColWidth: TcxSpinEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    bcLengthOption: TcxComboBox;
    cxLabel9: TcxLabel;
    seRunNo: TcxSpinEdit;
    cxLabel10: TcxLabel;
    ActionList1: TActionList;
    acSearchRunNo: TAction;
    deRegDate: TcxDateEdit;
    cxLabel11: TcxLabel;
    grdPackagesLevel1: TcxGridLevel;
    grdPackages: TcxGrid;
    acAddSpecialLengths: TAction;
    grdPackagesDBBandedTableView1: TcxGridDBBandedTableView;
    dsProps: TDataSource;
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
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropTO_PIPNAME: TStringField;
    mtUserPropTO_LIPNAME: TStringField;
    mtUserPropAgentNo: TIntegerField;
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
    mtUserPropShipperNo: TIntegerField;
    mtUserPropBookingTypeNo: TIntegerField;
    mtUserPropCustomerNo: TIntegerField;
    mtUserPropShowProduct: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    cxButton1: TcxButton;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    grdLORowsDBTableView1: TcxGridDBTableView;
    grdLORowsLevel1: TcxGridLevel;
    grdLORows: TcxGrid;
    grdLORowsDBTableView1CustomerNo: TcxGridDBColumn;
    grdLORowsDBTableView1CustShipPlanDetailObjectNo: TcxGridDBColumn;
    grdLORowsDBTableView1LO_NUMBER: TcxGridDBColumn;
    grdLORowsDBTableView1PKGCODE: TcxGridDBColumn;
    grdLORowsDBTableView1ProductNo: TcxGridDBColumn;
    grdLORowsDBTableView1PRODUCTDESCRIPTION: TcxGridDBColumn;
    grdLORowsDBTableView1LENGTHDESC: TcxGridDBColumn;
    grdLORowsDBTableView1NOOFUNITS: TcxGridDBColumn;
    grdLORowsDBTableView1VOLUNIT: TcxGridDBColumn;
    grdLORowsDBTableView1PRICE: TcxGridDBColumn;
    grdLORowsDBTableView1PRICEUNIT: TcxGridDBColumn;
    grdLORowsDBTableView1MIN_LENGTH: TcxGridDBColumn;
    grdLORowsDBTableView1MAX_LENGTH: TcxGridDBColumn;
    grdLORowsDBTableView1ACT_THICK: TcxGridDBColumn;
    grdLORowsDBTableView1ACT_WIDTH: TcxGridDBColumn;
    grdLORowsDBTableView1ACT_LENGTH: TcxGridDBColumn;
    grdLORowsDBTableView1REFERENCE: TcxGridDBColumn;
    grdLORowsDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdLORowsDBTableView1LEV_PERIOD_START: TcxGridDBColumn;
    grdLORowsDBTableView1LEV_PERIOD_END: TcxGridDBColumn;
    grdLORowsDBTableView1ORDERNO: TcxGridDBColumn;
    grdLORowsDBTableView1ExtraID: TcxGridDBColumn;
    grdLORowsDBTableView1PCSPERPKG: TcxGridDBColumn;
    grdLORowsDBTableView1PRODUCTGROUPNO: TcxGridDBColumn;
    grdLORowsDBTableView1NOM_THICK: TcxGridDBColumn;
    grdLORowsDBTableView1NOM_WIDTH: TcxGridDBColumn;
    grdLORowsDBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn;
    grdLORowsDBTableView1ProductLengthGroupNo: TcxGridDBColumn;
    grdLORowsDBTableView1INCH_THICK: TcxGridDBColumn;
    grdLORowsDBTableView1INCH_WIDTH: TcxGridDBColumn;
    grdLORowsDBTableView1MATCH: TcxGridDBColumn;
    grdLORowsDBTableView1OverrideRL: TcxGridDBColumn;
    cbSaveToProdLogg: TcxCheckBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    cbInputOption: TcxComboBox;
    cxLabel12: TcxLabel;
    cbCopyPcs: TCheckBox;
    acSave: TAction;
    acRemovePkg: TAction;
    acPkgNoSerie: TAction;
    acAddPkg: TAction;
    acFillEmptyPkgNos: TAction;
    acAddPkgsWithPkgNos: TAction;
    acClose: TAction;
    lcVERK: TcxDBLookupComboBox;
    lcREGPOINT: TcxDBLookupComboBox;
    lcOWNER: TcxDBLookupComboBox;
    lcPIPNAME: TcxDBLookupComboBox;
    lcLIPName: TcxDBLookupComboBox;
    lcLengthGroup: TcxDBLookupComboBox;
    meSupplierCode: TcxDBMaskEdit;
    ds_LIP2: TDataSource;
    ds_PIP2: TDataSource;
    cds_PIP2: TFDQuery;
    cds_PIP2PIPNO: TIntegerField;
    cds_PIP2PIPNAME: TStringField;
    cds_LIP2: TFDQuery;
    cds_LIP2LIPNo: TIntegerField;
    cds_LIP2LIPName: TStringField;
    siLangLinked_frmPackageEntry: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure grdPkgsTaBortChangeNodeEx(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    // procedure grdPkgsPACKAGENOValidate(Sender: TObject;
    // var ErrorText: String; var Accept: Boolean);
    procedure cbCopyPcsClick(Sender: TObject);
    procedure seColWidthPropertiesChange(Sender: TObject);
    procedure dsmtPackagesDataChange(Sender: TObject; Field: TField);
    procedure bcLengthOptionPropertiesChange(Sender: TObject);
    procedure acAddSpecialLengthsExecute(Sender: TObject);
    procedure grdPackagesDBTableView1Column1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure grdPackagesDBBandedTableView1EditKeyDown
      (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure acAddSpecialLengthsUpdate(Sender: TObject);
    procedure grdPkgsDBTableView1MATCHPropertiesChange(Sender: TObject);
    procedure cbInputOptionPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acRemovePkgExecute(Sender: TObject);
    procedure acRemovePkgUpdate(Sender: TObject);
    procedure acPkgNoSerieExecute(Sender: TObject);
    procedure acPkgNoSerieUpdate(Sender: TObject);
    procedure acAddPkgExecute(Sender: TObject);
    procedure acFillEmptyPkgNosExecute(Sender: TObject);
    procedure acAddPkgsWithPkgNosExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acFillEmptyPkgNosUpdate(Sender: TObject);
    procedure mtUserPropVerkNoChange(Sender: TField);
    procedure mtUserPropPIPNoChange(Sender: TField);
    procedure meSupplierCodeExit(Sender: TObject);
    procedure mtUserPropLengthGroupNoChange(Sender: TField);
    procedure Panel5DblClick(Sender: TObject);

  private
    { Private declarations }
    ManuellLengthColumn, OldProductGroupNo: Integer;
    LoadAllLengths, OKToSave: Boolean;
    procedure SetControls;

    procedure SavePackages(Sender: TObject);
    Function UnsavedPkgs: Boolean;
    Procedure CreateFieldsInmtPackagesTable(Sender: TObject);
    procedure InsertPkgSerie(Sender: TObject);
    procedure AddPkgsToLoadFromPkgEntry(Sender: TObject);
    procedure AddPkgsToSSPLoadFromPkgEntry(Sender: TObject);
    procedure AddPkgsToCSDLoadFromPkgEntry(Sender: TObject);
    procedure ReLoadPackageColumnsWithAllLengths(Sender: TObject);
    // procedure RemoveAndADD_Matches(Sender : TObject);
    function GetNoOfPkgsWithNoPkgNo(Sender: TObject): Integer;
    procedure LaggUppPaketMedPaketNr(Sender: TObject;
      Var NoOfErrorPkgnr: Integer; const AntalPaketAttLaggaUpp: Integer);
    function GetNoOfPkgsToAdd(Var FormResult: Word): Integer;
    Function PackageNo_OK(PkgNo: Integer): Boolean;
    procedure FyllTommaPaket(Sender: TObject; Var NoOfErrorPkgnr: Integer);
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;
    Function LengthExistInGrid(const ManLength: String): Boolean;
  public
    { Public declarations }
    SavePkgs: Boolean;
  end;

  // var   frmPackageEntry: TfrmPackageEntry;

implementation

uses dmsVidaProduct, VidaConst, VidaUser, dmsDataConn,
  UnitPkgNoSeries, dmcLoadEntrySSP, dmcVidaOrder, dmsVidaSystem,
  dmsVidaContact, dmcVidaSystem, uEntryField, uSearchRunNo,
  uAddSpecialLengths, dmc_UserProps, dmcLoadEntryCSD;

{$R *.dfm}

procedure TfrmPackageEntry.CMMoveIt(var Msg: TMessage);
var
  AGoForward: Boolean;
begin
  AGoForward := Boolean(Msg.WParam);
  grdPackagesDBBandedTableView1.Controller.EditingController.HideEdit(True);
  grdPackagesDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;

Function TfrmPackageEntry.LengthExistInGrid(const ManLength: String): Boolean;
Var
  x: Integer;
Begin
  Result := False;
  With dmsProduct do
  Begin
    For x := FirstLengthColumnInmatningViaLast to mtPackages.FieldCount - 1 do
    Begin
      if mtPackages.Fields.Fields[x].DisplayLabel = ManLength then
        Result := True;
    End;
  End; // With
End;

Procedure TfrmPackageEntry.CreateFieldsInmtPackagesTable(Sender: TObject);
Var
  BandBredd, x: Integer;
  LengthTitle: String;
  Save_Cursor: TCursor;
  Properties: TcxTextEditProperties;
Begin
  grdPackagesDBBandedTableView1.BeginUpdate;
  Try
    With dmsProduct do
    Begin
      if mtPackages.Active then
        if mtPackages.RecordCount > 0 then
        Begin
          ShowMessage('Cannot swith when packages are present.');
          Exit;
        End;

      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crSQLWait; { Show hourglass cursor }

      ManuellLengthColumn := FirstLengthColumnInmatningViaLast;

      if mtPackages.Active then
        mtPackages.Active := False;

      mtPackages.DisableControls;
      Try
        mtPackages.DeleteIndex('IndexRecId');
        mtPackages.DeleteIndex('PkgID');

        For x := mtPackages.Fields.Count - 1 downto 0 do
        Begin
          mtPackages.Fields.Remove(mtPackages.Fields.Fields[x]);
        End;

        mtPackages.FieldDefs.Clear;

        // 2
        mtPackages.FieldDefs.Add('PackageNo', ftLargeInt, 0, False);
        mtPackages.FieldDefs[cPACKAGENO].CreateField(nil);
        mtPackages.FieldByName('PackageNo').DisplayLabel := 'Pktnr';

        mtPackages.FieldDefs.Add('RecId', ftInteger, 0, False);
        mtPackages.FieldDefs[cRECID].CreateField(nil);
        mtPackages.FieldByName('RecId').DisplayLabel := 'Radnr';
        mtPackages.FieldByName('RecId').Visible := True;

        // 1
        mtPackages.FieldDefs.Add('Description', ftString, 100, False);
        mtPackages.FieldDefs[CDESCRIPTION].CreateField(nil);
        mtPackages.FieldByName('Description').DisplayLabel := 'Beskrivning';
        mtPackages.FieldByName('Description').Visible := True;

        // 3
        mtPackages.FieldDefs.Add('SupplierCode', ftString, 3, False);
        mtPackages.FieldDefs[cSUPPLIERCODE].CreateField(nil);
        mtPackages.FieldByName('SupplierCode').DisplayLabel := 'Lev.kod';
        // 4
        mtPackages.FieldDefs.Add('ProductNo', ftInteger, 0, False);
        mtPackages.FieldDefs[cPRODUCTNO].CreateField(nil);
        mtPackages.FieldByName('ProductNo').Visible := False;
        // 5
        mtPackages.FieldDefs.Add('ProductGroupNo', ftInteger, 0, False);
        mtPackages.FieldDefs[cPRODUCTGROUPNO].CreateField(nil);
        mtPackages.FieldByName('ProductGroupNo').Visible := False;
        // 6
        mtPackages.FieldDefs.Add('TotalPcs', ftInteger, 0, False);
        mtPackages.FieldDefs[cTOTALPCS].CreateField(nil);
        mtPackages.FieldByName('TotalPcs').DisplayLabel := 'Styck';
        // 7
        mtPackages.FieldDefs.Add('TotalActM3', ftFloat, 0, False);
        mtPackages.FieldDefs[cTOTALACTM3].CreateField(nil);
        mtPackages.FieldByName('TotalActM3').DisplayLabel := 'AM3';
        TFloatField(mtPackages.Fields[cTOTALACTM3]).DisplayFormat :=
          '#######.000';
        // 8
        mtPackages.FieldDefs.Add('TotalNOMM3', ftFloat, 0, False);
        mtPackages.FieldDefs[cTOTALNOMM3].CreateField(nil);
        TFloatField(mtPackages.Fields[cTOTALNOMM3]).DisplayFormat :=
          '#######.000';
        mtPackages.FieldByName('TotalNOMM3').DisplayLabel := 'NM3';
        mtPackages.FieldByName('TotalNOMM3').Visible := False;
        // 9
        mtPackages.FieldDefs.Add('TotalLpm', ftFloat, 0, False);
        mtPackages.FieldDefs[cTOTALLPM].CreateField(nil);
        mtPackages.FieldByName('TotalLpm').DisplayLabel := 'AM1';
        TFloatField(mtPackages.Fields[cTOTALLPM]).DisplayFormat :=
          '#######.0000';
        // 10
        mtPackages.FieldDefs.Add('Totalm2', ftFloat, 0, False);
        mtPackages.FieldDefs[cTOTALM2].CreateField(nil);
        mtPackages.FieldByName('Totalm2').DisplayLabel := 'AM2';
        TFloatField(mtPackages.Fields[cTOTALM2]).DisplayFormat := '#######.000';

        // 11
        mtPackages.FieldDefs.Add('TotalMFBM', ftFloat, 0, False);
        mtPackages.FieldDefs[cTOTALMFBM].CreateField(nil);
        TFloatField(mtPackages.Fields[cTOTALMFBM]).DisplayFormat :=
          '#######.000';
        mtPackages.FieldByName('TotalMFBM').DisplayLabel := 'MFBM';
        mtPackages.FieldByName('TotalMFBM').Visible := False;

        // 12
        mtPackages.FieldDefs.Add('GradeStampNo', ftInteger, 0, False);
        mtPackages.FieldDefs[cGRADESTAMP].CreateField(nil);
        mtPackages.FieldByName('GradeStampNo').Visible := False;
        // 13
        mtPackages.FieldDefs.Add('BarCodeID', ftInteger, 0, False);
        mtPackages.FieldDefs[cBARCODEID].CreateField(nil);
        mtPackages.FieldByName('BarCodeID').Visible := False;

        (* //14
          mtPackages.FieldDefs.Add('OnSticks',ftInteger,0,False) ;
          mtPackages.FieldDefs[cONSTICKS].CreateField(nil);
          //15
          mtPackages.FieldDefs.Add('PackageHeight',ftInteger,0,False) ;
          mtPackages.FieldDefs[cPKGHEIGTH].CreateField(nil);
          //16
          mtPackages.FieldDefs.Add('PackageWidth',ftInteger,0,False) ;
          mtPackages.FieldDefs[cPKGWIDTH].CreateField(nil);
          //17
          mtPackages.FieldDefs.Add('MiniBundled',ftInteger,0,False) ;
          mtPackages.FieldDefs[cMINIBUNDLED].CreateField(nil);
          //18
          mtPackages.FieldDefs.Add('WrapTypeNo',ftInteger,0,False) ;
          mtPackages.FieldDefs[cWRAPTYPE].CreateField(nil);
          //19
          mtPackages.FieldDefs.Add('ShrinkWrapNo',ftInteger,0,False) ;
          mtPackages.FieldDefs[cSHRINKWRAP].CreateField(nil); *)

        // 14
        mtPackages.FieldDefs.Add('ACT_THICK', ftFloat, 0, False);
        mtPackages.FieldDefs[cACTTHICK].CreateField(nil);
        mtPackages.FieldByName('ACT_THICK').Visible := False;
        // 15
        mtPackages.FieldDefs.Add('ACT_WIDTH', ftFloat, 0, False);
        mtPackages.FieldDefs[cACTWIDTH].CreateField(nil);
        mtPackages.FieldByName('ACT_WIDTH').Visible := False;
        // 16
        mtPackages.FieldDefs.Add('NOM_THICK', ftFloat, 0, False);
        mtPackages.FieldDefs[cNOMTHICK].CreateField(nil);
        mtPackages.FieldByName('NOM_THICK').Visible := False;
        // 17
        mtPackages.FieldDefs.Add('NOM_WIDTH', ftFloat, 0, False);
        mtPackages.FieldDefs[cNOMWIDTH].CreateField(nil);
        mtPackages.FieldByName('NOM_WIDTH').Visible := False;
        // 18
        mtPackages.FieldDefs.Add('LPM_PROD_LEGNTH_NO', ftInteger, 0, False);
        mtPackages.FieldDefs[cLPM_PROD_LEGNTH_NO].CreateField(nil);
        mtPackages.FieldByName('LPM_PROD_LEGNTH_NO').Visible := False;
        // 19
        mtPackages.FieldDefs.Add('PackageTypeNo', ftLargeInt, 0, False);
        mtPackages.FieldDefs[cPACKAGETYPENO].CreateField(nil);
        mtPackages.FieldByName('PackageTypeNo').DisplayLabel := 'PKGTYPE NO';
        mtPackages.FieldByName('PackageTypeNo').Visible := False;
        // 20
        mtPackages.FieldDefs.Add('INCH_THICK', ftFloat, 0, False);
        mtPackages.FieldDefs[cINCHTHICK].CreateField(nil);
        mtPackages.FieldByName('INCH_THICK').Visible := False;
        // 21
        mtPackages.FieldDefs.Add('INCH_WIDTH', ftFloat, 0, False);
        mtPackages.FieldDefs[cINCHWIDTH].CreateField(nil);
        mtPackages.FieldByName('INCH_WIDTH').Visible := False;

        // 22
        mtPackages.FieldDefs.Add('SurfacingNo', ftInteger, 0, False);
        mtPackages.FieldDefs[cSurfacingNo].CreateField(nil);
        mtPackages.FieldByName('SurfacingNo').Visible := False;

        // 23
        mtPackages.FieldDefs.Add('OverrideRL', ftInteger, 0, False);
        mtPackages.FieldDefs[cOverrideRL].CreateField(nil);
        mtPackages.FieldByName('OverrideRL').Visible := False;

        // 24
        mtPackages.FieldDefs.Add('Defsspno', ftInteger, 0, False);
        mtPackages.FieldDefs[cDefsspno].CreateField(nil);
        mtPackages.FieldByName('Defsspno').Visible := False;

        // 25
        mtPackages.FieldDefs.Add('Varuslag', ftInteger, 0, False);
        mtPackages.FieldDefs[cVaruslag].CreateField(nil);
        mtPackages.FieldByName('Varuslag').Visible := False;

        x := FirstLengthColumnInmatningViaLast;

        if dmsProduct.InputOption = INPUT_PIECES then
        Begin
          if (bcLengthOption.ItemIndex = 0) then
            ADD_LO_Lengths
          else if bcLengthOption.ItemIndex = 1 then
            MakeLengthQueryAllaPGLength // All lengths
          else if bcLengthOption.ItemIndex = 2 then
          Begin
            // if bcStdLenGrp.Properties.Items.Count > 0 then
            if mtUserPropLengthGroupNo.IsNull = False then
              // MakeLengthQuery_STD_Lengths (integer(bcStdLenGrp.Properties.Items.Objects[bcStdLenGrp.ItemIndex]))
              MakeLengthQuery_STD_Lengths(mtUserPropLengthGroupNo.AsInteger)

            else
            Begin
              bcLengthOption.ItemIndex := 1;
              MakeLengthQueryAllaPGLength; // All lengths
              ShowMessage('Loading all lengths...');
            End;
          End
          else if bcLengthOption.ItemIndex = 3 then
          Begin
            MakeLengthQuery_II;
          End
          else
            ADD_LO_Lengths;

          sq_ProductLengths.Open;

          While not sq_ProductLengths.Eof do
          Begin
            mtPackages.FieldDefs.Add(sq_ProductLengthsActualLengthMM.AsString,
              ftInteger, 0, False);
            mtPackages.FieldDefs[x].CreateField(nil);
            mtPackages.FieldByName(sq_ProductLengthsActualLengthMM.AsString)
              .Visible := True;
            LengthTitle := Trim(sq_ProductLengthsActualLengthMM.AsString);

            mtPackages.FieldByName(sq_ProductLengthsActualLengthMM.AsString)
              .DisplayLabel := LengthTitle;

            x := Succ(x);

            sq_ProductLengths.Next;
          End;
          sq_ProductLengths.Close;
        End // if dmsProduct.InputOption = INPUT_PIECES then
        else if dmsProduct.InputOption = INPUT_LOPM_TOTAL_LOPM then
        Begin
          mtPackages.FieldDefs.Add('1', ftInteger, 0, False);
          mtPackages.FieldDefs[x].CreateField(nil);
          mtPackages.FieldByName('1').DisplayLabel := 'Pcs';
          mtPackages.FieldByName('1').Visible := False;
        End
        else if dmsProduct.InputOption = INPUT_LOPM_AVERAGE_LENGTH then
        Begin
          mtPackages.FieldDefs.Add('1', ftFloat, 0, False);
          mtPackages.FieldDefs[x].CreateField(nil);

          mtPackages.FieldByName('1').DisplayLabel := 'Medellängd(meter)';
          TFloatField(mtPackages.Fields[x]).DisplayFormat := '#######.0000';
        End
        else if dmsProduct.InputOption = INPUT_ARTICLES then
        Begin
          mtPackages.FieldDefs.Add('1', ftFloat, 0, False);
          mtPackages.FieldDefs[x].CreateField(nil);

          mtPackages.FieldByName('1').DisplayLabel := 'Medellängd(meter)';
          TFloatField(mtPackages.Fields[x]).DisplayFormat := '#######.0000';
          // mtPackages.FieldByName('1').Visible      := False ;
        End;

        mtPackages.AddIndex('IndexRecId', 'RecId', []);
        mtPackages.IndexName := 'IndexRecId';
        mtPackages.AddIndex('PkgID', 'PackageNo;SupplierCode', []);

        // Create all columns in the grid
        grdPackagesDBBandedTableView1.ClearItems;
        grdPackagesDBBandedTableView1.DataController.CreateAllItems;

        // Set all column props
        For x := 0 to grdPackagesDBBandedTableView1.ColumnCount - 1 do
        Begin
          grdPackagesDBBandedTableView1.Columns[x].Options.Filtering := False;
          grdPackagesDBBandedTableView1.Columns[x].Position.BandIndex := 2;
          grdPackagesDBBandedTableView1.Columns[x].PropertiesClass :=
            TcxTextEditProperties;
          Properties := grdPackagesDBBandedTableView1.Columns[x]
            .Properties AS TcxTextEditProperties;
          Properties.ReadOnly := True;
        End;

        // Set length column props
        For x := FirstLengthColumnInmatningViaLast to
          grdPackagesDBBandedTableView1.ColumnCount - 1 do
        Begin
          // grdPackagesDBBandedTableView1.Columns[x].PropertiesClass:=  TcxTextEditProperties;
          Properties := grdPackagesDBBandedTableView1.Columns[x]
            .Properties AS TcxTextEditProperties;
          Properties.ReadOnly := False;
          grdPackagesDBBandedTableView1.Columns[x].Width := 40;
        End;

        if dmsProduct.InputOption = INPUT_LOPM_TOTAL_LOPM then
        Begin
          Properties := grdPackagesDBBandedTableView1.Columns[cTOTALLPM]
            .Properties AS TcxTextEditProperties;
          Properties.ReadOnly := False;
        End
        else if dmsProduct.InputOption = INPUT_LOPM_AVERAGE_LENGTH then
        Begin
          Properties := grdPackagesDBBandedTableView1.Columns[cTOTALPCS]
            .Properties AS TcxTextEditProperties;
          Properties.ReadOnly := False;
        End
        else if dmsProduct.InputOption = INPUT_ARTICLES then
        Begin
          Properties := grdPackagesDBBandedTableView1.Columns[cTOTALPCS]
            .Properties AS TcxTextEditProperties;
          Properties.ReadOnly := False;
        End;

        // grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Width:= 65 ;

        grdPackagesDBBandedTableView1.Columns[cPACKAGENO]
          .Options.Filtering := False;
        grdPackagesDBBandedTableView1.Columns[cPACKAGENO]
          .Position.BandIndex := 0;
        Properties := grdPackagesDBBandedTableView1.Columns[cPACKAGENO]
          .Properties AS TcxTextEditProperties;
        Properties.ReadOnly := False;
        Properties.OnValidate :=
          grdPackagesDBTableView1Column1PropertiesValidate;

        grdPackagesDBBandedTableView1.Columns[cRECID].Position.BandIndex := 0;
        grdPackagesDBBandedTableView1.Columns[CDESCRIPTION]
          .Position.BandIndex := 0;
        grdPackagesDBBandedTableView1.Columns[cSUPPLIERCODE]
          .Position.BandIndex := 0;
        grdPackagesDBBandedTableView1.Columns[cTOTALPCS]
          .Position.BandIndex := 1;
        grdPackagesDBBandedTableView1.Columns[cTOTALACTM3]
          .Position.BandIndex := 1;
        grdPackagesDBBandedTableView1.Columns[cTOTALLPM]
          .Position.BandIndex := 1;
        grdPackagesDBBandedTableView1.Columns[cTOTALM2].Position.BandIndex := 1;

        grdPackagesDBBandedTableView1.Columns[cRECID].Width :=
          mtUserProp.Fields.Fields[40].AsInteger;
        grdPackagesDBBandedTableView1.Columns[CDESCRIPTION].Width :=
          mtUserProp.Fields.Fields[41].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cSUPPLIERCODE].Width :=
          mtUserProp.Fields.Fields[42].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Width :=
          mtUserProp.Fields.Fields[43].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Width :=
          mtUserProp.Fields.Fields[44].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Width :=
          mtUserProp.Fields.Fields[45].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cTOTALM2].Width :=
          mtUserProp.Fields.Fields[46].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Width :=
          mtUserProp.Fields.Fields[49].AsInteger;

        grdPackagesDBBandedTableView1.Columns[CDESCRIPTION].Position.ColIndex :=
          mtUserProp.Fields.Fields[50].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cSUPPLIERCODE].Position.ColIndex
          := mtUserProp.Fields.Fields[51].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Position.ColIndex :=
          mtUserProp.Fields.Fields[52].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Position.ColIndex :=
          mtUserProp.Fields.Fields[53].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Position.ColIndex :=
          mtUserProp.Fields.Fields[54].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Position.ColIndex :=
          mtUserProp.Fields.Fields[30].AsInteger;
        grdPackagesDBBandedTableView1.Columns[cTOTALM2].Position.ColIndex :=
          mtUserProp.Fields.Fields[31].AsInteger;


        // grdPackagesDBBandedTableView1.Bands[1].ApplyBestFit(False, False);

        { BandBredd:= 0 ;
          For x := 0 to grdPackagesDBBandedTableView1.Bands[1].ColumnCount - 1 do
          BandBredd:= BandBredd + grdPackagesDBBandedTableView1.Bands[1].Columns[x].Width ;
          grdPackagesDBBandedTableView1.Bands[1].Width:= BandBredd ; }

        { BandBredd:= 0 ;
          For x := 0 to grdPackagesDBBandedTableView1.Bands[1].ColumnCount - 1 do
          BandBredd:= BandBredd + grdPackagesDBBandedTableView1.Bands[1].Columns[x].Width ;
          grdPackagesDBBandedTableView1.Bands[1].Width:= BandBredd ; }

        // grdPackagesDBBandedTableView1.Bands[1].ApplyBestFit(False, False);

        // grdPackagesDBBandedTableView1.Bands[2].ApplyBestFit(True, False);
        // grdPackagesDBBandedTableView1.OptionsView.ColumnAutoWidth:= mtUserPropNewItemRow.AsInteger = 1 ;

        grdPackagesDBBandedTableView1.Bands[0].Width := mtUserProp.Fields.Fields
          [47].AsInteger;
        grdPackagesDBBandedTableView1.Bands[1].Width := mtUserProp.Fields.Fields
          [48].AsInteger;

        For x := 2 to 2 do
        Begin
          with grdPackagesDBBandedTableView1.DataController.Summary do
            with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
              Column := grdPackagesDBBandedTableView1.Columns[x];
              Kind := skCount;
              Format := '#####';
            end;
        End;

        For x := 6 to 6 do
        Begin
          with grdPackagesDBBandedTableView1.DataController.Summary do
            with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
              Column := grdPackagesDBBandedTableView1.Columns[x];
              Kind := skSum;
              Format := '#####';
            end;
        End;

        For x := 7 to 11 do
        Begin
          with grdPackagesDBBandedTableView1.DataController.Summary do
            with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
              Column := grdPackagesDBBandedTableView1.Columns[x];
              Kind := skSum;
              Format := '####.000';
            end;
        End;

        For x := FirstLengthColumnInmatningViaLast to
          grdPackagesDBBandedTableView1.ColumnCount - 1 do
        Begin
          with grdPackagesDBBandedTableView1.DataController.Summary do
            with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
              Column := grdPackagesDBBandedTableView1.Columns[x];
              Kind := skSum;
              Format := '#####';
            end;
        End;

        mtPackages.Active := True;

        // Set length column props
        For x := FirstLengthColumnInmatningViaLast to
          grdPackagesDBBandedTableView1.ColumnCount - 1 do
        Begin
          // grdPackagesDBBandedTableView1.Columns[x].PropertiesClass:=  TcxTextEditProperties;
          Properties := grdPackagesDBBandedTableView1.Columns[x]
            .Properties AS TcxTextEditProperties;
          Properties.ReadOnly := False;
          grdPackagesDBBandedTableView1.Columns[x].Width := 40;
        End;

      Finally
        mtPackages.EnableControls;
        Screen.Cursor := Save_Cursor; { Always restore to normal }
      End;

    End; // with
  Finally
    grdPackagesDBBandedTableView1.EndUpdate;
  End;
End;

procedure TfrmPackageEntry.FormCreate(Sender: TObject);
Var
  x: Integer;
begin
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLORows.Name,
    grdLORowsDBTableView1);

  dm_UserProps.LoadUserProps('TfrmPackageEntry', mtUserProp);
  seRunNo.Value := -1;
  deRegDate.Date := now;
  With dmsProduct do
  Begin
    Try
      CopyPcs := False;

      bcLengthOption.Properties.OnChange := Nil;
      lcLengthGroup.Enabled := False;

      LoadAllLengths := False;
      ChangeNoOfPcsEvent := True;
      OldProductGroupNo := 0;

      mtUserProp.Edit;
      mtUserPropSupplierCode.AsString := dmsProduct.SupplierCode;

      if dmsProduct.OrderType = c_Sales then
      Begin
        if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
        Begin
          mtUserPropVerkNo.AsInteger := dmsProduct.SupplierNo;
        End
        else
        Begin
          mtUserPropVerkNo.AsInteger := dmsProduct.SupplierNo;
          // ThisUser.CompanyNo ;
        End;
      End
      else
      Begin
        mtUserPropVerkNo.AsInteger := dmsProduct.SupplierNo;
        // ThisUser.CompanyNo ;
      End;

      mtUserPropRegPointNo.AsInteger := mp_INKOP;

      mtUserPropOwnerNo.AsInteger := InventoryOwnerNo;

      cds_PIP2.Active := False;
      cds_PIP2.ParamByName('OwnerNo').AsInteger := InventoryOwnerNo;
      cds_PIP2.ParamByName('LegoOwnerNo').AsInteger := InventoryOwnerNo;
      cds_PIP2.Active := True;

      cds_LIP2.Active := False;
      if not cds_PIP2PIPNO.IsNull then
        cds_LIP2.ParamByName('PIPNo').AsInteger := cds_PIP2PIPNO.AsInteger
      else
        cds_LIP2.ParamByName('PIPNo').AsInteger := -1;
      cds_LIP2.Active := True;

      mtUserPropPIPNo.AsInteger := InventoryNo;
      mtUserPropLIPNo.AsInteger := LIPNo;

      (*
        if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
        dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items,  InventoryOwnerNo, ThisUser.CompanyNo)
        else
        dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, InventoryOwnerNo, ThisUser.CompanyNo { SupplierNo}) ;

        dmsContact.LoadMatPunktsAgare(bcPaketAgare.Properties.Items ) ;
        if bcPaketAgare.Properties.Items.Count > 0 then
        For x := 0 to bcPaketAgare.Properties.Items.Count - 1 do
        if InventoryOwnerNo = integer(bcPaketAgare.Properties.Items.Objects[x]) then
        bcPaketAgare.ItemIndex:= x ;

        bcPaketAgare.Properties.ReadOnly:= True ;



        For x:= 0 to bcPhysInventory.Properties.Items.Count -1 do
        if InventoryNo = integer(bcPhysInventory.Properties.Items.Objects[x]) then
        Begin
        bcPhysInventory.ItemIndex:= x ;
        InventoryNo:= integer(bcPhysInventory.Properties.Items.Objects[x]);
        End ;


        if bcPhysInventory.ItemIndex = -1 then
        if bcPhysInventory.Properties.Items.Count > 0 then
        bcPhysInventory.ItemIndex := 0 ;

        if bcLogicalInventory.Properties.Items.Count > 0 then
        For x:= 0 to bcLogicalInventory.Properties.Items.Count -1 do
        if LIPNo = integer(bcLogicalInventory.Properties.Items.Objects[x]) then
        Begin
        bcLogicalInventory.ItemIndex:= x ;
        InventoryNo:= integer(bcLogicalInventory.Properties.Items.Objects[x]) ;
        End ;

        //Load producenter
        dmsContact.LoadMatPunktsAgare(bcMatPunktAgare.Properties.Items ) ;
        if bcMatPunktAgare.Properties.Items.Count > 0 then
        Begin
        bcMatPunktAgare.ItemIndex:= 0 ;

        if dmsProduct.OrderType = c_Sales then
        Begin
        if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
        Begin
        For x := 0 to bcMatPunktAgare.Properties.Items.Count - 1 do
        if dmsProduct.SupplierNo {ThisUser.CompanyNo} = integer(bcMatPunktAgare.Properties.Items.Objects[x]) then
        bcMatPunktAgare.ItemIndex:= x ;
        End
        else
        Begin
        For x := 0 to bcMatPunktAgare.Properties.Items.Count - 1 do
        if ThisUser.CompanyNo = integer(bcMatPunktAgare.Properties.Items.Objects[x]) then
        bcMatPunktAgare.ItemIndex:= x ;
        End ;

        End
        else
        Begin
        For x := 0 to bcMatPunktAgare.Properties.Items.Count - 1 do
        if ThisUser.CompanyNo = integer(bcMatPunktAgare.Properties.Items.Objects[x]) then
        bcMatPunktAgare.ItemIndex:= x ;
        End ;

        if dmsContact.IsClientLego(ThisUser.CompanyNo) = cLego then
        bcMatPunktAgare.Properties.ReadOnly := True
        else
        bcMatPunktAgare.Properties.ReadOnly := False ;


        //Load Registration points
        bcRegPoint.Properties.Items.Clear ;
        dmcSystem.LoadRegPoint(bcRegPoint.Properties.Items, integer(bcMatPunktAgare.Properties.Items.Objects[bcMatPunktAgare.ItemIndex])) ;
        if bcRegPoint.Properties.Items.Count > 0 then
        bcRegPoint.ItemIndex:= 0 ;
        if OrderType = c_Purchase then
        Begin
        For x := 0 to bcRegPoint.Properties.Items.Count -1 do
        if integer(bcRegPoint.Properties.Items.Objects[x]) = mp_INKOP then
        bcRegPoint.ItemIndex:= x ;
        End ;
        End ;



        LoadLengthGroup(bcStdLenGrp.Properties.Items) ;

      *)

      SavePkgs := False;

      CreateFieldsInmtPackagesTable(Sender);

    Finally
      bcLengthOption.Properties.OnChange := bcLengthOptionPropertiesChange;
    End;
    dmsProduct.SupplierCode := mtUserPropSupplierCode.AsString;
  End; // with
end;

procedure TfrmPackageEntry.grdPkgsTaBortChangeNodeEx(Sender: TObject);
begin
  With dmsProduct do
  Begin
    if (mtPackages.Fields[cPRODUCTGROUPNO].AsInteger <> OldProductGroupNo) AND
      (mtPackages.Fields[cPRODUCTGROUPNO].AsInteger > 0) AND
      (mtPackages.State = dsBrowse) then
    Begin
      OldProductGroupNo := mtPackages.Fields[cPRODUCTGROUPNO].AsInteger;

    End;
    Get_LO_LinesMatched;
    // (mtpackages.Fields[cRECID].AsInteger,  Trim(mtpackages.Fields[cSUPPLIERCODE].AsString)) ;

    if mtPackages.RecordCount > 0 then
      Self.bcLengthOption.Enabled := False
    else
      Self.bcLengthOption.Enabled := True;

    { if mtPackages.RecordCount > 0 then
      Begin
      Self.lbSavePkgs.Enabled := True ;
      Self.lbRemovePkg.Enabled := True ;
      End ;

      if mtPackages.RecordCount > 0 then
      Begin
      Self.lbSavePkgs.Enabled := True ;
      Self.lbRemovePkg.Enabled := True ;
      End
      else
      Begin
      Self.lbSavePkgs.Enabled := False ;
      Self.lbRemovePkg.Enabled := False ;
      End ; }

  End;
end;

// PktNr serie
procedure TfrmPackageEntry.InsertPkgSerie(Sender: TObject);
Var
  NoOfPkgsInSerie, PkgNo: Integer;
  ResultButton: Word;
  Save_Cursor: TCursor;
  Res_UserName: String;
  frmPkgNoSeries: TfrmPkgNoSeries;
begin
  ResultButton := mrYes;
  With dmsProduct do
  Begin
    PkgNoSeries := True;
    mtPackages.DisableControls;
    frmPkgNoSeries := TfrmPkgNoSeries.Create(NIL);
    mtLO_Records.Filter := 'SupplierShipPlanObjectNo = ' +
      mtLO_RecordsSupplierShipPlanObjectNo.AsString;
    mtLO_Records.Filtered := True;
    Try
      if frmPkgNoSeries.ShowModal = mrOk then
      Begin
        NoOfPkgsInSerie := StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) -
          StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text));

        if NoOfPkgsInSerie > 100 then
          ResultButton := MessageDlg(IntToStr(NoOfPkgsInSerie) +
            ' paket kommer att läggas upp, är det ok?', mtConfirmation,
            [mbYes, mbNo, mbCancel], 0);

        if ResultButton = mrYes then
        Begin
          Save_Cursor := Screen.Cursor;
          Screen.Cursor := crSQLWait; { Show hourglass cursor }
          Try

            For PkgNo := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text))
              to StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) do
            Begin

              if mtDupPkgNo.FindKey([PkgNo, Trim(SupplierCode)]) then
              Begin
                MessageBeep(MB_ICONEXCLAMATION);
                ShowMessage('Paketnr finns redan, ange ett annat ' +
                  IntToStr(PkgNo));
              End
              else if PackageNumberExists(PkgNo, SupplierCode) = False then
              Begin
                if dmsSystem.Pkg_Reserved(PkgNo, SupplierCode, Self.Name,
                  Res_UserName) = ThisUser.UserName + '/' +
                  Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED } then
                begin

                  Try
                    mtPackages.Insert;
                    // mtpackages.Edit ;
                    mtPackages.Fields.Fields[cPACKAGENO].AsInteger := PkgNo;
                    // mtpackages.Filter    := 'PackageNo = ' + inttostr(PkgNo) ;
                    // mtpackages.Filtered  := True ;
                    mtPackages.Post;

                  Except
                    on eDatabaseError do
                    Begin
                      Raise;
                      mtPackages.Cancel;
                    End;
                  End;
                End // if dmsSystem.Pkg_Reserved(
                else
                  ShowMessage('Paketnr ' + IntToStr(PkgNo) +
                    ' är reserverat av användare ' + Res_UserName);
              End // if..
              else
                ShowMessage('Paketnr  ' + IntToStr(PkgNo) +
                  ' existerar redan, ange ett annat nummer');
            End; // for PkgNo
          Finally
            Screen.Cursor := Save_Cursor; { Always restore to normal }
          End;

        End; // mrYes
      End;
    Finally
      FreeAndNil(frmPkgNoSeries); // .Free ;
      mtPackages.EnableControls;
      PkgNoSeries := False;
      // mtpackages.Filtered  := False ;
      mtLO_Records.Filtered := False;
    End;
  End; // with
End;

procedure TfrmPackageEntry.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var
  ResultButton: Word;
  x: Integer;
  OvcIniFileStore1: TIniFile;
begin
  if (UnsavedPkgs) and (SavePkgs = False) then
  Begin
    ResultButton := MessageDlg('Paket är inte sparade, vill du spara?',
      mtConfirmation, [mbYes, mbNo, mbCancel], 0);
    if ResultButton = mrYes then
    begin
      SavePackages(Sender);
      CanClose := OKToSave;
    End
    else if ResultButton = mrCancel then
      CanClose := False;
  End;

  if CanClose = True then
  begin
    With dmsSystem do
    Begin
      Delete_ReservedPkgs(Self.Name);
      mtUserProp.Edit;
      mtUserProp.Fields.Fields[40].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cRECID].Width;
      mtUserProp.Fields.Fields[41].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[CDESCRIPTION].Width;
      mtUserProp.Fields.Fields[42].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cSUPPLIERCODE].Width;
      mtUserProp.Fields.Fields[43].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Width;
      mtUserProp.Fields.Fields[44].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Width;
      mtUserProp.Fields.Fields[45].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Width;
      mtUserProp.Fields.Fields[46].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cTOTALM2].Width;
      mtUserProp.Fields.Fields[47].AsInteger :=
        grdPackagesDBBandedTableView1.Bands[0].Width;
      mtUserProp.Fields.Fields[48].AsInteger :=
        grdPackagesDBBandedTableView1.Bands[1].Width;
      mtUserProp.Fields.Fields[49].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Width;

      mtUserProp.Fields.Fields[50].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[CDESCRIPTION].Position.ColIndex;
      mtUserProp.Fields.Fields[51].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cSUPPLIERCODE].Position.ColIndex;
      mtUserProp.Fields.Fields[52].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Position.ColIndex;
      mtUserProp.Fields.Fields[53].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Position.ColIndex;
      mtUserProp.Fields.Fields[54].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Position.ColIndex;
      mtUserProp.Fields.Fields[30].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Position.ColIndex;
      mtUserProp.Fields.Fields[31].AsInteger :=
        grdPackagesDBBandedTableView1.Columns[cTOTALM2].Position.ColIndex;
      mtUserProp.Post;

      dm_UserProps.SaveUserProps('TfrmPackageEntry', mtUserProp);
      dmsSystem.StoreGridLayout(ThisUser.UserID,
        Self.Name + '/' + grdLORows.Name, grdLORowsDBTableView1);
    End;
  end;
end;

Function TfrmPackageEntry.UnsavedPkgs: Boolean;
Begin
  Result := False;
  With dmsProduct do
  Begin
    if mtPackages.Active then
      if mtPackages.RecordCount > 0 then
        Result := True;
  End;
End;

procedure TfrmPackageEntry.grdPackagesDBTableView1Column1PropertiesValidate
  (Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue: string;
  PkgNo: Integer;
  TestPkgNo: Int64;
  Res_UserName: String;
begin
  Error := False;
  With dmsProduct do
  Begin
    NewValue := DisplayValue;
    // NewValue := TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;

    TestPkgNo := StrToInt64(NewValue);
    if TestPkgNo > Const_MAX_PKG_NO then
    Begin
      ErrorText := 'Högsta paketnr tillåtet är ' + IntToStr(Const_MAX_PKG_NO);
      Error := True;
    End;

    PkgNo := StrToIntDef(NewValue, 0);

    if mtDupPkgNo.FindKey([PkgNo, Trim(SupplierCode)]) then
    Begin
      MessageBeep(MB_ICONEXCLAMATION);
      ErrorText := 'Paketnr finns redan, ange ett annat.';
      Error := True;
      MessageBeep(MB_ICONINFORMATION);
      Error := True;
    End
    else if PackageNumberExists(PkgNo,
      // mtPackages.Fields.Fields[cPACKAGENO].AsInteger,
      SupplierCode) then
    Begin
      ErrorText := 'Paketnr finns redan ' + Pkg_Info(PkgNo, Trim(SupplierCode));
      Error := True;
    End
    else if dmsSystem.Pkg_Reserved(PkgNo, SupplierCode, Self.Name, Res_UserName)
      <> ThisUser.UserName + '/' +
      Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED } then
    begin
      ErrorText := 'Paketnr är reserverat av användare ' + Res_UserName;
      Error := True;
    End;
    // Accept := tAccept ;
  End; // with
end;
(*
  procedure TfrmPackageEntry.grdPkgsPACKAGENOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
  NewValue: string;
  PkgNo : Integer ;
  TestPkgNo : Int64 ;
  tAccept : Boolean ;
  Res_UserName : String ;
  begin
  tAccept:= True ;
  With dmsProduct do
  Begin
  NewValue := TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;

  TestPkgNo := StrToInt64(NewValue) ;
  if TestPkgNo > Const_MAX_PKG_NO then
  Begin
  ErrorText:= 'Högsta paketnr tillåtet är '+IntToStr(Const_MAX_PKG_NO) ;
  tAccept:= False ;
  End ;

  PkgNo := StrToIntDef(NewValue,0) ;

  if mtDupPkgNo.FindKey([PkgNo,Trim(SupplierCode)]) then
  Begin
  MessageBeep(MB_ICONEXCLAMATION);
  ErrorText:= 'Paketnr finns redan, ange ett annat.' ;
  Accept := False ;
  MessageBeep(MB_ICONINFORMATION);
  tAccept:= False ;
  End
  else
  if PackageNumberExists(PkgNo, //mtPackages.Fields.Fields[cPACKAGENO].AsInteger,
  SupplierCode) then
  Begin
  ErrorText:= 'Paketnr finns redan '+ Pkg_Info(PkgNo, Trim(SupplierCode)) ;
  tAccept:= False ;
  End
  else
  if dmsSystem.Pkg_Reserved(
  PkgNo,
  SupplierCode, Self.Name, Res_UserName
  ) <> ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
  ErrorText:= 'Paketnr är reserverat av användare '+ Res_UserName ;
  tAccept:= False ;
  End ;
  Accept := tAccept ;
  End ; //with
  end ;

*)

procedure TfrmPackageEntry.AddPkgsToLoadFromPkgEntry(Sender: TObject);
Begin
  if dmsProduct.CSD = 1 then
    AddPkgsToCSDLoadFromPkgEntry(Sender)
  else if dmsProduct.CSD = 2 then
    AddPkgsToSSPLoadFromPkgEntry(Sender);
End;

procedure TfrmPackageEntry.AddPkgsToSSPLoadFromPkgEntry(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }

  dmsProduct.mtPackages.DisableControls;
  dmLoadEntrySSP.cds_LoadPackages.DisableControls;
  dmLoadEntrySSP.ds_LoadPackages2.DataSet := Nil; // .mtLoadPackages.DataSource
  try
    { Do some lengthy operation }
    dmsProduct.mtPackages.First;
    While Not dmsProduct.mtPackages.Eof do
    Begin
      dmsProduct.mtLO_Records.Filter := 'SupplierShipPlanObjectNo = ' +
        dmsProduct.mtPackages.Fields[cDefsspno].AsString; // LoadDetailNo
      dmsProduct.mtLO_Records.Filtered := True;
      if dmsProduct.mtPackages.Fields[cPACKAGETYPENO].AsInteger > 0 then
      Begin
        With dmLoadEntrySSP do
        Begin
          cds_LoadPackages.Insert;
          sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger :=
            dmsProduct.mtPackages.Fields.Fields[cPACKAGENO].AsInteger;
          sq_OnePkgDetailData.ParamByName('SupplierCode').AsString :=
            Trim(dmsProduct.mtPackages.Fields.Fields[cSUPPLIERCODE].AsString);
          sq_OnePkgDetailData.Open;
          if not sq_OnePkgDetailData.Eof then
          Begin
            cds_LoadPackagesShippingPlanNo.AsInteger :=
              dmsProduct.mtLO_RecordsLO_NUMBER.AsInteger;
            cds_LoadPackagesProductNo.AsInteger :=
              sq_OnePkgDetailDataProductNo.AsInteger;
            cds_LoadPackagesPRODUCT.AsString :=
              sq_OnePkgDetailDataPRODUCT.AsString;
            cds_LoadPackagesPACKAGENO.AsInteger :=
              sq_OnePkgDetailDataPackageNo.AsInteger;
            // cds_LoadPackagesNOOFPKG.AsInteger               := 1 ;
            cds_LoadPackagesPACKAGETYPENO.AsInteger :=
              sq_OnePkgDetailDataPackageTypeNo.AsInteger;
            cds_LoadPackagesSupplierCode.AsString :=
              sq_OnePkgDetailDataSUPP_CODE.AsString;
            cds_LoadPackagesM3_NET.AsFloat := sq_OnePkgDetailDataM3_NET.AsFloat;
            cds_LoadPackagesM3_NOM.AsFloat := sq_OnePkgDetailDataM3_NOM.AsFloat;
            cds_LoadPackagesKVM.AsFloat := sq_OnePkgDetailDataKVM.AsFloat;
            cds_LoadPackagesLopM.AsFloat := sq_OnePkgDetailDataLopM.AsFloat;
            cds_LoadPackagesPCS.AsInteger := sq_OnePkgDetailDataPCS.AsInteger;
            cds_LoadPackagesPCS_PER_LENGTH.AsString :=
              sq_OnePkgDetailDataPCS_PER_LENGTH.AsString;
            cds_LoadPackagesNoOfLengths.AsInteger :=
              sq_OnePkgDetailDataNoOfLengths.AsInteger;
            cds_LoadPackagesProductLengthNo.AsInteger :=
              sq_OnePkgDetailDataProductLengthNo.AsInteger;

            cds_LoadPackagesActualThicknessMM.AsFloat :=
              sq_OnePkgDetailDataActualThicknessMM.AsFloat;
            cds_LoadPackagesActualWidthMM.AsFloat :=
              sq_OnePkgDetailDataActualWidthMM.AsFloat;
            cds_LoadPackagesSurfacingNo.AsInteger :=
              sq_OnePkgDetailDataSurfacingNo.AsInteger;
            cds_LoadPackagesSpeciesNo.AsInteger :=
              sq_OnePkgDetailDataSpeciesNo.AsInteger;
            cds_LoadPackagesMainGradeNo.AsInteger :=
              sq_OnePkgDetailDataMainGradeNo.AsInteger;
            cds_LoadPackagesALMM.AsFloat := sq_OnePkgDetailDataALMM.AsFloat;
            cds_LoadPackagesLIPNo.AsInteger :=
              sq_OnePkgDetailDataLIPNo.AsInteger;
            cds_LoadPackagesProductCategoryNo.AsInteger :=
              sq_OnePkgDetailDataProductCategoryNo.AsInteger;

            cds_LoadPackagesPkg_State.AsInteger := NEW_PACKAGE;
            cds_LoadPackagesPkg_Function.AsInteger := ADD_PKG_TO_LOAD;
            cds_LoadPackagesChanged.AsInteger := 1;
            cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;
            cds_LoadPackagesOverrideRL.AsInteger :=
              dmsProduct.mtPackages.FieldByName('OverrideRL').AsInteger;
            // cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := dmsProduct.mtPackages.FieldByName('OverrideRL').AsInteger ;
            cds_LoadPackagesDefsspno.AsInteger :=
              dmsProduct.mtPackages.FieldByName('defsspno').AsInteger;
            // cds_LoadPackagesProductCategoryNo.AsInteger     := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;

            sq_OnePkgDetailData.Close;
            cds_LoadPackages.Post;
          End
          else
            cds_LoadPackages.Cancel;
        End; // with
      End; // if
      dmsProduct.mtPackages.Next;
    End; // while

    dmsProduct.mtPackages.Active := False;
    dmsProduct.mtPackages.Active := True;

  finally
    dmLoadEntrySSP.cds_LoadPackages.EnableControls;
    dmsProduct.mtPackages.EnableControls;
    dmLoadEntrySSP.ds_LoadPackages2.DataSet := dmLoadEntrySSP.cds_LoadPackages;
    dmsProduct.mtLO_Records.Filtered := False;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfrmPackageEntry.AddPkgsToCSDLoadFromPkgEntry(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }

  dmsProduct.mtPackages.DisableControls;
  dmLoadEntryCSD.cds_LoadPackages.DisableControls;
  dmLoadEntryCSD.ds_LoadPackages2.DataSet := Nil; // .mtLoadPackages.DataSource
  try
    { Do some lengthy operation }
    dmsProduct.mtPackages.First;
    While Not dmsProduct.mtPackages.Eof do
    Begin
      dmsProduct.mtLO_Records.Filter := 'SupplierShipPlanObjectNo = ' +
        dmsProduct.mtPackages.Fields[cDefsspno].AsString; // LoadDetailNo
      dmsProduct.mtLO_Records.Filtered := True;
      if dmsProduct.mtPackages.Fields[cPACKAGETYPENO].AsInteger > 0 then
      Begin
        With dmLoadEntryCSD do
        Begin
          cds_LoadPackages.Insert;
          sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger :=
            dmsProduct.mtPackages.Fields.Fields[cPACKAGENO].AsInteger;
          sq_OnePkgDetailData.ParamByName('SupplierCode').AsString :=
            Trim(dmsProduct.mtPackages.Fields.Fields[cSUPPLIERCODE].AsString);
          sq_OnePkgDetailData.Open;
          if not sq_OnePkgDetailData.Eof then
          Begin
            cds_LoadPackagesShippingPlanNo.AsInteger :=
              dmsProduct.mtLO_RecordsLO_NUMBER.AsInteger;
            cds_LoadPackagesProductNo.AsInteger :=
              sq_OnePkgDetailDataProductNo.AsInteger;
            cds_LoadPackagesPRODUCT.AsString :=
              sq_OnePkgDetailDataPRODUCT.AsString;
            cds_LoadPackagesPACKAGENO.AsInteger :=
              sq_OnePkgDetailDataPackageNo.AsInteger;
            // cds_LoadPackagesNOOFPKG.AsInteger               := 1 ;
            cds_LoadPackagesPACKAGETYPENO.AsInteger :=
              sq_OnePkgDetailDataPackageTypeNo.AsInteger;
            cds_LoadPackagesSupplierCode.AsString :=
              sq_OnePkgDetailDataSUPP_CODE.AsString;
            cds_LoadPackagesM3_NET.AsFloat := sq_OnePkgDetailDataM3_NET.AsFloat;
            cds_LoadPackagesM3_NOM.AsFloat := sq_OnePkgDetailDataM3_NOM.AsFloat;
            cds_LoadPackagesKVM.AsFloat := sq_OnePkgDetailDataKVM.AsFloat;
            cds_LoadPackagesLopM.AsFloat := sq_OnePkgDetailDataLopM.AsFloat;
            cds_LoadPackagesPCS.AsInteger := sq_OnePkgDetailDataPCS.AsInteger;
            cds_LoadPackagesPCS_PER_LENGTH.AsString :=
              sq_OnePkgDetailDataPCS_PER_LENGTH.AsString;
            cds_LoadPackagesNoOfLengths.AsInteger :=
              sq_OnePkgDetailDataNoOfLengths.AsInteger;
            cds_LoadPackagesProductLengthNo.AsInteger :=
              sq_OnePkgDetailDataProductLengthNo.AsInteger;

            cds_LoadPackagesActualThicknessMM.AsFloat :=
              sq_OnePkgDetailDataActualThicknessMM.AsFloat;
            cds_LoadPackagesActualWidthMM.AsFloat :=
              sq_OnePkgDetailDataActualWidthMM.AsFloat;
            cds_LoadPackagesSurfacingNo.AsInteger :=
              sq_OnePkgDetailDataSurfacingNo.AsInteger;
            cds_LoadPackagesSpeciesNo.AsInteger :=
              sq_OnePkgDetailDataSpeciesNo.AsInteger;
            cds_LoadPackagesMainGradeNo.AsInteger :=
              sq_OnePkgDetailDataMainGradeNo.AsInteger;
            cds_LoadPackagesALMM.AsFloat := sq_OnePkgDetailDataALMM.AsFloat;
            cds_LoadPackagesLIPNo.AsInteger :=
              sq_OnePkgDetailDataLIPNo.AsInteger;
            cds_LoadPackagesProductCategoryNo.AsInteger :=
              sq_OnePkgDetailDataProductCategoryNo.AsInteger;

            cds_LoadPackagesPkg_State.AsInteger := NEW_PACKAGE;
            cds_LoadPackagesPkg_Function.AsInteger := ADD_PKG_TO_LOAD;
            cds_LoadPackagesChanged.AsInteger := 1;
            cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;
            cds_LoadPackagesOverrideRL.AsInteger :=
              dmsProduct.mtPackages.FieldByName('OverrideRL').AsInteger;
            // cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := dmsProduct.mtPackages.FieldByName('OverrideRL').AsInteger ;
            cds_LoadPackagesDefsspno.AsInteger :=
              dmsProduct.mtPackages.FieldByName('defsspno').AsInteger;
            // cds_LoadPackagesProductCategoryNo.AsInteger     := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;
            cds_LoadPackagesVaruslag.AsInteger :=
              sq_OnePkgDetailDataVaruslag.AsInteger;

            sq_OnePkgDetailData.Close;
            cds_LoadPackages.Post;
          End
          else
            cds_LoadPackages.Cancel;
        End; // with
      End; // if
      dmsProduct.mtPackages.Next;
    End; // while

    dmsProduct.mtPackages.Active := False;
    dmsProduct.mtPackages.Active := True;

  finally
    dmLoadEntryCSD.cds_LoadPackages.EnableControls;
    dmsProduct.mtPackages.EnableControls;
    dmLoadEntryCSD.ds_LoadPackages2.DataSet := dmLoadEntryCSD.cds_LoadPackages;
    dmsProduct.mtLO_Records.Filtered := False;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfrmPackageEntry.ReLoadPackageColumnsWithAllLengths(Sender: TObject);
Begin
  LoadAllLengths := True;
  if dmsProduct.mtPackages.Active then
    if dmsProduct.mtPackages.RecordCount > 0 then
    Begin
      ShowMessage('Kan inte byta när paketrader redan är inlagda.');
      cbInputOption.ItemIndex := dmsProduct.InputOption;
      Exit;
    End;
  dmsProduct.InputOption := cbInputOption.ItemIndex;
  CreateFieldsInmtPackagesTable(Sender);
  if cbInputOption.ItemIndex = INPUT_PIECES then
  Begin
    bcLengthOption.Enabled := True;
    // bcStdLenGrp.Enabled:= True ;
    lcLengthGroup.Enabled := True;
  End
  else if cbInputOption.ItemIndex = INPUT_LOPM_TOTAL_LOPM then
  Begin
    bcLengthOption.Enabled := False;
    // bcStdLenGrp.Enabled:= False ;
    lcLengthGroup.Enabled := False;
  End
  else if cbInputOption.ItemIndex = INPUT_LOPM_AVERAGE_LENGTH then
  Begin
    bcLengthOption.Enabled := False;
    lcLengthGroup.Enabled := False;
    // bcStdLenGrp.Enabled:= False ;
  End
  else if cbInputOption.ItemIndex = INPUT_ARTICLES then
  Begin
    bcLengthOption.Enabled := False;
    // bcStdLenGrp.Enabled:= False ;
    lcLengthGroup.Enabled := False;
  End;
  { else
    if cbInputOption.ItemIndex = 4 then
    Begin
    bcLengthOption.Enabled:= False ;
    bcStdLenGrp.Enabled:= False ;
    End ; }
End;

function TfrmPackageEntry.GetNoOfPkgsWithNoPkgNo(Sender: TObject): Integer;
begin
  With dmsProduct do
  Begin
    Result := 0;
    mtPackages.First;
    While not mtPackages.Eof do
    Begin
      if mtPackages.Fields[cPACKAGENO].AsInteger < 1 then
      Begin
        Result := Succ(Result);
        mtPackages.Edit;
      End;
      mtPackages.Next;
    End;
  End;
end;

Function TfrmPackageEntry.PackageNo_OK(PkgNo: Integer): Boolean;
Var
  Res_UserName: String;
Begin
  With dmsProduct do
  Begin
    if mtDupPkgNo.FindKey([PkgNo, Trim(SupplierCode)]) then
    Begin
      MessageBeep(MB_ICONEXCLAMATION);
      // mLog.Lines.Add('Paketnr '+IntToStr(PkgNo)+'finns redan') ;
      Result := False;
    End
    else if PackageNumberExists(PkgNo, SupplierCode) = True then
    Begin
      Result := False;
    End
    else if dmsSystem.Pkg_Reserved(PkgNo, SupplierCode, Self.Name, Res_UserName)
      = ThisUser.UserName + '/' + Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }
    then
      Result := True
    else
      Result := False;
  End; // with
End;

procedure TfrmPackageEntry.Panel5DblClick(Sender: TObject);
begin
  SetControls;
end;

procedure TfrmPackageEntry.FyllTommaPaket(Sender: TObject;
  Var NoOfErrorPkgnr: Integer);
Var
  x, NoOfPkgNo, CurrentPkgNo: Integer;
begin
  NoOfPkgNo := 0;
  NoOfErrorPkgnr := 0;
  With dmsProduct do
  Begin
    mtPackages.DisableControls;
    Try
      NoOfPkgNo := GetNoOfPkgsWithNoPkgNo(Sender);
      if NoOfPkgNo > 0 then
      Begin
        CurrentPkgNo := 0;
        CurrentPkgNo := dmsConnector.GetCurrentPkgNo(mtUserPropVerkNo.AsInteger,
          NoOfPkgNo);
        // integer(bcMatPunktAgare.Properties.Items.Objects[bcMatPunktAgare.ItemIndex]), NoOfPkgNo) ;
        if CurrentPkgNo > 0 then
        Begin
          mtPackages.First;
          For x := CurrentPkgNo to (NoOfPkgNo + CurrentPkgNo - 1) do
          Begin
            if PackageNo_OK(x) = True then
            Begin
              While (mtPackages.Fields[cPACKAGENO].AsInteger > 0) and
                (not mtPackages.Eof) do
                mtPackages.Next;

              if mtPackages.Fields[cPACKAGENO].AsInteger <= 0 then
              Begin
                mtPackages.Edit;
                mtPackages.Fields[cPACKAGENO].AsInteger := x; // CurrentPkgNo ;
                mtPackages.Post;
                mtPackages.Next;
              End;
            End
            else
              NoOfErrorPkgnr := Succ(NoOfErrorPkgnr);
          End; // for
        End
        else
          ShowMessage('Finns ingen paketnr serie för verk ' + lcVERK.Text);
      End; // if NoOfPkgNo > 0 then

    Finally
      mtPackages.EnableControls;
    End;
  End;
end;

function TfrmPackageEntry.GetNoOfPkgsToAdd(Var FormResult: Word): Integer;
Var
  fEntryField: TfEntryField;
Begin
  fEntryField := TfEntryField.Create(NIL);
  Try
    if fEntryField.ShowModal = mrOk then
    Begin
      Result := StrToInt(Trim(fEntryField.eNoofpkgs.Text));
      FormResult := mrOk;
    End
    else
    Begin
      Result := 0;
      FormResult := mrCancel;
    End;
  Finally
    FreeAndNil(fEntryField); // .Free ;
  End;
End;

procedure TfrmPackageEntry.LaggUppPaketMedPaketNr(Sender: TObject;
  Var NoOfErrorPkgnr: Integer; const AntalPaketAttLaggaUpp: Integer);
Var
  StartPkgNo, PkgNo: Integer;
  ResultButton: Word;
  Save_Cursor: TCursor;
  Res_UserName: String;
begin
  ResultButton := mrYes;
  NoOfErrorPkgnr := 0;
  With dmsProduct do
  Begin
    mtPackages.DisableControls;
    Try
      if AntalPaketAttLaggaUpp > 100 then
        ResultButton := MessageDlg(IntToStr(AntalPaketAttLaggaUpp) +
          ' paket kommer att läggas upp, är det ok?', mtConfirmation,
          [mbYes, mbNo, mbCancel], 0);

      if ResultButton = mrYes then
      Begin
        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        Try
          StartPkgNo := dmsConnector.GetCurrentPkgNo(mtUserPropVerkNo.AsInteger,
            AntalPaketAttLaggaUpp);
          // integer(bcMatPunktAgare.Properties.Items.Objects[bcMatPunktAgare.ItemIndex]), AntalPaketAttLaggaUpp) ;

          if StartPkgNo > 0 then
          Begin
            For PkgNo :=
              StartPkgNo to (StartPkgNo + (AntalPaketAttLaggaUpp - 1)) do
            Begin

              if mtDupPkgNo.FindKey([PkgNo, Trim(SupplierCode)]) then
              Begin
                MessageBeep(MB_ICONEXCLAMATION);
                // mLog.Lines.Add('Paketnr '+IntToStr(PkgNo)+'finns redan') ;
                NoOfErrorPkgnr := Succ(NoOfErrorPkgnr);
              End
              else if PackageNumberExists(PkgNo, SupplierCode) = False then
              Begin
                if dmsSystem.Pkg_Reserved(PkgNo, SupplierCode, Self.Name,
                  Res_UserName) = ThisUser.UserName + '/' +
                  Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED } then
                begin
                  Try
                    if { (PkgNo = StartPkgNo) and }
                      (mtPackages.Fields.Fields[cPACKAGENO].AsInteger < 1) then
                      mtPackages.Edit
                    else
                      mtPackages.Insert;
                    if mtPackages.State = dsBrowse then
                      mtPackages.Edit;
                    mtPackages.Fields.Fields[cPACKAGENO].AsInteger := PkgNo;
                    mtPackages.Post;

                  Except
                    on eDatabaseError do
                    Begin
                      Raise;
                      mtPackages.Cancel;
                    End;
                  End;
                End // if dmsSystem.Pkg_Reserved(
                else
                Begin
                  // mLog.Lines.Add('Paketnr '+IntToStr(PkgNo)+' är reserverat av användare '+ Res_UserName) ;
                  NoOfErrorPkgnr := Succ(NoOfErrorPkgnr);
                End;
              End // if..
              else
              Begin
                // mLog.Lines.Add('Paketnr  '+IntToStr(PkgNo)+' är upptaget') ;
                NoOfErrorPkgnr := Succ(NoOfErrorPkgnr);
              End;

            End; // if StartPkgNo > 0 then
          End // for PkgNo
          else
            ShowMessage('Finns ingen paketnr serie för ' + lcVERK.Text);
        Finally
          Screen.Cursor := Save_Cursor; { Always restore to normal }
        End;

      End;
    Finally
      mtPackages.EnableControls;
    End;
  End; // with

End;

procedure TfrmPackageEntry.cbCopyPcsClick(Sender: TObject);
begin
  dmsProduct.CopyPcs := cbCopyPcs.Checked;
end;

procedure TfrmPackageEntry.seColWidthPropertiesChange(Sender: TObject);
Var
  x: Integer;
begin
  For x := FirstLengthColumnInmatningViaLast to grdPackagesDBBandedTableView1.
    ColumnCount - 1 do
    grdPackagesDBBandedTableView1.Columns[x].Width := seColWidth.Value;
end;

procedure TfrmPackageEntry.dsmtPackagesDataChange(Sender: TObject;
  Field: TField);
begin
  With dmsProduct do
  Begin
    if mtPackages.State in [dsBrowse, dsEdit] then
    Begin
      if mtPackages.RecordCount > 0 then
        Self.bcLengthOption.Enabled := False
      else
        Self.bcLengthOption.Enabled := True;

      { if mtPackages.RecordCount > 0 then
        Begin
        Self.lbSavePkgs.Enabled := True ;
        Self.lbRemovePkg.Enabled := True ;
        End ;

        if mtPackages.RecordCount > 0 then
        Begin
        Self.lbSavePkgs.Enabled := True ;
        Self.lbRemovePkg.Enabled := True ;
        End
        else
        Begin
        Self.lbSavePkgs.Enabled := False ;
        Self.lbRemovePkg.Enabled := False ;
        End ; }

      Get_LO_LinesMatched;
      // (cds_LoadpackagesPackageNo.AsInteger, Trim(cds_LoadPackagesSupplierCode.AsString)) ;
    End; // if..
  End; // With
end;

procedure TfrmPackageEntry.bcLengthOptionPropertiesChange(Sender: TObject);
begin
  if ((bcLengthOption.ItemIndex = 0) or (bcLengthOption.ItemIndex = 1) or
    (bcLengthOption.ItemIndex = 3)) then
    ReLoadPackageColumnsWithAllLengths(Sender);

  case bcLengthOption.ItemIndex of
    SHOW_LO_LENGTHS:
      begin
        // bcStdLenGrp.Enabled := FALSE;
        lcLengthGroup.Enabled := False;
      end;

    SHOW_ALL_LENGTHS:
      begin
        // bcStdLenGrp.Enabled := FALSE;
        lcLengthGroup.Enabled := False;
      end;

    SHOW_STD_LENGTHS:
      begin
        // bcStdLenGrp.Enabled := TRUE;
        lcLengthGroup.Enabled := True;
        if (mtUserProp.Active) and (mtUserPropLengthGroupNo.IsNull = False) then
        Begin
          dmsProduct.LoadGroupLengths(mtUserPropLengthGroupNo.AsInteger);
          ReLoadPackageColumnsWithAllLengths(Sender);
        End;

        { if (bcStdLenGrp.Properties.Items.Count > 0) and (bcStdLenGrp.ItemIndex <> -1) then
          Begin
          dmsProduct.LoadGroupLengths(integer(bcStdLenGrp.Properties.Items.Objects[bcStdLenGrp.ItemIndex]));
          ReLoadPackageColumnsWithAllLengths (Sender) ;
          End ; }
      end;

    3:
      begin
        // bcStdLenGrp.Enabled := FALSE;
        lcLengthGroup.Enabled := False;
      end;

  end;
end;

procedure TfrmPackageEntry.acAddSpecialLengthsExecute(Sender: TObject);
Var
  AColumn: TcxGridDBBandedColumn;
  fAddSpecialLengths: TfAddSpecialLengths;
  x: Byte;
  s: String;
  CurrentLengths: TStringList;
  ColumnWidth: Integer;

  function Pad(const s: String): String;
  Var
    L, Dec: Byte;
  Begin
    // 1234.4
    // 999
    Dec := Pos(',', s);
    if Pos(',', s) > 0 then
    Begin
      if Length(Copy(s, 1, Dec - 1)) < 4 then
        Result := '0' + s
      else
        Result := s;
    End
    else
    Begin
      if Length(s) < 4 then
        Result := '0' + s
      else
        Result := s;
    End;

  End;

begin
  With dmsProduct do
  Begin
    CurrentLengths := TStringList.Create;
    Try
      ColumnWidth := grdPackagesDBBandedTableView1.Columns
        [FirstLengthColumnInmatningViaLast].Width;
      fAddSpecialLengths := TfAddSpecialLengths.Create(nil);

      For x := FirstLengthColumnInmatningViaLast to mtPackages.FieldCount - 1 do
        fAddSpecialLengths.lbSpecialLengths.Items.Add
          (Pad(mtPackages.Fields.Fields[x].DisplayLabel));

      For x := FirstLengthColumnInmatningViaLast to mtPackages.FieldCount - 1 do
        CurrentLengths.Add(Pad(mtPackages.Fields.Fields[x].DisplayLabel));

      CreateFieldsInmtPackagesTable(Sender);

      For x := mtPackages.FieldCount -
        1 downto FirstLengthColumnInmatningViaLast do
      Begin
        mtPackages.Fields.Remove(mtPackages.Fields.Fields[x]);
        mtPackages.FieldDefs[x].Free;
        grdPackagesDBBandedTableView1.Columns[x].Free;
      End;

      mtPackages.Active := False;
      ManuellLengthColumn := FirstLengthColumnInmatningViaLast;
      Try
        if fAddSpecialLengths.ShowModal = mrOk then
        Begin
          For x := 0 to fAddSpecialLengths.lbSpecialLengths.Items.Count - 1 do
          Begin
            s := fAddSpecialLengths.lbSpecialLengths.Items[x];
            if not LengthExistInGrid
              (s { fAddSpecialLengths.lbSpecialLengths.Items[x] } ) then
            Begin
              mtPackages.FieldDefs.Add(s, ftInteger, 0, False);
              mtPackages.FieldDefs[ManuellLengthColumn + x].CreateField(nil);
              AColumn := grdPackagesDBBandedTableView1.CreateColumn;
              AColumn.Options.Filtering := False;
              AColumn.DataBinding.FieldName := s;
              AColumn.Position.BandIndex := 2;
              AColumn.Width := ColumnWidth;
            End
            else
              ShowMessage('Längd ' + fAddSpecialLengths.lbSpecialLengths.Items
                [x] + ' finns redan i tabellen.');
          End; // x
        End // if fAddSpecialLengths.ShowModal = mrOK then
        else
        Begin
          For x := 0 to CurrentLengths.Count - 1 do
          Begin
            s := CurrentLengths.Strings[x];
            if not LengthExistInGrid
              (s { fAddSpecialLengths.lbSpecialLengths.Items[x] } ) then
            Begin
              mtPackages.FieldDefs.Add(s, ftInteger, 0, False);
              mtPackages.FieldDefs[ManuellLengthColumn + x].CreateField(nil);

              AColumn := grdPackagesDBBandedTableView1.CreateColumn;
              AColumn.Options.Filtering := False;
              AColumn.DataBinding.FieldName := s;
              AColumn.Position.BandIndex := 2;
              AColumn.Width := ColumnWidth;
            End
            else
              ShowMessage('Längd ' + CurrentLengths.Strings[x] +
                ' finns redan i tabellen.');
          End; // x
        End; // else

        For x := FirstLengthColumnInmatningViaLast to
          grdPackagesDBBandedTableView1.ColumnCount - 1 do
        Begin
          with grdPackagesDBBandedTableView1.DataController.Summary do
            with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
              Column := grdPackagesDBBandedTableView1.Columns[x];
              Kind := skSum;
              Format := '#####';
            end;
        End;

      Finally
        FreeAndNil(fAddSpecialLengths);
      End;
      mtPackages.Active := True;

    Finally
      CurrentLengths.Free;
    End;
  End; // With
end;

procedure TfrmPackageEntry.grdPackagesDBBandedTableView1EditKeyDown
  (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  Try
    if AEdit is TcxCustomTextEdit then
      with TcxCustomTextEdit(AEdit) do
      begin
        if (Key = VK_RIGHT) and
          (CursorPos = Length(TcxCustomTextEdit(AEdit).Text)) then
          PostMessage(Self.Handle, CM_MOVEIT, Integer(True), 0)
        else if (Key = VK_LEFT) and (CursorPos = 0) then
          PostMessage(Self.Handle, CM_MOVEIT, Integer(False), 0);
      end;
  Except
  End;
end;

procedure TfrmPackageEntry.acAddSpecialLengthsUpdate(Sender: TObject);
begin
  With dmsProduct do
  Begin
    acAddSpecialLengths.Enabled := (mtPackages.Active) and
      (mtPackages.RecordCount = 0);
  End;
end;

procedure TfrmPackageEntry.grdPkgsDBTableView1MATCHPropertiesChange
  (Sender: TObject);
begin
  With dmsProduct do
  Begin
    Try
      dsmtPackages.OnDataChange := nil;
      if mtPackages.State = dsBrowse then
        mtPackages.Edit;
      if mtLO_RecordsMatch.AsInteger = 1 then
      Begin
        mtPackages.FieldByName('Defsspno').AsInteger :=
          mtLO_RecordsSupplierShipPlanObjectNo.AsInteger;
      End
      else
      Begin
        mtPackages.FieldByName('Defsspno').AsInteger := -1;
      End;
      mtPackages.Post;
      Get_LO_LinesMatched;
      // (cds_LoadPackagesPackageNo.AsInteger,  Trim(cds_LoadPackagesSupplierCode.AsString)) ;
    Finally
      dsmtPackages.OnDataChange := dsmtPackagesDataChange;
    End;
  End; // with

end;

procedure TfrmPackageEntry.cbInputOptionPropertiesChange(Sender: TObject);
begin
  if dmsProduct.mtPackages.Active then
    if dmsProduct.mtPackages.RecordCount > 0 then
    Begin
      ShowMessage('Kan inte byta när paketrader redan är inlagda.');
      cbInputOption.ItemIndex := dmsProduct.InputOption;
      Exit;
    End;
  dmsProduct.InputOption := cbInputOption.ItemIndex;
  CreateFieldsInmtPackagesTable(Sender);
  if cbInputOption.ItemIndex = INPUT_PIECES then
  Begin
    bcLengthOption.Enabled := True;
    lcLengthGroup.Enabled := True;
    // bcStdLenGrp.Enabled:= True ;
  End
  else if cbInputOption.ItemIndex = INPUT_LOPM_TOTAL_LOPM then
  Begin
    lcLengthGroup.Enabled := False;
    bcLengthOption.Enabled := False;
    // bcStdLenGrp.Enabled:= False ;
  End
  else if cbInputOption.ItemIndex = INPUT_LOPM_AVERAGE_LENGTH then
  Begin
    bcLengthOption.Enabled := False;
    lcLengthGroup.Enabled := False;
    // bcStdLenGrp.Enabled:= False ;
  End
  else if cbInputOption.ItemIndex = INPUT_ARTICLES then
  Begin
    bcLengthOption.Enabled := False;
    // bcStdLenGrp.Enabled:= False ;
    lcLengthGroup.Enabled := False;
  End;
end;

procedure TfrmPackageEntry.FormShow(Sender: TObject);
begin
  With dmsProduct do
  Begin
    if mtLO_RecordsVaruSlag.AsInteger > 0 then
    Begin
      dmsProduct.InputOption := INPUT_ARTICLES; // cbInputOption.ItemIndex ;
      cbInputOption.ItemIndex := INPUT_ARTICLES;
    End
    else
    Begin
      dmsProduct.InputOption := INPUT_PIECES; // cbInputOption.ItemIndex ;
      cbInputOption.ItemIndex := INPUT_PIECES;
    End;
  End; // With dmsProduct...
  grdLORows.Setfocus;
  SetControls;
end;

procedure TfrmPackageEntry.SetControls;
Begin
  if lcVERK.Enabled then
  Begin
    lcVERK.Enabled := False;
    lcOWNER.Enabled := False;
  End
  else
  Begin
    lcVERK.Enabled := True;
    lcOWNER.Enabled := True;
  End;
End;

procedure TfrmPackageEntry.SavePackages(Sender: TObject);
const
  LF = #10;
Var
  savetoprodlogg: Integer;
  // LIPNo,
  LastInvNr: Integer;
  InvDate: TDateTime;
  MaxDateMsg: String;
begin
  if cbSaveToProdLogg.Checked then
    savetoprodlogg := 1
  else
    savetoprodlogg := 0;

  { if (bcLogicalInventory.Properties.Items.Count > 0) and (bcLogicalInventory.ItemIndex > -1) then
    LIPNo:= integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex])
    else
    LIPNo := -1 ;

    if mtUserPropLIPNo.AsInteger  > 0 then
    LIPNo  := mtUserPropLIPNo.AsInteger
    else
    LIPNo  := -1 ; }

  if mtUserPropLIPNo.AsInteger < 1 then
  Begin
    ShowMessage('Ej tillåten lagergrupp.');
    Exit;
  End;

  if deRegDate.Date > now then
  Begin
    ShowMessage('Registreringsdatum får inte vara större än aktuellt datum');
    Exit;
  End;

  LastInvNr := dmsSystem.IsRegDateBeforeInvDate(mtUserPropLIPNo.AsInteger,
    deRegDate.Date, InvDate, MaxDateMsg);
  if LastInvNr > -1 then
  Begin
    ShowMessage(MaxDateMsg);
    Exit;
  End;

  { if MessageDlg('Vill du spara paket mot mätpunkt: '+
    Trim(bcMatPunktAgare.Properties.Items[bcMatPunktAgare.ItemIndex])  //Producent
    +'/'+ Trim(bcRegPoint.Properties.Items[bcRegPoint.itemindex]) //Mätpunkt
    +LF+'Lagerplats: '+Trim(bcPhysInventory.Properties.Items[bcPhysInventory.itemindex])
    +'/'+ Trim(bcLogicalInventory.Properties.Items[bcLogicalInventory.ItemIndex])
    +LF+'Datum: '+DateToStr(deRegDate.Date) , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  }

  if MessageDlg('Vill du spara paket mot ägare och mätpunkt: ' +
    Trim(lcOWNER.Text) // Producent
    + '/' + Trim(lcREGPOINT.Text) // Mätpunkt
    + LF + 'Lagerplats: ' + Trim(lcLIPName.Text) + '/' + Trim(lcLIPName.Text) +
    LF + 'Datum: ' + DateToStr(deRegDate.Date), mtConfirmation, [mbYes, mbNo],
    0) = mrYes then

  Begin

    if mtUserPropRegPointNo.AsInteger > -1 then
    Begin

      OKToSave := True;
      With dmsProduct do
      Begin
        if mtPackages.RecordCount > 0 then
        Begin
          // if (bcLogicalInventory.ItemIndex > -1) AND (0 < integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex])) then
          if mtUserPropLIPNo.AsInteger > 0 then
          Begin
            // LogicalTransferInventoryNo:= LIPNo ;
            if mtPackages.State <> dsBrowse then
              Try
                mtPackages.Post;
              Except
                on eDatabaseError do
                  Raise;
              End;

            // Check that packages are OKToSave
            mtPackages.First;
            While not mtPackages.Eof do
            Begin
              if mtPackages.Fields[cTOTALPCS].AsInteger < 1 then // PCS
              Begin
                ShowMessage('Paketnr ' + mtPackages.Fields[cPACKAGENO].AsString
                  + ' har inga stycketal');
                OKToSave := False;
              End;
              { if Length(Trim(mtpackages.Fields[cPACKAGENO].AsString)) = 0 then //PCS
                Begin
                ShowMessage('Radnr '+mtpackages.Fields[cRECID].AsString+' har inget paketnr') ;
                OKToSave := False ;
                End ; }

              if (mtPackages.Fields[cPACKAGENO].AsInteger < 1) or
                (mtPackages.Fields[cPACKAGENO].IsNull) then // PCS
              Begin
                ShowMessage('Radnr ' + mtPackages.Fields[cRECID].AsString +
                  ' saknar paketnr');
                OKToSave := False;
              End;

              if (mtPackages.Fields[cTOTALLPM].AsInteger < 1) and
                (mtPackages.Fields[cVaruslag].AsInteger = 0) then // PCS
              Begin
                ShowMessage('Paketnr ' + mtPackages.Fields[cPACKAGENO].AsString
                  + ' har inget värde i LPM kolumnen');
                OKToSave := False;
              End;
              if OKToSave = False then
                Break;
              mtPackages.Next;
            End; // While not mtpackages.Eof do

            if OKToSave = False then
              Exit;

            if (InputOption = INPUT_LOPM_AVERAGE_LENGTH) or
              (InputOption = INPUT_LOPM_TOTAL_LOPM) then
            Begin
              if SaveImportedPackages(savetoprodlogg,

                // integer(bcMatPunktAgare.Properties.Items.Objects[bcMatPunktAgare.ItemIndex]),
                mtUserPropVerkNo.AsInteger, mtUserPropLIPNo.AsInteger,
                mtUserPropRegPointNo.AsInteger, seRunNo.Value, deRegDate.Date)
              then
              Begin
                if MessageDlg
                  ('Alla paket sparade OK, vill du lägga paketen till lasten?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                Begin
                  AddPkgsToLoadFromPkgEntry(Sender);
                  SavePkgs := True;
                  // Close ;
                End
                else
                Begin
                  // lbSavePkgs.Enabled:= False ;
                  SavePkgs := True;
                  // Close ;
                End;
              End
              else
              Begin
                if MessageDlg
                  ('Paket kunde inte sparas. Vill du lägga de paket som sparades till lasten?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  AddPkgsToLoadFromPkgEntry(Sender);
              End;
            End // if InputOption <> INPUT_PIECES then
            else if InputOption = INPUT_PIECES then
            Begin
              if SaveImportedPackages(savetoprodlogg,
                mtUserPropVerkNo.AsInteger,
                // LogicalTransferInventoryNo,
                mtUserPropLIPNo.AsInteger, mtUserPropRegPointNo.AsInteger,
                seRunNo.Value, deRegDate.Date

                ) then
              Begin
                if MessageDlg
                  ('Alla Paket sparade OK, vill du lägga paketen till lasten ?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                Begin
                  SavePkgs := True;
                  AddPkgsToLoadFromPkgEntry(Sender);
                  // Close ;
                End
                else
                Begin
                  // lbSavePkgs.Enabled:= False ;
                  SavePkgs := True;
                  // Close ;
                End;
              End
              else
              Begin
                if MessageDlg
                  ('En del paket kunde inte sparas. Vill du lägga de paket som sparades till lasten?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  AddPkgsToLoadFromPkgEntry(Sender);
                OKToSave := False;
              End;

            End // if InputOption = INPUT_PIECES then
            else if (InputOption = INPUT_ARTICLES) then
            Begin
              if SaveArticlePackages(savetoprodlogg,

                mtUserPropVerkNo.AsInteger,
                // LogicalTransferInventoryNo,
                mtUserPropLIPNo.AsInteger, mtUserPropRegPointNo.AsInteger,
                seRunNo.Value, deRegDate.Date) then
              Begin
                if MessageDlg
                  ('Alla paket sparade OK, vill du lägga paketen till lasten?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                Begin
                  AddPkgsToLoadFromPkgEntry(Sender);
                  SavePkgs := True;
                  // Close ;
                End
                else
                Begin
                  // lbSavePkgs.Enabled:= False ;
                  SavePkgs := True;
                  // Close ;
                End;
              End
              else
              Begin
                if MessageDlg
                  ('Paket kunde inte sparas. Vill du lägga de paket som sparades till lasten?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  AddPkgsToLoadFromPkgEntry(Sender);
              End;
            End // if InputOption = INPUT_ARTICLES then

          End
          else
            ShowMessage('Välj ett lager ');

        End;
        if mtPackages.RecordCount > 0 then
          bcLengthOption.Enabled := False
        else
          bcLengthOption.Enabled := True;
      End; // with
    End
    else
      ShowMessage('Kan inte spara, ingen mätpunkt vald');
  End;
end;

procedure TfrmPackageEntry.acSaveExecute(Sender: TObject);
begin
  SavePackages(Sender);
end;

procedure TfrmPackageEntry.acSaveUpdate(Sender: TObject);
begin
  With dmsProduct do
  Begin
    acSave.Enabled := (mtPackages.Active) and (mtPackages.RecordCount > 0);
  End;
end;

procedure TfrmPackageEntry.acRemovePkgExecute(Sender: TObject);
begin
  With dmsProduct do
  Begin
    if mtPackages.State <> dsBrowse then
      mtPackages.Cancel
    else
      mtPackages.Delete;
  End;
end;

procedure TfrmPackageEntry.acRemovePkgUpdate(Sender: TObject);
begin
  With dmsProduct do
  Begin
    acRemovePkg.Enabled := (mtPackages.Active) and (mtPackages.RecordCount > 0);
  End;
end;

procedure TfrmPackageEntry.acPkgNoSerieExecute(Sender: TObject);
begin
  With dmsProduct do
  Begin
    dsmtPackages.OnDataChange := nil;
    Try
      LockWindowUpdate(grdPackages.Handle);
      try
        if mtPackages.State <> dsBrowse then
          Try
            mtPackages.Post;
          Except
            on eDatabaseError do
            Begin
              Raise;
            End;
          End;

        if mtPackages.RecordCount = 0 then
        Begin
          ShowMessage('Lägg till ett paket först');
          Exit;
        End
        else
          InsertPkgSerie(Sender);
      finally
        LockWindowUpdate(0);
      end;
    Finally
      dsmtPackages.OnDataChange := dsmtPackagesDataChange;
    End;
  End; // With
end;

procedure TfrmPackageEntry.acPkgNoSerieUpdate(Sender: TObject);
begin
  With dmsProduct do
  Begin
    acPkgNoSerie.Enabled := (mtPackages.Active) and
      (mtPackages.RecordCount > 0);
  End;
end;

procedure TfrmPackageEntry.acAddPkgExecute(Sender: TObject);
begin
  With dmsProduct do
  Begin
    dsmtPackages.OnDataChange := nil;
    Try
      if mtPackages.State <> dsBrowse then
        Try
          mtPackages.Post;
        Except
          on eDatabaseError do
            Raise;
        End;

      Try
        mtPackages.Append;
        bcLengthOption.Enabled := False;
      Except
        on eDatabaseError do
        Begin
          mtPackages.Cancel;
          Raise;
        End;
      End;
      grdPackages.Setfocus;
    Finally
      dsmtPackages.OnDataChange := dsmtPackagesDataChange;
    End;
  End;
end;

procedure TfrmPackageEntry.acFillEmptyPkgNosExecute(Sender: TObject);
Var
  NoOfErrorPkgnr: Integer;
  MessageDlgAnswer: Word;
begin
  NoOfErrorPkgnr := 0;
  MessageDlgAnswer := mrCancel;
  FyllTommaPaket(Sender, NoOfErrorPkgnr);
  Repeat
    if NoOfErrorPkgnr > 0 then
      MessageDlgAnswer := MessageDlg(IntToStr(NoOfErrorPkgnr) +
        ' paketnr var upptagna, vill du hämta paketnr igen?', mtConfirmation,
        [mbYes, mbNo], 0);
    if MessageDlgAnswer = mrYes then
    Begin
      FyllTommaPaket(Sender, NoOfErrorPkgnr);
    End;
  Until (NoOfErrorPkgnr = 0) or (MessageDlgAnswer = mrNo);
end;

procedure TfrmPackageEntry.acAddPkgsWithPkgNosExecute(Sender: TObject);
Var
  AntalPaketAttLaggaUpp, NoOfErrorPkgnr: Integer;
  MessageDlgAnswer: Word;

begin
  // Lägg upp paket med paketnr
  MessageDlgAnswer := mrCancel;

  With dmsProduct do
  Begin
    PkgNoSeries := True;
    LockWindowUpdate(grdPackages.Handle);
    try

      if mtPackages.State <> dsBrowse then
        Try
          mtPackages.Post;
        Except
          on eDatabaseError do
          Begin
            Raise;
          End;
        End;

      if mtPackages.RecordCount = 0 then
      Begin
        ShowMessage('Lägg till ett paket först');
        Exit;
      End
      else
      Begin
        AntalPaketAttLaggaUpp := GetNoOfPkgsToAdd(MessageDlgAnswer);
        if (AntalPaketAttLaggaUpp > 0) and (MessageDlgAnswer = mrOk) then
        Begin
          LaggUppPaketMedPaketNr(Sender, NoOfErrorPkgnr, AntalPaketAttLaggaUpp);
          Repeat
            if NoOfErrorPkgnr > 0 then
              MessageDlgAnswer :=
                MessageDlg(IntToStr(NoOfErrorPkgnr) +
                ' paketnr var upptagna, vill du hämta paketnr igen?',
                mtConfirmation, [mbYes, mbNo], 0);
            if MessageDlgAnswer = mrYes then
            Begin
              AntalPaketAttLaggaUpp := NoOfErrorPkgnr;
              LaggUppPaketMedPaketNr(Sender, NoOfErrorPkgnr,
                AntalPaketAttLaggaUpp);
            End;
          Until (NoOfErrorPkgnr = 0) or (MessageDlgAnswer = mrNo);
        End;
      End;

    finally
      PkgNoSeries := False;
      LockWindowUpdate(0);
    end;
  End; // With
end;

procedure TfrmPackageEntry.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPackageEntry.acFillEmptyPkgNosUpdate(Sender: TObject);
begin
  With dmsProduct do
  Begin
    acFillEmptyPkgNos.Enabled := (mtPackages.Active) and
      (mtPackages.RecordCount > 0);
  End;
end;

procedure TfrmPackageEntry.mtUserPropVerkNoChange(Sender: TField);
begin
  With dm_UserProps do
  Begin
    cds_RegPoint.Active := False;
    cds_RegPoint.ParamByName('ClientNo').AsInteger :=
      mtUserPropOwnerNo.AsInteger; // mtUserPropVerkNo.AsInteger ;
    cds_RegPoint.Active := True;
  End;
end;

procedure TfrmPackageEntry.mtUserPropPIPNoChange(Sender: TField);
begin
  cds_LIP2.Active := False;
  cds_LIP2.ParamByName('PIPNo').AsInteger := mtUserPropPIPNo.AsInteger;
  cds_LIP2.Active := True;
end;

procedure TfrmPackageEntry.meSupplierCodeExit(Sender: TObject);
begin
  dmsProduct.SupplierCode := mtUserPropSupplierCode.AsString;
end;

procedure TfrmPackageEntry.mtUserPropLengthGroupNoChange(Sender: TField);
begin
  if (mtUserProp.Active) and (mtUserPropLengthGroupNo.IsNull = False) then
  Begin
    dmsProduct.LoadGroupLengths(mtUserPropLengthGroupNo.AsInteger);
    ReLoadPackageColumnsWithAllLengths(Sender);
  End;
end;

end.
