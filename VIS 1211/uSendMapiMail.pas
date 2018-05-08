unit uSendMapiMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, uRwEWSBase, VCL.uRwEWSSession, uRwEWSInterfaces,
  VCL.uRwFormScaler, uRwEWS ;

type
  Tdm_SendMapiMail = class(TDataModule)
    EWSSession: TRwEWSSession;
    procedure MapiSessionAfterLogon(Sender: TObject);
    procedure MapiSessionBeforeLogoff(Sender: TObject);
  private
    { Private declarations }
    // FAddressbook : IRwMapiAddressbook;
    // FRecipTable  : IRwMapiRecipientTable;
    // FRecipTableChanged: Boolean;
    // procedure AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TFDdrBookDlgParams);
  public
    { Public declarations }
//    procedure SendMail(const Subject, MessageText, MailFromAddress,    MailToAddress: String; const Attachments: array of String); overload;

    procedure SendMail(const Subject, MessageText, MailFromAddress, MailToAddress: String; const Attachments: array of String) overload;
    procedure SendMail(const Subject, MessageText, MailFromAddress, MailToAddress, aHTML: String; const Attachments: array of String) overload;
 //   procedure SendMail(const Subject, MessageText, MailFromAddress,
   //   MailToAddress, HTML: String; const Attachments: array of String) overload;
  end;

  // var dm_SendMapiMail: Tdm_SendMapiMail;

implementation

{$R *.dfm}

uses
  uRwBoxes
//  {$IFDEF VARIANTS}
  , Variants

//  {$ENDIF VARIANTS}
//  , uRwMapiUtils
//  , uRwMapiMessage
  , uRwClasses

  , uRwSysUtils
  , uRwEWSTypes
    //dmsDataConn,
  , dmsVidaSystem, VidaUser;

procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
  MailToAddress: String; const Attachments: array of String);
var
  NewMessage: IRwEWSEMail;
  i: Integer;
  HostName, Database, UserName, Password, spath, ServiceUrl : String ;
  LocalMailToAddress  : String ;
begin
  if Trim(MailToAddress) = '' then
    raise Exception.Create('No recipients specified');

  if Trim(Subject) = '' then
    if RwMsgBoxYesNo('There is no subject. Do you want to send the message anyway?') = mrNO then
      raise EAbort.Create('');

  // Setup the session so that it will ask the user for a profile
  EWSSession.ProfileName := '';
  EWSSession.ProfileRequired := False ;
  EWSSession.LogonDialog := False ;

  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath, ServiceUrl) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;

  LocalMailToAddress  :=  MailToAddress;

  if Thisuser.UserID = 1 then
   LocalMailToAddress  :=  'lars.makiaho@gmail.com' ;



  EWSSession.ServiceUrl           := ServiceUrl ;//'https://outlook.office365.com/ews/exchange.asmx' ;
  EWSSession.Credentials.UserName := ThisUser.UserEmail ;// 'lars.makiaho@vida.se' ;
  EWSSession.Credentials.Password := ThisUser.UserPswd ;// 'Ketola77!' ;

  // Logon, create and send the message
  EWSSession.Active := True;
  try
    Screen.Cursor := crHourGlass;
    // create a new message of class IPM.Note in the drafts folder of the default messagestore
    NewMessage := EWSSession.CreateMessage(dfinDrafts) as IRwEWSEMail;

    NewMessage.ToRecipients.AsString := LocalMailToAddress ;
    NewMessage.Subject               := Subject;
    NewMessage.BodyText              := MessageText;
    NewMessage.Importance            := icNormal;

    // Add the selected attachments
//    for i := 0 to lvAttachments.Items.Count-1 do
//      NewMessage.Attachments.AddAttachment(lvAttachments.Items[i].Caption);

    for I := Low(Attachments) to High(Attachments) do
    NewMessage.Attachments.AddAttachment(Attachments[I]);

    NewMessage.SaveChanges();
    RwMsgBoxInfo('The message is in draft folder.');

    // Submit the message
//    NewMessage.SubmitMessage(True);
//    RwMsgBoxInfo('The message is submitted.');
  finally
    Screen.Cursor := crDefault;
    EWSSession.Active := False;
  end;

 // RwMsgBoxInfo('The message is in draft folder.');

//  ClearMessage;
end;


procedure Tdm_SendMapiMail.MapiSessionAfterLogon(Sender: TObject);
begin
  // FAddressbook := MapiSession.GetAddressBook(False);
  // FAddressbook.BeforeDisplayAddressBookDlg := AddressBookBeforeDisplayAddressBookDlg;

  // FRecipTable := FAddressbook.GetRecipientTable;
end;

procedure Tdm_SendMapiMail.MapiSessionBeforeLogoff(Sender: TObject);
begin
  // FRecipTable := nil;
  // FAddressbook := nil;
end;

procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
  MailToAddress, aHTML: String; const Attachments: array of String);
begin
    SendMail(Subject, MessageText, MailFromAddress, MailToAddress, Attachments);
end;

{
  procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
    MailToAddress, HTML: String; const Attachments: array of String);
  begin
      SendMail(Subject, MessageText, MailFromAddress, MailToAddress, Attachments, false);
  end;
}

{ procedure Tdm_SendMapiMail.AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TFDdrBookDlgParams);
  begin
  // modify the default addressbook look
  // force the dialog to only show the To and CC fields
  AddrBookDlgParams.DestFields := 2;
  SetLength(AddrBookDlgParams.DestTitles,2);
  AddrBookDlgParams.DestTitles[0] := 'To.';
  AddrBookDlgParams.DestTitles[1] := 'CC..';
  end; }

end.
