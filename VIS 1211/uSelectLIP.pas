unit uSelectLIP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, StdCtrls, Buttons, ExtCtrls, cxLabel, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, kbmMemTable,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue;

type
  TfSelectLIP = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    mtProps: TkbmMemTable;
    mtPropsFakturanr: TIntegerField;
    mtPropsPIPNo: TIntegerField;
    mtPropsLIPNo: TIntegerField;
    mtPropsPIP: TStringField;
    mtPropsLIP: TStringField;
    mtPropsOwnerNo: TIntegerField;
    dsProps: TDataSource;
    lcPIP: TcxDBLookupComboBox;
    lcLIP: TcxDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure mtPropsPIPNoChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    LO_CUSTOMERNO, LIPNo : Integer ;
    procedure LoadDefaultLager ;
  end;

//var fSelectLIP: TfSelectLIP;

implementation

uses dmsVidaContact, VidaUser, VidaConst , dmc_UserProps;

{$R *.dfm}

procedure TfSelectLIP.LoadDefaultLager ;
Var y, x, PIPNo : Integer ;
begin
 mtProps.Active := True ;
 PIPNo          :=  dmsContact.GetPIPNo(LIPNo) ;

 dm_UserProps.Refresh_cds_PIP2(LO_CUSTOMERNO, LO_CUSTOMERNO) ;
// dm_UserProps.SetPIPNo(PIPNo) ;


 dm_UserProps.Refresh_cds_LIP2(PIPNo) ;

 if PIPNo > 0 then
 Begin
  if mtProps.State in [dsBrowse] then
  mtProps.Edit ;
  mtPropsPIPNo.AsInteger  := PIPNo ;
  mtPropsLIPNo.AsInteger  := LIPNo ;
  mtProps.Post ;
 End ;

 dm_UserProps.SetLIPNo(LIPNo) ;
end;

procedure TfSelectLIP.BitBtn1Click(Sender: TObject);
begin
 if mtPropsLIPNo.AsInteger > 0 then
  LIPNo:= mtPropsLIPNo.AsInteger
   else
    LIPNo:= -1 ;
end;

procedure TfSelectLIP.mtPropsPIPNoChange(Sender: TField);
begin
  dm_UserProps.Refresh_cds_LIP2(mtPropsPIPNo.AsInteger) ;
end;

end.
