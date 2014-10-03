unit uPkgNoPos ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls ;

type
  TfPkgNoPos = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ePktnrPos: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eAntPosPktNr: TEdit;
    eLevKodPos: TEdit;
    eAntPosLevKod: TEdit;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPkgNoPos: TfPkgNoPos;

implementation

{$R *.dfm}

end.
