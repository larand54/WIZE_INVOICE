// =============================================================================
//
//  FILE           :  fDBForm.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Base form from which nested forms are derived.
//                    Do not create instances of this form. Instead, define
//                    function-specific forms that inherit from this one
//                    and create instances of those.
//
//
//  NOTES          :  This unit was created by copying the unit of the same
//                    name in the original VidaSys project, and removing the
//                    code behind it to eliminate dependencies on the rest of
//                    the project. New code will be built up as required.
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//  2002.12.09  DMc       001     Copied from VidaSys project.
//
//                                Commented out all code behind the form.
//
//                                Added new code for DataValidate method to
//                                ensure no instances of this form are created.
//
//                                Removed empty methods & made them abstract.
//
//                                Reinstated FormClose event handler.
//
//                                Re-coded IsModified method to avoid checking
//                                all the datasets. Instead, maintain a flag
//                                FIsModified as changes are made/saved/cancelled.
//
//                                Added constructor; initialise FIsModified flag.
//
//
//  2002.12.10  DMc       002     Made FIsModified protected, not private.
//
//
//
//
//
//
//
unit fDBForm;

interface

uses
  ActnList,
  Classes,
  ComCtrls,
  Controls,
  ExtCtrls,
  Forms,
  ImgList,
  ToolWin,
  Windows, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxBar, cxClasses, StdCtrls, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinsdxBarPainter;

type

  TfrmDBForm = class(TForm)
    ActionList_DBForm: TActionList;
    imglistActions: TImageList;
    atExit: TAction;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsName: TStringField;
    cds_PropsVerkNo: TIntegerField;
    cds_PropsOwnerNo: TIntegerField;
    cds_PropsPIPNo: TIntegerField;
    cds_PropsLIPNo: TIntegerField;
    cds_PropsInputOption: TIntegerField;
    cds_PropsRegPointNo: TIntegerField;
    cds_PropsRegDate: TSQLTimeStampField;
    cds_PropsCopyPcs: TIntegerField;
    cds_PropsRunNo: TIntegerField;
    cds_PropsProducerNo: TIntegerField;
    cds_PropsAutoColWidth: TIntegerField;
    cds_PropsSupplierCode: TStringField;
    cds_PropsLengthOption: TIntegerField;
    cds_PropsLengthGroupNo: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    cds_PropsSalesRegionNo: TIntegerField;
    cds_PropsMarketRegionNo: TIntegerField;
    cds_PropsOrderTypeNo: TIntegerField;
    cds_PropsStatus: TIntegerField;
    cds_PropsFilterOrderDate: TIntegerField;
    cds_PropsStartPeriod: TSQLTimeStampField;
    cds_PropsEndPeriod: TSQLTimeStampField;
    cds_PropsClientNo: TIntegerField;
    cds_PropsSalesPersonNo: TIntegerField;
    cds_PropsVerkSupplierNo: TIntegerField;
    cds_PropsVerkKundNo: TIntegerField;
    cds_PropsLOObjectType: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    cds_PropsMarknad: TStringField;
    cds_PropsKund: TStringField;
    cds_PropsSR: TStringField;
    cds_PropsSaljgrupp: TStringField;
    ds_Props: TDataSource;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);

  private


//    procedure PostDataSet(DataSet: TDataSet);

  protected
//    FDataSets: Array [1..15] of TSDQuery;  // the first one is main dataset
//    FDataSetCount: Integer;

    FIsModified : Boolean;

    procedure SaveUserProps (const Form : String) ;
    procedure LoadUserProps (const Form : String) ;

    procedure ApplyModifiedEnter;     virtual; abstract;
    procedure ApplyModifiedExit;      virtual; abstract;
    procedure CancelModifiedEnter;    virtual; abstract;
    procedure CancelModifiedExit;     virtual; abstract;

    function  DataValidate : Boolean; virtual;

    function  ApplyModified: Boolean;
    function  IsModified: Boolean;
    procedure CancelModified;
//    function  SaveCurrent: Boolean;

//    procedure EditRecord(IDValue: Integer); virtual;

//    procedure AddRecord(Dataset: TDataset);
//    procedure DeleteRecord(DataSet: TDataSet);

  public

    constructor Create(AOwner : TComponent); override;

  end;


implementation

{$R *.dfm}

uses
  Dialogs, dmsDataConn, dmc_UserProps, dmsVidaContact, VidaUser ;


//-------------------------------------------------------------------
//procedure TfrmDBForm.PostDataSet(DataSet: TDataSet);
//begin
//  with DataSet do
//    if Active then
//      if (State = dsEdit) or (State = dsInsert) then Post;
//end;



//-------------------------------------------------------------------
function TfrmDBForm.DataValidate: Boolean;
begin
  assert(False,'TfrmDBForm.DataValidate called.');
  {$IFDEF DEBUG}
  ShowMessage('LOGIC ERROR: TfrmDBForm Descendants MUST override DataValidate');
  {$ENDIF}
  // In descendants of this form, override this method.
  // If data validation is required, implement appropriate
  // checks there, and return True or False.
  // If no validation is required, include a comment to
  // that effect and return True.
  // Do not call inherited from your descendant class.
  Result := False;
end;




//-------------------------------------------------------------------
{ TODO 2 -oDuncan -cReinstate : TfrmDBForm.ApplyModified }
function TfrmDBForm.ApplyModified : Boolean;
//var
//  i: Integer;
//  SavePlace: TBookmark;
begin
//  Result := False;
//
//  for i:=1 to FDataSetCount do
//    PostDataset(FDataSets[i]);
//
//  if not DataValidate then Exit;
//
//  try
//    ApplyModifiedEnter;
//
//    for i:=1 to FDataSetCount do
//    begin
//      if FDataSets[i].Active and FDataSets[i].UpdatesPending then
//      begin
//        SavePlace := FDataSets[i].GetBookmark;
//        FDataSets[i].ApplyUpdates;
//        FDataSets[i].CommitUpdates;
//        if (SavePlace <> nil) and FDataSets[i].BookmarkValid(SavePlace) then
//        begin
//          FDataSets[i].GotoBookmark(SavePlace);
//          FDataSets[i].FreeBookmark(SavePlace);
//        end;
//      end;
//    end;
//
//    Result := True;
//  except
//    CancelModified;
//  end;
//  ApplyModifiedExit;
  Result := TRUE; // Keep compiler happy for now. Change this later.
end;

//-------------------------------------------------------------------
function TfrmDBForm.IsModified: Boolean;
begin
  Result := FIsModified;
end;

//-------------------------------------------------------------------
procedure TfrmDBForm.CancelModified;
//var
//  i: Integer;
begin
//  try
//    CancelModifiedEnter;
//    for i:=1 to FDataSetCount do
//      if FDataSets[i].Active then FDataSets[i].CancelUpdates;
//  finally
//    CancelModifiedExit;
//  end;
end;


//-------------------------------------------------------------------
procedure TfrmDBForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  wRet: Word;
begin

  if IsModified then begin

    wRet := MessageDlg('Spara ändringar?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);

    case wRet of

      mrYes    :  if not ApplyModified then
                    Action := caNone;

      mrNo     :   CancelModified;

      mrCancel :   Action := caNone;

      end;

    end;

end;

//-------------------------------------------------------------------
constructor TfrmDBForm.Create(AOwner: TComponent);
begin
  inherited;
  FIsModified := FALSE;
end;

procedure TfrmDBForm.LoadUserProps (const Form : String) ;
Var x : Integer ;
 SalesGroup,
    ClientNo,
    MarknadNo,
    RegionNo : Integer ;
Begin

{  ClientNo                    :=  ReadInteger ('Avrop', 'ClientNo', 0);
  MarknadNo                   :=  ReadInteger ('Avrop', 'MarknadNo', 0);
  RegionNo                    :=  ReadInteger ('Avrop', 'RegionNo', 0);
  rgOrderType.ItemIndex       :=  ReadInteger ('Avrop', 'OrderType', 0) ;
  cbFilter.Checked            :=  ReadBool ('Avrop', 'VisaAlla', False) ;
  cbLoadsNotInvoiced.Checked  :=  ReadBool ('Avrop', 'EjFakt', False) ;
  SalesGroup                  :=  ReadInteger ('Avrop', 'SalesGroup', 0);}

 cds_Props.Active:= False ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if cds_Props.Eof then
 Begin
//  if cds_PropsBookingTypeNo.AsInteger < 1 then
//  pLoadOrder.Width      := 560
//  else
//  pLoadOrder.Width      := cds_PropsBookingTypeNo.AsInteger ;

  cds_Props.Insert ;
  cds_Props.Post ;


 End ;
// Panel1.Height  := Panel1.Height - 1 ;
End ;

procedure TfrmDBForm.SaveUserProps (const Form : String) ;
Var x : Integer ;
Begin
// cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
// cds_Props.ParamByName('Form').AsString    := Form ;
// cds_Props.Active:= True ;
{ if cds_Props.Eof then
 Begin
  cds_Props.Insert ;
  cds_PropsForm.AsString    := Form ;
  cds_PropsUserID.AsInteger := ThisUser.UserID ;
 End
 else
  cds_Props.Edit ; }

//  cds_PropsBookingTypeNo.AsInteger  := pLoadOrder.Width ;


  if cds_Props.State in [dsEdit, dsInsert] then
  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;

 cds_Props.Active:= False ;
End ;

procedure TfrmDBForm.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsForm.AsString        := Self.Name ;
  cds_PropsUserID.AsInteger     := ThisUser.UserID ; 
end;

end.
