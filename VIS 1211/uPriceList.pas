unit uPriceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, dxBarExtItems, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, ActnList,
  cxGridBandedTableView, cxGridDBBandedTableView, cxNavigator,
  cxDBNavigator, StdCtrls, Buttons, cxLookAndFeels, cxLabel, cxDBLabel,
  ImgList, SqlTimSt, cxMemo, cxCheckBox ;

Const
    CM_MOVEIT = WM_USER + 1;

type
  TfPriceList = class(TForm)
    Panel5: TPanel;
    tcPriceHdr: TcxTabControl;
    Panel6: TPanel;
    tcProductGroup: TcxTabControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    ActionList1: TActionList;
    acNewPriceTemplate: TAction;
    acModifyPriceTemplate: TAction;
    grdMatrix: TcxGrid;
    grdMatrixLevel1: TcxGridLevel;
    grdMatrixDBBandedTableView1: TcxGridDBBandedTableView;
    acNewPriceList: TAction;
    acSavePriceList: TAction;
    acCancelPriceListChanges: TAction;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acGetLastPriceList: TAction;
    acGetPrevPriceList: TAction;
    acGetNextPriceList: TAction;
    acGetFirstPriceList: TAction;
    imglistActions: TImageList;
    acClose: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    acRemovePriceList: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    mNotes: TcxDBMemo;
    acRemoveMall: TAction;
    dxBarLargeButton12: TdxBarLargeButton;
    acSkrivUt: TAction;
    dxBarLargeButton13: TdxBarLargeButton;
    pProduktGrupp: TPanel;
    acCopyPriceList: TAction;
    dxBarLargeButton14: TdxBarLargeButton;
    acPrisKorrigering: TAction;
    dxBarLargeButton15: TdxBarLargeButton;
    ds_marketpricegrp: TDataSource;
    Panel10: TPanel;
    Panel11: TPanel;
    cxLabel1: TcxLabel;
    deValidFrom: TcxDBDateEdit;
    cxLabel2: TcxLabel;
    deValidTo: TcxDBDateEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    cbStatus: TcxDBCheckBox;
    cxLabel8: TcxLabel;
    cxLabel7: TcxLabel;
    lmid: TcxDBLabel;
    ltemplateno: TcxDBLabel;
    dxBarDockControl4: TdxBarDockControl;
    cxLabel5: TcxLabel;
    deDateModified: TcxDBDateEdit;
    acVWCost: TAction;
    dxBarLargeButton16: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure tcPriceHdrChange(Sender: TObject);
    procedure tcProductGroupChange(Sender: TObject);
    procedure acNewPriceListExecute(Sender: TObject);
    procedure acSavePriceListExecute(Sender: TObject);
    procedure acGetLastPriceListExecute(Sender: TObject);
    procedure grdMatrixDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure acGetPrevPriceListExecute(Sender: TObject);
    procedure acGetNextPriceListExecute(Sender: TObject);
    procedure acGetFirstPriceListExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSavePriceListUpdate(Sender: TObject);
    procedure acCancelPriceListChangesUpdate(Sender: TObject);
    procedure acCancelPriceListChangesExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acRemovePriceListExecute(Sender: TObject);
    procedure acRemoveMallExecute(Sender: TObject);
    procedure tcPriceHdrChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure acRemovePriceListUpdate(Sender: TObject);
    procedure acGetFirstPriceListUpdate(Sender: TObject);
    procedure acGetPrevPriceListUpdate(Sender: TObject);
    procedure acGetLastPriceListUpdate(Sender: TObject);
    procedure acGetNextPriceListUpdate(Sender: TObject);
    procedure acModifyPriceTemplateUpdate(Sender: TObject);
    procedure acRemoveMallUpdate(Sender: TObject);
    procedure acSkrivUtUpdate(Sender: TObject);
    procedure acNewPriceListUpdate(Sender: TObject);
    procedure acSkrivUtExecute(Sender: TObject);
    procedure acCopyPriceListExecute(Sender: TObject);
    procedure acCopyPriceListUpdate(Sender: TObject);
    procedure ds_marketpricegrpDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure LoadPriceHdr ;
    procedure LoadProductGroups ;
    procedure FilterProductGroupr(const TemplateNo : Integer) ;
    Procedure CreateColumns ;
    Procedure CreateRows (const ProductGroupNo : Integer) ;
    procedure BuildMatrix;
    procedure FillMatrixWithPrices ;
    procedure GetLastPriceList ;
    procedure SaveGridData(Sender: TObject);
    procedure grdMatrixDBBandedTableView1GetDisplayTextFORNOOFPCS(
    Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
    var AText: String);

    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;
    function  DataSaved : Boolean ;
    function  CheckAndAskIfDataShouldBeSaved(Sender: TObject) : Boolean ;

  public
    { Public declarations }
    procedure FilterPriceHdr (const PriceName : String) ;
    procedure ProductGroupChange ;
    procedure GetLastPriceListInDateIntervall ;
  end;

//var fPriceList: TfPriceList;


implementation

uses dmc_marketprice, VidaUser ;

{$R *.dfm}

procedure TfPriceList.GetLastPriceListInDateIntervall ;
//Var fromd, tod, nu : String ;
begin
 With dm_marketprice do
 Begin

  cds_marketpricegrp.First ;
//  Fromd:= SQLTimeStampToStr('yy-mm-dd', dm_marketprice.cds_marketpricegrpValidFrom.AsSQLTimeStamp) ;
//  Tod:= SQLTimeStampToStr('yy-mm-dd', dm_marketprice.cds_marketpricegrpValidTo.AsSQLTimeStamp) ;
//  nu:= DateTimeToStr(Now) ;
//  ShowMessage(fromd+'   '+Tod+'    '+nu);
//  if  SQLTimeStampToDateTime(cds_marketpricegrpValidFrom.AsSQLTimeStamp) >= Date then ;
  While ((SQLTimeStampToDateTime(cds_marketpricegrpValidFrom.AsSQLTimeStamp) >= Now )
   or ( SQLTimeStampToDateTime(cds_marketpricegrpValidTo.AsSQLTimeStamp) <= Now ))
   AND (not cds_marketpricegrp.Eof) do
   cds_marketpricegrp.Next ;


  FillMatrixWithPrices ;
 End ;
end;

procedure TfPriceList.ProductGroupChange ;
begin
 With dm_marketprice do
 Begin
//  mtPrices.Filter:= 'PRODUCTGROUPNO = '+inttostr(ProductGroupNoArray[tcProductGroup.TabIndex+1]) ;
  tcProductGroup.TabIndex:= ArrayIndex ;
{  ArrayIndex            := tcProductGroup.TabIndex+1 ;
  mtPrices.Filtered     := False ;
  mtPrices.Filtered     := True ;
  pProduktGrupp.Caption := tcProductGroup.Tabs.Strings[tcProductGroup.tabindex] ; }
 End ;
end;

function TfPriceList.DataSaved : Boolean ;
Begin
 Result:= True ;
 With dm_marketprice do
 Begin
  if cds_marketpricegrp.State in [dsEdit, dsInsert] then
  Result:= False ;
  if cds_marketpricegrp.ChangeCount > 0 then
  Result:= False ;
  if mtPrices.State = dsEdit then
  Result:= False ;
  if MarketPriceChanged then
  Result:= False ;
 End ;
End ;

procedure TfPriceList.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdMatrixDBBandedTableView1.Controller.EditingController.HideEdit(True);
   grdMatrixDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;

procedure TfPriceList.grdMatrixDBBandedTableView1GetDisplayTextFORNOOFPCS(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
Begin
 if StrToFloatDef(AText,0) > 0 then
  AText:= AText
   else
    AText:= '' ;
End ;

procedure TfPriceList.LoadPriceHdr ;
begin
 With dm_marketprice do
 Begin
  cds_PriceHdr.Active:= True ;
  tcPriceHdr.Tabs.Clear ;
  cds_PriceHdr.First ;
  While not cds_PriceHdr.Eof do
  Begin
   tcPriceHdr.Tabs.Add(cds_PriceHdrPriceListName.AsString) ;
   cds_PriceHdr.Next ;
  End ;
  tcPriceHdr.TabIndex:= 0 ;
 End ;
end;

procedure TfPriceList.LoadProductGroups ;
begin
 With dm_marketprice do
 Begin
  tcProductGroup.Tabs.Clear ;
  cds_SelectPG.First ;
  While not cds_SelectPG.Eof do
  Begin
   tcProductGroup.Tabs.Add(cds_SelectPGAT.AsString+'x'+cds_SelectPGAB.AsString+', '+cds_SelectPGTS.AsString+', '+cds_SelectPGUT.AsString+', '+cds_SelectPGIMP.AsString ) ;
//   tcProductGroup.Tabs.Add(cds_SelectPGProductGroupNo.AsString) ;
   ProductGroupNoArray[tcProductGroup.Tabs.Count]:= cds_SelectPGProductGroupNo.AsInteger ;
   cds_SelectPG.Next ;
  End ;

  tcProductGroup.TabIndex:= 0 ;
  pProduktGrupp.Caption := tcProductGroup.Tabs.Strings[tcProductGroup.tabindex] ;
  BuildMatrix;
  GetLastPriceList ;
 End ;
end;

procedure TfPriceList.FormCreate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  if ThisUser.UserID = 8 then
  Begin
   ltemplateno.Visible:= True ;
   lmid.Visible       := True ;   
  End ;
  mtPrices.Filtered:= True ;
  LoadPriceHdr ;
  if tcPriceHdr.Tabs.Count > 0 then
  Begin
   FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
   FilterProductGroupr(cds_PriceHdrTemplateNo.AsInteger) ;
  End ;
 End ;
end;

procedure TfPriceList.FilterPriceHdr(const PriceName : String) ;
begin
 With dm_marketprice do
 Begin
  cds_PriceHdr.Filter   := 'PriceListName = '+QuotedStr(PriceName) ;
  cds_PriceHdr.Filtered := True ;
  FilterProductGroupr(cds_PriceHdrTemplateNo.AsInteger) ;
 End ;
end;

procedure TfPriceList.FilterProductGroupr(const TemplateNo : Integer) ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dm_marketprice do
 Begin
  cds_SelectPG.Active:= False ;
  sq_SelectPG.ParamByName('TemplateNo').AsInteger:= TemplateNo ;
  cds_SelectPG.Active:= True ;
  LoadProductGroups ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ; 
end;

procedure TfPriceList.tcPriceHdrChange(Sender: TObject);
Var MessageIndex : Word ;
begin
 FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
{ if DataSaved = False then
 Begin
  MessageIndex:= MessageDlg('Ändringar i prislista '+tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]+' är inte sparade, vill du spara?',
  mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  Case MessageIndex of
   mrYes     : Begin
                acSavePriceListExecute(Sender) ;
                FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
               End ;
   mrNo      :  FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
              //acCancelPriceListChangesExecute(Sender) ;
//   mrCancel  : CanClose:= False ;
  End ;
 End ; }
end;

Procedure TfPriceList.CreateColumns ;
Var x           : Integer ;
    LengthTitle : String ;
    Save_Cursor : TCursor;
    Properties  : TcxTextEditProperties;
Begin
 grdMatrixDBBandedTableView1.BeginUpdate ;
 Try
 With dm_marketprice do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 mtPrices.ReadOnly:= False ;
 if mtPrices.Active then
  mtPrices.Active:= False ;

 Try
//  if mtPrices.IndexName = 'IndexRecId' then
//    mtPrices.DeleteIndex('IndexRecId') ;

//  mtPrices.DeleteIndex('PkgID') ;



 For x:= mtPrices.Fields.Count - 1 downto 0 do
 Begin
//  tf:= mtPrices.Fields.Fields[x] ;
  mtPrices.Fields.Remove(mtPrices.Fields.Fields[x]) ;
 End ;

   mtPrices.FieldDefs.Clear ;

   mtPrices.FieldDefs.Add('RecId',ftInteger,0,False) ;
   mtPrices.FieldDefs[0].CreateField(nil);
   mtPrices.FieldByName('RecId').DisplayLabel:= 'ROWNO' ;
   if ThisUser.UserID = 8 then
   mtPrices.FieldByName('RecId').Visible:= True
   else
   mtPrices.FieldByName('RecId').Visible:= False ;
//   tf:= mtPrices.FieldDefs[0].CreateField(nil);

//1
   mtPrices.FieldDefs.Add('PRODUCTNO',ftLargeInt,0,False) ;
   mtPrices.FieldDefs[1].CreateField(nil);
   mtPrices.FieldByName('PRODUCTNO').DisplayLabel:= 'PRODUCTNO' ;
   if ThisUser.UserID = 8 then
   mtPrices.FieldByName('PRODUCTNO').Visible:= True
   else
   mtPrices.FieldByName('PRODUCTNO').Visible:= False ;

//2
   mtPrices.FieldDefs.Add('KVALITET',ftString,50,False) ;
   mtPrices.FieldDefs[2].CreateField(nil);
   mtPrices.FieldByName('KVALITET').DisplayLabel:= 'KVALITET' ;

//3
   mtPrices.FieldDefs.Add('PRODUCTGROUPNO',ftLargeInt,0,False) ;
   mtPrices.FieldDefs[3].CreateField(nil, nil, 'PRODUCTGROUPNO');
//   mtPrices.FieldDefs[3].Name:='PRODUCTGROUPNO';
//   mtPrices.FieldDefs[3].DataType:= ftLargeInt ;
   mtPrices.FieldByName('PRODUCTGROUPNO').DisplayLabel:= 'PRODUCTGROUPNO' ;
   if ThisUser.UserID = 8 then
   mtPrices.FieldByName('PRODUCTGROUPNO').Visible:= True
   else
   mtPrices.FieldByName('PRODUCTGROUPNO').Visible:= False ;



   X:= 4  ;

  sq_LengthsForCOLS.ParamByName('TemplateNo').AsInteger:= cds_PriceHdrtemplateno.AsInteger ;
  sq_LengthsForCOLS.Open ;
  While not sq_LengthsForCOLS.Eof do
  Begin
   mtPrices.FieldDefs.Add(sq_LengthsForCOLSProductLengthNo.AsString,ftInteger,0,False) ;
   mtPrices.FieldDefs[x].CreateField(nil);

   LengthTitle:= Trim(sq_LengthsForCOLSActualLengthMM.AsString) ;
{   if cds_marketpricegrplengthunit.AsInteger = 0 then
   Begin
    if sq_LengthsForCOLSNominalLengthMM.AsString <> sq_LengthsForCOLSActualLengthMM.AsString then
    LengthTitle:= LengthTitle + ' ('+sq_LengthsForCOLSNominalLengthMM.AsString+') ' ;
   End
   else
   LengthTitle:= sq_LengthsForCOLSNominalLengthFEET.AsString ; }


   mtPrices.FieldByName(sq_LengthsForCOLSProductLengthNo.AsString).DisplayLabel:= LengthTitle ;
   X:= Succ(x) ;
   sq_LengthsForCOLS.Next ;
  End ;
  sq_LengthsForCOLS.Close ;



//  mtPrices.AddIndex('IndexRecId','RecId',[]) ;
//  mtPrices.IndexName:= 'IndexRecId' ;
//  mtPrices.AddIndex('PkgID','PackageNo;SupplierCode',[]) ;

  grdMatrixDBBandedTableView1.Bands[0].Visible:= True ;

  grdMatrixDBBandedTableView1.ClearItems ;
  grdMatrixDBBandedTableView1.DataController.CreateAllItems ;

  For x := 0 to grdMatrixDBBandedTableView1.ColumnCount - 1 do
  Begin
   grdMatrixDBBandedTableView1.Columns[x].Options.Filtering := False ;
   grdMatrixDBBandedTableView1.Columns[x].Position.BandIndex:= 0 ;
   grdMatrixDBBandedTableView1.Columns[x].PropertiesClass   :=  TcxTextEditProperties;
   Properties := grdMatrixDBBandedTableView1.Columns[x].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
  End ;

  For x := 4 to grdMatrixDBBandedTableView1.ColumnCount - 1 do
  Begin
   grdMatrixDBBandedTableView1.Columns[x].OnGetDisplayText:= grdMatrixDBBandedTableView1GetDisplayTextFORNOOFPCS ;
   grdMatrixDBBandedTableView1.Columns[x].Position.BandIndex:= 1 ;
  End ;

//  grdMatrixDBBandedTableView1

 //Create columns in the grid



//  grdPrices.Columns[0].Visible:= False ;
//  grdPrices.Columns[1].Visible:= False ;


  mtPrices.Active:= True ;
  mtPrices.Insert ;


 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ; //with
 Finally
  grdMatrixDBBandedTableView1.EndUpdate ;
 End ;
End ;

Procedure TfPriceList.CreateRows(const ProductGroupNo : Integer) ;
Var x : Byte ;
Begin
 x := 1 ;
 With dm_marketprice do
 Begin
  sq_GetGrades.ParamByName('templateno').AsInteger      := cds_PriceHdrtemplateno.AsInteger ;
//  sq_GetGrades.ParamByName('ProductGroupNo').AsInteger  := ProductGroupNo ;
  sq_GetGrades.Open ;
  sq_GetGrades.First ;
  While not sq_GetGrades.Eof do
  Begin
   mtPrices.Insert ;
   mtPrices.Fields.Fields[0].AsInteger:= x ;
   mtPrices.Fields.Fields[1].AsInteger:= sq_GetGradesproductno.AsInteger ;
   mtPrices.Fields.Fields[2].AsString:=  sq_GetGradesgradename.AsString ;
   mtPrices.Fields.Fields[3].AsInteger:= sq_GetGradesproductGroupno.AsInteger ;
   mtPrices.Post ;
   sq_GetGrades.Next ;
   x := succ(x) ;
  End ;
//  mtPrices.Filter:= 'PRODUCTGROUPNO = '+inttostr(ProductGroupNo);
  ArrayIndex:= tcProductGroup.TabIndex+1 ;
  mtPrices.Filtered:= False ;
  mtPrices.Filtered:= True ;
  sq_GetGrades.Close ;
 End ;//with
End ;

procedure TfPriceList.tcProductGroupChange(Sender: TObject);
begin
 With dm_marketprice do
 Begin
//  mtPrices.Filter:= 'PRODUCTGROUPNO = '+inttostr(ProductGroupNoArray[tcProductGroup.TabIndex+1]) ;
  ArrayIndex            := tcProductGroup.TabIndex+1 ;
  mtPrices.Filtered     := False ;
  mtPrices.Filtered     := True ;
  pProduktGrupp.Caption := tcProductGroup.Tabs.Strings[tcProductGroup.tabindex] ;
 End ;
end;

procedure TfPriceList.BuildMatrix;
Begin
 CreateColumns ;
 CreateRows(ProductGroupNoArray[tcProductGroup.TabIndex+1]) ;
 dm_marketprice.mtPrices.ReadOnly:= True ;
End ;

procedure TfPriceList.acNewPriceListExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  if not cds_marketpricegrp.Active then
  cds_marketpricegrp.Active:= True ;
  cds_marketpricegrp.Insert ;
  BuildMatrix ;
  dm_marketprice.mtPrices.ReadOnly:= False ;
 End ;
end;

procedure TfPriceList.FillMatrixWithPrices ;
Var x           : Integer ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dm_marketprice do
 Begin
  cds_marketpricerow.Active:= False ;
  sq_marketpricerow.ParamByName('mid').AsInteger:= cds_marketpricegrpmid.AsInteger ;
  cds_marketpricerow.Active:= True ;

  if cds_marketpricerow.RecordCount > 0 then
  Begin
   mtPrices.ReadOnly:= False ;
   mtPrices.DisableControls ;
   Try
    mtPrices.Filtered := False ;
    Try
    mtPrices.First ;
    While not mtPrices.Eof do
    Begin
     mtPrices.Edit ;
     For x:= 4 to grdMatrixDBBandedTableView1.ColumnCount - 1 do
     Begin
      if cds_marketpricerow.FindKey([cds_marketpricegrpmid.AsInteger,mtPrices.Fields.Fields[1].AsInteger,
      StrToInt(mtPrices.Fields[x].FieldName)]) then
       mtPrices.Fields[x].AsInteger:= cds_marketpricerowprice.AsInteger
        else mtPrices.Fields[x].AsInteger:= 0 ;
     End ; //For
     mtPrices.Post ;
     mtPrices.Next ;
    End ; //while

    MarketPriceChanged:= False ;
    mtPrices.IsDataModified:= False ;
    Finally
     mtPrices.Filtered := True ;
    End ;
//   if cds_marketpricegrpStatus.AsInteger = 1 then
    mtPrices.ReadOnly:= True ;
   Finally
    mtPrices.EnableControls ;
   End ;
  End
   else
    Begin
     mtPrices.ReadOnly:= True ;
     MarketPriceChanged:= False ;
    End ;
 End ; //with
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfPriceList.GetLastPriceList ;
begin
 With dm_marketprice do
 Begin
  cds_marketpricegrp.Active:= False ;
  sq_marketpricegrp.ParamByName('templateno').AsInteger:= cds_PriceHdrtemplateno.AsInteger ;
  cds_marketpricegrp.Active:= True ;
  cds_marketpricegrp.Last ;
  FillMatrixWithPrices ;
 End ;
end;

procedure TfPriceList.acSavePriceListExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  if cds_marketpricegrp.State = dsBrowse then
  cds_marketpricegrp.Edit ;
  cds_marketpricegrpDateModified.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(date) ;

  cds_marketpricerow.Active:= False ;
  sq_marketpricerow.ParamByName('mid').AsInteger:= cds_marketpricegrpmid.AsInteger ;
  cds_marketpricerow.Active:= True ;

  if cds_marketpricegrp.State in [dsEdit, dsInsert] then
   cds_marketpricegrp.Post ;
  SaveGridData(Sender) ;
  
  if cds_marketpricegrp.ChangeCount > 0 then
  cds_marketpricegrp.ApplyUpdates(0) ;
  if cds_marketpricerow.ChangeCount > 0 then
  cds_marketpricerow.ApplyUpdates(0) ;

  MarketPriceChanged:= False ;
  cds_marketpricerow.Active:= False ;
 End ;
end;

procedure TfPriceList.SaveGridData(Sender: TObject);
Var x         : Integer ;
begin
 With dm_marketprice do
 Begin
  if mtPrices.State in [dsEdit, dsInsert] then
   mtPrices.Post ;

  mtPrices.DisableControls ;
  Try
  mtPrices.Filtered:= False ;
  Try
  mtPrices.First ;
  While not mtPrices.Eof do
  Begin
   For x:= 4 to grdMatrixDBBandedTableView1.ColumnCount - 1 do
   Begin
    if cds_marketpricerow.FindKey([cds_marketpricegrpmid.AsInteger,mtPrices.Fields.Fields[1].AsInteger,
    StrToInt(mtPrices.Fields[x].FieldName)]) then
    cds_marketpricerow.Edit
    else
    cds_marketpricerow.Insert ;
    try
    cds_marketpricerowmid.AsInteger             := cds_marketpricegrpmid.AsInteger ;
    cds_marketpricerowproductno.AsInteger       := mtPrices.Fields.Fields[1].AsInteger ;
    cds_marketpricerowproductlengthno.AsInteger := StrToInt(mtPrices.Fields[x].FieldName) ;
    cds_marketpricerowprice.AsFloat             := mtPrices.Fields[x].AsInteger ;
    cds_marketpricerow.Post ;
    Except
    End ;
   End ; //For
   mtPrices.Next ;
  End ;
  Finally
   mtPrices.Filtered:= True ;
  End ;
  Finally
   mtPrices.EnableControls ;
  End ;
 End ; //with
end;

procedure TfPriceList.acGetLastPriceListExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  if CheckAndAskIfDataShouldBeSaved(Sender) then
  Begin
   cds_marketpricegrp.Last ;
   FillMatrixWithPrices ;
  End ;
 End ;
end;

procedure TfPriceList.grdMatrixDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
var AGoForward: Boolean;
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
//      Begin
//         AGoForward := True ;//Boolean(Msg.WParam);
//   grdMatrixDBBandedTableView1.Controller.EditingController.HideEdit(True);
//   grdMatrixDBBandedTableView1.Controller.FocusNextCell(AGoForward)
//      End
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfPriceList.acGetPrevPriceListExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  if CheckAndAskIfDataShouldBeSaved(Sender) then
  Begin
   cds_marketpricegrp.Prior ;
   FillMatrixWithPrices ;
  End ; 
 End ;
end;

procedure TfPriceList.acGetNextPriceListExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  if CheckAndAskIfDataShouldBeSaved(Sender) then
  Begin
   cds_marketpricegrp.Next ;
   FillMatrixWithPrices ;
  End ; 
 End ;
end;

procedure TfPriceList.acGetFirstPriceListExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  if CheckAndAskIfDataShouldBeSaved(Sender) then
  Begin
   cds_marketpricegrp.First ;
   FillMatrixWithPrices ;
  End ;
 End ;
end;

procedure TfPriceList.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfPriceList.acSavePriceListUpdate(Sender: TObject);
begin
 acSavePriceList.Enabled:= not DataSaved ;
end;

procedure TfPriceList.acCancelPriceListChangesUpdate(Sender: TObject);
begin
 acCancelPriceListChanges.Enabled:= not DataSaved ;
end;

procedure TfPriceList.acCancelPriceListChangesExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  if cds_marketpricegrp.State in [dsEdit, dsInsert] then
   cds_marketpricegrp.Cancel ;
  if cds_marketpricegrp.ChangeCount > 0 then
   cds_marketpricegrp.CancelUpdates ;
  FillMatrixWithPrices ;
 End ;
end;

procedure TfPriceList.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var      MessageIndex : Word ;
begin
 CanClose:= True ;
 if DataSaved = False then
 Begin
  MessageIndex:= MessageDlg('Ändringar är inte sparade, vill du spara?',
  mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  Case MessageIndex of
   mrYes     : Begin
                acSavePriceListExecute(Sender) ;
               End ;
   mrNo      : acCancelPriceListChangesExecute(Sender) ;
   mrCancel  : CanClose:= False ;
  End ;
 End ;
end;

procedure TfPriceList.acRemovePriceListExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dm_marketprice do
 Begin
  cds_marketpricegrp.Delete ;
  if cds_marketpricegrp.ChangeCount > 0 then
  cds_marketpricegrp.ApplyUpdates(0) ;
  FillMatrixWithPrices ;
 End ;
end;

procedure TfPriceList.acRemoveMallExecute(Sender: TObject);
Var PriceListName : String ;
begin
 if MessageDlg('Är du säker?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dm_marketprice do
 Begin
  PriceListName:= tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex] ;
  if cds_PriceHdr.Locate('PriceListName', PriceListName, []) then
  Begin
   Try
   cds_PriceHdr.Delete ;
   if cds_PriceHdr.ChangeCount > 0 then
    cds_PriceHdr.ApplyUpdates(0) ;
    tcPriceHdr.Tabs.Delete(tcPriceHdr.tabIndex);
    if tcPriceHdr.Tabs.Count > 0 then
    FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
   Except
    On E : EDatabaseError do
    ShowMessage('Database error : '+E.Message);
   End ;
  End ;
 End ;
end;

procedure TfPriceList.tcPriceHdrChanging(Sender: TObject;  var AllowChange: Boolean);
Var MessageIndex : Word ;
begin
 if DataSaved = False then
 Begin
  MessageIndex:= MessageDlg('Ändringar i prislista '+tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]+' är inte sparade, vill du spara?',
  mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  Case MessageIndex of
   mrYes     : Begin
                acSavePriceListExecute(Sender) ;
//                FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
                AllowChange:= True ;
//
               End ;
   mrNo      :  AllowChange:= True ;//FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
              //acCancelPriceListChangesExecute(Sender) ;
   mrCancel  : AllowChange:= False ;
  End ;
 End
  else
   AllowChange:= True ;
end;

procedure TfPriceList.acRemovePriceListUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acRemovePriceList.Enabled:= (cds_marketpricegrp.Active) and (cds_marketpricegrp.RecordCount > 0) ;
 End ;
end;

procedure TfPriceList.acGetFirstPriceListUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acGetFirstPriceList.Enabled:= (cds_marketpricegrp.Active) and (cds_marketpricegrp.RecordCount > 0)
  and (not cds_marketpricegrp.Bof) ;
 End ;
end;

procedure TfPriceList.acGetPrevPriceListUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acGetPrevPriceList.Enabled:= (cds_marketpricegrp.Active) and (cds_marketpricegrp.RecordCount > 0)
  and (not cds_marketpricegrp.Bof) ;
//  and (cds_marketpricegrp. ;
 End ;
end;

procedure TfPriceList.acGetLastPriceListUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acGetLastPriceList.Enabled:= (cds_marketpricegrp.Active) and (cds_marketpricegrp.RecordCount > 0)
  and (not cds_marketpricegrp.Eof) ;
 End ;
end;

procedure TfPriceList.acGetNextPriceListUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acGetNextPriceList.Enabled:= (cds_marketpricegrp.Active) and (cds_marketpricegrp.RecordCount > 0)
  and (not cds_marketpricegrp.Eof) ;
 End ;
end;

procedure TfPriceList.acModifyPriceTemplateUpdate(Sender: TObject);
begin
 acModifyPriceTemplate.Enabled:= tcPriceHdr.Tabs.Count > 0 ;
end;

procedure TfPriceList.acRemoveMallUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acRemoveMall.Enabled:= (tcPriceHdr.Tabs.Count > 0)
  and  (cds_marketpricegrp.RecordCount = 0);
 End ;
end;

procedure TfPriceList.acSkrivUtUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acSkrivUt.Enabled:= (cds_marketpricegrp.Active) and (cds_marketpricegrp.RecordCount > 0) ;
 End ;
end;

function TfPriceList.CheckAndAskIfDataShouldBeSaved(Sender: TObject) : Boolean ;
Var MessageIndex : Word ;
begin
 if DataSaved = False then
 Begin
  MessageIndex:= MessageDlg('Ändringar i prislista '+tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]
  +SQLTimeStampToStr('YYYY-MM-DD',dm_marketprice.cds_marketpricegrpValidFrom.AsSQLTimeStamp)
  +' - '+SQLTimeStampToStr('YYYY-MM-DD',dm_marketprice.cds_marketpricegrpValidTo.AsSQLTimeStamp)
  +' är inte sparade, vill du spara?',
  mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  Case MessageIndex of
   mrYes     : Begin
                acSavePriceListExecute(Sender) ;
//                FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
                Result:= True ;
               End ;
   mrNo      :  Result:= True ;//FilterPriceHdr(tcPriceHdr.Tabs.Strings[tcPriceHdr.tabIndex]) ;
              //acCancelPriceListChangesExecute(Sender) ;
   mrCancel  : Result:= False ;
  End ;
 End
 else
 Result:= True ;
end;

procedure TfPriceList.acNewPriceListUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acNewPriceList.Enabled:= tcPriceHdr.Tabs.Count > 0 ;
 End ;
end;

procedure TfPriceList.acSkrivUtExecute(Sender: TObject);
begin
 ShowMessage('Utskrift ej klar.') ;
end;

procedure TfPriceList.acCopyPriceListExecute(Sender: TObject);
Var PriceAdjustment : Double ;
begin
 With dm_marketprice do
 Begin
  PriceAdjustment:= cds_marketpricegrpPriceAdjustment.AsFloat ;
  if not cds_marketpricegrp.Active then
  cds_marketpricegrp.Active:= True ;
  cds_marketpricegrp.Insert ;
  cds_marketpricegrpPriceAdjustment.AsFloat:= PriceAdjustment ;
  dm_marketprice.mtPrices.ReadOnly:= False ;
 End ;
end;

procedure TfPriceList.acCopyPriceListUpdate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  acCopyPriceList.Enabled:= (DataSaved)
  and (cds_marketpricegrp.Active)
  and (cds_marketpricegrp.RecordCount > 0) ;
//  and (mtPrices.Active) and (mtPrices.RecordCount > 0) ;
 End ;//with 
end;

procedure TfPriceList.ds_marketpricegrpDataChange(Sender: TObject;
  Field: TField);
begin
 With dm_marketprice do
 Begin
//  if cds_marketpricegrpStatus.AsInteger = 0 then
//  Begin
//   deValidFrom.Enabled:= True ;
//   deValidTo.Enabled:= True ;
//   mePriceAdjustment.Enabled:= True ;
//  End
//  else
//  Begin
   deValidFrom.Enabled:= False ;
   deValidTo.Enabled:= False ;
//   mePriceAdjustment.Enabled:= False ;
//  End ;
 End ;
end;

end.
