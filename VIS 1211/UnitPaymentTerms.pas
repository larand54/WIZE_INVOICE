unit UnitPaymentTerms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var FormPaymentTerms: TFormPaymentTerms;

implementation

uses UnitdmModule1, dmsVidaContact, dmsVidaSystem;

{$R *.dfm}

end.
