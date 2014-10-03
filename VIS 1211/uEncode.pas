// =============================================================================
//
//  FILE           :  uEncode.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Encode / Decode user names & passwords stored in the
//                    registry.
//
//  NOTES          :  This unit is copied unchanged from the original
//                    VidaSys project.
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//              DMc       001
//
// -----------------------------------------------------------------------------
unit uEncode;

interface

uses
  Classes,
  SysUtils;


type
  TVDEncode = class(TObject)
  private
    FRegCode: array [0..15] of String;
    function GetCharAt(cChar: Char) : integer;
    function ReadInteger(PStr: PChar; var Value: integer) : integer;
  public
    constructor Create;
    function Encode(Password: String) : String;
    function IsValid(EncodeStr, Password: String) : Boolean;
    function DecodeStr(Str, Password: String) : String;
    function EncodeStr(Str, Password: String) : String;
  end;

implementation

// -------------------------------------------------------------------------------
constructor TVDEncode.Create;
begin
  FRegCode[0] := 'sdfkasmvcx2123kdks2kska928437skd8x877';
  FRegCode[1] := '28932kskdjaksm3k298d8skdj298392901kdk';
  FRegCode[2] := 'sk3k28d9s09ckflkdks920amzjsjkdid9s02k';
  FRegCode[3] := '23xcsla943kdjskxaz0qpwoiy0wisaspq0s9x';
  FRegCode[4] := '1kdks93423jaksxzxkdls903293kdksla0sdd';
  FRegCode[5] := '8273kdjskmznxjdugalskdiwkdjah28385940';
  FRegCode[6] := 'kj429djzmcn3id9sjkajwuyd7zhx19s8d02kd';
  FRegCode[7] := '928djakxjdfhgu3982yakahskahznxhsu8382';
  FRegCode[8] := 'jxkzxud9s01k3j2kdlasjdkslbne9209dsjal';
  FRegCode[9] := '9278duajskdjzxncisi3929djsk34jksksjas';
  FRegCode[10] := 'skdja2937493jdkakdjcmcznxhckske398192';
  FRegCode[11] := '9d874ujamxncbawj1ddk2839532idkaksdja1';
  FRegCode[12] := 'uiqplxmcnz9382jdnmshzmalqo2019djxkcbs';
  FRegCode[13] := '39djak2jfuask2mzncbhakxpzlske12837djx';
  FRegCode[14] := '8d9skjyureo2dkcj2940skzjxdk239ajxzsdg';
  FRegCode[15] := '9sjeuiqozalxmnvbaq13ospdgkdjxhckaw3dj'
end;


// -------------------------------------------------------------------------------
function TVDEncode.GetCharAt(cChar: Char) : integer;
begin
  Result := 0;
  if (cChar >= '0')
     and
     (cChar <= '9') then
    Result := integer(cChar) - integer('0');
  if (cChar >= 'A')
     and
     (cChar <= 'Z') then
    Result := 10 + (integer(cChar) - integer('A'));
  if (cChar >= 'a')
     and
     (cChar <= 'z') then
    Result := 36 + (integer(cChar) - integer('a'))
end;


// -------------------------------------------------------------------------------
function TVDEncode.Encode(Password: String) : String;
var
  i,
  Length: integer;
  nAt,
  nCol,
  nRow,
  nVal,
  nValCount,
  nAtCount: integer;
  PPassword: PChar;
  FPassArray: array [0..20] of Char;
begin
  Length := StrLen(PChar(Password));
  PPassword := PChar(Password);

  nAtCount := 0;
  nValCount := 0;
  for i := 0 to Length - 1 do
  begin
    FPassArray[i] := (PPassword + i)[0];

    nAtCount := nAtCount + GetCharAt(FPassArray[i]);
    nValCount := nValCount + integer(FPassArray[i])
  end;
  for i := 0 to Length - 1 do
  begin
    nAt := GetCharAt(FPassArray[i]);
    nCol := ((nAt + nAtCount) mod 36) + 1;
    nRow := (nAt + i) mod 16;
    Result := Result + PChar(FRegCode[nRow])[nCol];

    nVal := integer(FPassArray[i]);
    nCol := ((nVal + nValCount) mod 36) + 1;
    nRow := (nVal + i) mod 16;
    Result := Result + PChar(FRegCode[nRow])[nCol]
  end;
end;


// -------------------------------------------------------------------------------
function TVDEncode.IsValid(EncodeStr, Password: String) : Boolean;
begin
  Result := StrComp(PChar(Encode(Password)), PChar(EncodeStr)) =
            0
end;


// -------------------------------------------------------------------------------
function TVDEncode.ReadInteger(PStr: PChar; var Value: integer) : integer;
var
  FStrLen,
  i: integer;
  tStr: String;
begin
  FStrLen := StrLen(PStr);
  for i := 0 to FStrLen - 1 do
  begin
    if PStr[i] = ',' then
      Break;
    if (PStr[i] >= '0')
       and
       (PStr[i] <= '9') then
      tStr := tStr + PStr[i]
  end;
  if (StrLen(PChar(tStr)) <= 0)
      or
     (StrLen(PChar(tStr)) >= 4) then
    Value := 0
  else
    Value := StrToInt(tStr);

  Result := i + 1
end;


// -------------------------------------------------------------------------------
function TVDEncode.DecodeStr(Str, Password: String) : String;
var
  tValue,
  i,
  j: integer;
  PStr,
  PPassword: PChar;
  FStrLength,
  FPassLength: integer;
begin
  PStr := PChar(Str);
  PPassword := PChar(Password);
  FStrLength := StrLen(PStr);
  FPassLength := StrLen(PPassword);

  if FPassLength <= 0 then
  begin
    // DMc Changed the following line:
    // PStr := PStr + ReadInteger(PStr, tValue);
    // to:
    ReadInteger(PStr, tValue);
    if tValue <= 0 then
      Exit;
    Result := Result + Char(tValue);
    Exit
  end;
  j := 0;
  for i := 0 to FStrLength - 1 do
  begin
    PStr := PStr + ReadInteger(PStr, tValue);
    if tValue <= 0 then
      Exit;

    Result := Result + Char(tValue - integer(PPassword[j]));
    j := j + 1;
    if j >= FPassLength then
      j := 0
  end;
end;


// -------------------------------------------------------------------------------
function TVDEncode.EncodeStr(Str, Password: String) : String;
var
  i,
  j: integer;
  PStr,
  PPassword: PChar;
  FStrLength,
  FPassLength: integer;
begin
  PStr := PChar(Str);
  PPassword := PChar(Password);
  FStrLength := StrLen(PStr);
  FPassLength := StrLen(PPassword);

  if FPassLength <= 0 then
  begin
    for i := 0 to FStrLength - 1 do
      Result := Result + IntToStr(integer(PStr[i])) + ',';
    Exit
  end;
  j := 0;
  for i := 0 to FStrLength - 1 do
  begin
    Result := Result + IntToStr(integer(PStr[i]) + integer(PPassword[j])) +
              ',';
    j := j + 1;
    if j >= FPassLength then
      j := 0
  end;
end;


end.

