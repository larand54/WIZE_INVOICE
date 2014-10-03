unit uLegoCost ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxCntner,
  StdCtrls, Buttons, DB, dxExEdtr, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, ActnList, cxCalc, cxLookAndFeels, Menus,
  cxLookAndFeelPainters, cxSplitter, cxButtons, ImgList,
  cxGridBandedTableView, cxGridDBBandedTableView, cxPC, cxCalendar ;

type
  TfLegoCost = class(TForm)
    Panel1: TPanel;
    grdPrdUnitDBTableView1: TcxGridDBTableView;
    grdPrdUnitLevel1: TcxGridLevel;
    grdPrdUnit: TcxGrid;
    grdPrdUnitDBTableView1ProductionUnitNo: TcxGridDBColumn;
    grdPrdUnitDBTableView1ClientNo: TcxGridDBColumn;
    grdPrdUnitDBTableView1CreatedUser: TcxGridDBColumn;
    grdPrdUnitDBTableView1ModifiedUser: TcxGridDBColumn;
    grdPrdUnitDBTableView1DateCreated: TcxGridDBColumn;
    grdPrdUnitDBTableView1LIPNo: TcxGridDBColumn;
    grdPrdUnitDBTableView1RegistrationPointNo: TcxGridDBColumn;
    grdPrdUnitDBTableView1RegPoint: TcxGridDBColumn;
    grdPrdUnitDBTableView1CurrentPkgNo: TcxGridDBColumn;
    grdPrdUnitDBTableView1HighestPkgNo: TcxGridDBColumn;
    grdPrdUnitDBTableView1Cost: TcxGridDBColumn;
    grdPrdUnitDBTableView1PriceUnitNo: TcxGridDBColumn;
    grdPrdUnitDBTableView1ENHET: TcxGridDBColumn;
    ActionList1: TActionList;
    acAddRow: TAction;
    acRemoveRow: TAction;
    acSave: TAction;
    acCancelAllChanges: TAction;
    acAddLegoPris: TAction;
    acDeleteLegoPris: TAction;
    cxLookAndFeelController1: TcxLookAndFeelController;
    ImageList1: TImageList;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxSplitter1: TcxSplitter;
    grdPrdUnitDBTableView1CapitalCost: TcxGridDBColumn;
    grdPrdUnitDBTableView1OverheadCost: TcxGridDBColumn;
    grdPrdUnitDBTableView1SalaryCost: TcxGridDBColumn;
    grdPrdUnitDBBandedTableView1: TcxGridDBBandedTableView;
    grdPrdUnitDBBandedTableView1ENHET: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxButton7: TcxButton;
    acClose: TAction;
    cxPageControl1: TcxPageControl;
    tsLegoPrislista: TcxTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    grdBiProd: TcxGrid;
    grdBiProdDBTableView1: TcxGridDBTableView;
    grdBiProdLevel1: TcxGridLevel;
    grdPrdUnitDBBandedTableView1LegoCostPerAM3: TcxGridDBBandedColumn;
    grdPrdUnitDBBandedTableView1Legoverk: TcxGridDBBandedColumn;
    grdPrdUnitDBBandedTableView1Mtpunkt: TcxGridDBBandedColumn;
    grdBiProdDBTableView1ATMM: TcxGridDBColumn;
    grdBiProdDBTableView1ABMM: TcxGridDBColumn;
    grdBiProdDBTableView1NoOfSplit: TcxGridDBColumn;
    grdBiProdDBTableView1DateModified: TcxGridDBColumn;
    grdBiProdDBTableView1Price: TcxGridDBColumn;
    grdBiProdDBTableView1UserName: TcxGridDBColumn;
    grdBiProdDBTableView1Prisenhet: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acAddRowExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelAllChangesExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelAllChangesUpdate(Sender: TObject);
    procedure acRemoveRowUpdate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acAddLegoPrisExecute(Sender: TObject);
    procedure acDeleteLegoPrisExecute(Sender: TObject);
    procedure acDeleteLegoPrisUpdate(Sender: TObject);
    procedure acAddLegoPrisUpdate(Sender: TObject);
  private
    { Private declarations }
    function  DataSaved : Boolean ;
  public
    { Public declarations }
   class procedure Execute;
  end;

implementation

uses dmsVidaContact, dmsVidaSystem, VidaUser ;

{$R *.dfm}

class procedure TfLegoCost.Execute;
begin
  with Self.Create(nil) do begin
    try
      ShowModal;
    finally
      Free;
    end;
  end;
end;

function TfLegoCost.DataSaved : Boolean ;
begin
 With dmsContact do
 Begin
  Result:= True ;
  if cds_SOLegoCost.State in [dsInsert, dsEdit] then
   Result:= False ;
  if cds_SOLegoCost.ChangeCount > 0 then
   Result:= False ;

  if cds_LegoPris.State in [dsInsert, dsEdit] then
   Result:= False ;
  if cds_LegoPris.ChangeCount > 0 then
   Result:= False ;
 End ;
end;

procedure TfLegoCost.FormCreate(Sender: TObject);
Var x : Integer ;
begin
 With dmsContact do
 Begin
  cds_SOLegoCost.Active := True ;
  cds_LegoPris.Active   := True ;
 End ;
end;

procedure TfLegoCost.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSaved = False then
  if MessageDlg('Data är inte sparad, vill du spara innan du avslutar?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     acSaveExecute(Sender)
      else
       acCancelAllChangesExecute(Sender) ;

 With dmsContact do
 Begin
  cds_LegoPris.Active     := False ;
  cds_SOLegoCost.Active   := False ;
 End ;
 CanClose:= True ;
end;

procedure TfLegoCost.acAddRowExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
   if cds_SOLegoCost.State in [dsInsert, dsEdit] then
   cds_SOLegoCost.Post ;
   cds_SOLegoCost.Insert ;
  End ;
end;

procedure TfLegoCost.acRemoveRowExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmsContact do
 Begin
  cds_SOLegoCost.Delete ;
 End ;
end;

procedure TfLegoCost.acSaveExecute(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_SOLegoCost.State in [dsInsert, dsEdit] then
   cds_SOLegoCost.Post ;
  if cds_SOLegoCost.ChangeCount > 0 then
   cds_SOLegoCost.ApplyUpdates(0) ;

  if cds_LegoPris.State in [dsInsert, dsEdit] then
   cds_LegoPris.Post ;
  if cds_LegoPris.ChangeCount > 0 then
   cds_LegoPris.ApplyUpdates(0) ;
 End ;
end;

procedure TfLegoCost.acCancelAllChangesExecute(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_LegoPris.State in [dsInsert, dsEdit] then
  cds_LegoPris.Post ;
  if cds_LegoPris.ChangeCount > 0 then
   cds_LegoPris.CancelUpdates ;

  if cds_SOLegoCost.State in [dsInsert, dsEdit] then
  cds_SOLegoCost.Post ;
  if cds_SOLegoCost.ChangeCount > 0 then
   cds_SOLegoCost.CancelUpdates ;
 End ;
end;

procedure TfLegoCost.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSaved ;
end;

procedure TfLegoCost.acCancelAllChangesUpdate(Sender: TObject);
begin
 acCancelAllChanges.Enabled:= not DataSaved ;
end;

procedure TfLegoCost.acRemoveRowUpdate(Sender: TObject);
begin
 With dmsContact do
 Begin
  acRemoveRow.Enabled:= cds_SOLegoCost.RecordCount > 0 ;
 End ;
end;

procedure TfLegoCost.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLegoCost.acAddLegoPrisExecute(Sender: TObject);
begin
 With dmsContact do
 Begin
  grdBiProd.SetFocus ;
  cds_LegoPris.Insert ;
 End ;
end;

procedure TfLegoCost.acDeleteLegoPrisExecute(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_LegoPris.Delete ;
 End ;
end;

procedure TfLegoCost.acDeleteLegoPrisUpdate(Sender: TObject);
begin
 With dmsContact do
 Begin
  acDeleteLegoPris.Enabled  :=  (cds_LegoPris.Active) and (cds_LegoPris.RecordCount > 0) ;
 End ;
end;

procedure TfLegoCost.acAddLegoPrisUpdate(Sender: TObject);
begin
 With dmsContact do
 Begin
  acAddLegoPris.Enabled  :=  (cds_SOLegoCost.Active) and (cds_SOLegoCost.RecordCount > 0) ;
 End ;
end;

end.
