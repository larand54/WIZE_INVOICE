unit uInvCtrlList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxMemo;

type
  TfInvCtrlList = class(TForm)
    grdInvCtrlListDBTableView1: TcxGridDBTableView;
    grdInvCtrlListLevel1: TcxGridLevel;
    grdInvCtrlList: TcxGrid;
    grdInvCtrlListDBTableView1IC_grpno: TcxGridDBColumn;
    grdInvCtrlListDBTableView1Inventeringsdatum: TcxGridDBColumn;
    grdInvCtrlListDBTableView1Note: TcxGridDBColumn;
    grdInvCtrlListDBTableView1Status: TcxGridDBColumn;
    grdInvCtrlListDBTableView1MaxDatum: TcxGridDBColumn;
    grdInvCtrlListDBTableView1PhyInvPointNameNo: TcxGridDBColumn;
    grdInvCtrlListDBTableView1OwnerNo: TcxGridDBColumn;
    grdInvCtrlListDBTableView1VerkNo: TcxGridDBColumn;
    grdInvCtrlListDBTableView1GrupperRapportPerTS: TcxGridDBColumn;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fInvCtrlList: TfInvCtrlList;

implementation

uses dmcInvCtrl;

{$R *.dfm}

end.
