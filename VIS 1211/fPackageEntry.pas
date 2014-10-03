// =============================================================================
//
//  FILE           :  fPackageEntry.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :
//
//
//
//
//
//  NOTES          :
//
//
//  TO DO          :  1.  Restrict length columns to numeric
//
//                    2.  Restrict Pkg No to numeric
//
//                    3.  Tab to next read-write column
//
//                    4.  Validate all packages have >= 1 length
//
//                    5.  Disable AddPackage button until Logical Inventory set
//
//
//
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//              DMc       001
//
unit fPackageEntry;

interface

uses
  ActnList,
  Classes,
  ComCtrls,
  Controls,
  DBCtrls,
  ExtCtrls,
  fDBForm,
  Forms,
  ImgList,
  Menus,
  StdCtrls,
  ToolWin,
  Windows,
  VidaCombo,
  VidaGrid,
  VidaPkg,
  VidaType, Grids_ts, TSGrid, TSDBGrid,   Grids, dxPageControl;

Type

  TfrmPkgEntry = class(TfrmDBForm)
    btnAddPackage: TToolButton;
    btnRemovePackage: TToolButton;
    btnSave: TToolButton;
    atAddPackage: TAction;
    atRemovePackage: TAction;
    atSave: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    pnlBottomBkgnd: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    pnlProdInst: TPanel;
    lblGrade: TLabel;
    lblBarCode: TLabel;
    lblPkgSize: TLabel;
    lblbXh: TLabel;
    lblPaperWrap: TLabel;
    lblProdInst: TLabel;
    cmbGradeStamp: TComboBox;
    cmbBarCode: TComboBox;
    cmbPaperWrap: TComboBox;
    edSizeb: TEdit;
    edSizeh: TEdit;
    cbxMiniTies: TCheckBox;
    cbxShrinkWrap: TCheckBox;
    grdPackage: TVidaStringGrid;
    imgListOnSticks: TImageList;
    lblMsgToUser: TLabel;
    popPackages: TPopupMenu;
    AddPackage1: TMenuItem;
    ccmbPhysInv: TDBCodeCombo;
    ccmbLogInv: TDBCodeCombo;
    radShowLengths: TRadioGroup;
    cmbStdLenGrp: TThreadedCodeCombo;
    cbOnNewPkgMatchAllLO: TCheckBox;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    Panel3: TPanel;
    ProductList: TVidaStringGrid;
    dxTabSheet2: TdxTabSheet;
    tsDBGrid1: TtsDBGrid;
    procedure cmbPhysInvClick(Sender: TObject);
    procedure cmbLogInvClick(Sender: TObject);
    procedure atAddPackageExecute(Sender: TObject);
    procedure grdPackageClick(Sender: TObject);
    procedure ProductListClick(Sender: TObject);
    procedure grdPackageDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure grdPackageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdpackageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure atRemovePackageExecute(Sender: TObject);
    procedure atSaveExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdPackageKeyPress(Sender: TObject; var Key: Char);
    procedure grdPackageURIEditDone(EditCol, EditRow: Integer;
      Content: String; var Action: TEditAction);
    procedure ccmbPhysInvClick(Sender: TObject);
    procedure radShowLengthsClick(Sender: TObject);
    procedure grdPackageBeforeHideColumn(Col: Integer;
      var Allowhide: Boolean);
    procedure grdPackageInsertposQuery(Title: String; var Newpos: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdPackageReadOnlyQuery(Sender: TObject; Col, Row: Integer;
      var Allow: Boolean);
    procedure cmbStdLenGrpChange(Sender: TObject);
    procedure ProductListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdPackageSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    OldRow          : Integer ;
    FOldCol         : Integer;
    FOldRow         : Integer;

//  FSelectedLO     : Integer;
    FSelectedLOLine : Integer;
    FSupplierCode   : String3;
    FSupplierNo     : Integer;

    FDuplicatePackages : TStringList;
    FPackageList : TList;

    FGrpLengths : TStrings;

    procedure InitialiseForm;
    procedure MaybeAddPackagesToLoad;
    procedure RemoveOldProductionInstructions;
    procedure SomethingChanged(Sender: TObject);

    function ValidatePackageNumber(ACol : Integer; ARow : Integer) : Boolean;
    function getPackages(index: integer): Integer;
    function getPackageCount: integer;
    function WeHaveAnOrderFor(AProductLengthNo : Integer) : Boolean;
    procedure SetWidthForLengthCol;
    function GetMarkedLO_Lines(PackageNo: Integer) : Boolean ;
    procedure SetMatchColumnForPackageClicked(PkgNo:Integer;SupplierCode:String);

  protected

    procedure LoadUserPreferences;    override;
    procedure SaveUserPreferences;    override;

    function  DataValidate : Boolean; override;
    procedure SpecifyRequiredFields;  override;
    procedure ApplyModifiedEnter;     override;
    procedure ApplyModifiedExit;      override;
    function ApplyModified : Boolean; override;

    procedure ShowProdInstru;
    procedure WhereToInSert(InsertTitle : String; var NewPos : Integer);

  public

    constructor Create(AOwner : TComponent);  override;
    constructor CreateEx(
      AOwner        : TComponent;
      LOList        : TList;
      ASupplierCode : String3;
      ASupplierNo   : Integer
      );

    destructor  Destroy; override;

    procedure AddLOs( LOList : TList );

    property Packages[index : integer] : Integer Read getPackages;
    property PackageCount : integer read getPackageCount; 
    property SupplierCode : String3 read FSupplierCode write FSupplierCode;
    property SupplierNo   : Integer read FSupplierNo   write FSupplierNo;

  end;


implementation

{$R *.dfm}

uses
  Dialogs,
  graphics,
  Messages,
  SysUtils,
  Variants,

  dmcVidaOrder,
  dmcVidaProduct,
  dmcVidaSystem,
{$IFDEF LOGGER}
  LECSLogClient,
{$ENDIF}
  VidaConst,
  VidaPkg2,
  VidaUser,
  VidaUtils, dmsVidaOrder;

const
  READ_ONLY  = 0;
  READ_WRITE = 1;
  ROW_HDR_PLUS_BLANK_LINE = 2;

  SHOW_LO_LENGTHS  = 0;
  SHOW_ALL_LENGTHS = 1;
  SHOW_STD_LENGTHS = 2;

  PE_COL_STKS  = 0;
  PE_COL_PROD  = 1;
  PE_COL_PCS   = 2;
  PE_COL_ACTM3 = 3;
  PE_COL_SUPP  = 4;
  PE_COL_PKNO  = 5;

  NON_LENGTH_COLUMNS = [  // On PackageEntryForm
    PE_COL_STKS,
    PE_COL_PKNO,
    PE_COL_PROD,
    PE_COL_PCS,
    PE_COL_ACTM3,
    PE_COL_SUPP
    ];

  FIRST_LENGTH = 6; // Make sure this is the same as the number of entries in NON_LENGTH_COLUMNS.
                    // If there are 6 non-length columns, they are 0 to 5, and the first
                    // length column is column 6.



{ TfrmLoadEntry }

procedure TfrmPkgEntry.AddLOs(LOList: TList);
var
  LengthList : TStringList;
  NewCaption : String;
  iLen : Integer;

begin

  {$IFDEF LOGGER} LECSLogger.Write('Add Load Orders to Package Entry form'); {$ENDIF}

  LengthList := TStringList.Create;
  try
    // Get list of lengths that are valid for the specified LOs.
    {$IFDEF LOGGER} LECSLogger.Write('Get list of valid lengths'); {$ENDIF}
    dmcProduct.GetValidLengths( LOList, LengthList );
    {$IFDEF LOGGER} LECSLogger.WriteFmt('%d Valid lengths found', [LengthList.Count]); {$ENDIF}

    dmcProduct.cdsPackages.Close;
    try

      // Add a new column to the grid for each valid length we may encounter
      for iLen := 0 to LengthList.Count - 1 do begin
        NewCaption := LengthList[iLen];
        {$IFDEF LOGGER} LECSLogger.WriteFmt('Add column for length %s', [NewCaption]); {$ENDIF}
        grdpackage.ColCount := grdpackage.ColCount + 1;
        grdPackage.Cells[grdpackage.ColCount-1,  ROW_HDR] := NewCaption;
        grdPackage.Objects[grdpackage.ColCount-1,ROW_HDR] := LengthList.objects[iLen];
        end;

    finally
      dmcProduct.OpenPackages;
      end;
  finally
    LengthList.Free;
    end;

end;

procedure TfrmPkgEntry.ApplyModifiedEnter;
begin
  inherited;

end;

procedure TfrmPkgEntry.ApplyModifiedExit;
begin
  inherited;
end;

constructor TfrmPkgEntry.Create(AOwner : TComponent);
begin
  inherited;
  {$IFDEF LOGGER} LECSLogger.Write('Initialise Package Entry Form'); {$ENDIF}
  InitialiseForm;
  OldRow:= -1 ;
end;

function TfrmPkgEntry.DataValidate: Boolean;
begin
  Result := RequiredFieldsOK and (grdpackage.RowCount > ROW_HDR_PLUS_BLANK_LINE);
end;

destructor TfrmPkgEntry.Destroy;
begin
  {$IFDEF LOGGER} LECSLogger.Write('Close Package Entry Form'); {$ENDIF}
  FDuplicatePackages.Clear;
  FDuplicatePackages.Free;
  FPackageList.Free;
  inherited;
end;

procedure TfrmPkgEntry.InitialiseForm;

  procedure InitialiseCombos;
  begin
    dmcSystem.OpenPhysInventory(FSupplierNo);
    ccmbPhysInv.DataSource := dmcSystem.dsrcPhysInventory;
    ccmbPhysInv.LoadFromDataSource;
//    ccmbPhysInv.ItemIndex := 0;

    dmcSystem.OpenLogInventory;
    ccmbLogInv.DataSource := dmcSystem.dsrcLogicalInventory;
    ccmbLogInv.LoadFromDataSource;
//    ccmbLogInv.ItemIndex := 0;

    dmcSystem.LoadBarCodes(cmbBarCode.Items);
    dmcSystem.LoadGradeStamps(cmbGradeStamp.Items);
    dmcSystem.LoadWrapTypes(cmbPaperWrap.Items);
  end;

  procedure InitialiseGrdProductList;
  begin
    // Fill the top list with products currently selected (by Load Entry
    // form which called us) and select the first one.
    dmcOrder.GetDistinctProducts( ProductList );
    ProductList.Row := ROW_HDR + 1;
    ProductList.Col := COL_PL_PRODUCT;
    ShowProdInstru;
    ProductList.Cells[COL_PL_LO_NO,    ROW_HDR] := 'LO #';
    ProductList.Cells[COL_PL_PKG_CODE, ROW_HDR] := 'PKG CODE';
    ProductList.Cells[COL_PL_PRODUCT,  ROW_HDR] := 'PRODUCT';
    ProductList.Cells[COL_PL_THICK,    ROW_HDR] := 'THICK';
    ProductList.Cells[COL_PL_WIDTH,    ROW_HDR] := 'WIDTH';
    ProductList.Cells[COL_PL_ACT_LENGTH,    ROW_HDR] := 'ACT.LENGTH';
    ProductList.Cells[COL_PL_REFERENCE,    ROW_HDR] := 'REFERENCE';
    ProductList.Cells[COL_PL_UNIQUENO,    ROW_HDR] := 'UNIQUE NO';
    ProductList.Cells[COL_PL_MATCH,    ROW_HDR] := 'MATCH';


  end;

  procedure InitialiseGrdPackages;
  begin
    grdpackage.RowCount := 2; // To make sure it is clear;
    grdpackage.Rows[ROW_HDR+1].Clear;
    grdpackage.Col := PE_COL_PKNO;

    grdpackage.URICol := PE_COL_PKNO;

    // Header row contains field titles
    grdpackage.Cells[PE_COL_STKS,  ROW_HDR] := 'On sticks';
    grdpackage.Cells[PE_COL_PKNO,  ROW_HDR] := 'PKG NO';
    grdpackage.Cells[PE_COL_PROD,  ROW_HDR] := 'PRODUCT';
    grdpackage.Cells[PE_COL_PCS,   ROW_HDR] := 'PCS';
    grdpackage.Cells[PE_COL_ACTM3, ROW_HDR] := 'ACTM3';
    grdpackage.Cells[PE_COL_SUPP,  ROW_HDR] := 'SUPP CODE';
  end;

  procedure InitialiseVars;
  begin
    FDuplicatePackages := TStringList.Create;
    FPackageList := TList.Create;
  end;

begin
  InitialiseCombos;
  InitialiseGrdProductList;
  InitialiseGrdPackages;
  InitialiseVars;
end;

function TfrmPkgEntry.GetMarkedLO_Lines(PackageNo: Integer) : Boolean ;
Var x : Integer ;
Begin
 Result:= False ;
 While dmsOrder.tblLoadDetailMatch.Locate('PackageNo',grdPackage.Cells[PE_COL_PKNO,grdpackage.Row],[]) do
 Begin
  dmsOrder.tblLoadDetailMatch.Delete ;
 End ;

 For x := 1 to ProductList.RowCount-1 do
 Begin
  if ProductList.Cells[COL_PL_MATCH,    x] = '1' then
  Begin
   dmsOrder.tblLoadDetailMatch.Insert ;
   dmsOrder.tblLoadDetailMatchPackageNo.AsInteger:= PackageNo ;
   dmsOrder.tblLoadDetailMatchSupplierCode.AsString:= SupplierCode ;
   dmsOrder.tblLoadDetailMatchSupplierShipPlanObjectNo.AsInteger:= StrToInt(ProductList.Cells[COL_PL_UNIQUENO,    x]) ;
   dmsOrder.tblLoadDetailMatch.Post ;
   Result:= True ;
  End ;
 End ;
End ;

procedure TfrmPkgEntry.LoadUserPreferences;
begin
  inherited;
  grdPackage.LoadFromIniFile(ChangeFileExt(Application.ExeName, '.' + ThisUser.UserName));
end;


procedure TfrmPkgEntry.RemoveOldProductionInstructions;
begin
  {$IFDEF LOGGER} LECSLogger.Write('Remove any old Production Instructions from screen'); {$ENDIF}
  cmbGradeStamp.ItemIndex := NO_SELECTION;
  cmbBarCode.ItemIndex    := NO_SELECTION;
  cmbPaperWrap.ItemIndex  := NO_SELECTION;

  edSizeb.Text  := '';
  edSizeh.Text  := '';

  cbxShrinkWrap.Checked := FALSE;
  cbxMiniTies.Checked   := FALSE;
end;


procedure TfrmPkgEntry.SaveUserPreferences;
begin
  inherited;

end;


procedure TfrmPkgEntry.ShowProdInstru;
var
//SelectedLO : Integer;
  SelectedLOLine : Integer;
  ProdInst   : TProdInstruRec;
  pData : pPlanObj;
begin
  {$IFDEF LOGGER} LECSLogger.Write('Show Production Instructions on Package Entry form'); {$ENDIF}
  // If selected LO has not changed, we do not need to update the product instructions
  pData := pPlanObj(ProductList.Objects[COL_PL_PRODUCT, ProductList.Row]);

//SelectedLO := pData^.ShippingPlanNo;
  SelectedLOLine := pData^.ShipPlanObjectNo;
//if SelectedLO = FSelectedLO then begin
  if SelectedLOLine = FSelectedLOLine then begin
    {$IFDEF LOGGER} LECSLogger.Write('Ah, Same LO Line as before. No need to bother.'); {$ENDIF}
    Exit;
    end;

  // We have changed LO in the LO Lines grid, so make a note of currenly selected LO
//FSelectedLO := SelectedLO;
  FSelectedLOLine := SelectedLOLine;

  // Get the product instructions for the newly selected LO Line
  {$IFDEF LOGGER} LECSLogger.Write('Get Production Instructions from Database'); {$ENDIF}
//dmcOrder.LoadProductInstructions(SelectedLO, ProdInst);
  dmcOrder.LoadProductInstructions(SelectedLOLine, ProdInst);

  RemoveOldProductionInstructions;

  // Display the product instructions on the form
  SetIndexByIntObject( cmbGradeStamp,     ProdInst.GradeStamp );
  {$IFDEF LOGGER}
    LECSLogger.WriteFmt('Grade Stamp No   : %d', [ProdInst.GradeStamp]);
    LECSLogger.WriteFmt('Grade Stamp Name : %s', [cmbGradeStamp.Items[cmbGradeStamp.ItemIndex]]);
  {$ENDIF}

  SetIndexByIntObject( cmbBarCode,        ProdInst.BarCode    );
  {$IFDEF LOGGER}
    LECSLogger.WriteFmt('BarCode     No   : %d', [ProdInst.GradeStamp]);
    LECSLogger.WriteFmt('BarCode     Name : %s', [cmbBarCode.Items[cmbBarCode.ItemIndex]]);
  {$ENDIF}

  SetIndexByIntObject( cmbPaperWrap,      Prodinst.PaperWrap  );
  {$IFDEF LOGGER}
    LECSLogger.WriteFmt('PaperWrap   No   : %d', [ProdInst.PaperWrap]);
    LECSLogger.WriteFmt('PaperWrap   Name : %s', [cmbPaperWrap.Items[cmbPaperWrap.ItemIndex]]);
  {$ENDIF}

  edSizeb.Text  := IntToStr(Prodinst.PckgSizeB);
  edSizeh.Text  := IntToStr(Prodinst.PckgSizeH);
  {$IFDEF LOGGER} LECSLogger.WriteFmt('Size             : %d x %d', [Prodinst.PckgSizeB,Prodinst.PckgSizeH]); {$ENDIF}

  cbxShrinkWrap.Checked := ProdInst.ShrinkWrap;
  cbxMiniTies.Checked   := ProdInst.MiniTies;

end;


procedure TfrmPkgEntry.SpecifyRequiredFields;
begin
  inherited;
  // There are no required fields on this form, apart from the grid.
  // Packages must have been entered for the save button to be enabled, and there
  // is nothing controlled via the required fields mechanism.
end;

procedure TfrmPkgEntry.cmbPhysInvClick(Sender: TObject);
begin
//  dmcProduct.PackagePhysInvFilter := cmbPhysInv.KeyValue;
  SomethingChanged(Sender);
end;

procedure TfrmPkgEntry.cmbLogInvClick(Sender: TObject);
begin
  atAddPackage.Enabled := TRUE;
  SomethingChanged(Sender);
end;

procedure TfrmPkgEntry.atAddPackageExecute(Sender: TObject);
var
  Lengths : TStringList;
  LOList: TList;
  pData : pPlanObj;
  iCol : Integer;
  NewHdr : TPackageGridRowHeader;
begin

  {$IFDEF LOGGER} LECSLogger.Write('Package Entry Form - Add Package'); {$ENDIF}

  NewHdr := TPackageGridRowHeader.Create;

  // Logical inventory location is set by the combo at top of form
  NewHdr.LogInvPointNo := ccmbLogInv.ItemCode;

  // Product instruction data is for the currently selected product.
  // Product instructions for that product are already displayed on the panel; get data from there.
  NewHdr.BarCodeID        := CodeForSelectedItem(cmbBarCode);
  NewHdr.GradeStamp       := CodeForSelectedItem(cmbGradeStamp);
  Newhdr.Minibundled      := cbxMiniTies.Checked;
  NewHdr.PackageHeight    := StrToint(edSizeh.Text);
  NewHdr.PackageWidth     := StrToInt(edSizeb.Text);
  NewHdr.ShrinkWrap       := cbxShrinkWrap.Checked;
  Newhdr.WrapType         := CodeForSelectedItem(cmbPaperWrap);

  // DMC 2003.03.01 Store supplier ID to match the selected LO line.
  // This replaces earlier code that used the supplier selected on Load Order form, and applied
  // that during save operation.
  NewHdr.SupplierNo   := pPlanObj(ProductList.Objects[COL_PL_PRODUCT, ProductList.Row])^.SupplierNo;
  NewHdr.SupplierCode := pPlanObj(ProductList.Objects[COL_PL_PRODUCT, ProductList.Row])^.SupplierCode;

  // Product-related data comes from the object associated with selected entry in product list
  NewHdr.ProductNo        := pPlanObj(ProductList.Objects[COL_PL_PRODUCT, ProductList.Row])^.ProductNo;
  NewHdr.ShippingPlanNo   := pPlanObj(ProductList.Objects[COL_PL_PRODUCT, ProductList.Row])^.ShippingPlanNo;
  Newhdr.ShipPlanObjectNo := pPlanObj(ProductList.Objects[COL_PL_PRODUCT, ProductList.Row])^.ShipPlanObjectNo;

  grdpackage.Rows[grdPackage.LastRow].Objects[0]      := NewHdr;
  grdpackage.Cells[PE_COL_STKS, grdpackage.LastRow]   := 'N';
  grdpackage.Cells[PE_COL_PROD, grdpackage.LastRow]   := ProductList.Cells  [COL_PL_PRODUCT,ProductList.Row];
  grdpackage.Objects[PE_COL_PROD, grdpackage.LastRow] := ProductList.Objects[COL_PL_PRODUCT,ProductList.Row];
  grdpackage.Cells[PE_COL_SUPP, grdpackage.LastRow]   := NewHdr.SupplierCode;


  // Now sort out what lengths are valid for this product type, and set invalid length columns
  // to read only for this row (row=package).
  Lengths := TStringList.Create;
  try

    LOList := TList.Create;
    try

      // Get valid lengths for list of LOs containing just the selected LO
      pData := pPlanObj(ProductList.Objects[COL_PL_PRODUCT, ProductList.Row]);
      LOList.Add(pointer(pdata^.ShippingPlanNo));
      dmcProduct.GetValidLengths( LOList, Lengths );

      // Set length columns as read-only if not applicable to this package
      for iCol := FIRST_LENGTH to grdpackage.ColCount - 1 do begin
        if Lengths.IndexOf(grdpackage.Cells[iCol,ROW_HDR]) = NOT_IN_LIST then
          grdpackage.Rows[grdpackage.LastRow].Objects[iCol] := pointer(READ_ONLY)
        else
          grdpackage.Rows[grdpackage.LastRow].Objects[iCol] := pointer(READ_WRITE);
        end;

      LOList.Clear;

    finally
      LOList.free;
      end;

    // Free the objects that were returned with the list, and empty the list
    while Lengths.Count > 0 do begin
      TPackageGridLengthColHeader(Lengths.Objects[0]).free;
      Lengths.Delete(0);
      end;

  finally
    Lengths.Free;
    end;

  // We have added a new package so make sure we are allowed to save or remove it
  atRemovePackage.Enabled := TRUE;
  atSave.Enabled  := TRUE;
  btnSave.Enabled := TRUE;

  // Move focus to the package number field and allow user to type it in
//  grdpackage.Col := PE_COL_PKNO;
//  grdpackage.Row := grdpackage.RowCount-2;
//  grdpackage.Options := grdpackage.Options + [goEditing];
//  grdpackage.SetFocus;
  grdpackage.AddRow;
end;

procedure TfrmPkgEntry.grdPackageClick(Sender: TObject);
var
  Pieces : Integer;
  TotalVolume : Real;
  ProdgrpThickness : Double;
  ProdgrpWidth     : Double;
  ProdGrpCrossSectionArea : Double;
  ThisLength : Double;
  PiecesCount : Integer;

  procedure CountThePieces;
  var
    iCol : Integer;
  begin
    // Total up the pieces of all the lengths for this package
    if goEditing in grdpackage.Options then begin
      Pieces := 0;
      for iCol := FIRST_LENGTH to grdpackage.ColCount -1 do
        if grdpackage.Cells[iCol,FOldRow] <> '' then
          Pieces := Pieces + StrToInt(grdpackage.Cells[iCol,FOldRow]);
      if Pieces > 0 then
        grdpackage.Cells[PE_COL_PCS,FOldRow] := IntToStr(Pieces);
      end;
  end;

  procedure CalculateTheVolume;
  var
    iLen : Integer;
  begin

    if grdpackage.Objects[PE_COL_PROD, FOldRow] = nil then
      Exit;

    // Total Volume for all lengths in this package
    TotalVolume := 0.0;
    ProdgrpThickness := pPlanObj(grdpackage.Objects[PE_COL_PROD, FOldRow])^.ActualThicknessMM;
    ProdgrpWidth     := pPlanObj(grdpackage.Objects[PE_COL_PROD, FOldRow])^.ActualWidthMM;
    ProdGrpCrossSectionArea := ProdgrpThickness * ProdgrpWidth;

    for iLen := FIRST_LENGTH to grdpackage.ColCount - 1  do begin
      if grdpackage.Cells[iLen,FOldRow] <> '' then begin
        ThisLength := TPackageGridLengthColHeader(grdpackage.Objects[iLen,ROW_HDR]).ActualLengthMM;
        PiecesCount := StrToInt(grdpackage.Cells[iLen,FOldRow]);
        TotalVolume := TotalVolume +
          ProdGrpCrossSectionArea * ThisLength * PiecesCount;
        end;
      end;
    TotalVolume := TotalVolume/(1000*1000*1000); // Convert from cubic millimetres to cubic metres
    grdpackage.Cells[PE_COL_ACTM3,FOldRow] := Format('%.3F',[TotalVolume]);
    //FloatToStr(TotalVolume);
  end;

  procedure SetReadOnlyOrReadWrite;
  begin
    // (Dis)Allow editting based on current column
    if (grdpackage.Col = PE_COL_PKNO) or
       ( (grdpackage.Col >= FIRST_LENGTH) and
         (integer(grdpackage.Rows[grdpackage.Row].Objects[grdpackage.Col]) = READ_WRITE) ) then
      grdpackage.Options := grdpackage.Options + [goEditing]
    else
      grdpackage.Options := grdpackage.Options - [goEditing];
  end;

begin

  if (grdPackage.Row = FOldRow) and (grdPackage.Col = FOldCol) then
    exit;

  if FOldRow > ROW_HDR then begin
    CountThePieces;
    CalculateTheVolume;
    end;
  FOldRow := grdpackage.Row;

  SetReadOnlyOrReadWrite;
  FOldCol := grdpackage.Col;

end;

procedure TfrmPkgEntry.ProductListClick(Sender: TObject);
begin
  ShowProdInstru;


end;

procedure TfrmPkgEntry.grdPackageDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  bmp : TBitmap;
begin

  if (ARow <= ROW_HDR) then
    Exit;


  if (ACol = PE_COL_STKS) then begin                                        // ON STICKS

    // Fill in the background
    (Sender as TStringGrid).Canvas.Brush.Color := clWindow;
    (Sender as TStringGrid).Canvas.FillRect(Rect);

    if grdpackage.Cells[ACol,ARow] > '' then
      if grdpackage.Cells[ACol,ARow][1] in ['Y','N'] then begin

        // Get the bitmap to display in cell
        bmp := TBitmap.Create;
        try

          if grdpackage.Cells[ACol,ARow] = 'Y' then
            imglistOnSticks.GetBitmap(1, bmp)
          else
            imglistOnSticks.GetBitmap(0, bmp);

          // Show (in mid-column) graphic to represent status
          // This is not pretty, as it does not check if the graphic exceeds the
          // bounds of the rectangle.
          DrawTransparentBitmapInRect(
            (Sender as TStringGrid).Canvas,
            bmp,
            rqCENTRED,
            rqCENTRED,
            Rect);
        finally
          bmp.Free
          end;
        end;

    end;

end;

procedure TfrmPkgEntry.grdPackageMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ClickedCol : integer;
  ClickedRow : integer;

  function UserClickedOnSticks : Boolean;
  begin
    grdpackage.MouseToCell(X, Y, ClickedCol, ClickedRow);
    Result := ClickedCol = PE_COL_STKS;
  end;

begin
  if UserClickedOnSticks then
    if ClickedRow < grdpackage.RowCount-1 then begin
      if grdpackage.Cells[ClickedCol,ClickedRow] = 'N' then
        grdpackage.Cells[ClickedCol,ClickedRow] := 'Y'
      else
        grdpackage.Cells[ClickedCol,ClickedRow] := 'N';
      grdpackage.Col := PE_COL_PKNO;
      end;

     if grdpackage.Row <> OldRow then
       if grdpackage.Row > ROW_HDR then
        if StrToIntDef(grdPackage.Cells[PE_COL_PKNO, grdpackage.Row],0) > 0 then
         SetMatchColumnForPackageClicked(StrToIntDef(grdPackage.Cells[PE_COL_PKNO, grdpackage.Row],0),
         grdPackage.Cells[PE_COL_SUPP, grdpackage.Row]);
      OldRow:= grdpackage.Row ;
end;

//Addition by Lars
procedure TfrmPkgEntry.SetMatchColumnForPackageClicked(PkgNo:Integer;SupplierCode:String);
Var x : Integer ;
Begin
     For x := 1 to ProductList.RowCount-1 do
     Begin
      ProductList.Cells[COL_PL_MATCH,    x] := '0' ;
     End ;//for x

  dmsOrder.tblLoadDetailMatch.First ;
  While not dmsOrder.tblLoadDetailMatch.Eof do
  Begin
    if dmsOrder.tblLoadDetailMatchPackageNo.AsInteger = PkgNo then
    Begin
     For x := 1 to ProductList.RowCount-1 do
     Begin
      if StrToIntDef(ProductList.Cells[COL_PL_UNIQUENO,    x],0) =
      dmsOrder.tblLoadDetailMatchSupplierShipPlanObjectNo.AsInteger then
      Begin
      ProductList.Cells[COL_PL_MATCH,    x] := '1' ;
      Break ;
      End
      else
      ProductList.Cells[COL_PL_MATCH,    x] := '0' ;
     End ;//for x

    End ; //if
     dmsOrder.tblLoadDetailMatch.Next ;
  End ; //While

End ;

procedure TfrmPkgEntry.grdpackageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  Col : integer;
  Row : integer;
begin
  // Set read-only / read/write based on current mouse location.
  // This is probably not necessary as we set this when we change focused cell.
  grdpackage.MouseToCell(X, Y, Col, Row);
  if (Row = ROW_Hdr) or (Row = grdpackage.RowCount - 1) then
    grdpackage.Options := grdpackage.Options - [goEditing]
  else
    if grdpackage.Col = PE_COL_PKNO then
      grdpackage.Options := grdpackage.Options + [goEditing]
    else
      if grdpackage.Col < FIRST_LENGTH then
        grdpackage.Options := grdpackage.Options - [goEditing]
      else
        if (integer(grdpackage.Rows[grdpackage.Row].Objects[grdpackage.Col]) = READ_WRITE) then
          grdpackage.Options := grdpackage.Options + [goEditing]
        else
          grdpackage.Options := grdpackage.Options - [goEditing];
end;

procedure TfrmPkgEntry.atRemovePackageExecute(Sender: TObject);
begin
//Addition by Lars
 While dmsOrder.tblLoadDetailMatch.Locate('PackageNo',grdPackage.Cells[PE_COL_PKNO,grdpackage.Row],[]) do
 Begin
  dmsOrder.tblLoadDetailMatch.Delete ;
 End ;
//     dmcOrder.tblLoadDetailMatchPackageNo.AsInteger:= StrToInt(grdpackage.Cells[PE_COL_PKNO,grdpackage.LastRow]) ;
  grdpackage.DeleteRow(grdpackage.Row);
  atRemovePackage.Enabled := grdpackage.RowCount > ROW_HDR_PLUS_BLANK_LINE;
  atSave.Enabled := atRemovePackage.Enabled;
  btnSave.Enabled := atSave.Enabled;
end;

procedure TfrmPkgEntry.SomethingChanged(Sender: TObject);
begin
  FIsModified := true;
  if Sender is TControl then
    RemoveControlHighlight(Sender as TControl);
end;

procedure TfrmPkgEntry.atSaveExecute(Sender: TObject);
begin
  if ApplyModified then begin
    MaybeAddPackagesToLoad;

    // Clear saved items from the grid
    while grdpackage.RowCount > 2 do
      grdpackage.DeleteRow(ROW_HDR+1);
    atRemovePackage.Enabled := grdpackage.RowCount > 2;
    atSave.Enabled := atRemovePackage.Enabled;
    end;

end;

procedure TfrmPkgEntry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if atSave.enabled then begin
    inherited;
    if not atSave.enabled then begin
      // User chose to save when closing the form.
      MaybeAddPackagesToLoad;
      end;
    end;
end;

constructor TfrmPkgEntry.CreateEx(
  AOwner        : TComponent;
  LOList        : TList;
  ASupplierCode : String3;
  ASupplierNo   : Integer );
begin
  inherited Create(AOwner);
  SupplierCode := Trim(ASupplierCode);
  SupplierNo   := ASupplierNo;
  InitialiseForm;
  AddLOs( LOList );
  cmbStdLenGrp.SQL.Clear;
  cmbStdLenGrp.SQL.Add('SELECT GroupNo, GroupName FROM ProductLengthGroupName ORDER BY GroupName');
  cmbStdLenGrp.LoadItems;
//  SetWidthForLengthCol;
end;

procedure TfrmPkgEntry.SetWidthForLengthCol;
Var x : Integer ;
Begin
  For x:= FIRST_LENGTH to grdpackage.ColCount - 1 do
   grdpackage.ColWidths[x]:= 55 ;
End ;

function TfrmPkgEntry.ValidatePackageNumber(ACol, ARow: Integer) : Boolean;
var
  PkgNo : Integer;
begin
  if grdpackage.Cells[ACol,ARow] = '' then begin
    Result := FALSE;
    Exit;
    end;

  try
    PkgNo := StrToInt(grdpackage.Cells[ACol,ARow]);
  except
    on EConvertError do
      PkgNo := INVALID;
    end;

  if PkgNo = INVALID then begin
    lblMsgToUser.Caption := rs_NON_NUMERIC;
    lblMsgToUser.Visible := TRUE;
    Result := FALSE;
    end
  else
    if dmcProduct.PackageNumberExists(PkgNo, SupplierCode) then begin
      // There is already a package with this number for this supplier, so
      // we cannot create a new one.
      lblMsgToUser.Caption := Format(rs_DUPLICATE_PKG_NO,[PkgNo]);
      lblMsgToUser.Visible := TRUE;
      Result := FALSE;
      end
    else
      if grdPackage.DuplicateURI then begin
        lblMsgToUser.Caption := Format(rs_PKG_NO_ENTERED_TWICE,[PkgNo]);
        lblMsgToUser.Visible := TRUE;
        Result := FALSE;
        end
      else begin
        Result := TRUE;
        lblMsgToUser.Visible := FALSE;
        end;
end;

procedure TfrmPkgEntry.grdPackageKeyPress(Sender: TObject; var Key: Char);
begin
  if key = RETURN then
    if grdpackage.Col = PE_COL_PKNO then
      ValidatePackageNumber(grdpackage.Col, grdpackage.Row);
end;

procedure TfrmPkgEntry.grdPackageURIEditDone(EditCol, EditRow: Integer;
  Content: String; var Action: TEditAction);
var
  Pieces : Integer;
  TotalVolume : Real;
  ProdgrpThickness : Double;
  ProdgrpWidth     : Double;
  ProdGrpCrossSectionArea : Double;
  ThisLength : Double;
  PiecesCount : Integer;

  procedure CountThePieces;
  var
    iCol : Integer;
  begin
    // Total up the pieces of all the lengths for this package
    if goEditing in grdpackage.Options then begin
      Pieces := 0;
      for iCol := FIRST_LENGTH to grdpackage.ColCount -1 do
        if grdpackage.Cells[iCol,grdpackage.LastRow] <> '' then
          Pieces := Pieces + StrToInt(grdpackage.Cells[iCol,FOldRow]);
      if Pieces > 0 then
        grdpackage.Cells[PE_COL_PCS,FOldRow] := IntToStr(Pieces);
      end;
  end;

  procedure CalculateTheVolume;
  var
    iLen : Integer;
  begin

    if grdpackage.Objects[PE_COL_PROD, FOldRow] = nil then
      Exit;

    // Total Volume for all lengths in this package
    TotalVolume := 0.0;
    ProdgrpThickness := pPlanObj(grdpackage.Objects[PE_COL_PROD, FOldRow])^.ActualThicknessMM;
    ProdgrpWidth     := pPlanObj(grdpackage.Objects[PE_COL_PROD, FOldRow])^.ActualWidthMM;
    ProdGrpCrossSectionArea := ProdgrpThickness * ProdgrpWidth;

    for iLen := FIRST_LENGTH to grdpackage.ColCount - 1  do begin
      if grdpackage.Cells[iLen,FOldRow] <> '' then begin
        ThisLength := TPackageGridLengthColHeader(grdpackage.Objects[iLen,ROW_HDR]).ActualLengthMM;
        PiecesCount := StrToInt(grdpackage.Cells[iLen,FOldRow]);
        TotalVolume := TotalVolume +
          ProdGrpCrossSectionArea * ThisLength * PiecesCount;
        end;
      end;
    TotalVolume := TotalVolume/(1000*1000*1000); // Convert from cubic millimetres to cubic metres
    grdpackage.Cells[PE_COL_ACTM3,FOldRow] := Format('%.3F',[TotalVolume]);
    //FloatToStr(TotalVolume);
  end;

  procedure SetReadOnlyOrReadWrite;
  begin
    // (Dis)Allow editting based on current column

    if (grdpackage.Col = PE_COL_PKNO) or
       ( (grdpackage.Col >= FIRST_LENGTH) and
         (integer(grdpackage.Rows[grdpackage.Row].Objects[grdpackage.Col]) = READ_WRITE) ) then
      grdpackage.Options := grdpackage.Options + [goEditing]
    else
      grdpackage.Options := grdpackage.Options - [goEditing];
  end;

begin
  lblMsgToUser.Visible := FALSE;

  if Trim(Content) = '' then begin
    {$IFDEF LOGGER} LECSLogger.Write('Did not input a package number. Discard null entry'); {$ENDIF}
    Action := eaABANDON;
    Exit;
    end
  else begin
    {$IFDEF LOGGER} LECSLogger.WriteFmt('Package Number "%s" entered', [grdpackage.Cells[PE_COL_PKNO,grdpackage.LastRow]]); {$ENDIF}
    if not ValidatePackageNumber(PE_COL_PKNO,grdpackage.LastRow) then begin
      {$IFDEF LOGGER} LECSLogger.Write('Package Number invalid. Reject it.'); {$ENDIF}
      Action := eaREJECT
      end
    else begin
     if GetMarkedLO_Lines(StrToInt(grdpackage.Cells[PE_COL_PKNO,grdpackage.LastRow])) = False then
     Begin
      ShowMessage('No LO selected') ;
      Action := eaREJECT ;
      Exit;
     End ;

      {$IFDEF LOGGER} LECSLogger.Write('Count pieces in Package'); {$ENDIF}
      CountThePieces;

      {$IFDEF LOGGER} LECSLogger.Write('Calculate volume of Package'); {$ENDIF}
      CalculateTheVolume;

      Action := eaACCEPT;

      end;
    end;

  SetReadOnlyOrReadWrite;

  FOldCol := grdpackage.Col;

  SomethingChanged(nil);

end;

procedure TfrmPkgEntry.ccmbPhysInvClick(Sender: TObject);
begin
  dmcSystem.SetLogInvFilter(ccmbPhysInv.ItemCode);
  ccmbLogInv.LoadFromDataSource;
end;

function TfrmPkgEntry.ApplyModified: Boolean;
var
 iPkg : Integer;
 iCol : Integer;
 NewPackages : TList;
 OnePkg : TPackageDataToSave;
 OneLen : TPackageGridLengthCell;
 PiecesOfThisLength : Integer;
begin

  {$IFDEF LOGGER} LECSLogger.Write('Save Package Entry Form Data'); {$ENDIF}
  Result := FALSE;

  if not DataValidate then begin
    {$IFDEF LOGGER} LECSLogger.Write('Abandon save because data not valid'); {$ENDIF}
    Exit;
    end;

  NewPackages := TList.Create;
  try
    {$IFDEF LOGGER} LECSLogger.WriteFmt('There are %d packages to save', [grdpackage.RowCount-2]); {$ENDIF}
    for iPkg := ROW_HDR+1 to grdpackage.LastRow do begin
      if grdpackage.Cells[PE_COL_PKNO,iPkg] <> '' then begin

        // user has entered a package number on this row of the grid. Compile header.
        OnePkg := TPackageDataToSave.Create;
        OnePkg.Header := TPackageGridRowHeader(grdpackage.Objects[0,iPkg]);

        OnePkg.Header.OnSticks     := grdpackage.Cells[PE_COL_STKS,iPkg] = 'Y';
        OnePkg.Header.PackageNo    := StrToInt(grdpackage.Cells[PE_COL_PKNO,iPkg]);
        OnePkg.Header.ProductDesc  := grdpackage.Cells[PE_COL_PROD,iPkg];
//      OnePkg.Header.SupplierCode := Trim(grdpackage.Cells[PE_COL_SUPP,iPkg]);
//      OnePkg.Header.SupplierNo   := SupplierNo;
        OnePkg.Header.ActualM3     := StrToFloat(grdpackage.Cells[PE_COL_ACTM3,iPkg]);

        {$IFDEF LOGGER}
          LECSLogger.WriteFmt('  Package Number   : %d', [OnePkg.Header.PackageNo   ]);
          LECSLogger.WriteFmt('    Product Desc.  : %s', [OnePkg.Header.ProductDesc ]);
          LECSLogger.WriteFmt('    Supplier Code  : "%s"', [OnePkg.Header.SupplierCode]);
          LECSLogger.WriteFmt('    Supplier No    : %d', [OnePkg.Header.SupplierNo  ]);
          LECSLogger.WriteFmt('    Actual M3      : %f', [OnePkg.Header.ActualM3    ]);
        {$ENDIF}

        {$IFDEF LOGGER} LECSLogger.Write('    Lengths included in package:'); {$ENDIF}
        for iCol := FIRST_LENGTH to grdpackage.ColCount - 1 do begin // i.e. the length columns
          if grdpackage.Cells[iCol, iPkg] <> '' then begin
            PiecesOfThisLength := StrToInt(grdpackage.Cells[iCol,iPkg]);
            if PiecesOfThisLength > 0 then begin
              {$IFDEF LOGGER} LECSLogger.WriteFmt('      %d x %s', [PiecesOfThisLength, grdPackage.Cells[iCol, ROW_HDR]]); {$ENDIF}
              // This packages has pieces of this length
              OneLen := TPackageGridLengthCell.Create;
              OneLen.NoOfPieces := StrToInt(grdpackage.Cells[iCol,iPkg]);
              OneLen.LengthData := TPackageGridLengthColHeader(grdpackage.Objects[iCol,ROW_HDR]);

              OnePkg.Lengths.Add(OneLen);
              OnePkg.Header.TotalNoOfPieces := OnePkg.Header.TotalNoOfPieces + OneLen.NoOfPieces;
              end;
            end;
          end;
        NewPackages.Add(OnePkg);
        end
      else begin
        {$IFDEF LOGGER}
          if iPkg < grdPackage.LastRow then
            LECSLogger.WriteFmt('CHECK !!!! Row %d Empty !!!!', [iPkg]);
        {$ENDIF}
        end;
      end;
    dmcProduct.SavePackages(NewPackages);

    FIsModified := FALSE;
    atSave.Enabled := FALSE;

    Result := TRUE;

  finally
    NewPackages.Free;
    end;

end;

procedure TfrmPkgEntry.MaybeAddPackagesToLoad;
var
  iPkg : Integer;
begin
  if MessageDlg(rs_ADD_TO_LOAD,mtConfirmation,[mbYes, mbNo],0) = mrYes then
    for iPkg := ROW_HDR+1 to self.grdpackage.LastRow do
      if grdpackage.Cells[PE_COL_PKNo,iPkg] <> '' then
        FPackageList.Add(pointer(StrToInt(grdpackage.Cells[PE_COL_PKNo,iPkg])));
end;

function TfrmPkgEntry.getPackages(index: integer): Integer;
begin
  Result := Integer(FPackageList[index]);
end;

function TfrmPkgEntry.getPackageCount: integer;
begin
  if FPackageList = nil then
    Result := 0
  else
    Result := FPackageList.Count;
end;

function TfrmPkgEntry.WeHaveAnOrderFor(AProductLengthNo: Integer): Boolean;
var
  V : Variant;
begin
  Result := FALSE;
  V := dmcOrder.dsrcLOLines.DataSet.Lookup(
    'ProductLengthNo',
    AProductLengthNo,
    'ProductNo');
  if NOT VarIsNull(V) then
    Result := TRUE;
end;

procedure TfrmPkgEntry.radShowLengthsClick(Sender: TObject);
begin
 SetWidthForLengthCol;
  case radShowLengths.ItemIndex of
    SHOW_LO_LENGTHS  : begin
                         grdPackage.HideUnusedColumns;
                         cmbStdLenGrp.Enabled := FALSE;
                         end;

    SHOW_ALL_LENGTHS : begin
                         grdPackage.ShowAllColumns;
                         cmbStdLenGrp.Enabled := FALSE;
                         end;

    SHOW_STD_LENGTHS : begin
                         cmbStdLenGrp.Enabled := TRUE;
                         if cmbStdLenGrp.ItemIndex <> NO_SELECTION then
                           cmbStdLenGrpChange(Sender);
                         end;

    end;
(*
  if radShowLengths.ItemIndex = SHOW_ALL_LENGTHS then
    grdPackage.ShowAllColumns
  else
    grdPackage.HideUnusedColumns;
*)


end;


procedure TfrmPkgEntry.grdPackageBeforeHideColumn(Col: Integer;  var Allowhide: Boolean);
var
  ThisLengthNo : Integer;
  ThisLengthDesc : String;
begin
  case radShowLengths.ItemIndex of

    SHOW_LO_LENGTHS  : begin
                         if (Col in NON_LENGTH_COLUMNS) then
                           AllowHide := FALSE
                         else begin
                           ThisLengthNo :=
                             TPackageGridLengthColHeader(grdPackage.Objects[Col,ROW_HDR]).ProductLengthNo;
                           if WeHaveAnOrderFor(ThisLengthNo) then
                             AllowHide := FALSE;
                           end;
                         end;


    SHOW_STD_LENGTHS : begin
                         if (Col in NON_LENGTH_COLUMNS) then
                           AllowHide := FALSE
                         else begin
                           ThisLengthDesc := grdPackage.Cells[Col,ROW_HDR];
                           if FGrpLengths.IndexOf(ThisLengthDesc) = NOT_IN_LIST then
                             AllowHide := TRUE
                           else
                             AllowHide := FALSE;
                           end;
                         end;

    else               begin
                         assert(FALSE,'We should not even be calling this routine!');
                         AllowHide := FALSE;
                         end;

    end;

end;

procedure TfrmPkgEntry.WhereToInSert(InsertTitle : String; var NewPos : Integer);
// Given a column title find out where in the packages grid it should be displayed.
// The column title contains the length plus perhaps F and/or T.
// The length columns should appear in length order, low->high, left->right.
// This function will return:
// A. The index of the column containing this length, if one exists, OR
// B. The place where such a column should be inserted.
const
  FIRST_LENGTH_COLUMN   = 6;
  COLUMNS_AFTER_LENGTHS = 0;
  NON_LENGTH_COLUMNS    = 6;
var
  iCol : integer;
  LenInCol : Real;
  AlphaCol : string;
  LenToInsert : Real;
  AlphaInsert : String;

  procedure DecodeTitle(Title : String; var Num : Real; var Alpha : string);
  var
    posSpace : Integer;
  begin
    posSpace := pos(' ',Title);
    if posSpace = 0 then begin
      Num := StrToFloat(Title);
      Alpha := '';
      end
    else begin
      Num := StrToFloat(copy(Title,1,posSpace-1));
      Alpha := copy(Title,posSpace+1,Length(Title)-posSpace);
      end;
  end;


begin

  if grdPackage.ColCount = NON_LENGTH_COLUMNS then
    NewPos := FIRST_LENGTH_COLUMN
  else begin

      NewPos := grdPackage.ColCount - COLUMNS_AFTER_LENGTHS;
      iCol := FIRST_LENGTH_COLUMN;
      while (iCol < grdPackage.ColCount-COLUMNS_AFTER_LENGTHS) do begin
          DecodeTitle(grdPackage.Rows[ROW_HDR][iCol],LenInCol,    AlphaCol   );
          DecodeTitle(InsertTitle,                   LenToInsert, AlphaInsert);
          if LenInCol > LenToInsert then begin
              // This column holds lengths that are longer than the new column.
              // We will insert our new column here (to the left of the column of greater length)
              NewPos := iCol;
              break;
              end
          else
              if LenInCol = LenToInsert then begin
                  // Length of stuff in this column is same as length of stuff in new column
                  // so there must be a difference in PET and/or finger joint.
                  // This can be determined by comparing the alpha version of the titles.
                  if grdPackage.Rows[ROW_HDR][iCol] >= InsertTitle then begin
                      NewPos := iCol;
                      break;
                      end
                  else
                      inc(iCol)
                  end
              else
                  inc(iCol);
          end;

      end;
end;



procedure TfrmPkgEntry.grdPackageInsertposQuery(Title: String;
  var Newpos: Integer);
begin
  WhereToInsert(Title,NewPos);
end;

procedure TfrmPkgEntry.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(VK_RETURN) then                              // if it's an enter key
    if not (ActiveControl is TVidaStringGrid) then begin    // if not on a TVidaStringGrid
      Key := #0;                                            // eat enter key
      Perform(WM_NEXTDLGCTL, 0, 0);                         // move to next control
      end
    else                                                    // it is a TVidaStringGrid
      with TVidaStringGrid(ActiveControl) do
        MoveToNextCell;
end;

procedure TfrmPkgEntry.grdPackageReadOnlyQuery(Sender: TObject; Col,
  Row: Integer; var Allow: Boolean);
begin
  if (Col = PE_COL_PKNO) then
    Allow := (Row <> (Sender as TVidaStringgrid).LastRow) or ((Sender as TVidaStringgrid).Editing)
  else
    Allow := (Col >= FIRST_LENGTH) and (Row <> (Sender as TVidaStringgrid).LastRow);
end;

procedure TfrmPkgEntry.cmbStdLenGrpChange(Sender: TObject);
begin
  // Get a list of standard lengths for the selected product length group
  if FGrpLengths = nil then
    FGrpLengths := TStringList.Create;
  dmcProduct.LoadGroupLengths(cmbStdLenGrp.ItemCode, FGrpLengths);

  // Hide all other length columns
  grdPackage.HideUnusedColumns;

// SetWidthForLengthCol;
end;

procedure TfrmPkgEntry.ProductListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if ProductList.Col = COL_PL_MATCH then
  Begin
   if ProductList.Cells[COL_PL_MATCH,ProductList.Row] = '1' then
    ProductList.Cells[COL_PL_MATCH,ProductList.Row]:= '0'
    else
    ProductList.Cells[COL_PL_MATCH,ProductList.Row]:= '1' ;

   if grdPackage.RowCount > ROW_HDR+1 then
    if StrToInt(grdPackage.Cells[PE_COL_PKNO,grdpackage.Row]) > 0 then
     GetMarkedLO_Lines(StrToInt(grdPackage.Cells[PE_COL_PKNO,grdpackage.Row])) ;
  End ;

end;

procedure TfrmPkgEntry.grdPackageSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
{     if ARow <> OldRow then
       if ARow > ROW_HDR then
        SetMatchColumnForPackageClicked(StrToIntDef(grdPackage.Cells[PE_COL_PKNO, ARow],0),
        grdPackage.Cells[PE_COL_SUPP, ARow]);
      OldRow:= ARow ;
 }
end;

end.





