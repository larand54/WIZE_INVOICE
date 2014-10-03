unit uUserPreference;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxShellBrowserDialog, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, DB,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters  ;

type
  TfUserPreference = class(TForm)
    Label6: TLabel;
    Label7: TLabel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Label1: TLabel;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    Label2: TLabel;
    Label3: TLabel;
    beFragaAvropDir: TcxDBButtonEdit;
    beExcelDir: TcxDBButtonEdit;
    beLOMallar: TcxDBButtonEdit;
    teMyEmailAddress: TcxDBTextEdit;
    Label4: TLabel;
    beWoodXDir: TcxDBButtonEdit;
    procedure beFragaAvropDirPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure beLOMallarPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure beWoodXDirPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    procedure SaveData ;
  public
    { Public declarations }
    Class procedure Execute ;
  end;

//var fUserPreference: TfUserPreference;

implementation

uses dmsDataConn, VidaUser, dmsVidaSystem;

{$R *.dfm}

procedure TfUserPreference.SaveData ;
Begin
 With dmsSystem do
 Begin
  if cds_Props.State in [dsEdit, dsInsert] then
   cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
   cds_Props.ApplyUpdates(0) ;
 End ;
End ;

Class procedure TfUserPreference.Execute ;
Begin
 With Self.Create(nil) do begin
 Try
 With dmsSystem do
 Begin
  cds_Props.Active:= False ;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  cds_Props.ParamByName('Form').AsString    := 'Global' ;
  cds_Props.Active:= True ;
  if not cds_Props.Eof then
   cds_Props.Edit
    else
     Begin
      cds_Props.Insert ;
      cds_PropsUserID.AsInteger := ThisUser.UserID ;
      cds_PropsForm.AsString    := 'Global' ;
     End ;
 End ;

   if ShowModal = mrOK then
    Begin
     SaveData ;
    End ;
  Finally
   Free ;
  End
 End ;
End ;

procedure TfUserPreference.beFragaAvropDirPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 With dmsSystem do
 Begin
  if cxShellBrowserDialog1.Execute then
   cds_PropsUserDir.AsString:= IncludeTrailingPathDelimiter(cxShellBrowserDialog1.Path) ;
 End ;
end;

procedure TfUserPreference.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 With dmsSystem do
 Begin
  if cxShellBrowserDialog1.Execute then
   cds_PropsExcelDir.AsString:= IncludeTrailingPathDelimiter(cxShellBrowserDialog1.Path) ;
 End ;
end;

procedure TfUserPreference.beLOMallarPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 With dmsSystem do
 Begin
  if cxShellBrowserDialog1.Execute then
   cds_PropsLODir.AsString:= IncludeTrailingPathDelimiter(cxShellBrowserDialog1.Path) ;
 End ;
end;

procedure TfUserPreference.beWoodXDirPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 With dmsSystem do
 Begin
  if cxShellBrowserDialog1.Execute then
   cds_PropsWOODXDir.AsString:= IncludeTrailingPathDelimiter(cxShellBrowserDialog1.Path) ;
 End ;
end;

end.
