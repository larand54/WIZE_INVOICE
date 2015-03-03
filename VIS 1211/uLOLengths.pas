unit uLOLengths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  ActnList, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxDBLookupComboBox, cxLabel, Buttons,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, kbmMemTable, FMTBcd, SqlExpr, cxLookAndFeels, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, System.Actions, siComp,
  siLngLnk;

type
  TfLOLengths = class(TForm)
    Panel1: TPanel;
    grdLOLengthsDBTableView1: TcxGridDBTableView;
    grdLOLengthsLevel1: TcxGridLevel;
    grdLOLengths: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    acAddLength: TAction;
    acRemoveLength: TAction;
    grdLOLengthsDBTableView1ActualLengthMM: TcxGridDBColumn;
    grdLOLengthsDBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn;
    grdLOLengthsDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdLOLengthsDBTableView1ALMM: TcxGridDBColumn;
    grdLOLengthsDBTableView1PkgCodePPNo: TcxGridDBColumn;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    mtLengths: TkbmMemTable;
    mtLengthsProductLengthNo: TIntegerField;
    mtLengthsALMM: TStringField;
    dsLengths: TDataSource;
    lcGroupLengths: TcxDBLookupComboBox;
    acCopyLengthsFromSelectedLengthGroup: TAction;
    cxButton3: TcxButton;
    cxLabel1: TcxLabel;
    sq_PGLengths: TSQLQuery;
    sq_PGLengthsActualLengthMM: TFloatField;
    sq_PGLengthsProductLengthNo: TIntegerField;
    siLangLinked_fLOLengths: TsiLangLinked;
    procedure acAddLengthExecute(Sender: TObject);
    procedure acRemoveLengthExecute(Sender: TObject);
    procedure acRemoveLengthUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acCopyLengthsFromSelectedLengthGroupExecute(Sender: TObject);
    procedure acCopyLengthsFromSelectedLengthGroupUpdate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    PkgCodePPZeroGroupNo: Integer;
  end;

  // var fLOLengths: TfLOLengths;

implementation

uses dmcVidaOrder, dmsVidaSystem, dmsDataConn, dmsVidaProduct, udmLanguage;

{$R *.dfm}

procedure TfLOLengths.acAddLengthExecute(Sender: TObject);
begin
  With dmcOrder do
  Begin
    cds_LOLengths.Insert;
  End;
end;

procedure TfLOLengths.acRemoveLengthExecute(Sender: TObject);
begin
  With dmcOrder do
  Begin
    RemoveCodeFromZeroGroup(PkgCodePPZeroGroupNo,
      cds_LOLengthsPkgCodePPNo.AsInteger);
    cds_LOLengths.Delete;
  End;
end;

procedure TfLOLengths.acRemoveLengthUpdate(Sender: TObject);
begin
  With dmcOrder do
  Begin
    acRemoveLength.Enabled := (cds_LOLengths.Active) and
      ((cds_LOLengths.RecordCount > 0) or (cds_LOLengths.State in [dsEdit,
      dsInsert]));
  End;
end;

procedure TfLOLengths.FormShow(Sender: TObject);
begin
  mtLengths.Active := True;
end;

procedure TfLOLengths.acCopyLengthsFromSelectedLengthGroupExecute
  (Sender: TObject);
begin
  With dmcOrder do
  Begin
    cds_LOLengths.DisableControls;
    Try
      sq_PGLengths.ParamByName('GroupName').AsString := mtLengthsALMM.AsString;
      sq_PGLengths.Open;
      Try
        sq_PGLengths.First;
        While not sq_PGLengths.Eof do
        Begin
          if not cds_LOLengths.Locate('ProductLengthNo',
            sq_PGLengthsProductLengthNo.AsInteger, []) then
          Begin
            cds_LOLengths.Insert;
            cds_LOLengthsProductLengthNo.AsInteger :=
              sq_PGLengthsProductLengthNo.AsInteger;
            cds_LOLengths.Post;
          End;
          sq_PGLengths.Next;
        End; // While
      Finally
        sq_PGLengths.Close;
      End;
    Finally
      cds_LOLengths.EnableControls;
    End;
  End; // With..
end;

procedure TfLOLengths.acCopyLengthsFromSelectedLengthGroupUpdate
  (Sender: TObject);
begin
  acCopyLengthsFromSelectedLengthGroup.Enabled := (mtLengths.Active)
  // and (mtLengths.RecordCount > 0)
    and (mtLengthsALMM.AsString > ' ');
end;

procedure TfLOLengths.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  mtLengths.Active := False;
end;

end.
