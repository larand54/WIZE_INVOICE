unit UnitKP_List;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Menus,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGraphics, FMTBcd, DB, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxGridExportLink, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  cxLookAndFeelPainters, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, dxBar, cxLabel, cxImageComboBox,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinsdxBarPainter,
  dxSkinscxPCPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  System.Actions, siComp, siLngLnk;

type
  TfrmKP_List = class(TfrmDBForm)
    acCustomizegrdKP_List: TAction;
    pmgrdKP_List: TPopupMenu;
    CustomizeLayout1: TMenuItem;
    acRefresh: TAction;
    acPrint: TAction;
    acExportToExcel: TAction;
    pmShortcut: TPopupMenu;
    ExporttillExcel1: TMenuItem;
    Skrivut1: TMenuItem;
    Uppdatera1: TMenuItem;
    Stng1: TMenuItem;
    dsKP_List: TDataSource;
    grdKPListDBTableView1: TcxGridDBTableView;
    grdKPListLevel1: TcxGridLevel;
    grdKPList: TcxGrid;
    grdKPListDBTableView1ORDERNUMBER: TcxGridDBColumn;
    grdKPListDBTableView1PRODUCT: TcxGridDBColumn;
    grdKPListDBTableView1LENGTH: TcxGridDBColumn;
    grdKPListDBTableView1DESTINATION: TcxGridDBColumn;
    grdKPListDBTableView1SUPPLIER: TcxGridDBColumn;
    grdKPListDBTableView1LO: TcxGridDBColumn;
    grdKPListDBTableView1VOLUME: TcxGridDBColumn;
    grdKPListDBTableView1VOLUNIT: TcxGridDBColumn;
    grdKPListDBTableView1DELIVERED: TcxGridDBColumn;
    grdKPListDBTableView1BALANCE: TcxGridDBColumn;
    grdKPListDBTableView1M3NOM_DELIVERED: TcxGridDBColumn;
    grdKPListDBTableView1SHIPMENT: TcxGridDBColumn;
    grdKPListDBTableView1READYDATE: TcxGridDBColumn;
    grdKPListDBTableView1ETD: TcxGridDBColumn;
    grdKPListDBTableView1VESSEL: TcxGridDBColumn;
    grdKPListDBTableView1ETA: TcxGridDBColumn;
    grdKPListDBTableView1INVOICENO: TcxGridDBColumn;
    grdKPListDBTableView1CLIENT: TcxGridDBColumn;
    grdKPListDBTableView1STATUS: TcxGridDBColumn;
    grdKPListDBTableView1ORDERNO: TcxGridDBColumn;
    grdKPListDBTableView1CLIENTNO: TcxGridDBColumn;
    grdKPListDBTableView1DESTINATIONNO: TcxGridDBColumn;
    grdKPListDBTableView1UNIQUERECORDNO: TcxGridDBColumn;
    grdKPListDBTableView1SALESREGIONNO: TcxGridDBColumn;
    grdKPListDBTableView1ORDERTYPE: TcxGridDBColumn;
    SaveDialog2: TSaveDialog;
    cxButton1: TcxButton;
    lcKund: TcxDBLookupComboBox;
    cdsKP_List: TFDStoredProc;
    cbAvropStatus: TcxDBImageComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cdsKP_ListORDERNUMBER: TStringField;
    cdsKP_ListPRODUCT: TStringField;
    cdsKP_ListLENGTH: TStringField;
    cdsKP_ListDESTINATION: TStringField;
    cdsKP_ListSUPPLIER: TStringField;
    cdsKP_ListLO: TIntegerField;
    cdsKP_ListVOLUME: TFloatField;
    cdsKP_ListVOLUNIT: TStringField;
    cdsKP_ListDELIVERED: TFloatField;
    cdsKP_ListBALANCE: TFloatField;
    cdsKP_ListM3NOM_DELIVERED: TFloatField;
    cdsKP_ListSHIPMENT: TStringField;
    cdsKP_ListREADYDATE: TStringField;
    cdsKP_ListETD: TSQLTimeStampField;
    cdsKP_ListVESSEL: TStringField;
    cdsKP_ListETA: TSQLTimeStampField;
    cdsKP_ListINVOICENO: TIntegerField;
    cdsKP_ListCLIENT: TStringField;
    cdsKP_ListSTATUS: TIntegerField;
    cdsKP_ListORDERNO: TIntegerField;
    cdsKP_ListCLIENTNO: TIntegerField;
    cdsKP_ListDESTINATIONNO: TIntegerField;
    cdsKP_ListUNIQUERECORDNO: TIntegerField;
    cdsKP_ListSALESREGIONNO: TIntegerField;
    cdsKP_ListORDERTYPE: TIntegerField;
    lcAgent: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cds_PropsAgent: TStringField;
    siLangLinked1: TsiLangLinked;
    procedure acCustomizegrdKP_ListExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure atExitExecute(Sender: TObject);
  private
    { Private declarations }
    ClientNo: Integer;
  public
    { Public declarations }
    AppName: String;
    constructor CreateCo(CompanyNo: Integer);
    destructor Destroy;
  end;

var
  frmKP_List: TfrmKP_List;

implementation

uses VidaConst, VidaUser, VidaUtils,
  UnitCRViewReport, dmsVidaContact, dmsDataConn, dmsVidaSystem, udmLanguage;

{$R *.dfm}

constructor TfrmKP_List.CreateCo(CompanyNo: Integer);

begin
  inherited; // Create(AOwner);
  // Load column widths set last time.
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdKPList.Name,
    grdKPListDBTableView1);
  // Populate the combo box with names of suppliers from the database
  // dmsContact.LoadClients(cbClients.Properties.Items,1);
end;

destructor TfrmKP_List.Destroy;
begin
  inherited;
end;

procedure TfrmKP_List.acCustomizegrdKP_ListExecute(Sender: TObject);
begin
  inherited;
  if grdKPList.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdKPList.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmKP_List.FormDestroy(Sender: TObject);
begin
  frmKP_List := NIL;
  inherited;
end;

procedure TfrmKP_List.acRefreshExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  inherited;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Try
    cdsKP_List.Active := False;
    if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0) then
      cdsKP_List.ParamByName('@CustomerNo').AsInteger :=
        cds_PropsClientNo.AsInteger
    else
      cdsKP_List.ParamByName('@CustomerNo').AsInteger := 0;

    if (not cds_PropsAgentNo.IsNull) and (cds_PropsAgentNo.AsInteger > 0) then
      cdsKP_List.ParamByName('@AgentNo').AsInteger := cds_PropsAgentNo.AsInteger
    else
      cdsKP_List.ParamByName('@AgentNo').AsInteger := 0;
    cdsKP_List.ParamByName('@Status').AsInteger := cds_PropsStatus.AsInteger;
    cdsKP_List.Active := True;

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfrmKP_List.acPrintExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  inherited;
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 2);
    A[0] := cds_PropsClientNo.AsInteger;
    A[1] := cds_PropsStatus.AsInteger;

    FormCRViewReport.CreateCo('KP_LISTA.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;

end;

procedure TfrmKP_List.acExportToExcelExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName: String;
  ExcelDir: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
    SaveDialog2.DefaultExt := 'xls';
    SaveDialog2.InitialDir := ExcelDir;
    if SaveDialog2.Execute then
    Begin
      FileName := SaveDialog2.FileName;

      Try
        ExportGridToExcel(FileName, grdKPList, False, False, True, 'xls');
        ShowMessage('Tabell exporterad till Excel fil ' + FileName);
      Except
      End;
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmKP_List.FormShow(Sender: TObject);
begin
  inherited;
  LoadUserProps(Self.Caption);
  lcKund.SetFocus;
end;

procedure TfrmKP_List.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  SaveUserProps(Self.Caption);
  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdKPList.Name,
    grdKPListDBTableView1);
  CanClose := True;
end;

procedure TfrmKP_List.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmKP_List.atExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

End.
