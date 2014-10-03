unit UnitDelTerms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormDelTerms = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdDelTermsDBTableView1: TcxGridDBTableView;
    grdDelTermsLevel1: TcxGridLevel;
    grdDelTerms: TcxGrid;
    grdDelTermsDBTableView1DeliveryTerm: TcxGridDBColumn;
    grdDelTermsDBTableView1Description: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var   FormDelTerms: TFormDelTerms;

implementation

uses UnitdmModule1, dmsVidaSystem, dmsVidaContact;

{$R *.dfm}

end.
