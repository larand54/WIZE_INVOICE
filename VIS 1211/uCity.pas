unit uCity ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons, 
  ActnList, DBActns, dxBar, dxBarExtItems, cxMaskEdit, Menus,
  cxLookAndFeels, cxLookAndFeelPainters, cxCheckBox;

type
  TfCity = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ActionList1: TActionList;
    Delete_UT: TDataSetDelete;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    acExit: TAction;
    cxGrid1DBTableView1CityNo: TcxGridDBColumn;
    cxGrid1DBTableView1CityName: TcxGridDBColumn;
    acSave: TAction;
    acCancelChanges: TAction;
    acNewCity: TAction;
    PopupMenu1: TPopupMenu;
    ngraF41: TMenuItem;
    StngF121: TMenuItem;
    NyF21: TMenuItem;
    Lggtill1: TMenuItem;
    SparaF31: TMenuItem;
    abortF51: TMenuItem;
    ds_city: TDataSource;
    cxGrid1DBTableView1ImpVerk: TcxGridDBColumn;
    procedure bbOKClick(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Delete_UTExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acNewCityExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
  private
    { Private declarations }
    function  DataSparat : Boolean ;
  public
    { Public declarations }
  end;

//var fCity: TfCity;

implementation

uses dmsDataConn, dmsVidaSystem, dmsVidaContact;

{$R *.dfm}

procedure TfCity.bbOKClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if FD_City.State in [dsEdit, dsInsert] then
   FD_City.Post ;
  if FD_City.ChangeCount > 0 then
  Begin
   FD_City.ApplyUpdates(0) ;
   FD_City.CommitUpdates ;
  End ; 
 End ;

end;

function TfCity.DataSparat : Boolean ;
Begin
 Result:= True ;
 With dmsContact do
 Begin
  if FD_City.State in [dsEdit, dsInsert] then
   Result:= False ;
  if FD_City.UpdatesPending then
   Result:= False ;
 End ;
End ;


procedure TfCity.acExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfCity.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSparat = False then
  if MessageDlg('Ändringar är inte sparad, vill du spara?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   acSaveExecute (Sender)
   else
    acCancelChangesExecute(Sender) ;
 CanClose:= True ;
end;

procedure TfCity.Delete_UTExecute(Sender: TObject);
begin
 With dmsContact do
 Begin
  if MessageDlg('Är du säker?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   FD_City.Delete ;
 End ;
end;

procedure TfCity.acSaveExecute(Sender: TObject);
begin
 With dmsContact do
 Begin
  if FD_City.State in [dsInsert, dsEdit] then
   FD_City.Post ;

  if FD_City.ChangeCount > 0 then
  Begin
   FD_City.ApplyUpdates(0) ;
   FD_City.CommitUpdates ;
  End ; 
 End ;
end;

procedure TfCity.acCancelChangesExecute(Sender: TObject);
begin
 With dmsContact do
 Begin
  if FD_City.State in [dsEdit, dsInsert] then
   FD_City.Cancel ;
  if FD_City.ChangeCount > 0 then
   FD_City.CancelUpdates ;
 End ;
end;

procedure TfCity.acNewCityExecute(Sender: TObject);
begin
 With dmsContact do
 Begin
  FD_City.Insert ;
  cxGrid1.SetFocus ;
 End ;
end;

procedure TfCity.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSparat ;
end;

procedure TfCity.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSparat ;
end;

end.
