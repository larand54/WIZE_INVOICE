unit uAddKundSpecifika;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox, cxSpinEdit,
  cxCheckBox, cxTextEdit, Menus, cxLookAndFeelPainters, Buttons, StdCtrls,
  cxButtons, ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, System.Actions;

type
  TfAddKundSpecifika = class(TForm)
    Panel1: TPanel;
    grdDocs: TcxGrid;
    grdDocsDBTableView1: TcxGridDBTableView;
    grdDocsDBTableView1TYPAVRAPPORT: TcxGridDBColumn;
    grdDocsDBTableView1CRFIL: TcxGridDBColumn;
    grdDocsDBTableView1NoOfCopy: TcxGridDBColumn;
    grdDocsDBTableView1collated: TcxGridDBColumn;
    grdDocsDBTableView1PrinterSetup: TcxGridDBColumn;
    grdDocsDBTableView1promptUser: TcxGridDBColumn;
    grdDocsDBTableView1ClientNo: TcxGridDBColumn;
    grdDocsDBTableView1RoleType: TcxGridDBColumn;
    grdDocsDBTableView1DocType: TcxGridDBColumn;
    grdDocsDBTableView1ReportNo: TcxGridDBColumn;
    grdDocsLevel1: TcxGridLevel;
    ActionList1: TActionList;
    acAddKS: TAction;
    acTaBort: TAction;
    acSave: TAction;
    acClose: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure acCloseExecute(Sender: TObject);
    procedure acAddKSExecute(Sender: TObject);
    procedure acTaBortExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acTaBortUpdate(Sender: TObject);
  private
    { Private declarations }
    Function Saved: Boolean;
  public
    { Public declarations }
  end;

  // var fAddKundSpecifika: TfAddKundSpecifika;

implementation

uses dmsVidaSystem;

{$R *.dfm}

procedure TfAddKundSpecifika.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfAddKundSpecifika.acAddKSExecute(Sender: TObject);
begin
  With dmsSystem do
  Begin
    cdsClientPrefDocs.Insert;
    grdDocs.SetFocus;
    // cdsClientPrefDocsDocType.AsInteger:= cKontrakt ;
  End;
end;

procedure TfAddKundSpecifika.acTaBortExecute(Sender: TObject);
begin
  With dmsSystem do
  Begin
    cdsClientPrefDocs.Delete;
  End;
end;

procedure TfAddKundSpecifika.acSaveExecute(Sender: TObject);
begin
  With dmsSystem do
  Begin
    if cdsClientPrefDocs.State in [dsEdit, dsInsert] then
      cdsClientPrefDocs.Post;
    if cdsClientPrefDocs.ChangeCount > 0 then
      cdsClientPrefDocs.ApplyUpdates(0);
  End;
end;

Function TfAddKundSpecifika.Saved: Boolean;
begin
  Result := True;
  With dmsSystem do
  Begin
    if cdsClientPrefDocs.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsClientPrefDocs.ChangeCount > 0 then
      Result := False;
  End;
end;

procedure TfAddKundSpecifika.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not Saved;
end;

procedure TfAddKundSpecifika.acTaBortUpdate(Sender: TObject);
begin
  With dmsSystem do
  Begin
    acTaBort.Enabled := (cdsClientPrefDocs.Active) and
      (cdsClientPrefDocs.RecordCount > 0);
  End;
end;

end.
