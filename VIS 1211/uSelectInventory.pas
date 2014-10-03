unit uSelectInventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, Buttons;

type
  TfrmSelectInventory = class(TForm)
    Label12: TLabel;
    pePhysInventory: TdxPickEdit;
    peLogicalInventory: TdxPickEdit;
    Label13: TLabel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure pePhysInventoryChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LIP_No, Inventory_Owner : Integer ;

  end;

//var frmSelectInventory: TfrmSelectInventory;

implementation

uses dmsVidaContact, VidaUser ;

{$R *.dfm}

procedure TfrmSelectInventory.FormShow(Sender: TObject);
begin
//Load PhysInv
  dmsContact.LoadPhysInventory(pePhysInventory.Items, Inventory_Owner ,ThisUser.CompanyNo) ;
  if pePhysInventory.Items.Count > 0 then
  Begin
   pePhysInventory.ItemIndex:= 0 ;
//Load Logical Inv
   dmsContact.LoadLogicalInventory( peLogicalInventory.Items, integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );
   if peLogicalInventory.Items.Count > 0 then
   Begin
    peLogicalInventory.ItemIndex:= 0 ;
    LIP_No:= integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]) ;
   End ;
  End ;
end;

procedure TfrmSelectInventory.pePhysInventoryChange(Sender: TObject);
begin
 if pePhysInventory.Items.Count > 0 then
 dmsContact.LoadLogicalInventory(peLogicalInventory.Items,
 integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );

 if peLogicalInventory.Items.Count > 0 then
 Begin
  peLogicalInventory.ItemIndex:= 0 ;
  LIP_No:= integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]) ;
 End ;

end;

end.
