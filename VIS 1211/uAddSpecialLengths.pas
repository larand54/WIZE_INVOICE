unit uAddSpecialLengths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit;

type
  TfAddSpecialLengths = class(TForm)
    lbSpecialLengths: TListBox;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    acAddLength: TAction;
    acRemoveLength: TAction;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    eLength: TcxMaskEdit;
    procedure acAddLengthExecute(Sender: TObject);
    procedure acRemoveLengthExecute(Sender: TObject);
  private
    { Private declarations }
    function LengthInList : Boolean ;
    function Pad(const s : String) : String ;
  public
    { Public declarations }
  end;

//var fAddSpecialLengths: TfAddSpecialLengths;

implementation

Uses VidaUtils ;

{$R *.dfm}

function TfAddSpecialLengths.LengthInList : Boolean ;
Var x : Byte ;
begin
 Result:= False ;
 if lbSpecialLengths.Items.Count > 0 then
 For x := 0 to lbSpecialLengths.Items.Count - 1 do
 if eLength.Text = lbSpecialLengths.Items[x] then
 Result:= True ;
end;

function TfAddSpecialLengths.Pad(const s : String) : String ;
Var Dec : Byte ;
Begin
 //1234.4
 //999
 Dec:= Pos(',',S) ;
 if Pos(',',S) > 0 then
 Begin
  if Length(Copy(S,1,Dec-1)) < 4 then
  Result:= '0'+S
  else
  Result:= S ;
 End
 else
 Begin
  if Length(S) < 4 then
  Result:= '0'+S
  else
  Result:= S ;
 End ;

End ;

procedure TfAddSpecialLengths.acAddLengthExecute(Sender: TObject);
begin
 eLength.Text:= Pad(eLength.Text) ;
 if (not LengthInList) and (Length(eLength.Text) > 0)
// and (StrToFloat(ReplaceCommas(eLength.Text)) > 0) then
 and (StrToFloat(eLength.Text) > 0) then
 Begin
//  lbSpecialLengths.Items.Add(ReplaceCommas(eLength.Text)) ;
  lbSpecialLengths.Items.Add(eLength.Text) ;
  eLength.Text:= '' ;
 End ; 
  eLength.SetFocus ;
end;

procedure TfAddSpecialLengths.acRemoveLengthExecute(Sender: TObject);
begin
 lbSpecialLengths.DeleteSelected ;
end;

end.
