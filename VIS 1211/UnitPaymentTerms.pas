unit UnitPaymentTerms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TFormPaymentTerms = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdPayTermsDBTableView1: TcxGridDBTableView;
    grdPayTermsLevel1: TcxGridLevel;
    grdPayTerms: TcxGrid;
    grdPayTermsDBTableView1PaymentTermsNo: TcxGridDBColumn;
    grdPayTermsDBTableView1PaymentTermName: TcxGridDBColumn;
    grdPayTermsDBTableView1Discount1: TcxGridDBColumn;
    grdPayTermsDBTableView1FreightInDiscount: TcxGridDBColumn;
    grdPayTermsDBTableView1FreightInCommission: TcxGridDBColumn;
    grdPayTermsDBTableView1CommissionPaidByCustomer: TcxGridDBColumn;
    grdPayTermsDBTableView1Description: TcxGridDBColumn;
    grdPayTermsDBTableView1LanguageCode: TcxGridDBColumn;
    siLangLinked_FormPaymentTerms: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var FormPaymentTerms: TFormPaymentTerms;

implementation

uses UnitdmModule1, dmsVidaContact, dmsVidaSystem;

{$R *.dfm}

end.
