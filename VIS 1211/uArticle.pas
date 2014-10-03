unit uArticle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBaseFormA, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxPSCore,
  dxPScxCommon, DBClient, ActnList, ImgList, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons,
  ExtCtrls, cxTextEdit, cxSplitter, cxImageComboBox, cxLabel, Buttons,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet,
  uADCompClient, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPScxSSLnk;

type
  TfArticle = class(TfrmBaseFormA)
    cxGrid1DBTableView1ArticleNo: TcxGridDBColumn;
    cxGrid1DBTableView1ArticleName: TcxGridDBColumn;
    Panel3: TPanel;
    grdKontoNrDBTableView1: TcxGridDBTableView;
    grdKontoNrLevel1: TcxGridLevel;
    grdKontoNr: TcxGrid;
    acAddStdKontoTyper: TAction;
    grdKontoNrDBTableView1ArticleNo: TcxGridDBColumn;
    grdKontoNrDBTableView1KontoNr: TcxGridDBColumn;
    grdKontoNrDBTableView1AccountType: TcxGridDBColumn;
    grdKontoNrDBTableView1DateCreated: TcxGridDBColumn;
    grdKontoNrDBTableView1CreatedUser: TcxGridDBColumn;
    cxButton7: TcxButton;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acAddStdKontoTyperExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fArticle: TfArticle;

implementation

uses dmsVidaSystem;

{$R *.dfm}

procedure TfArticle.FormCreate(Sender: TObject);
begin
  inherited;
 With dmsSystem do
 Begin
//  cds_ArticleGroup.Active := False ;
//  cds_ArticleGroup.Active := True ;

//  ad_accountRow.Active    := False ;
//  ad_accountRow.Active    := True ;  
 End ;
end;

procedure TfArticle.acSaveExecute(Sender: TObject);
begin
  inherited;
{ With dmsSystem do
 Begin
  if ad_accountRow.State in [dsEdit, dsInsert] then
   ad_accountRow.Post ;
  if ad_accountRow.ChangeCount > 0 then
  Begin
   ad_accountRow.ApplyUpdates(0) ;
   ad_accountRow.CommitUpdates ;
  End ;
 End ;}
end;

procedure TfArticle.acCancelChangesExecute(Sender: TObject);
begin
  inherited;
{ With dmsSystem do
 Begin
  if ad_accountRow.State in [dsEdit, dsInsert] then
   ad_accountRow.Cancel ;
  if ad_accountRow.ChangeCount > 0 then
   ad_accountRow.CancelUpdates ;
 End ; }
end;

procedure TfArticle.acAddStdKontoTyperExecute(Sender: TObject);
Var x : Integer ;
begin
  inherited;
{ With dmsSystem do
 Begin
  For x := 1 to 4 do
  Begin
   if not ad_accountRow.Locate('AccountType', x, []) then
   Begin
    ad_accountRow.Insert ;
    ad_accountRowAccountType.AsInteger  := x ;
    ad_accountRow.Post ;
   End ;
  End ;
 End ;}
end;

procedure TfArticle.acSaveUpdate(Sender: TObject);
begin
  inherited;
{ With dmsSystem do
 Begin
  acSave.Enabled  := (ad_accountRow.Active)
  and (ad_accountRow.ChangeCount > 0) ;
 End ; }
end;

end.
