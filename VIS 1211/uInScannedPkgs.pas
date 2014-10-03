unit uInScannedPkgs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Buttons, ExtCtrls, Menus,
  cxLookAndFeelPainters, ActnList, cxButtons;

type
  TfInScannedPkgs = class(TForm)
    Panel1: TPanel;
    grdCreatedLoadsDBTableView1: TcxGridDBTableView;
    grdCreatedLoadsLevel1: TcxGridLevel;
    grdCreatedLoads: TcxGrid;
    dsImportedLoads: TDataSource;
    grdCreatedLoadsDBTableView1LoadNo: TcxGridDBColumn;
    grdCreatedLoadsDBTableView1LONo: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    acOpen: TAction;
    acClose: TAction;
    procedure acOpenExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var fInScannedPkgs: TfInScannedPkgs;

implementation

uses fLoadOrder;

{$R *.dfm}

procedure TfInScannedPkgs.acOpenExecute(Sender: TObject);
begin
 //Open Load
 With frmLoadOrder do
 Begin
  GoToLONo(Sender) ;
 End ;
end;

procedure TfInScannedPkgs.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfInScannedPkgs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree ;
end;

procedure TfInScannedPkgs.FormDestroy(Sender: TObject);
begin
 fInScannedPkgs:= nil ;
end;

end.
