unit UnitConfirmLoad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems;

type
  TForm1 = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    bcCompany: TdxBarCombo;
    bcConfirmed: TdxBarCombo;
    beSearchLO: TdxBarEdit;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbConfirmLoad: TdxBarLargeButton;
    lbDeleteLoad: TdxBarLargeButton;
    lbPrintLoad: TdxBarLargeButton;
    lbUndoConfirm: TdxBarLargeButton;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
