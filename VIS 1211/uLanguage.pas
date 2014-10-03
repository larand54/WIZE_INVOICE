unit uLanguage ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfrmLanguage = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdLangDBTableView1: TcxGridDBTableView;
    grdLangLevel1: TcxGridLevel;
    grdLang: TcxGrid;
    grdLangDBTableView1LanguageName: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  frmLanguage: TfrmLanguage ;

implementation

uses UnitdmModule1;

{$R *.dfm}

end.
