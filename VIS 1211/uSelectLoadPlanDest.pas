unit uSelectLoadPlanDest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxGridBandedTableView, cxGridDBBandedTableView, cxCalendar;

type
  TfSelectLoadPlanDest = class(TForm)
    grdLoadPlanLevel1: TcxGridLevel;
    grdLoadPlan: TcxGrid;
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    grdLoadPlanDBBandedTableView1: TcxGridDBBandedTableView;
    grdLoadPlanDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LoadingNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LoadPlanDestRowNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LAGER_DEST: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LAGER: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1BT: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1ETD: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectLoadPlanDest: TfSelectLoadPlanDest;

implementation

uses dmsVidaSystem;

{$R *.dfm}

end.
