unit USelectLIPNo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB, kbmMemTable, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, siComp, siLngLnk;

type
  TfSelectLIPNo = class(TForm)
    Panel1: TPanel;
    PanelLager: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lcPIP: TcxDBLookupComboBox;
    lcLIP: TcxDBLookupComboBox;
    cds_LO_LookUp: TFDQuery;
    cds_LO_LookUpLoadingPIPNo: TIntegerField;
    cds_LO_LookUpLoadingLIPNo: TIntegerField;
    mtProps: TkbmMemTable;
    mtPropsFakturanr: TIntegerField;
    mtPropsPIPNo: TIntegerField;
    mtPropsLIPNo: TIntegerField;
    mtPropsPIP: TStringField;
    mtPropsLIP: TStringField;
    mtPropsOwnerNo: TIntegerField;
    dsProps: TDataSource;
    ds_LIP2: TDataSource;
    ds_PIP2: TDataSource;
    cds_PIP: TFDQuery;
    cds_PIPPIPNo: TIntegerField;
    cds_PIPORT: TStringField;
    cds_PIPOwnerNo: TIntegerField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLAGERGRUPP: TStringField;
    cds_LIPPIPNo: TIntegerField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    siLangLinked_fSelectLIPNo: TsiLangLinked;
    procedure lcPIPEnter(Sender: TObject);
    procedure lcPIPExit(Sender: TObject);
    procedure lcLIPEnter(Sender: TObject);
    procedure lcLIPExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure InitLager;
  public
    { Public declarations }
    LONo, OwnerNo: Integer;
  end;

  // var fSelectLIPNo: TfSelectLIPNo;

implementation

{$R *.dfm}

uses dmsDataConn;

procedure TfSelectLIPNo.FormShow(Sender: TObject);
begin
  InitLager;
end;

Procedure TfSelectLIPNo.InitLager;
Begin
  mtProps.Active := True;
  cds_LO_LookUp.Active := False;
  cds_LO_LookUp.ParamByName('ShippingPlanNo').AsInteger := LONo;
  cds_LO_LookUp.Active := True;
  if not cds_LO_LookUp.Eof then
  Begin
    mtProps.Insert;
    mtPropsPIPNo.AsInteger := cds_LO_LookUpLoadingPIPNo.AsInteger;
    mtPropsLIPNo.AsInteger := cds_LO_LookUpLoadingLIPNo.AsInteger;
    mtPropsOwnerNo.AsInteger := OwnerNo;
    mtProps.Post;
  end;
End;

procedure TfSelectLIPNo.lcLIPEnter(Sender: TObject);
begin
  if mtPropsPIPNo.isNull then
    cds_LIP.Filter := 'PIPNo = -1'
  else
    cds_LIP.Filter := 'PIPNo = ' + mtPropsPIPNo.AsString;
  cds_LIP.Filtered := True;
end;

procedure TfSelectLIPNo.lcLIPExit(Sender: TObject);
begin
  cds_LIP.Filtered := False;
end;

procedure TfSelectLIPNo.lcPIPEnter(Sender: TObject);
Begin
  if not mtPropsOwnerNo.isNull then
    cds_PIP.Filter := 'OwnerNo = ' + mtPropsOwnerNo.AsString
  else
    cds_PIP.Filter := 'OwnerNo = -1';
  cds_PIP.Filtered := True;
end;

procedure TfSelectLIPNo.lcPIPExit(Sender: TObject);
begin
  cds_PIP.Filtered := False;
end;

end.
