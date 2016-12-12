unit uChangeLogins;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, siComp, siLngLnk, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TOKHelpBottomDlg = class(TForm)
    eAD_Name: TEdit;
    Button1: TButton;
    Label1: TLabel;
    eDatabas: TEdit;
    Label2: TLabel;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    siLangLinked_OKHelpBottomDlg: TsiLangLinked;
    cbUserName: TComboBox;
    cds_users: TFDQuery;
    cds_usersUserName: TStringField;
    procedure HelpBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbUserNameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var OKHelpBottomDlg: TOKHelpBottomDlg;

implementation

uses dmsDataConn, udmLanguage;

{$R *.dfm}

procedure TOKHelpBottomDlg.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

procedure TOKHelpBottomDlg.Button1Click(Sender: TObject);
begin
  inherited;
  eAD_Name.Text   := dmsConnector.Get_AD_Name;
  cbUserName.Text := eAD_Name.Text ;
end;

procedure TOKHelpBottomDlg.Button2Click(Sender: TObject);
begin
  inherited;
  eDatabas.Text := dmsConnector.Org_DB_Name;
end;

procedure TOKHelpBottomDlg.cbUserNameChange(Sender: TObject);
begin
  eAD_Name.Text :=   cbUserName.Text ;
end;

procedure TOKHelpBottomDlg.FormCreate(Sender: TObject);
begin
 cbUserName.Items.Clear ;
 cds_users.Active := True ;
 Try
 cds_users.First ;
 while not cds_users.eof do
 Begin
    cbUserName.Items.Add('Vida\' + cds_usersUserName.AsString) ;
    cds_users.Next ;
 End;
 Finally
   cds_users.Active := False ;
 End;
end;

end.
