unit VidaUtils;

interface

uses
  Classes,
  Controls,
  Graphics,
  SqlExpr,
  StdCtrls,
  Windows;

// =============================================================================
//
// ROUTINE        :  NonEmpty
//
// PURPOSE        :  Checks if a control's Text property is non-empty.
// If the control is empty:
// A.  Sound beep
// B.  Move cursor to the field
// C.  Change the colour of the control
// D.  Set the modal result of the control's
// parent form to prevent it closing
//
// PARAMETERS     :  Control   TWinControl
//
// This is the control to be checked.
// Usually this will be a TEdit or similar.
// Although any control can be passed in this
// parameter, it does not make sense to use
// a control that does not have a Text property.
//
// RETURNS        :  TRUE  ==> The control has a Text property, and
// that property is not an empty string.
//
// FALSE ==> The control has no Text property, or
// it has a Text property which is empty.
//
// NOTES          :
//
// USAGE          :  Either a simple call, ignoring the result:
//
// NonEmpty( MyRequiredVCL );
//
// Or use the result
//
// if not NonEmpty( MyRequiredVCL ) then
// MyRequiredVCL.Text := DEFAULT_VALUE;
//
//
// -----------------------------------------------------------------------------
// DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
// DMc       001
//
// -----------------------------------------------------------------------------
function NonEmpty(Control: TWinControl): Boolean;

// =============================================================================
//
// ROUTINE        :  ColumnIsGrouped
//
// PURPOSE        :  Checks if a column in a grid is grouped.
// (ie if it has been dragged to the grouping bar above the grid).
// This is useful when decided whether to custom draw a cell.
//
// PARAMETERS     :  Col   TdxTreeListColumn
//
// This is the column to be checked.
// The AColumn parameter passed to a grid's
// OnCustomDrawCell event handler is a suitable value
// for this parameter.
//
// Grid  TCustomdxDBGrid
//
// The grid whose array of grouped columns is to be
// searched to see if it contains the specified column.
//
// RETURNS        :  TRUE  ==> The column is used for grouping.
// Probably means no custom drawing needed.
//
// FALSE ==> The column has not been used for grouping.
//
// NOTES          :  IMPORTANT: THE GRID MUST CONTAIN THE SPECIFIED COLUMN.
// THIS FUNCTION DOES NOT CHECK THIS.
// IT IS THE RESPONSIBILITY OF THE CALLER.
//
// This routine should not be needed. It should be easy
// to find this info directly from the grid or column.
// The problem is, the documentation is wrong and I
// can't figure out an easy way to know this data.
// The help file says the ColumnByName method returns
// a TdxDBTreeListColumn, and the TdxDBTreeListColumn
// class has a GroupIndex property. However, when I
// try to use that property my code does not compile.
// My code was:
// if grdLO.ColumnByName('grdLOStatus').GroupIndex = -1 then ...
// So it seems the TdxDBTreeListColumn does not have
// a GroupIndex property after all. This is confirmed by
// code completion failing to find the property.
//
// USAGE          :  Either a simple call, ignoring the result:
//
// NonEmpty( MyRequiredVCL );
//
// Or use the result
//
// if not NonEmpty( MyRequiredVCL ) then
// MyRequiredVCL.Text := DEFAULT_VALUE;
//
//
// -----------------------------------------------------------------------------
// DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
// DMc       001
//

//
// A couple of routines for moving color strings between TColor types and INI files.
// Just wrappers around StringToColor and ColorToString, but avoid the "cl" prefix
// appearing in INI files where users might see it.
//
function INIStringToColor(INIString: String): TColor;

function ColortoINIString(Color: TColor): String;

//
// Will probably end up replacing this routine later.
// It is used for drawing status graphics on Load Order form.
//
procedure DrawTransparentBitmapInRect(ACanvas: TCanvas;
  // The canvas to draw upon
  aBmp: Graphics.TBitmap; // The bitmap to draw
  X, Y: integer; // Draw at this offset within ..
  ARect: TRect // .. this rectangle
  );

//
// Revert control color to clWindow when user enters data.
// This removes any color used to indicate the field is required but was empty.
//
procedure RemoveControlHighlight(Control: TControl);

// =============================================================================
//
// ROUTINE        :  LoadLookupTable
//
// PURPOSE        :  Often a coded value has to be displayed as a string to be meaningful to
// the user, but we need to know the code that represents each string value.
// This routine loads the strings and their codes from the dataset returned
// by a stored procedure.
// The code for a string is stored in the Objects property of the
// TStrings object
//
//
// PARAMETERS     :    StoredProc       TSQLStoredProc    The stored procedure that has already
// been used to retrieve the complete list
// of codes & values from database.
//
// StringFieldName  string            Name of field in stored procedure's
// dataset that holds the string values
// that can be displayed to the user.
//
// CodeFieldName    string            Name of field in stored procedure's
// dataset that holds the codes that
// represent the strings that can be
// displayed to the user.
//
// Strings          TStrings          The strings and their corresponding
// codes are returned in this object.
// The objects property holds the codes
// (integers cast as TObject types).
//
// NB: This strings object is NOT cleared
// before the new values are added.
// Any strings already held in this
// object are retained.
//
// RETURNS        :  No result, since this is a procedure, but Strings paramater has
// new values added to it.
//
// NOTES          :
//
// USAGE          :
//
//
//
//
//
//
//
//
// -----------------------------------------------------------------------------
// DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
// DMc       001
//
// -----------------------------------------------------------------------------
procedure LoadLookupTable(StoredProc: TSQLStoredProc; StringFieldName: String;
  CodeFieldName: String; Strings: TStrings);

//
// Just truncate Now() result
//
function Today: TDateTime;

procedure SetIndexByIntObject(Combo: TCustomComboBox; Value: integer);

function CodeForSelectedItem(Combo: TCustomComboBox): integer;

function LengthColTitle(Len: Real; PET: Boolean; FingerJoint: Boolean): string;

function WithoutSpaces(const S: String): String;

function BooleanToInt(Bool: Boolean): integer;
function IntToBoolean(Int: integer): Boolean;

function ReplaceCommas(S: String): String;

function ReplaceDecimalPoint(S: String): String;

function ReplaceCharWithChar(S: String; OldChar, NewChar: Char): String;

implementation

uses
  Dialogs,
  ExtCtrls,
  Forms,
  SysUtils,
  TypInfo,
  VidaConst;

Type
  THackedCombo = class(TCustomCombo);
  THackedControl = class(TCustomControl);
  THackedPanel = class(TPanel);

const
  clINVALID_DATA = clRed;

function ControlHasTextPropertyAndItIsEmpty(Control: TWinControl): Boolean;
var
  ptrPropInfo: PPropInfo;
begin
  Result := False;
  ptrPropInfo := GetPropInfo(Control.ClassInfo, 'Text');
  if ptrPropInfo <> nil then
    if ptrPropInfo^.PropType^.Kind in [tkString, tkLString, tkWString] then
      if getstrprop(Control, 'Text') = '' then
        Result := true
end;

procedure HighlightControlAsInvalid(Control: TControl);
var
  ptrPropInfo: PPropInfo;
begin
  ptrPropInfo := GetPropInfo(Control.ClassInfo, 'Color');
  if ptrPropInfo <> nil then
    if ptrPropInfo^.PropType^.Kind = tkInteger then
      SetOrdProp(Control, 'Color', clINVALID_DATA)
end;

procedure PreventParentFormClosure(Control: TControl);
begin
  try
    ValidParentForm(Control).ModalResult := mrNone
  except
    on EInvalidOperation do

      { No valid form - ignore this exception }
        ;
  end;
end;

function NonEmpty(Control: TWinControl): Boolean;
//
// Check field is not empty.
// If it is empty:
// A.  Sound beep
// B.  Highlight the field
// C.  Move cursor to that field
// D.  Prevent form closure
//
begin
  if ControlHasTextPropertyAndItIsEmpty(Control) then
  begin
    MessageBeep(MB_ICONEXCLAMATION);
    Control.SetFocus;
    HighlightControlAsInvalid(Control);
    PreventParentFormClosure(Control);
    Result := False
  end
  else
    Result := true
end;

function INIStringToColor(INIString: String): TColor;
begin
  Result := StringToColor('cl' + INIString)
end;

function ColortoINIString(Color: TColor): String;
var
  PrefixedString: string;
begin
  PrefixedString := ColorToString(Color);
  if Copy(PrefixedString, 1, 2) = 'cl' then
    Result := Copy(PrefixedString, 3, Length(PrefixedString) - 2)
  else
    Result := PrefixedString
end;

(*
  procedure DrawTransparentBitmap(aBmp    : Graphics.TBitmap);
  var
  rctSource : TRect;
  begin
  if (aBmp = nil) then
  Exit;
  end;
*)
procedure DrawTransparentBitmap(ACanvas: TCanvas; aBmp: Graphics.TBitmap;
  X, Y: integer);
var
  rctSource, rctDest: TRect;
  clrTransparent: TColor;
begin
  if (ACanvas = nil) or (aBmp = nil) then
    Exit;

  rctSource := Rect(0, 0, aBmp.Width - 1, aBmp.Height - 1);
  rctDest := rctSource;
  OffsetRect(rctDest, X, Y);
  clrTransparent := aBmp.Canvas.Pixels[0, aBmp.Height - 1];
  ACanvas.BrushCopy(rctDest, aBmp, rctSource, clrTransparent)
end;

procedure DrawTransparentBitmapInRect(ACanvas: TCanvas;
  // The canvas to draw upon
  aBmp: Graphics.TBitmap; // The bitmap to draw
  X, Y: integer; // Draw at this offset within ..
  ARect: TRect // .. this rectangle
  );

// Nested procedure
  procedure OffsetOrCenter(var i: integer; a, B, W: integer);
  begin
    if i = rqCENTRED then
      i := (B + a - W) div 2
    else
      Inc(i, a)
  end; // of OffsetOrCenter

begin
  OffsetOrCenter(X, ARect.Left, ARect.Right, aBmp.Width);
  OffsetOrCenter(Y, ARect.Top, ARect.Bottom, aBmp.Height);
  DrawTransparentBitmap(ACanvas, aBmp, X, Y)
end;

procedure RemoveControlHighlight(Control: TControl);
var
  ptrPropInfo: PPropInfo;
begin
  ptrPropInfo := GetPropInfo(Control.ClassInfo, 'Color');
  if ptrPropInfo <> nil then
    if ptrPropInfo^.PropType^.Kind = tkInteger then
      SetOrdProp(Control, 'Color', clWindow)
end;

procedure LoadLookupTable(StoredProc: TSQLStoredProc; StringFieldName: String;
  CodeFieldName: String; Strings: TStrings);
begin
  StoredProc.Open;
  try
    StoredProc.First;
    while not StoredProc.Eof do
    begin
      Strings.AddObject(StoredProc.FieldByName(StringFieldName).AsString,
        TObject(StoredProc.FieldByName(CodeFieldName).AsInteger));
      StoredProc.Next
    end;

  finally
    StoredProc.close
  end;
end;

function Today: TDateTime;
begin
  Result := Trunc(Now)
end;

procedure SetIndexByIntObject(Combo: TCustomComboBox; Value: integer);
var
  iObj: integer;
begin

  Combo.ItemIndex := NO_SELECTION;

  for iObj := 0 to Combo.Items.Count - 1 do
    if integer(Combo.Items.Objects[iObj]) = Value then
    begin
      Combo.ItemIndex := iObj;
      Break;
    end;

  if Combo.ItemIndex = NO_SELECTION then
    THackedCombo(Combo).Text := '';

end;

function CodeForSelectedItem(Combo: TCustomComboBox): integer;
var
  ComboText: String;
  ComboItemIndex: integer;
  AssociatedObject: TObject;
  ObjectAsInteger: integer;
  i: integer;
begin
  Result := NO_SELECTION;
  try
    ComboText := THackedCombo(Combo).Text;
    if ComboText = '' then
    begin
      for i := 0 to Combo.Items.Count - 1 do
      begin
        if Combo.Items[i] = ComboText then
        begin
          Result := integer(Combo.Items.Objects[i]);
        end;
      end;
    end
    else
    begin
      ComboItemIndex := Combo.Items.IndexOf(ComboText);
      AssociatedObject := Combo.Items.Objects[ComboItemIndex];
      ObjectAsInteger := integer(AssociatedObject);
      Result := ObjectAsInteger;
    end;
    // Result := Integer(Combo.Items.Objects[Combo.Items.IndexOf(THackedCombo(Combo).Text)]);
  except
    on EStringListError do
      Result := NO_SELECTION;
  end;
end;

function LengthColTitle(Len: Real; PET: Boolean; FingerJoint: Boolean): string;
begin
  Result := Format('%5.1f', [Len]);
  if FingerJoint then
  begin
    Result := Result + ' F';
    if PET then
      Result := Result + 'P'
  end
  else if PET then
    Result := Result + ' P'
end;

function WithoutSpaces(const S: String): String;
var
  posSpace: integer;
begin
  Result := S;
  posSpace := pos(' ', Result);
  while posSpace > 0 do
  begin
    Delete(Result, posSpace, 1);
    posSpace := pos(' ', Result);
  end;
end;

function BooleanToInt(Bool: Boolean): integer;
begin
  if Bool then
    Result := 1
  else
    Result := 0;
end;

function IntToBoolean(Int: integer): Boolean;
begin
  if Int = 0 then
    Result := False
  else
    Result := true;
end;

function ReplaceCommas(S: String): String;
begin
  { Convert commas to period }
  while pos(',', S) > 0 do
    S[pos(',', S)] := '.';
  Result := S;

  { Convert period to commas }
  { while Pos('.', S) > 0 do
    S[Pos('.', S)] := ',';
    Result:= S ; }
end;

function ReplaceCharWithChar(S: String; OldChar, NewChar: Char): String;
begin
  { Convert commas to period }
  while pos(OldChar, S) > 0 do
    S[pos(OldChar, S)] := NewChar;
  Result := S;
end;

function ReplaceDecimalPoint(S: String): String;
begin
  { Convert commas to period }
  while pos('.', S) > 0 do
    S[pos('.', S)] := ',';
  Result := S;

  { Convert period to commas }
  { while Pos('.', S) > 0 do
    S[Pos('.', S)] := ',';
    Result:= S ; }
end;

end.
