unit uSelectWoodxClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxGraphics, StdCtrls, Buttons,
  ExtCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfSelectWoodxClient = class(TForm)
    teWoodx_Name1: TcxDBTextEdit;
    tePartyIdentifier: TcxDBTextEdit;
    lcVisClientName: TcxDBLookupComboBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectWoodxClient: TfSelectWoodxClient;

implementation

uses dmc_ImportWoodx;

{$R *.dfm}

end.
