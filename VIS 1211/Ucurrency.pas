unit Ucurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ImgList, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  dxDBTLCl, dxGrClms, DB, StdCtrls, cxPC, cxControls, cxClasses ;

type
  TfCurrency = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbNewCurrency: TdxBarLargeButton;
    lbDeleteCurrency: TdxBarLargeButton;
    lbSaveCurrency: TdxBarLargeButton;
    lbCancelCurrency: TdxBarLargeButton;
    lbExit: TdxBarLargeButton;
    lbNewPaymentText: TdxBarLargeButton;
    lbDeletePaymentText: TdxBarLargeButton;
    lbNewExchangeRate: TdxBarLargeButton;
    lbDeleteExchangeRate: TdxBarLargeButton;
    dxDBGrid1: TdxDBGrid;
    Splitter1: TSplitter;
    dxPageControl1: TcxPageControl;
    tsPaymentText: TcxTabSheet;
    tsExchangeRate: TcxTabSheet;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    ImageList1: TImageList;
    dxDBGrid2: TdxDBGrid;
    Splitter2: TSplitter;
    Panel1: TPanel;
    dxDBMemo1: TdxDBMemo;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid2CurrencyNo: TdxDBGridMaskColumn;
    dxDBGrid2LanguageCode: TdxDBGridMaskColumn;
    dxDBGrid2PaymentText: TdxDBGridMemoColumn;
    dxDBGrid2CreatedUser: TdxDBGridMaskColumn;
    dxDBGrid2ModifiedUser: TdxDBGridMaskColumn;
    dxDBGrid2DateCreated: TdxDBGridColumn;
    dxDBGrid2CountryNo: TdxDBGridMaskColumn;
    dxDBGrid1CurrencyNo: TdxDBGridMaskColumn;
    dxDBGrid1CurrencyName: TdxDBGridMaskColumn;
    dxDBGrid1DateCreated: TdxDBGridColumn;
    dxDBGrid1CreatedUser: TdxDBGridMaskColumn;
    dxDBGrid1ModifiedUser: TdxDBGridMaskColumn;
    dxDBGrid2Language: TdxDBGridLookupColumn;
    dxDBGrid2Country: TdxDBGridLookupColumn;
    Panel2: TPanel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBGrid3CurrencyNo: TdxDBGridMaskColumn;
    dxDBGrid3ExchangeRateNo: TdxDBGridMaskColumn;
    dxDBGrid3ExchangeRate: TdxDBGridMaskColumn;
    dxDBGrid3ValidFrom: TdxDBGridColumn;
    dxDBGrid3CreatedUser: TdxDBGridMaskColumn;
    dxDBGrid3ModifiedUser: TdxDBGridMaskColumn;
    dxDBGrid3DateCreated: TdxDBGridColumn;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure lbNewCurrencyClick(Sender: TObject);
    procedure lbDeleteCurrencyClick(Sender: TObject);
    procedure lbSaveCurrencyClick(Sender: TObject);
    procedure lbCancelCurrencyClick(Sender: TObject);
    procedure lbNewPaymentTextClick(Sender: TObject);
    procedure lbDeletePaymentTextClick(Sender: TObject);
    procedure lbExitClick(Sender: TObject);
    procedure lbNewExchangeRateClick(Sender: TObject);
    procedure lbDeleteExchangeRateClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Class procedure Execute ;
  end;

//var  fCurrency: TfCurrency;

implementation

uses UnitdmModule1;

{$R *.dfm}

Class procedure TfCurrency.Execute ;
Begin
 With Self.Create(nil) do begin
  try
   ShowModal ;
  Finally
   Free ;
  End
 End ;
End ;


procedure TfCurrency.FormCreate(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cdsCurrency.Active:= True ;
  cds_PaymentText.Active:= True ;
  cds_ExchangeRate.Active:= True ;
 End ;
end;

procedure TfCurrency.lbNewCurrencyClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cdsCurrency.Insert ;
 End ;
end;

procedure TfCurrency.lbDeleteCurrencyClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cdsCurrency.Delete ;
 End ;
end;

procedure TfCurrency.lbSaveCurrencyClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  if cdsCurrency.State in [dsedit, dsinsert] then
   cdsCurrency.Post ;
  if cds_PaymentText.State in [dsedit, dsinsert] then
   cds_PaymentText.Post ;
  if cds_ExchangeRate.State in [dsedit, dsinsert] then
   cds_ExchangeRate.Post ;


  if cdsCurrency.ChangeCount > 0 then
   cdsCurrency.ApplyUpdates(0) ;
  if cds_PaymentText.ChangeCount > 0 then
   cds_PaymentText.ApplyUpdates(0) ;

  if cds_ExchangeRate.ChangeCount > 0 then
   cds_ExchangeRate.ApplyUpdates(0) ;
 End ;
end;

procedure TfCurrency.lbCancelCurrencyClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  if cds_ExchangeRate.State in [dsedit, dsinsert] then
   cds_ExchangeRate.Cancel ;
  if cds_PaymentText.State in [dsedit, dsinsert] then
   cds_PaymentText.Cancel ;
  if cdsCurrency.State in [dsedit, dsinsert] then
   cdsCurrency.Cancel ;


  if cds_ExchangeRate.ChangeCount > 0 then
   cds_ExchangeRate.CancelUpdates ;

  if cds_PaymentText.ChangeCount > 0 then
   cds_PaymentText.CancelUpdates ;

  if cdsCurrency.ChangeCount > 0 then
   cdsCurrency.CancelUpdates ;

 End ;
end;

procedure TfCurrency.lbNewPaymentTextClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_PaymentText.Insert ;
 End ;
end;

procedure TfCurrency.lbDeletePaymentTextClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_PaymentText.Delete ;
 End ;
end;

procedure TfCurrency.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfCurrency.lbNewExchangeRateClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_ExchangeRate.Insert ;
 End ;
end;

procedure TfCurrency.lbDeleteExchangeRateClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_ExchangeRate.Delete ;
 End ;
end;

procedure TfCurrency.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:= True ;
 With dmModule1 do
 Begin
  if cdsCurrency.State in [dsedit, dsinsert] then
   cdsCurrency.Post ;
  if cds_PaymentText.State in [dsedit, dsinsert] then
   cds_PaymentText.Post ;
  if cds_ExchangeRate.State in [dsedit, dsinsert] then
   cds_ExchangeRate.Post ;


  if (cdsCurrency.ChangeCount > 0) or (cds_PaymentText.ChangeCount > 0) or
  (cds_ExchangeRate.ChangeCount > 0) then
  Begin
    if MessageDlg('Vill du spara?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     lbSaveCurrencyClick(Sender) ;
     CanClose:= True ;
    End ;
  End ;
 End ;

 if CanClose = True then
 Begin
 With dmModule1 do
 Begin
  cdsCurrency.Active:= False ;
  cds_PaymentText.Active:= False ;
  cds_ExchangeRate.Active:= False ;
 End ;
 End ;
end;

end.
