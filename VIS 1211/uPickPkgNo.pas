unit uPickPkgNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, dxBar, dxBarExtItems, kbmMemTable, cxMaskEdit,
  cxCheckBox, cxCalendar, cxContainer,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, FMTBcd, DBClient, Provider, SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, System.Actions, siComp, siLngLnk;

const
  ProductAndLength = 1;
  MatchingProduct = 2;
  AddLOPkgsWithMatchingProduct = 3;
  ShowAllAddLOPkgs = 4;
  ShowTM = 5;

type

  TfPickPkgNo = class(TForm)
    grdPickPkgNosDBTableView1: TcxGridDBTableView;
    grdPickPkgNosLevel1: TcxGridLevel;
    grdPickPkgNos: TcxGrid;
    Panel1: TPanel;
    ds_SelectedPkgNo: TDataSource;
    grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn;
    grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn;
    grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn;
    grdPickPkgNosDBTableView1MARKERAD: TcxGridDBColumn;
    Panel2: TPanel;
    grdPickPkgNosDBTableView1AM3: TcxGridDBColumn;
    grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn;
    grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LabelProduct: TLabel;
    LabelLength: TLabel;
    LabelPIPName: TLabel;
    Label1: TLabel;
    LabelNoOfPkgsMarked: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbFilterOnLength: TcxCheckBox;
    ActionList1: TActionList;
    acPkgInfo: TAction;
    LabelOwnerTitle: TLabel;
    LabelOwner: TLabel;
    acMarkAll: TAction;
    acUnmarkAll: TAction;
    acShowAddLOPkgsWithMatchingProduct: TAction;
    acShowAllAddLOPkgs: TAction;
    acShowMatchingProductAndLength: TAction;
    acShowMatchingProduct: TAction;
    Label5: TLabel;
    LabelLONr: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    mtProduct: TkbmMemTable;
    mtProductProductNo: TIntegerField;
    dsProduct: TDataSource;
    mtProductProductDisplayName: TStringField;
    lcProductDisplayName: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    acShowPkgsWithSameActDimOnly: TAction;
    grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn;
    sq_PaketLista: TFDQuery;
    sq_PaketListaPackageNo: TIntegerField;
    sq_PaketListaLEVKOD: TStringField;
    sq_PaketListaproductno: TIntegerField;
    sq_PaketListaPcsPerLength: TStringField;
    sq_PaketListaAM3: TFloatField;
    sq_PaketListaSTYCK: TIntegerField;
    sq_PaketListaDateCreated: TSQLTimeStampField;
    sq_PaketListaNOOFLENGTHS: TIntegerField;
    sq_PaketListaProdukt: TStringField;
    cds_ProdInLager: TFDQuery;
    cds_ProdInLagerProductDisplayName: TStringField;
    cds_ProdInLagerProductNo: TIntegerField;
    grdPickPkgNosDBTableView1HTFStatus: TcxGridDBColumn;
    sq_PaketListaStatusHTF: TStringField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxLabel_Val: TcxLabel;
    sq_PaketListaLagergrupp: TStringField;
    grdPickPkgNosDBTableView1Lagergrupp: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    siLangLinked_fPickPkgNo: TsiLangLinked;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ds_SelectedPkgNoDataChange(Sender: TObject; Field: TField);
    procedure cbFilterOnLengthPropertiesChange(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acMarkAllExecute(Sender: TObject);
    procedure acUnmarkAllExecute(Sender: TObject);
    procedure acShowMatchingProductAndLengthExecute(Sender: TObject);
    procedure acShowMatchingProductExecute(Sender: TObject);
    procedure acShowAddLOPkgsWithMatchingProductExecute(Sender: TObject);
    procedure acShowAllAddLOPkgsExecute(Sender: TObject);
    procedure mtProductProductNoChange(Sender: TField);
    procedure acShowPkgsWithSameActDimOnlyExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    ButtonDown: Integer;
    procedure BuildSQL;
    procedure Refresh;
  public
    { Public declarations }
    ObjectType, LONo, ProductNo, ProductLengthNo, PIPNo: Integer;
    ALMM: String;
  end;

  // var fPickPkgNo: TfPickPkgNo;

implementation

uses dmsDataConn, dmsVidaSystem, UnitdmModule1, VidaUser, UnitPkgInfo;

{$R *.dfm}

procedure TfPickPkgNo.FormShow(Sender: TObject);
begin
  if (ProductLengthNo = 453) or (ProductLengthNo = 533) or
    (ProductLengthNo = 1960) or (ProductLengthNo = 1831) or
    (ProductLengthNo = 3187) or (ProductLengthNo = 3190) or
    (ProductLengthNo = -1) then
    cbFilterOnLength.Checked := False
  else
    cbFilterOnLength.Checked := True;
  Refresh;
  lcProductDisplayName.Visible := False;
  if ObjectType = 0 then
  Begin
    mtProduct.Active := False;
    cds_ProdInLager.ParamByName('PIPNo').AsInteger := PIPNo;
    mtProduct.Active := True;
    lcProductDisplayName.Visible := True;

  End;
  if dmsSystem.LoadGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdPickPkgNos.Name, grdPickPkgNosDBTableView1) = False
  then;
end;

procedure TfPickPkgNo.FormCreate(Sender: TObject);
begin
  with dmsSystem do
  Begin
    MarkedPkgs := 0;

  End;
end;

procedure TfPickPkgNo.ds_SelectedPkgNoDataChange(Sender: TObject;
  Field: TField);
begin
  with dmsSystem do
    LabelNoOfPkgsMarked.Caption := intToStr(MarkedPkgs);
end;

procedure TfPickPkgNo.BuildSQL;
Begin
  With sq_PaketLista.SQL do
  Begin
    // if lbShowMatchingProductAndLength.Down then
    if ButtonDown = ProductAndLength then

    Begin
      cxLabel_Val.Caption := 'Urval produkt && längd';
      Clear;
      Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,');
      Add('pt.productno,');
      Add('ptl.PcsPerLength,');
      Add('pt.Totalm3Actual AS AM3,');
      Add('pt.TotalNoOfPieces AS STYCK,');
      Add('pn.DateCreated,');
      Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,');
      Add('p.ProductDisplayName AS Produkt,');

      Add('CASE');
      Add('WHEN htf.Status = 1 THEN ' + QuotedStr('Modtaget'));
      Add('WHEN htf.Status = 2 THEN ' + QuotedStr('Klar til produktion'));
      Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato'));
      Add('WHEN htf.Status = 4 THEN ' + QuotedStr('Klar til afgang'));
      Add('WHEN htf.Status = 5 THEN ' + QuotedStr('Udleverat'));
      Add('End AS StatusHTF, LIP.LogicalInventoryName AS Lagergrupp');

      Add('From dbo.packagenumber pn');
      Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno');
      Add('Inner Join dbo.product p on p.productno = pt.productno');
      Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno');
      Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo');
      Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo');
      Add('and htf.prefix = pn.suppliercode');
      Add('WHERE');
      Add('pn.Status = 1');
      Add('AND LIP.PhysicalInventoryPointNo = ' + intToStr(PIPNo));
      Add('AND pt.productno = ' + intToStr(ProductNo));
      Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ');
      Add('pgrm.SupplierCode = pn.SupplierCode)');

      if cbFilterOnLength.Checked then
      Begin

        Add('and ' + ALMM +
          ' in (Select pl.ActualLengthMM from dbo.PackageTypeDetail ptd');
        Add('inner join dbo.ProductLength pl on pl.productlengthno = ptd.productlengthno');
        Add('Inner Join dbo.LogicalInventoryPoint LIP2 on LIP2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo');
        Add('WHERE');
        Add('ptd.packagetypeno = pn.packagetypeno');
        Add('AND LIP2.PhysicalInventoryPointNo = ' + intToStr(PIPNo));
        Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo)) ');

        {
          Add('and '+inttostr(productlengthno)+' in (Select ptd.productlengthno from dbo.PackageTypeDetail ptd') ;
          Add('inner join dbo.ProductLength pl on pl.productlengthno = ptd.productlengthno') ;
          Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
          Add('WHERE') ;
          Add('ptd.packagetypeno = pn.packagetypeno') ;
          Add('AND LIP.PhysicalInventoryPointNo = '+IntToStr(PIPNo)) ;
          Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo)) ') ;
        }
      End;
    End // lbShowMatchingProductAndLength
    else
      // if lbShowMatchingProduct.Down then
      if ButtonDown = MatchingProduct then
      Begin
        cxLabel_Val.Caption := 'Urval produkt';
        Clear;
        Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,');
        Add('pt.productno,');
        Add('ptl.PcsPerLength,');
        Add('pt.Totalm3Actual AS AM3,');
        Add('pt.TotalNoOfPieces AS STYCK,');
        Add('pn.DateCreated,');
        Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,');
        Add('p.ProductDisplayName AS Produkt,');
        Add('CASE');
        Add('WHEN htf.Status = 1 THEN ' + QuotedStr('Modtaget'));
        Add('WHEN htf.Status = 2 THEN ' + QuotedStr('Klar til produktion'));
        Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato'));
        Add('WHEN htf.Status = 4 THEN ' + QuotedStr('Klar til afgang'));
        Add('WHEN htf.Status = 5 THEN ' + QuotedStr('Udleverat'));
        Add('End AS StatusHTF, LIP.LogicalInventoryName AS Lagergrupp');
        Add('From dbo.packagenumber pn');
        Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno');
        Add('Inner Join dbo.product p on p.productno = pt.productno');
        Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno');
        Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo');
        Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo');
        Add('and htf.prefix = pn.suppliercode');
        Add('WHERE');
        Add('pn.Status = 1');
        Add('AND LIP.PhysicalInventoryPointNo = ' + intToStr(PIPNo));
        Add('AND pt.productno = ' + intToStr(ProductNo));
        Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ');
        Add('pgrm.SupplierCode = pn.SupplierCode)');
      End // lbShowMatchingProduct
      else
        // if lbShowAddLOPkgsWithMatchingProduct.Down then
        if ButtonDown = AddLOPkgsWithMatchingProduct then
        Begin
          cxLabel_Val.Caption := 'Urval add LO && produkt';
          Clear;
          Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,');
          Add('pt.productno,');
          Add('ptl.PcsPerLength,');
          Add('pt.Totalm3Actual AS AM3,');
          Add('pt.TotalNoOfPieces AS STYCK,');
          Add('pn.DateCreated,');
          Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,');
          Add('p.ProductDisplayName AS Produkt,');
          Add('CASE');
          Add('WHEN htf.Status = 1 THEN ' + QuotedStr('Modtaget'));
          Add('WHEN htf.Status = 2 THEN ' + QuotedStr('Klar til produktion'));
          Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato'));
          Add('WHEN htf.Status = 4 THEN ' + QuotedStr('Klar til afgang'));
          Add('WHEN htf.Status = 5 THEN ' + QuotedStr('Udleverat'));
          Add('End AS StatusHTF, LIP.LogicalInventoryName AS Lagergrupp');
          Add('From dbo.packagenumber pn');
          Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno');
          Add('Inner Join dbo.product p on p.productno = pt.productno');
          Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno');
          Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo');
          Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo');
          Add('and htf.prefix = pn.suppliercode');
          Add('WHERE');
          Add('pn.Status = 1');
          Add('AND LIP.PhysicalInventoryPointNo = ' + intToStr(PIPNo));
          Add('AND pt.productno = ' + intToStr(ProductNo));

          // Visa bara paket som fanns på tillhörande ADD LO
          Add('AND pn.PackageNo in (Select LD.PackageNo FROM');
          Add('dbo.SupplierShippingPlan SSP');
          Add('Inner Join dbo.LoadShippingPlan LS ON 	LS.ShippingPlanNo = SSP.ShippingPlanNo');
          Add('Inner Join dbo.LoadDetail LD             ON LD.LoadNo = LS.LoadNo');
          Add('AND LD.ShippingPlanNo = LS.ShippingPlanNo');
          Add('WHERE LD.SupplierCode = pn.SupplierCode');
          Add('AND SSP.LO_No = ' + intToStr(LONo) + ')');

          Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ');
          Add('pgrm.SupplierCode = pn.SupplierCode)');
        End // lbShowAddLOPkgsWithMatchingProduct
        else
          // if lbShowAllAddLOPkgs.Down then
          if ButtonDown = ShowAllAddLOPkgs then
          Begin
            cxLabel_Val.Caption := 'Urval add LO';
            Clear;
            Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,');
            Add('pt.productno,');
            Add('ptl.PcsPerLength,');
            Add('pt.Totalm3Actual AS AM3,');
            Add('pt.TotalNoOfPieces AS STYCK,');
            Add('pn.DateCreated,');
            Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,');
            Add('p.ProductDisplayName AS Produkt,');
            Add('CASE');
            Add('WHEN htf.Status = 1 THEN ' + QuotedStr('Modtaget'));
            Add('WHEN htf.Status = 2 THEN ' + QuotedStr('Klar til produktion'));
            Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato'));
            Add('WHEN htf.Status = 4 THEN ' + QuotedStr('Klar til afgang'));
            Add('WHEN htf.Status = 5 THEN ' + QuotedStr('Udleverat'));
            Add('End AS StatusHTF, LIP.LogicalInventoryName AS Lagergrupp');
            Add('From dbo.packagenumber pn');
            Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno');
            Add('Inner Join dbo.product p on p.productno = pt.productno');
            Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno');
            Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo');
            Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo');
            Add('and htf.prefix = pn.suppliercode');
            Add('WHERE');
            Add('pn.Status = 1');
            Add('AND LIP.PhysicalInventoryPointNo = ' + intToStr(PIPNo));
            // Add('AND pt.productno = '+IntToStr(ProductNo)) ;

            // Visa bara paket som fanns på tillhörande ADD LO
            Add('AND pn.PackageNo in (Select LD.PackageNo FROM');
            Add('dbo.SupplierShippingPlan SSP');
            Add('Inner Join dbo.LoadShippingPlan LS ON 	LS.ShippingPlanNo = SSP.ShippingPlanNo');
            Add('Inner Join dbo.LoadDetail LD             ON LD.LoadNo = LS.LoadNo');
            Add('AND LD.ShippingPlanNo = LS.ShippingPlanNo');
            Add('WHERE LD.SupplierCode = pn.SupplierCode');
            Add('AND SSP.LO_No = ' + intToStr(LONo) + ')');

            Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ');
            Add('pgrm.SupplierCode = pn.SupplierCode)');
          End
          else
            // if lbShowTM.Down then
            if ButtonDown = ShowTM then
            Begin
              cxLabel_Val.Caption := 'Urval TM';
              Clear;
              Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,');
              Add('pt.productno,');
              Add('ptl.PcsPerLength,');
              Add('pt.Totalm3Actual AS AM3,');
              Add('pt.TotalNoOfPieces AS STYCK,');
              Add('pn.DateCreated,');
              Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,');
              Add('p.ProductDisplayName AS Produkt,');
              Add('CASE');
              Add('WHEN htf.Status = 1 THEN ' + QuotedStr('Modtaget'));
              Add('WHEN htf.Status = 2 THEN ' +
                QuotedStr('Klar til produktion'));
              Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato'));
              Add('WHEN htf.Status = 4 THEN ' + QuotedStr('Klar til afgang'));
              Add('WHEN htf.Status = 5 THEN ' + QuotedStr('Udleverat'));
              Add('End AS StatusHTF, LIP.LogicalInventoryName AS Lagergrupp');
              Add('From dbo.packagenumber pn');
              Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno');
              Add('Inner Join dbo.product p on p.productno = pt.productno');
              Add('Inner Join dbo.productGroup pg on pg.productGroupno = p.productGroupno');
              Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno');
              Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo');
              Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo');
              Add('and htf.prefix = pn.suppliercode');
              Add('WHERE');
              Add('pn.Status = 1');
              Add('AND LIP.PhysicalInventoryPointNo = ' + intToStr(PIPNo));
              Add('AND pg.ActualThicknessMM in (Select pg2.ActualThicknessMM ');
              Add('FROM dbo.productGroup pg2');
              Add('Inner Join dbo.product p2 on p2.productGroupno = pg2.productGroupno');
              Add('WHERE p2.productno = ' + intToStr(ProductNo));
              Add('AND pg2.ActualWidthMM = pg.ActualWidthMM)');

              Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ');
              Add('pgrm.SupplierCode = pn.SupplierCode)');
            End;
    // if ThisUser.UserID = 8 then SaveToFile('sq_PaketLista.TXT') ;
  End; // With
End;

procedure TfPickPkgNo.Refresh;
Var
  Save_Cursor: TCursor;
  x: Integer;
begin
  with dmsSystem do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    mtSelectedPkgNo.DisableControls;
    Try
      mtSelectedPkgNo.Active := False;
      BuildSQL;

      mtSelectedPkgNo.Active := True;
      sq_PaketLista.Open;
      sq_PaketLista.First;
      While not sq_PaketLista.Eof do
      Begin
        mtSelectedPkgNo.insert;
        For x := 0 to 7 do
          mtSelectedPkgNo.Fields.Fields[x].AsVariant :=
            sq_PaketLista.Fields.Fields[x].AsVariant;
        mtSelectedPkgNoProdukt.AsString := sq_PaketListaProdukt.AsString;
        mtSelectedPkgNoHTFStatus.AsString := sq_PaketListaStatusHTF.AsString;

        mtSelectedPkgNoLagergrupp.AsString := sq_PaketListaLagergrupp.AsString;

        mtSelectedPkgNo.post;
        sq_PaketLista.Next;
      End;
    finally
      sq_PaketLista.Close;
      mtSelectedPkgNo.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End;
end;

procedure TfPickPkgNo.cbFilterOnLengthPropertiesChange(Sender: TObject);
begin
  Refresh;
end;

procedure TfPickPkgNo.acPkgInfoExecute(Sender: TObject);
var
  frmPkgInfo: TfrmPkgInfo;
begin
  with dmsSystem do
  Begin
    frmPkgInfo := TfrmPkgInfo.Create(Nil);
    Try
      frmPkgInfo.PackageNo := mtSelectedPkgNoPAKETNR.AsInteger;
      frmPkgInfo.SupplierCode := mtSelectedPkgNoLEVKOD.AsString;
      frmPkgInfo.ShowModal;
    Finally
      FreeAndNil(frmPkgInfo);
    End;
  End;
end;

procedure TfPickPkgNo.FormDestroy(Sender: TObject);
begin
  with dmsSystem do
    mtSelectedPkgNo.Active := False;
  mtProduct.Active := False;
end;

procedure TfPickPkgNo.acMarkAllExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  With dmsSystem do
  Begin
    MarkedPkgs := 0;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    mtSelectedPkgNo.DisableControls;
    Try
      mtSelectedPkgNo.First;
      While not mtSelectedPkgNo.Eof do
      Begin
        mtSelectedPkgNo.Edit;
        mtSelectedPkgNoMARKERAD.AsInteger := 1;
        mtSelectedPkgNo.post;
        mtSelectedPkgNo.Next;
      End;
    finally
      mtSelectedPkgNo.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End;
End;

procedure TfPickPkgNo.acUnmarkAllExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  with dmsSystem do
  Begin
    MarkedPkgs := 0;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    mtSelectedPkgNo.DisableControls;
    Try
      mtSelectedPkgNo.First;
      While not mtSelectedPkgNo.Eof do
      Begin
        mtSelectedPkgNo.Edit;
        mtSelectedPkgNoMARKERAD.AsInteger := 0;
        mtSelectedPkgNo.post;
        mtSelectedPkgNo.Next;
      End;
    finally
      mtSelectedPkgNo.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End;
End;

procedure TfPickPkgNo.acShowMatchingProductAndLengthExecute(Sender: TObject);
begin
  ButtonDown := ProductAndLength;
  Refresh;
end;

procedure TfPickPkgNo.acShowMatchingProductExecute(Sender: TObject);
begin
  ButtonDown := MatchingProduct;
  Refresh;
end;

procedure TfPickPkgNo.acShowAddLOPkgsWithMatchingProductExecute
  (Sender: TObject);
begin
  ButtonDown := AddLOPkgsWithMatchingProduct;
  Refresh;
end;

procedure TfPickPkgNo.acShowAllAddLOPkgsExecute(Sender: TObject);
begin
  ButtonDown := ShowAllAddLOPkgs;
  Refresh;
end;

procedure TfPickPkgNo.mtProductProductNoChange(Sender: TField);
begin
  ProductNo := mtProductProductNo.AsInteger;
  LabelProduct.Caption := lcProductDisplayName.Text;
  Refresh;
end;

procedure TfPickPkgNo.acShowPkgsWithSameActDimOnlyExecute(Sender: TObject);
begin
  ButtonDown := ShowTM;
  Refresh;
end;

procedure TfPickPkgNo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  dmsSystem.StoreGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdPickPkgNos.Name, grdPickPkgNosDBTableView1);
end;

end.
