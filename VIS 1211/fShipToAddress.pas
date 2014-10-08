unit fShipToAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  StdCtrls, ExtCtrls, Menus,
  ImgList, ActnList, ComCtrls, ToolWin, Db, fDBForm, dxmdaset, Buttons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLabel, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, dxBar,
  dxBarExtItems, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  System.Actions, siComp, siLngLnk;

type
  TfrmShipToAddress = class(TForm)
    ActionList2: TActionList;
    atSave: TAction;
    atAdd: TAction;
    atDelete: TAction;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Delete1: TMenuItem;
    paneAddressDetails: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dxMemData1: TdxMemData;
    dxMemData1CityNo: TIntegerField;
    dxMemData1CountryNo: TIntegerField;
    DataSource1: TDataSource;
    btnFind: TBitBtn;
    EditAddress: TEdit;
    EditAddLine: TEdit;
    EditState: TEdit;
    EditFax: TEdit;
    EditPhone: TEdit;
    EditPostal: TEdit;
    Panel2: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    bbClearFields: TBitBtn;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    grdSearchResultGridDBTableView1: TcxGridDBTableView;
    grdSearchResultGridLevel1: TcxGridLevel;
    grdSearchResultGrid: TcxGrid;
    grdSearchResultGridDBTableView1AddressNo: TcxGridDBColumn;
    grdSearchResultGridDBTableView1AddressName: TcxGridDBColumn;
    grdSearchResultGridDBTableView1AddressLine1: TcxGridDBColumn;
    grdSearchResultGridDBTableView1AddressLine2: TcxGridDBColumn;
    grdSearchResultGridDBTableView1AddressLine3: TcxGridDBColumn;
    grdSearchResultGridDBTableView1AddressLine4: TcxGridDBColumn;
    grdSearchResultGridDBTableView1CityNo: TcxGridDBColumn;
    grdSearchResultGridDBTableView1StateOrProvince: TcxGridDBColumn;
    grdSearchResultGridDBTableView1CountryNo: TcxGridDBColumn;
    grdSearchResultGridDBTableView1AddressType: TcxGridDBColumn;
    grdSearchResultGridDBTableView1Phone1: TcxGridDBColumn;
    grdSearchResultGridDBTableView1Phone2: TcxGridDBColumn;
    grdSearchResultGridDBTableView1Phone3: TcxGridDBColumn;
    grdSearchResultGridDBTableView1Fax: TcxGridDBColumn;
    grdSearchResultGridDBTableView1CreatedUser: TcxGridDBColumn;
    grdSearchResultGridDBTableView1ModifiedUser: TcxGridDBColumn;
    grdSearchResultGridDBTableView1DateCreated: TcxGridDBColumn;
    grdSearchResultGridDBTableView1Email: TcxGridDBColumn;
    grdSearchResultGridDBTableView1PostalCode: TcxGridDBColumn;
    grdSearchResultGridDBTableView1SequenceNo: TcxGridDBColumn;
    grdSearchResultGridDBTableView1Country: TcxGridDBColumn;
    grdSearchResultGridDBTableView1City: TcxGridDBColumn;
    dblookcombCity: TcxDBLookupComboBox;
    dbeditAddressName: TcxDBTextEdit;
    dbeditPostalCode: TcxDBTextEdit;
    dbeditStateOrProvince: TcxDBTextEdit;
    dbeditPhone1: TcxDBTextEdit;
    dbeditPhone2: TcxDBTextEdit;
    dbeditPhone3: TcxDBTextEdit;
    dbeditFax: TcxDBTextEdit;
    eEmail: TcxDBTextEdit;
    dblookcombCountry: TcxDBLookupComboBox;
    lcOrt: TcxDBLookupComboBox;
    lcLand: TcxDBLookupComboBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acClose: TAction;
    dbeditAddrLine1: TcxDBTextEdit;
    dbeditAddrLine2: TcxDBTextEdit;
    dbeditAddrLine3: TcxDBTextEdit;
    dbeditAddrLine4: TcxDBTextEdit;
    Label29: TLabel;
    acSearchAddress: TAction;
    acClearFields: TAction;
    acOKToSelect: TAction;
    acCancelChanges: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    siLangLinked_frmShipToAddress: TsiLangLinked;
    procedure atAddExecute(Sender: TObject);
    procedure atDeleteExecute(Sender: TObject);
    procedure atDeleteUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure atSaveExecute(Sender: TObject);
    procedure atSaveUpdate(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure dblookcombCityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acCloseExecute(Sender: TObject);
    procedure dbeditPhone1KeyPress(Sender: TObject; var Key: Char);
    procedure lcLandKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acSearchAddressExecute(Sender: TObject);
    procedure acClearFieldsExecute(Sender: TObject);
    procedure acOKToSelectUpdate(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure dblookcombCountryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    // FFiltered: Boolean;
    // FAddressNo : Integer ;
    function IsDataSaved: Boolean;
    procedure SearchAddress(const AddressNo: Integer);
  public

  end;

procedure OpenShipToAddressForm(Var AddressName: String;
  Var AddressNo: Integer);

var
  frmShipToAddress: TfrmShipToAddress;

implementation

{$R *.dfm}

uses dmsVidaContact, VidaUser, uCountry, uCity;
// fDataSetEdit, uGetTable, uRecUsed, SDEngine;

// ---------------------------------------------------------------
procedure OpenShipToAddressForm(Var AddressName: String;
  Var AddressNo: Integer);
begin
  with TfrmShipToAddress.Create(NIL) do
  begin
    if AddressNo > 0 then
      SearchAddress(AddressNo);
    if ShowModal = mrOK then
    Begin
      AddressNo := dmsContact.cds_AdrSearchAddressNo.AsInteger;
      AddressName := dmsContact.cds_AdrSearchAddressName.AsString;
    End
    else
    Begin
      AddressNo := -1;
      AddressName := '-';
    End;
    Free;
  end;
end;

// ---------------------------------------------------------------
procedure TfrmShipToAddress.FormCreate(Sender: TObject);
begin
  inherited;
  dxMemData1.Open;
  dxMemData1.Append;
  // FDataSetCount := 1;
  // FDatasets[1] := dmContact.dataShipToAddress;

  // FFiltered := dmsContact.cds_AdrSearch.Filtered;
  // dmsContact.cds_AdrSearch.Filtered := False;

  // dbgridShiptoAddress.DataBinding.DataSource := dmsContact.ds_AdrSearch ;

  dbeditAddressName.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dbeditAddrLine1.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dbeditAddrLine2.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dbeditAddrLine3.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dbeditAddrLine4.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dblookcombCity.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dblookcombCity.Properties.ListSource := dmsContact.ds_City;
  dbeditStateOrProvince.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dblookcombCountry.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dblookcombCountry.Properties.ListSource := dmsContact.ds_Country;
  dbeditPhone1.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dbeditPhone2.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dbeditPhone3.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dbeditFax.DataBinding.DataSource := dmsContact.ds_AdrSearch;
  dbeditPostalCode.DataBinding.DataSource := dmsContact.ds_AdrSearch;

  eEmail.DataBinding.DataSource := dmsContact.ds_AdrSearch;

  // dbgridShipToAddress.LoadFromIniFile(
  // ChangeFileExt(pplication.ExeName, '.'+IntToStr(dmContact.UserID)));

  // dbgridShipToAddress.OptionsDB := dbgridShipToAddress.OptionsDB + [edgoLoadAllRecords];
  // dbgridShipToAddress.OptionsDB := dbgridShipToAddress.OptionsDB - [edgoLoadAllRecords];
  // dbgridShipToAddress.OptionsBehavior := dbgridShipToAddress.OptionsBehavior + [edgoAutoSort];
  // dbgridShipToAddressCity.Sorted := csUp;
end;

// ---------------------------------------------------------------
procedure TfrmShipToAddress.atAddExecute(Sender: TObject);
begin
  // dbgridShipToAddress.DataSource.DataSet.Append;
  if dmsContact.cds_AdrSearch.Active = False then
    dmsContact.cds_AdrSearch.Active := True;
  dmsContact.cds_AdrSearch.Insert;
  dbeditAddressName.SetFocus;
end;

// ---------------------------------------------------------------
procedure TfrmShipToAddress.atDeleteExecute(Sender: TObject);
begin
  { if IsUsed_ShiptoAddress(dbgridShipToAddress.DataSource.DataSet.FieldByName('AddressNo').AsInteger) then
    begin
    ShowMessage('Cannot delete because the record have dependencies, you must remove those first.');
    Exit;
    end;
    DeleteRecord(dbgridShipToAddress.DataSource.DataSet); }
  if MessageDlg('Är du säker?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    With dmsContact do
    Begin
      Try
        sqAdrDepend.ParamByName('AddressNo').AsInteger :=
          cds_AdrSearchAddressNo.AsInteger;
        sqAdrDepend.Open;
        Try
          if sqAdrDependAddressNo.AsInteger > 0 then
          Begin
            sqDelCompAdr.ParamByName('AddressNo').AsInteger :=
              cds_AdrSearchAddressNo.AsInteger;
            sqDelCompAdr.ExecSQL;

            cds_AdrSearch.Delete;
            if cds_AdrSearch.ChangeCount > 0 then
            Begin
              cds_AdrSearch.ApplyUpdates(0);
              cds_AdrSearch.CommitUpdates;
            End;

            // cds_CompAdr.Active:= False ;
            // cds_CompAdr.Active:= True ;
            cds_Comp_DelAdr.Active := False;
            cds_Comp_DelAdr.Active := True;
          End
          else
            ShowMessage('Adressen används, kan inte ta bort.');
        Finally
          sqAdrDepend.close;
        End;
      Except
      End;
    End;
  End;
end;

// ---------------------------------------------------------------
procedure TfrmShipToAddress.atDeleteUpdate(Sender: TObject);
begin
  // atDelete.Enabled := not (dbgridShipToAddress.DataSource.DataSet.Eof and dbgridShipToAddress.DataSource.DataSet.Bof);
end;

// ------------------------------------------------------------------------
procedure TfrmShipToAddress.atSaveExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_AdrSearch.State in [dsInsert, dsEdit] then
      cds_AdrSearch.Post;
    if cds_AdrSearch.ChangeCount > 0 then
    Begin
      cds_AdrSearch.ApplyUpdates(0);
      cds_AdrSearch.CommitUpdates;
    End;
  End;
end;

// ------------------------------------------------------------------------
procedure TfrmShipToAddress.atSaveUpdate(Sender: TObject);
begin
  atSave.Enabled := (dmsContact.cds_AdrSearch.Active) and
    ((dmsContact.cds_AdrSearch.ChangeCount > 0) or
    (dmsContact.cds_AdrSearch.State in [dsInsert, dsEdit]));
end;

procedure TfrmShipToAddress.btnFindClick(Sender: TObject);
begin
  SearchAddress(-1);
end;

procedure TfrmShipToAddress.SearchAddress(const AddressNo: Integer);
var
  CityNo, CountryNo: Integer;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  dmsContact.cds_AdrSearch.DisableControls;
  Try
    if dxMemData1.State in [dsInsert, dsEdit] then
      dxMemData1.Post;

    if dxMemData1.FieldByName('CityNo').IsNull or (trim(lcOrt.Text) = '') then
      CityNo := (-1)
    else
      CityNo := dxMemData1.FieldByName('CityNo').AsInteger;

    if dxMemData1.FieldByName('CountryNo').IsNull or (trim(lcLand.Text) = '')
    then
      CountryNo := (-1)
    else
      CountryNo := dxMemData1.FieldByName('CountryNo').AsInteger;

    with dmsContact.cds_AdrSearch do
    begin
      // Active := false;
      dmsContact.cds_AdrSearch.Active := False;
      sql.Clear;
      sql.Add('SELECT * FROM Address WHERE AddressType > 0 ');
      // WHERE AddressType = 2 ');
      if trim(EditAddress.Text) <> '' then
        sql.Add(' and ( Addressname like ''%' + trim(EditAddress.Text)
          + '%'')');
      if trim(EditAddLine.Text) <> '' then
        sql.Add(' and ( (AddressLine1 like ''%' + trim(EditAddLine.Text) +
          '%'') or ( AddressLine2 like ''%' + trim(EditAddLine.Text) +
          '%'') or (AddressLine3 like ''%' + trim(EditAddLine.Text) + '%'')) ');
      if trim(EditPhone.Text) <> '' then
        sql.Add(' and ( Phone1 like ''%' + trim(EditPhone.Text) + '%'')');
      if trim(EditState.Text) <> '' then
        sql.Add(' and (StateOrProvince like ''%' + trim(EditState.Text)
          + '%'')');
      if trim(EditFax.Text) <> '' then
        sql.Add(' and (fax like ''%' + trim(EditFax.Text) + '%'')');
      if trim(EditPostal.Text) <> '' then
        sql.Add(' and ( PostalCode like ''%' + trim(EditPostal.Text) + '%'')');

      if CityNo >= 0 then
        sql.Add(' and ( cityNo = ' + IntToStr(CityNo) + ')');
      if CountryNo >= 0 then
        sql.Add(' and (CountryNo =' + IntToStr(CountryNo) + ')');

      if AddressNo >= 0 then
        sql.Add(' and ( AddressNo = ' + IntToStr(AddressNo) + ')');

      sql.Add('ORDER BY AddressName ');
      // sql.Savetofile('cds_AdrSearch.txt') ;
      dmsContact.cds_AdrSearch.Active := True;
    end;
  finally
    dmsContact.cds_AdrSearch.EnableControls;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

function TfrmShipToAddress.IsDataSaved: Boolean;
begin
  Result := True;
  With dmsContact do
  Begin
    if cds_AdrSearch.State in [dsInsert, dsEdit] then
      Result := False;
    if cds_AdrSearch.ChangeCount > 0 then
      Result := False;
  End;
end;

procedure TfrmShipToAddress.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  CanClose := True;
  if IsDataSaved = False then
    if MessageDlg('Data är inte sparad, vill du stänga?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    begin
      With dmsContact do
      Begin
        if cds_AdrSearch.State in [dsInsert, dsEdit] then
          cds_AdrSearch.Cancel;
        if cds_AdrSearch.ChangeCount > 0 then
          cds_AdrSearch.CancelUpdates;
        CanClose := True;
      End;
    End
    else
      CanClose := False;

end;

procedure TfrmShipToAddress.FormDestroy(Sender: TObject);
begin
  inherited;
  dmsContact.cds_AdrSearch.Active := False;
end;

procedure TfrmShipToAddress.dblookcombCityKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
  fCity: TfCity;
begin
  // OpenDataSetEdit(Key, tbCity);
  if Key = VK_INSERT then // VK_F2 then
  Begin
    fCity := TfCity.Create(Nil);
    Try
      fCity.ShowModal;

      With dmsContact do
      Begin
        if cds_AdrSearch.State in [dsBrowse] then
          cds_AdrSearch.Edit;
        cds_AdrSearchCityNo.AsInteger := dmsContact.FD_CityCityNo.AsInteger;
      End; // With

    Finally
      FreeAndNil(fCity);
    End;
  End;

end;

procedure TfrmShipToAddress.acCloseExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmShipToAddress.dbeditPhone1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key > '9') or (Key < '0')) and (Key <> ' ') then
    Key := #0;
end;

procedure TfrmShipToAddress.lcLandKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  fCountry: TfCountry;
begin
  // OpenDataSetEdit(Key, tbCountry);
  if Key = VK_INSERT then // VK_F2 then
  Begin
    fCountry := TfCountry.Create(Nil);
    Try
      fCountry.ShowModal;
    Finally
      FreeAndNil(fCountry);
    End;
  End;
end;

procedure TfrmShipToAddress.acSearchAddressExecute(Sender: TObject);
begin
  SearchAddress(-1);
  if (dmsContact.cds_AdrSearch.Active) and
    (dmsContact.cds_AdrSearch.RecordCount > 0) then
    grdSearchResultGrid.SetFocus;
end;

procedure TfrmShipToAddress.acClearFieldsExecute(Sender: TObject);
begin
  EditAddress.Text := '';
  EditAddLine.Text := '';
  EditPhone.Text := '';
  EditState.Text := '';
  EditFax.Text := '';
  EditPostal.Text := '';
  dxMemData1.Active := False;
  dxMemData1.Active := True;
end;

procedure TfrmShipToAddress.acOKToSelectUpdate(Sender: TObject);
begin
  acOKToSelect.Enabled := (dmsContact.cds_AdrSearch.Active) and
    (dmsContact.cds_AdrSearch.RecordCount > 0);
end;

procedure TfrmShipToAddress.acCancelChangesExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_AdrSearch.State in [dsInsert, dsEdit] then
      cds_AdrSearch.Cancel;
    if cds_AdrSearch.ChangeCount > 0 then
    Begin
      cds_AdrSearch.CancelUpdates;
    End;
  End;
end;

procedure TfrmShipToAddress.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := (dmsContact.cds_AdrSearch.Active) and
    ((dmsContact.cds_AdrSearch.ChangeCount > 0) or
    (dmsContact.cds_AdrSearch.State in [dsInsert, dsEdit]));
end;

procedure TfrmShipToAddress.dblookcombCountryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
  fCountry: TfCountry;
begin
  // OpenDataSetEdit(Key, tbCountry);
  if Key = VK_INSERT then // VK_F2 then
  Begin
    fCountry := TfCountry.Create(Nil);
    Try
      fCountry.ShowModal;

      With dmsContact do
      Begin
        if cds_AdrSearch.State in [dsBrowse] then
          cds_AdrSearch.Edit;
        cds_AdrSearchCountryNo.AsInteger :=
          dmsContact.cds_CountryCountryNo.AsInteger;
      End; // With

    Finally
      FreeAndNil(fCountry);
    End;
  End;
end;

End.
