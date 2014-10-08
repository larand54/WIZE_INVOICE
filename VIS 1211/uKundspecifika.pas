unit uKundspecifika;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Buttons, ExtCtrls, cxLabel,
  cxTextEdit, cxDBLookupComboBox, Menus, cxLookAndFeelPainters, ActnList,
  cxButtons, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, cxNavigator, System.Actions, siComp, siLngLnk;

type
  TfKundspecifika = class(TForm)
    Panel1: TPanel;
    grdKundspecifikaDBTableView1: TcxGridDBTableView;
    grdKundspecifikaLevel1: TcxGridLevel;
    grdKundspecifika: TcxGrid;
    grdKundspecifikaDBTableView1DocType: TcxGridDBColumn;
    grdKundspecifikaDBTableView1ReportName: TcxGridDBColumn;
    grdKundspecifikaDBTableView1Beskrivning: TcxGridDBColumn;
    grdKundspecifikaDBTableView1ReportNo: TcxGridDBColumn;
    grdKundspecifikaDBTableView1DocTypeName: TcxGridDBColumn;
    ActionList1: TActionList;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    acAddReport: TAction;
    acTaBort: TAction;
    acSave: TAction;
    acClose: TAction;
    siLangLinked_fKundspecifika: TsiLangLinked;
    procedure acCloseExecute(Sender: TObject);
    procedure acAddReportExecute(Sender: TObject);
    procedure acTaBortExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acTaBortUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Function Saved: Boolean;
  public
    { Public declarations }
  end;

  // var fKundspecifika: TfKundspecifika;

implementation

uses dmcVidaInvoice, dmsVidaSystem;

{$R *.dfm}

procedure TfKundspecifika.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfKundspecifika.acAddReportExecute(Sender: TObject);
begin
  With dmsSystem do
  Begin
    cdsRptNames.Insert;
    grdKundspecifika.SetFocus;
  End;
end;

procedure TfKundspecifika.acTaBortExecute(Sender: TObject);
begin
  With dmsSystem do
  Begin
    cdsRptNames.Delete;
  End;
end;

procedure TfKundspecifika.acSaveExecute(Sender: TObject);
begin
  With dmsSystem do
  Begin
    if cdsRptNames.State in [dsEdit, dsInsert] then
      cdsRptNames.Post;
    if cdsRptNames.ChangeCount > 0 then
      cdsRptNames.ApplyUpdates(0);
  End;
end;

Function TfKundspecifika.Saved: Boolean;
begin
  Result := True;
  With dmsSystem do
  Begin
    if cdsRptNames.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsRptNames.ChangeCount > 0 then
      Result := False;
  End;
end;

procedure TfKundspecifika.acTaBortUpdate(Sender: TObject);
begin
  With dmsSystem do
  Begin
    acTaBort.Enabled := (cdsRptNames.Active) and (cdsRptNames.RecordCount > 0);
  End;
end;

procedure TfKundspecifika.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not Saved;
end;

procedure TfKundspecifika.FormShow(Sender: TObject);
begin
  With dmsSystem do
  Begin
    cdsRptNames.Active := True;
  End;
end;

procedure TfKundspecifika.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  With dmsSystem do
  Begin
    cdsRptNames.Active := False;
  End;
end;

end.
