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
  dxSkinscxPCPainter, cxNavigator, System.Actions, siComp, siLngLnk, uCustomReports;

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
    siLangLinked_fAddKundSpecifika: TsiLangLinked;
    procedure acCloseExecute(Sender: TObject);
    procedure acAddKSExecute(Sender: TObject);
    procedure acTaBortExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acTaBortUpdate(Sender: TObject);
  private
    { Private declarations }
    FCR: TCustomReports;
    Function Saved: Boolean;
  public
    { Public declarations }
    constructor create(sender: TComponent; aCR: TCustomReports); reintroduce; virtual;
  end;

  // var fAddKundSpecifika: TfAddKundSpecifika;

implementation

uses dmsVidaSystem, udmLanguage;

{$R *.dfm}

procedure TfAddKundSpecifika.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfAddKundSpecifika.acAddKSExecute(Sender: TObject);
begin
  FCR.Insert;
  grdDocs.SetFocus;
end;

procedure TfAddKundSpecifika.acTaBortExecute(Sender: TObject);
begin
  FCR.Delete
end;

procedure TfAddKundSpecifika.acSaveExecute(Sender: TObject);
begin
  FCR.Save
end;

Function TfAddKundSpecifika.Saved: Boolean;
begin
  Result := FCR.Saved;
end;

procedure TfAddKundSpecifika.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not Saved;
end;

procedure TfAddKundSpecifika.acTaBortUpdate(Sender: TObject);
begin
  acTaBort.Enabled := (FCR.Dsrc.DataSet.Active) and (FCR.Dsrc.DataSet.RecordCount > 0);
end;

constructor TfAddKundSpecifika.create(sender: TComponent; aCR: TCustomReports);
begin
  inherited create(sender);
  FCR := aCR;
  grdDocsDBTableView1.DataController.DataSource := FCR.Dsrc;
end;

end.
