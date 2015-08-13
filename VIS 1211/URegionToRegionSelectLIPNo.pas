unit URegionToRegionSelectLIPNo ;

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
  TfRegionToRegionSelectLIPNo = class(TForm)
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
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLAGERGRUPP: TStringField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    siLangLinked_fSelectLIPNo: TsiLangLinked;
    cds_Verk: TFDQuery;
    cxLabel3: TcxLabel;
    lcVerk: TcxDBLookupComboBox;
    ds_Verk: TDataSource;
    mtPropsVerk: TStringField;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    procedure FormShow(Sender: TObject);
    procedure mtPropsOwnerNoChange(Sender: TField);
    procedure mtPropsPIPNoChange(Sender: TField);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure InitLager;
  public
    { Public declarations }
    DestinationCityNo, LIPNo, OwnerNo: Integer;
  end;

  // var fRegionToRegionSelectLIPNo: TfRegionToRegionSelectLIPNo;

implementation

{$R *.dfm}

uses dmsDataConn, udmLanguage, VidaUser ;

procedure TfRegionToRegionSelectLIPNo.cxButton1Click(Sender: TObject);
begin
  if mtPropsLIPNo.AsInteger > 0 then
    LIPNo := mtPropsLIPNo.AsInteger
  else
    LIPNo := -1;
end;

procedure TfRegionToRegionSelectLIPNo.FormShow(Sender: TObject);
begin
  InitLager;
end;

Procedure TfRegionToRegionSelectLIPNo.InitLager;
Begin
 cds_Verk.Active  := False ;
 cds_Verk.ParamByName('SALESREGIONNO').AsInteger  :=  OwnerNo ;
 cds_Verk.Active  := True ;
 mtProps.Active := True;
 if cds_Verk.Locate('ClientNo', ThisUser.CompanyNo, []) then
 Begin
    mtProps.Insert;
    mtPropsOwnerNo.AsInteger  := ThisUser.CompanyNo ;
//    mtPropsPIPNo.AsInteger := cds_LO_LookUpLoadingPIPNo.AsInteger;
//    mtPropsLIPNo.AsInteger := cds_LO_LookUpLoadingLIPNo.AsInteger;
    mtProps.Post;
 End;

 //cds_PIP.ParamByName('OwnerNo').AsInteger :=


End;

procedure TfRegionToRegionSelectLIPNo.mtPropsOwnerNoChange(Sender: TField);
begin
 cds_PIP.Active := False ;
 cds_PIP.ParamByName('OwnerNo').AsInteger :=  mtPropsOwnerNo.AsInteger ;
 cds_PIP.Active := True ;

 mtPropsPIPNo.AsInteger := -1 ;
end;

procedure TfRegionToRegionSelectLIPNo.mtPropsPIPNoChange(Sender: TField);
begin
 cds_LIP.Active := False ;
 cds_LIP.ParamByName('PIPNo').AsInteger :=  mtPropsPIPNo.AsInteger ;
 cds_LIP.Active := True ;
 mtPropsLIPNo.AsInteger := -1 ;
end;

end.
