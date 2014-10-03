unit UnitLONumber;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxExEdtr;

type
  TfLONumber = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    eLONo: TEdit;
    Panel2: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    grdProducts: TdxDBGrid;
    grdProductsPRODUCT: TdxDBGridMaskColumn;
    grdProductsPRODUCTNO: TdxDBGridMaskColumn;
    bGetProducts: TButton;
    procedure bGetProductsClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fLONumber: TfLONumber;

implementation

uses dmcPkgs;

{$R *.dfm}

procedure TfLONumber.bGetProductsClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  cds_Prod_In_LO.Active:= False ;
  sq_Prod_In_LO.ParamByName('OwnerNo').AsInteger:= dmPkgs.SupplierNo ;
  sq_Prod_In_LO.ParamByName('LONo').AsInteger:= StrToIntDef(Trim(eLONo.Text),0) ;
  cds_Prod_In_LO.Active:= True ;
 End ;
end;

procedure TfLONumber.FormDestroy(Sender: TObject);
begin
 With dmPkgs do
 Begin
  cds_Prod_In_LO.Active:= False ;
 End ;
end;

end.
