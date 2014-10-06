unit uFreightAvrSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, ActnList,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLabel, cxImageComboBox, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxNavigator, System.Actions;

type
  TfFreightAvrSearch = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    editSearch: TEdit;
    Panel2: TPanel;
    ActionList1: TActionList;
    atOK: TAction;
    ds_SearchOrder: TDataSource;
    grdFreightAvrSearchDBTableView1: TcxGridDBTableView;
    grdFreightAvrSearchLevel1: TcxGridLevel;
    grdFreightAvrSearch: TcxGrid;
    EditSearchAvrNr: TEdit;
    Label2: TLabel;
    EditSearchLO: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Button1: TButton;
    grdFreightAvrSearchDBTableView1AvrNr: TcxGridDBColumn;
    grdFreightAvrSearchDBTableView1Verk: TcxGridDBColumn;
    grdFreightAvrSearchDBTableView1Speditr: TcxGridDBColumn;
    EditSearchYourInvoiceNo: TEdit;
    Label4: TLabel;
    cds_SearchOrder: TFDQuery;
    cds_SearchOrderAvrNr: TIntegerField;
    cds_SearchOrderVerk: TStringField;
    cds_SearchOrderSpeditör: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure atOKExecute(Sender: TObject);
    procedure atOKUpdate(Sender: TObject);

    procedure EditSearchAvrNrKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSearchLOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdFreightAvrSearchDBTableView1KeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure editSearchEnter(Sender: TObject);
    procedure editSearchExit(Sender: TObject);
    procedure EditSearchAvrNrEnter(Sender: TObject);
    procedure EditSearchAvrNrExit(Sender: TObject);
    procedure EditSearchLOEnter(Sender: TObject);
    procedure EditSearchLOExit(Sender: TObject);
    procedure editSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSearchYourInvoiceNoEnter(Sender: TObject);
    procedure EditSearchYourInvoiceNoExit(Sender: TObject);
    procedure EditSearchYourInvoiceNoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    SelectOK: Boolean;
    FAvrNr: Integer;
    procedure BuildSQL(const LO, LoadNo, AvrNr: Integer;
      const YourInvoiceNo: String);
  public
    property AvrNo: Integer read FAvrNr;
  end;

function OpenAvrSearch(var AvrNr: Integer): Boolean;

// var fFreightAvrSearch: TfFreightAvrSearch;

implementation

{$R *.dfm}

uses dmsDataConn, VidaConst, dmsVidaSystem, VidaUser;

// -----------------------------------------------------------------------
function OpenAvrSearch(var AvrNr: Integer): Boolean;
begin
  Result := False;
  with TfFreightAvrSearch.Create(Application) do
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
      AvrNr := cds_SearchOrderAvrNr.AsInteger;

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
        AvrNr := 0;

    end;
    Free;
  end;
end;

// -----------------------------------------------------------------------
procedure TfFreightAvrSearch.FormCreate(Sender: TObject);
begin
  editSearch.Text := '';
  SelectOK := False;

  // sq_SearchOrder.Close;
end;

procedure TfFreightAvrSearch.atOKExecute(Sender: TObject);
begin
  with cds_SearchOrder do
  begin
    if (not Active) or (eof and bof) then
      Exit;
    FAvrNr := FieldByName('AvrNr').AsInteger;
    // FLONo       :=  FieldByName('LO').AsInteger;
    // FLONo       :=  FieldByName('LO').AsInteger;
    // FOrderNoText:=  FieldByName('OrderNoText').AsString ;
    ModalResult := mrOk;
  end;
end;

// -----------------------------------------------------------------------
procedure TfFreightAvrSearch.atOKUpdate(Sender: TObject);
begin
  with cds_SearchOrder do
    (Sender as TAction).Enabled := Active and (not(bof and eof));
end;

procedure TfFreightAvrSearch.EditSearchAvrNrKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if StrToIntDef(EditSearchAvrNr.Text, 0) > 0 then
    BuildSQL(-1, -1, StrToIntDef(EditSearchAvrNr.Text, 0), '');
end;

procedure TfFreightAvrSearch.EditSearchLOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if StrToIntDef(EditSearchLO.Text, 0) > 0 then
    BuildSQL(StrToIntDef(EditSearchLO.Text, 0), -1, -1, '');
end;

procedure TfFreightAvrSearch.grdFreightAvrSearchDBTableView1KeyUp
  (Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    atOKExecute(Sender);
end;

procedure TfFreightAvrSearch.FormShow(Sender: TObject);
begin
  if dmsSystem.LoadGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdFreightAvrSearchDBTableView1.Name,
    grdFreightAvrSearchDBTableView1) = False then;
end;

procedure TfFreightAvrSearch.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmsSystem.StoreGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdFreightAvrSearchDBTableView1.Name,
    grdFreightAvrSearchDBTableView1);
end;

procedure TfFreightAvrSearch.editSearchEnter(Sender: TObject);
begin
  editSearch.Color := clYellow;
end;

procedure TfFreightAvrSearch.editSearchExit(Sender: TObject);
begin
  editSearch.Color := clWindow;
end;

procedure TfFreightAvrSearch.EditSearchAvrNrEnter(Sender: TObject);
begin
  EditSearchAvrNr.Color := clYellow;
end;

procedure TfFreightAvrSearch.EditSearchAvrNrExit(Sender: TObject);
begin
  EditSearchAvrNr.Color := clWindow;
end;

procedure TfFreightAvrSearch.EditSearchLOEnter(Sender: TObject);
begin
  EditSearchLO.Color := clYellow;
end;

procedure TfFreightAvrSearch.EditSearchLOExit(Sender: TObject);
begin
  EditSearchLO.Color := clWindow;
end;

procedure TfFreightAvrSearch.BuildSQL(const LO, LoadNo, AvrNr: Integer;
  const YourInvoiceNo: String);
Var
  Save_Cursor: TCursor;
begin
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
      SQL.Add('SELECT distinct LFCH.AvrakningsNo AS AvrNr, Verk.clientName AS Verk, shipper.clientName AS Speditör');
      SQL.Add('FROM   dbo.LoadFreightCostHeader LFCH');
      SQL.Add('Inner join Client Shipper on shipper.clientno = LFCH.LocalShipperNo');
      SQL.Add('Inner join Client Verk on Verk.clientno = LFCH.VerkNo');
      SQL.Add('Inner Join dbo.LoadFreightCost LFC on LFC.AvrakningsNo = LFCH.AvrakningsNo');
      SQL.Add('Inner Join dbo.LoadShippingPlan LSP on LSP.LoadNo = LFC.LoadNo');
      if LO > 0 then
        SQL.Add('Where LSP.ShippingPlanNo = ' + IntToStr(LO));
      if LoadNo > 0 then
        SQL.Add('Where LSP.LoadNo = ' + IntToStr(LoadNo));
      if AvrNr > 0 then
        SQL.Add('Where LFCH.AvrakningsNo = ' + IntToStr(AvrNr));
      if Length(YourInvoiceNo) > 0 then
        SQL.Add('Where LFCH.ShippersInvoiceNo LIKE ' +
          QuotedStr('%' + YourInvoiceNo + '%'));

      // sql.SaveToFile('cds_SearchOrder.txt');

      try
        cds_SearchOrder.Active := True;
      except
      end;
      if not(cds_SearchOrder.bof and cds_SearchOrder.eof) then
      Begin
        grdFreightAvrSearch.SetFocus;
        SelectOK := True;
      End;
    end;

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfFreightAvrSearch.editSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if StrToIntDef(editSearch.Text, 0) > 0 then
    BuildSQL(-1, StrToIntDef(editSearch.Text, 0), -1, '');
end;

procedure TfFreightAvrSearch.EditSearchYourInvoiceNoEnter(Sender: TObject);
begin
  EditSearchYourInvoiceNo.Color := clYellow;
end;

procedure TfFreightAvrSearch.EditSearchYourInvoiceNoExit(Sender: TObject);
begin
  EditSearchYourInvoiceNo.Color := clWindow;
end;

procedure TfFreightAvrSearch.EditSearchYourInvoiceNoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if Length(EditSearchYourInvoiceNo.Text) > 0 then
    BuildSQL(-1, -1, -1, EditSearchYourInvoiceNo.Text);
end;

end.
