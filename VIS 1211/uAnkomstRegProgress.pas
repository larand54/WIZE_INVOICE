unit uAnkomstRegProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxLabel, cxDBLabel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TfAnkomstRegProgress = class(TForm)
    cxDBLabel1: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fAnkomstRegProgress: TfAnkomstRegProgress;

implementation

uses dmc_ArrivingLoads;

{$R *.dfm}

end.
