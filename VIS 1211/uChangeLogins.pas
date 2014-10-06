unit uChangeLogins;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

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
    procedure HelpBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var OKHelpBottomDlg: TOKHelpBottomDlg;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TOKHelpBottomDlg.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

procedure TOKHelpBottomDlg.Button1Click(Sender: TObject);
begin
  inherited;
  eAD_Name.Text := dmsConnector.Get_AD_Name;
end;

procedure TOKHelpBottomDlg.Button2Click(Sender: TObject);
begin
  inherited;
  eDatabas.Text := dmsConnector.Org_DB_Name;
end;

end.
