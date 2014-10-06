unit uSendMapiMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, uRwMapiSession,
  uRwMapiInterfaces,
  fRwMapiFolderDialog, uRwMapiBase, uRwEasyMAPI;

type
  Tdm_SendMapiMail = class(TDataModule)
    MapiSession: TRwMapiSession;
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
    procedure SendMail(const Subject, MessageText, MailFromAddress,
      MailToAddress: String; const Attachments: array of String;
      const SubMit: Boolean);
  end;

  // var dm_SendMapiMail: Tdm_SendMapiMail;

implementation

{$R *.dfm}

uses
  // fLogon
{$IFDEF VARIANTS}
  , Variants
{$ENDIF VARIANTS}
    uRwBoxes, uRwMapiMessage, uRwClasses, fRwMapiFields, dmsDataConn;

procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
  MailToAddress: String; const Attachments: array of String;
  const SubMit: Boolean);
var
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
  NewMessage: IRwMapiMailMessage;
  Submitted: Boolean;
  i: Integer;
begin
  if MapiSession.Active = False Then
    Self.MapiSession.Active := True;
  // ShowLogonDlg(Self.MapiSession, True);

  if Trim(MailToAddress) = '' then
    raise Exception.Create('No recipients specified');

  if Trim(Subject) = '' then
    raise EAbort.Create('There is no subject.');

  // Logon, create and send the message
  MapiSession.Logon;
  try
    // create a new message of class IPM.Note in the drafts folder of the default messagestore
    NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;

    NewMessage.RecipTo := MailToAddress;
    NewMessage.Subject := Subject;
    NewMessage.Body := MessageText;
    // NewMessage.RecipBCC := '' ;
    // Add the selected attachments
    for i := Low(Attachments) to High(Attachments) do
      NewMessage.AddFileAttachment(Attachments[i]);

    // save the message
    NewMessage.SaveChanges(smKeepOpenReadOnly);

    if SubMit then
      NewMessage.SubmitMessage(astMoveToSentItems);
    // astLeaveInOutbox   //astMoveToSentItems

  finally
    MapiSession.Logoff;
  end;

  if Submitted then
  begin
    RwMsgBoxInfo('The message is submitted.');
    // ClearMessage;
  end;
end;

(*


  procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
  MailToAddress: String; const Attachments: array of String);
  var
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
  NewMessage: IRwMapiMessage;
  i: Integer;
  begin
  if MapiSession.Active = False Then
  Self.MapiSession.Active := True ;
  //  ShowLogonDlg(Self.MapiSession, True);

  if Trim(MailToAddress) = '' then
  raise Exception.Create('No recipients specified');

  if Trim(Subject) = '' then
  //    if BoxYesNo('There is no subject. Do you want to send the message anyway?') = mrNO then
  raise EAbort.Create('There is no subject.');

  // open the default messagestore
  MsgStore := MapiSession.GetDefaultMsgStore(alReadWrite);
  // get the drafts folder
  Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
  // create a new message in the drafts folder
  NewMessage := Folder.CreateMessage('IPM.Note');

  //  NewMessage := MapiSession.CreateMessage;

  NewMessage.AddRecipients(MailToAddress, rtTo, False);
  NewMessage.PropByName(PR_SUBJECT).AsString := Subject ;
  NewMessage.SetMessageText(MessageText, mtfPlainText);


  for I := Low(Attachments) to High(Attachments) do
  //    Mail.Attachments.Add(Attachments[I]);
  NewMessage.AddFileAttachment(Attachments[I]);

  // save the message
  NewMessage.SaveChanges(smKeepOpenReadOnly);

  //  NewMessage.SubmitMessage(astMoveToSentItems); //astLeaveInOutbox astMoveToSentItems


  // first resolve the recipienttable
  // ShowFields(FRecipTable); <-- you can use the ShowFields to display the contents of a table
  {  FAddressbook.ResolveNames(FRecipTable, False, True, Application.Title);

  // create a new message in the outbox of the default messagestore
  MsgStore := MapiSession.GetDefaultMsgStore(alReadWrite);
  Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
  NewMessage := Folder.CreateMessage('IPM.Note');

  NewMessage.AddRecipients(EdtTo.Text, rtTo, False);

  NewMessage.ModifyRecipients(moReplaceAll, FRecipTable);
  NewMessage.PropByName(PR_SUBJECT).AsString := Subject;
  NewMessage.SetMessageText(MessageText, mtfPlainText); }

  // add the attachments
  //  for I := Low(Attachments) to High(Attachments) do
  //  NewMessage.AddFileAttachment(Attachments[I]);

  //  for i := 0 to lvAttachments.Items.Count - 1 do
  //    NewMessage.AddFileAttachment(TAttachmentData(lvAttachments.Items[i].Data).FileName);

  //  NewMessage.SubmitMessage(astMoveToSentItems);

  //  ClearMessage;
  ShowMessage('Meddelandet är sparat till utkast.');
  end;

*)
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
