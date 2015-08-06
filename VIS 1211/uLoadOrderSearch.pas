unit uLoadOrderSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, ActnList,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLabel, cxImageComboBox, ImgList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxNavigator, System.Actions, siComp, siLngLnk;

type
  TfLoadOrderSearch = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    editSearch: TEdit;
    Panel2: TPanel;
    ActionList1: TActionList;
    atOK: TAction;
    ds_SearchOrder: TDataSource;
    grdLoadOrderSearchDBTableView1: TcxGridDBTableView;
    grdLoadOrderSearchLevel1: TcxGridLevel;
    grdLoadOrderSearch: TcxGrid;
    EditSearchCSDRef: TEdit;
    Label2: TLabel;
    EditSearchLO: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Button1: TButton;
    grdLoadOrderSearchDBTableView1Kund: TcxGridDBColumn;
    grdLoadOrderSearchDBTableView1LO: TcxGridDBColumn;
    grdLoadOrderSearchDBTableView1Referens: TcxGridDBColumn;
    grdLoadOrderSearchDBTableView1Produkt: TcxGridDBColumn;
    grdLoadOrderSearchDBTableView1LO_typ: TcxGridDBColumn;
    grdLoadOrderSearchDBTableView1LO_ID: TcxGridDBColumn;
    grdLoadOrderSearchDBTableView1Leverantr: TcxGridDBColumn;
    ImageList1: TImageList;
    grdLoadOrderSearchDBTableView1Status: TcxGridDBColumn;
    grdLoadOrderSearchDBTableView1Slutkund: TcxGridDBColumn;
    EditSlutkund: TEdit;
    Label4: TLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cds_SearchOrder: TFDQuery;
    cds_SearchOrderKund: TStringField;
    cds_SearchOrderLO: TIntegerField;
    cds_SearchOrderReferens: TStringField;
    cds_SearchOrderProdukt: TStringField;
    cds_SearchOrderLeverantor: TStringField;
    cds_SearchOrderStatus: TIntegerField;
    cds_SearchOrderSlutkund: TStringField;
    cds_SearchOrderLO_typ: TStringField;
    cds_SearchOrderLO_ID: TIntegerField;
    siLangLinked_fLoadOrderSearch: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure atOKExecute(Sender: TObject);
    procedure atOKUpdate(Sender: TObject);

    procedure EditSearchCSDRefKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSearchLOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdLoadOrderSearchDBTableView1KeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure editSearchEnter(Sender: TObject);
    procedure editSearchExit(Sender: TObject);
    procedure EditSearchCSDRefEnter(Sender: TObject);
    procedure EditSearchCSDRefExit(Sender: TObject);
    procedure EditSearchLOEnter(Sender: TObject);
    procedure EditSearchLOExit(Sender: TObject);
    procedure editSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSlutkundKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSlutkundEnter(Sender: TObject);
    procedure EditSlutkundExit(Sender: TObject);
  private
    SelectOK: Boolean;
    FLONo: Integer;

    procedure BuildSQL(const LO, LoadNo: Integer;
      const CDS_REF, SlutKund: String);
  public
    property LONo: Integer read FLONo;
  end;

function OpenLoadOrderSearch(var LONr: Integer): Boolean;

// var fFreightAvrSearch: TfFreightAvrSearch;

implementation

{$R *.dfm}

uses dmsDataConn, VidaConst, dmsVidaSystem, VidaUser, dmsVidaContact, udmLanguage;

// -----------------------------------------------------------------------
function OpenLoadOrderSearch(var LONr: Integer): Boolean;
begin
  Result := False;
  with TfLoadOrderSearch.Create(Application) do
  begin
    { FSearchOption := SearchOption;
      if FSearchOption = cSearchLO then
      begin
      Label1.Caption := 'LO Nr:';
      Caption := 'Sök LO Nr';
      end
      else
      if FSearchOption = cSearchALO then
      begin
      Label1.Caption := 'Add LO No:';
      Caption := 'Add LO No Search';
      end
      else
      if FSearchOption = cSearchReferens then
      begin
      Label1.Caption := 'Referens:';
      Caption := 'Sök referens';
      end; }

    if ShowModal = mrOk then
    begin
      Result := True;
      LONr := cds_SearchOrderLO.AsInteger;

      { if FSearchOption = cSearchLO then
        Begin
        if cds_SearchOrderALO.AsInteger > 0 then
        PLONr:= cds_SearchOrderALO.AsInteger
        else
        PLONr:= LONO ;
        End
        else
        if FSearchOption = cSearchReferens then
        Begin
        if cds_SearchOrderALO.AsInteger > 0 then
        PLONr:= cds_SearchOrderALO.AsInteger
        else
        PLONr:= LONO ;
        End
        else
        PLONr := 0 ; }

      { if cds_SearchOrderALO.AsInteger > 0 then
        PLONr:= cds_SearchOrderALO.AsInteger
        else
        PLONr := 0 ; }

      if not(cds_SearchOrder.bof and cds_SearchOrder.eof) then
      Begin
        // grdSearchOrder.SetFocus ;
        SelectOK := True;
      End;
      if SelectOK = False then
        LONr := 0;
    end;
    Free;
  end;
end;

// -----------------------------------------------------------------------
procedure TfLoadOrderSearch.FormCreate(Sender: TObject);
begin
  editSearch.Text := '';
  SelectOK := False;

  // sq_SearchOrder.Close;
end;

procedure TfLoadOrderSearch.atOKExecute(Sender: TObject);
begin
  with cds_SearchOrder do
  begin
    if (not Active) or (eof and bof) then
      Exit;
    FLONo := FieldByName('LO').AsInteger;
    // FLONo       :=  FieldByName('LO').AsInteger;
    // FLONo       :=  FieldByName('LO').AsInteger;
    // FOrderNoText:=  FieldByName('OrderNoText').AsString ;
    ModalResult := mrOk;
  end;
end;

// -----------------------------------------------------------------------
procedure TfLoadOrderSearch.atOKUpdate(Sender: TObject);
begin
  with cds_SearchOrder do
    (Sender as TAction).Enabled := Active and (not(bof and eof));
end;

procedure TfLoadOrderSearch.EditSearchCSDRefKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if Length(Trim(EditSearchCSDRef.Text)) > 0 then
    BuildSQL(-1, -1, EditSearchCSDRef.Text, '');
end;

procedure TfLoadOrderSearch.EditSearchLOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if StrToIntDef(EditSearchLO.Text, 0) > 0 then
    BuildSQL(StrToIntDef(EditSearchLO.Text, 0), -1, '', '');
end;

procedure TfLoadOrderSearch.grdLoadOrderSearchDBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    atOKExecute(Sender);
end;

procedure TfLoadOrderSearch.FormShow(Sender: TObject);
begin
  if dmsSystem.LoadGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdLoadOrderSearchDBTableView1.Name,
    grdLoadOrderSearchDBTableView1) = False then;
end;

procedure TfLoadOrderSearch.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmsSystem.StoreGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdLoadOrderSearchDBTableView1.Name,
    grdLoadOrderSearchDBTableView1);
end;

procedure TfLoadOrderSearch.editSearchEnter(Sender: TObject);
begin
  editSearch.Color := clYellow;
end;

procedure TfLoadOrderSearch.editSearchExit(Sender: TObject);
begin
  editSearch.Color := clWindow;
end;

procedure TfLoadOrderSearch.EditSearchCSDRefEnter(Sender: TObject);
begin
  EditSearchCSDRef.Color := clYellow;
end;

procedure TfLoadOrderSearch.EditSearchCSDRefExit(Sender: TObject);
begin
  EditSearchCSDRef.Color := clWindow;
end;

procedure TfLoadOrderSearch.EditSearchLOEnter(Sender: TObject);
begin
  EditSearchLO.Color := clYellow;
end;

procedure TfLoadOrderSearch.EditSearchLOExit(Sender: TObject);
begin
  EditSearchLO.Color := clWindow;
end;

procedure TfLoadOrderSearch.BuildSQL(const LO, LoadNo: Integer;
  const CDS_REF, SlutKund: String);
Var
  Save_Cursor: TCursor;
  pCDS_REF, pSlutKund: String;
begin
  pCDS_REF := '%' + CDS_REF + '%';
  pSlutKund := '%' + SlutKund + '%';
  SelectOK := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    // grdSearchOrderDBTableView1LO.Visible         := True ;
    // grdSearchOrderDBTableView1Reference.Visible  := True ;
    // grdSearchOrderDBTableView1ALO.Visible        := False ;
    with cds_SearchOrder do
    begin
      cds_SearchOrder.Active := False;
      SQL.Clear;
      SQL.Add('Select distinct kund.ClientName AS Kund, ssp.ShippingPlanNo AS LO,');
      SQL.Add('csd.Reference AS Referens, ssp.ProductDescription AS Produkt, Verk.SearchName AS Leverantör, ssp.ShippingPlanStatus AS Status,');
      SQL.Add('SlutKund.ClientName AS Slutkund,');
      SQL.Add('Case');
      SQL.Add('WHEN ssp.ObjectType = 0 THEN ' + QuotedStr('Interna'));
      SQL.Add('WHEN ssp.ObjectType = 1 THEN ' + QuotedStr('Add LO'));
      SQL.Add('WHEN ssp.ObjectType = 2 THEN ' + QuotedStr('Externa') +
        ' END AS LO_typ, ssp.SupplierShipPlanObjectNo AS LO_ID');
      SQL.Add('FROM dbo.SupplierShippingPlan ssp');
      SQL.Add('Inner Join dbo.Client kund on kund.ClientNo = ssp.CustomerNo');
      SQL.Add('Inner Join dbo.Client Verk on Verk.ClientNo = ssp.SupplierNo');
      SQL.Add('Left Outer Join dbo.CustomerShippingPlanDetails csd');
      SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = csd.ShippingPlanNo');
      SQL.Add('Inner Join dbo.Client SlutKund on SlutKund.ClientNo = csh.CustomerNo');
      SQL.Add('on csd.CustShipPlanDetailObjectNo = ssp.CustShipPlanDetailObjectNo');
      SQL.Add('Left Outer Join dbo.LoadShippingPlan LSP on LSP.ShippingPlanNo = ssp.ShippingPlanNo');
      if LO > 0 then
        SQL.Add('Where SSP.ShippingPlanNo = ' + IntToStr(LO));
      if LoadNo > 0 then
        SQL.Add('Where LSP.LoadNo = ' + IntToStr(LoadNo));
      if Length(Trim(CDS_REF)) > 0 then
        SQL.Add('Where csd.Reference Like ' + QuotedStr(pCDS_REF));

      if Length(Trim(SlutKund)) > 0 then
        SQL.Add('Where SlutKund.ClientName Like ' + QuotedStr(pSlutKund));

      if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
        SQL.Add('AND ssp.SupplierNo = ' + IntToStr(ThisUser.CompanyNo));

      // sql.SaveToFile('cds_SearchOrder.txt');

      try
        cds_SearchOrder.Active := True;
      except
      end;
      if not(cds_SearchOrder.bof and cds_SearchOrder.eof) then
      Begin
        grdLoadOrderSearch.SetFocus;
        SelectOK := True;
      End;
    end;

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfLoadOrderSearch.editSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if StrToIntDef(editSearch.Text, 0) > 0 then
    BuildSQL(-1, StrToIntDef(editSearch.Text, 0), '', '');
end;

procedure TfLoadOrderSearch.EditSlutkundKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if Length(Trim(EditSlutkund.Text)) > 0 then
    BuildSQL(-1, -1, '', EditSlutkund.Text);
end;

procedure TfLoadOrderSearch.EditSlutkundEnter(Sender: TObject);
begin
  EditSlutkund.Color := clYellow;
end;

procedure TfLoadOrderSearch.EditSlutkundExit(Sender: TObject);
begin
  EditSlutkund.Color := clWindow;
end;

end.
