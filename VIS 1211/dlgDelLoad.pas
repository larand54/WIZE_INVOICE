unit dlgDelLoad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, VidaCombo;

type
  TfrmDelLoad = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ccmbPhysInv: TDBCodeCombo;
    ccmbLogInv: TDBCodeCombo;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure ccmbPhysInvClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FSupplierNo: Integer;
    FLoadNo: Integer;
    procedure setLoadNo(const Value: Integer);
    function getInventoryGroup: Integer;
    function getInventoryPlace: Integer;
  public
    property InventoryGroup : Integer read getInventoryGroup;
    property InventoryPlace : Integer read getInventoryPlace;
    property LoadNo         : Integer read FLoadNo     write setLoadNo;
    property SupplierNo     : Integer read FSupplierNo write FSupplierNo;
  end;

var
  frmDelLoad: TfrmDelLoad;

implementation

uses dmcVidaSystem;

{$R *.dfm}

procedure TfrmDelLoad.FormShow(Sender: TObject);
begin
  dmcSystem.OpenPhysInventory(FSupplierNo);
  ccmbPhysInv.DataSource := dmcSystem.dsrcPhysInventory;
  ccmbPhysInv.LoadFromDataSource;

  dmcSystem.OpenLogInventory;
  ccmbLogInv.DataSource := dmcSystem.dsrcLogicalInventory;
  ccmbLogInv.LoadFromDataSource;
end;

procedure TfrmDelLoad.ccmbPhysInvClick(Sender: TObject);
begin
  dmcSystem.SetLogInvFilter(ccmbPhysInv.ItemCode);
  ccmbLogInv.LoadFromDataSource;
end;

procedure TfrmDelLoad.Button2Click(Sender: TObject);
begin
  ModalResult := mrCANCEL;
end;

procedure TfrmDelLoad.setLoadNo(const Value: Integer);
begin
  FLoadNo := Value;
  Caption := Format('Delete Load %d',[FLoadNo]);
end;

procedure TfrmDelLoad.Button1Click(Sender: TObject);
begin
  // Ask user to confirm the load should be deleted
  if Application.MessageBox('Are you sure?','Confirm',MB_YESNO) = IDYES then
    ModalResult := mrOK
  else
    ModalResult := mrCANCEL;
end;

function TfrmDelLoad.getInventoryGroup: Integer;
begin
  Result := ccmbLogInv.ItemCode;
end;

function TfrmDelLoad.getInventoryPlace: Integer;
begin
  Result := ccmbPhysInv.ItemCode;
end;

end.
