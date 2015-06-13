unit uPackageSize;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxLabel,
  cxTextEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxNavigator, siComp,
  siLngLnk;

type
  TfPackageSize = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PackageSizeNo: TcxGridDBColumn;
    cxGrid1DBTableView1PackageSizeName: TcxGridDBColumn;
    cxGrid1DBTableView1LanguageCode: TcxGridDBColumn;
    cxGrid1DBTableView1DateCreated: TcxGridDBColumn;
    cxGrid1DBTableView1CreatedUser: TcxGridDBColumn;
    cxGrid1DBTableView1Act: TcxGridDBColumn;
    siLangLinked_fPackageSize: TsiLangLinked;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fPackageSize: TfPackageSize;

implementation

{$R *.dfm}

uses dmsVidaSystem;

procedure TfPackageSize.FormDestroy(Sender: TObject);
begin
 with dmsSystem do
 Begin
  cds_PackageSize.active := False ;
 End;
end;

procedure TfPackageSize.FormShow(Sender: TObject);
begin
 with dmsSystem do
 Begin
  if cds_PackageSize.active then
   cds_PackageSize.active := False ;
  cds_PackageSize.active := True ;
 End;
end;

end.
