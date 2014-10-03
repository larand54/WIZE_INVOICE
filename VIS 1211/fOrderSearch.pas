unit fOrderSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, ActnList, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, dxExEdtr, FMTBcd, DBClient, Provider, SqlExpr,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLabel, cxImageComboBox;

type
  TfrmOrderSearch = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    editSearch: TEdit;
    Panel2: TPanel;
    ActionList1: TActionList;
    atOK: TAction;
    sq_SearchOrder: TSQLQuery;
    dsp_SearchOrder: TDataSetProvider;
    cds_SearchOrder: TClientDataSet;
    ds_SearchOrder: TDataSource;
    cds_SearchOrderOrderNo: TIntegerField;
    cds_SearchOrderOrderNoText: TStringField;
    cds_SearchOrderCustomerNo: TIntegerField;
    cds_SearchOrderClientName: TStringField;
    cds_SearchOrderLO: TIntegerField;
    cds_SearchOrderALO: TIntegerField;
    cds_SearchOrderAGENT: TStringField;
    grdSearchOrderDBTableView1: TcxGridDBTableView;
    grdSearchOrderLevel1: TcxGridLevel;
    grdSearchOrder: TcxGrid;
    grdSearchOrderDBTableView1OrderNo: TcxGridDBColumn;
    grdSearchOrderDBTableView1OrderNoText: TcxGridDBColumn;
    grdSearchOrderDBTableView1CustomerNo: TcxGridDBColumn;
    grdSearchOrderDBTableView1ClientName: TcxGridDBColumn;
    grdSearchOrderDBTableView1LO: TcxGridDBColumn;
    grdSearchOrderDBTableView1ALO: TcxGridDBColumn;
    grdSearchOrderDBTableView1AGENT: TcxGridDBColumn;
    EditSearchRef: TEdit;
    Label2: TLabel;
    EditSearchLO: TEdit;
    Label3: TLabel;
    cds_SearchOrderReference: TStringField;
    grdSearchOrderDBTableView1Reference: TcxGridDBColumn;
    Button2: TButton;
    Button1: TButton;
    cds_SearchOrderObjecttype: TIntegerField;
    grdSearchOrderDBTableView1Objecttype: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure atOKExecute(Sender: TObject);
    procedure atOKUpdate(Sender: TObject);
    procedure editSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSearchRefKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSearchLOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSearchOrderDBTableView1KeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure editSearchEnter(Sender: TObject);
    procedure editSearchExit(Sender: TObject);
    procedure EditSearchRefEnter(Sender: TObject);
    procedure EditSearchRefExit(Sender: TObject);
    procedure EditSearchLOEnter(Sender: TObject);
    procedure EditSearchLOExit(Sender: TObject);
  private
    SelectOK : Boolean ;
    FOrderNo : Integer;
    FLONo    : Integer;
    FOrderNoText : String ;
    FSearchOption : Integer ;
    procedure checkIfLONoIsIntLO;
  public
    property OrderNo: Integer read FOrderNo;
    property LONo: Integer read FLONo;
    property OrderNoText: String read FOrderNoText;
  end;

  function OpenOrderSearchForm(var PLONr : Integer ; var POrderNo: Integer;Var POrderNoText : String; SearchOption : Integer = 1): Boolean;

var
  frmOrderSearch: TfrmOrderSearch;

implementation

{$R *.dfm}
uses dmsDataConn, VidaConst , dmsVidaSystem, VidaUser ;

//-----------------------------------------------------------------------
function OpenOrderSearchForm(var PLONr : Integer ; Var POrderNo: Integer;Var POrderNoText : String;SearchOption :Integer = 1): Boolean;
begin
  Result := False;
  with TfrmOrderSearch.Create(Application) do
  begin
{  	FSearchOption := SearchOption;
  	if FSearchOption = cSearchLO then
    begin
      Label1.Caption := 'LO Nr:';
      Caption := 'Sök LO Nr';
    end
    else
  	if FSearchOption = cSearchALO then
    begin
      Label1.Caption := 'Add LO No:';
      Caption := 'Add LO No Search';
    end
    else
  	if FSearchOption = cSearchReferens then
    begin
      Label1.Caption := 'Referens:';
      Caption := 'Sök referens';
    end; }

    if ShowModal = mrOk then
    begin
      Result        := True;
      POrderNo      := OrderNo;
      POrderNoText  := OrderNoText ;

{    	if FSearchOption = cSearchLO then
      Begin
       if cds_SearchOrderALO.AsInteger > 0 then
        PLONr:= cds_SearchOrderALO.AsInteger
         else
          PLONr:= LONO ;
      End
      else
    	if FSearchOption = cSearchReferens then
      Begin
       if cds_SearchOrderALO.AsInteger > 0 then
        PLONr:= cds_SearchOrderALO.AsInteger
         else
          PLONr:= LONO ;
      End
      else
       PLONr := 0 ; }


{     if cds_SearchOrderALO.AsInteger > 0 then
      PLONr:= cds_SearchOrderALO.AsInteger
       else
        PLONr := 0 ;           }

     if cds_SearchOrderLO.AsInteger > 0 then
      PLONr:= cds_SearchOrderLO.AsInteger
       else
        PLONr := 0 ;

    if not (cds_SearchOrder.bof and cds_SearchOrder.eof) then
     Begin
//      grdSearchOrder.SetFocus ;
      SelectOK:= True ;
     End ;

      if SelectOK = False then
       POrderNo:= 0 ;     

    end;
    Free;
  end;
end;

//-----------------------------------------------------------------------
procedure TfrmOrderSearch.FormCreate(Sender: TObject);
begin
  editSearch.Text := '';
  SelectOK        := False ;
  
//  sq_SearchOrder.Close;
end;

procedure TfrmOrderSearch.atOKExecute(Sender: TObject);
begin
  with cds_SearchOrder do
  begin
    if (not Active) or (Eof and bof) then Exit;
    FOrderNo    :=  FieldByName('OrderNo').AsInteger;
    FLONo       :=  FieldByName('LO').AsInteger;
    FLONo       :=  FieldByName('LO').AsInteger;
    FOrderNoText:=  FieldByName('OrderNoText').AsString ;
    ModalResult := mrOk;
  end;
end;

//-----------------------------------------------------------------------
procedure TfrmOrderSearch.atOKUpdate(Sender: TObject);
begin
  with cds_SearchOrder do
    (Sender as TAction).Enabled := Active and (not (bof and Eof) );
end;

procedure TfrmOrderSearch.editSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var  Save_Cursor : TCursor;
begin
 SelectOK:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  if Key <> VK_RETURN then Exit;
  if Trim(editSearch.Text) = '' then Exit;
  grdSearchOrderDBTableView1LO.Visible         := False ;
  grdSearchOrderDBTableView1Reference.Visible  := False ;
  grdSearchOrderDBTableView1ALO.Visible        := False ;
  with sq_SearchOrder do
  begin
   cds_SearchOrder.Active:= False ;
//    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct 0 AS Objecttype, O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
//    if FSearchOption = cSearchLO then
//     SQL.Add(', csh.ShippingPlanNo AS LO, 0 AS ALO, AC.ClientName AS AGENT, ' + QuotedStr('') + ' AS Reference' )
//      else
//       if FSearchOption = cSearchOrderNo then
        SQL.Add(', 0 AS LO, 0 AS ALO, AC.ClientName AS AGENT, ' + QuotedStr('') + ' AS Reference'  ) ;
      SQL.Add( ' FROM dbo.Orders o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
      SQL.Add( ' Left Outer Join dbo.Client AC ON AC.ClientNo = O.AgentNo ');
//    if FSearchOption = cSearchLO then
//      SQL.Add(' LEFT JOIN dbo.CustomerShippingPlanHeader csh ON csh.OrderNo = O.OrderNo ');

//    if FSearchOption = cSearchOrderNo then
      Sql.Add(' WHERE o.OrderNoText LIKE ''%' + Trim(editSearch.Text) + '%''') ;
//    else
//    if FSearchOption = cSearchLO then
//      sql.Add( ' where csh.ShippingPlanNo= ' + Trim(editSearch.Text) );
{   if FSearchOption <> cSearchOrderNo then
   Begin
  Sql.Add('UNION');
//    SQL.Clear;
    SQL.Add('SELECT distinct O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
    if FSearchOption = cSearchLO then
     SQL.Add(', ssp.ShippingPlanNo AS LO, isnull(ssp.LO_No,0) AS ALO, AC.ClientName AS AGENT' )
      else
       SQL.Add(', 0 AS LO, ssp.LO_No AS ALO, AC.ClientName AS AGENT,  ' + QuotedStr('') + ' AS Reference' ) ;

      SQL.Add( ' FROM dbo.Orders o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
      SQL.Add( ' Left Outer Join dbo.Client AC ON AC.ClientNo = O.AgentNo ');
    if FSearchOption = cSearchLO then
      SQL.Add(' LEFT JOIN dbo.SupplierShippingPlan ssp ON ssp.OrderNo = O.OrderNo ');


    if FSearchOption = cSearchOrderNo then
      Sql.Add(' WHERE o.OrderNoText LIKE ''%' + Trim(editSearch.Text) + '%''')
    else
    if FSearchOption = cSearchLO then
      sql.Add( ' where ssp.ShippingPlanNo= ' + Trim(editSearch.Text) );
   End ; }

//    sql.SaveToFile('cds_SearchOrder.txt');

    try
      Open;
     cds_SearchOrder.Active:= True ;
    except
    end;
    if not (cds_SearchOrder.bof and cds_SearchOrder.eof) then
     Begin
      grdSearchOrder.SetFocus ;
      SelectOK:= True ;
     End
      else
       if FSearchOption = cSearchLO then
        checkIfLONoIsIntLO ;
  end;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmOrderSearch.checkIfLONoIsIntLO;
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  if Trim(editSearch.Text) = '' then Exit;
  with sq_SearchOrder do
  begin
   cds_SearchOrder.Active:= False ;
    SQL.Clear;


    SQL.Add('SELECT distinct ssp.Objecttype, O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
     SQL.Add(', ssp.LO_No AS LO, 0 AS ALO, '+QuotedStr('N/A')+' AS AGENT' ) ;

      SQL.Add( ' FROM dbo.InternalOrderHead o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
//      SQL.Add( ' Left Outer Join dbo.Client AC ON AC.ClientNo = O.AgentNo ');
      SQL.Add(' LEFT JOIN dbo.SupplierShippingPlan ssp ON ssp.ShippingPlanNo = O.ShippingPlanNo ');
      sql.Add( ' where ssp.ShippingPlanNo= ' + Trim(editSearch.Text) );
//      sql.SaveToFile('sq_SearchOrder.txt') ;


    try
      Open;
     cds_SearchOrder.Active:= True ;
    except
    end;
    if not (cds_SearchOrder.bof and cds_SearchOrder.eof) then
    Begin
     grdSearchOrder.SetFocus ;
     ShowMessage('Lastordern är intern');
     SelectOK:= False ;
    End ;
  end;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

(*procedure TfrmOrderSearch.editSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  if Key <> VK_RETURN then Exit;
  if Trim(editSearch.Text) = '' then Exit;
  with sq_SearchOrder do
  begin
   cds_SearchOrder.Active:= False ;
//    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
    if FSearchOption = cSearchLO then
     SQL.Add(', csh.ShippingPlanNo AS LO' )
      else
       if FSearchOption = cSearchALO then
        SQL.Add(', ssp.LO_No AS LO' )
         else
          SQL.Add(', 0 AS LO' ) ;

      SQL.Add( ' FROM dbo.Orders o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
    if FSearchOption = cSearchLO then
      SQL.Add(' LEFT JOIN dbo.CustomerShippingPlanHeader csh ON csh.OrderNo = O.OrderNo ');
    if FSearchOption = cSearchALO then
      SQL.Add(' LEFT JOIN dbo.SupplierShippingPlan ssp ON ssp.OrderNo = O.OrderNo ');

      Sql.Add('UNION');

    SQL.Clear;
    SQL.Add('SELECT distinct O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
    if FSearchOption = cSearchLO then
     SQL.Add(', csh.ShippingPlanNo AS LO' )
      else
       if FSearchOption = cSearchALO then
        SQL.Add(', ssp.LO_No AS LO' )
         else
          SQL.Add(', 0 AS LO' ) ;

      SQL.Add( ' FROM dbo.Orders o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
    if FSearchOption = cSearchLO then
      SQL.Add(' LEFT JOIN dbo.CustomerShippingPlanHeader csh ON csh.OrderNo = O.OrderNo ');
    if FSearchOption = cSearchALO then
      SQL.Add(' LEFT JOIN dbo.SupplierShippingPlan ssp ON ssp.OrderNo = O.OrderNo ');




    if FSearchOption = cSearchOrderNo then
      Sql.Add(' WHERE o.OrderNoText LIKE ''%' + Trim(editSearch.Text) + '%''')
    else
    if FSearchOption = cSearchLO then
    begin
      sql.Add( ' where csh.ShippingPlanNo= ' + Trim(editSearch.Text) );
      {
      sql.Add(' where o.OrderNo in ');
      sql.Add(' (select distinct OrderNo FROM CustomerShippingPlanHeader  ');
      sql.Add( ' where ShippingPlanNo= ' + Trim(editSearch.Text) +')' ); }
    end
    else
    if FSearchOption = cSearchALO then
    begin
      sql.Add( ' where ssp.ShippingPlanNo= ' + Trim(editSearch.Text) );

{      sql.Add(' where o.OrderNo in ');
      sql.Add(' (select distinct OrderNo FROM SupplierShippingPlan  ');
      sql.Add( ' where ShippingPlanNo= ' + Trim(editSearch.Text) +')' ); }
    end ;

//    sql.SaveToFile('cds_SearchOrder.txt');

    try
      Open;
     cds_SearchOrder.Active:= True ;
    except
    end;
    if not (cds_SearchOrder.bof and cds_SearchOrder.eof) then dbgridOrders.SetFocus;
  end;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end; *)

procedure TfrmOrderSearch.EditSearchRefKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var  Save_Cursor : TCursor;
begin
 SelectOK:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  if Key <> VK_RETURN then Exit;
  if Trim(EditSearchRef.Text) = '' then Exit;
  grdSearchOrderDBTableView1LO.Visible         := True ;
  grdSearchOrderDBTableView1Reference.Visible  := True ;
  grdSearchOrderDBTableView1ALO.Visible        := False ;
  with sq_SearchOrder do
  begin
   cds_SearchOrder.Active:= False ;
//    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct 0 AS Objecttype, O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
//    if FSearchOption = cSearchLO then
     SQL.Add(', csh.ShippingPlanNo AS LO, 0 AS ALO, AC.ClientName AS AGENT, CSH.Reference' ) ;
//      else
//       if FSearchOption = cSearchOrderNo then
//        SQL.Add(', 0 AS LO, 0 AS ALO, AC.ClientName AS AGENT' ) ;
      SQL.Add( ' FROM dbo.Orders o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
      SQL.Add( ' Left Outer Join dbo.Client AC ON AC.ClientNo = O.AgentNo ');
//    if FSearchOption = cSearchLO then
      SQL.Add(' LEFT JOIN dbo.CustomerShippingPlanHeader csh ON csh.OrderNo = O.OrderNo ');

//    if FSearchOption = cSearchOrderNo then
      Sql.Add(' WHERE csh.Reference LIKE ''%' + Trim(EditSearchRef.Text) + '%''') ;
//    else
//    if FSearchOption = cSearchLO then
//      sql.Add( ' where csh.ShippingPlanNo= ' + Trim(EditSearchRef.Text) );
//   if FSearchOption <> cSearchOrderNo then
//   Begin

{  Sql.Add('UNION');
//    SQL.Clear;
    SQL.Add('SELECT distinct O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
//    if FSearchOption = cSearchLO then
     SQL.Add(', ssp.ShippingPlanNo AS LO, isnull(ssp.LO_No,0) AS ALO, AC.ClientName AS AGENT' ) ;
//      else
//       SQL.Add(', 0 AS LO, ssp.LO_No AS ALO, AC.ClientName AS AGENT' ) ;

      SQL.Add( ' FROM dbo.Orders o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
      SQL.Add( ' Left Outer Join dbo.Client AC ON AC.ClientNo = O.AgentNo ');
//    if FSearchOption = cSearchLO then
//      SQL.Add(' LEFT JOIN dbo.SupplierShippingPlan ssp ON ssp.OrderNo = O.OrderNo ');


    if FSearchOption = cSearchOrderNo then
      Sql.Add(' WHERE o.OrderNoText LIKE ''%' + Trim(EditSearchRef.Text) + '%''')
    else
    if FSearchOption = cSearchLO then
      sql.Add( ' where ssp.ShippingPlanNo= ' + Trim(EditSearchRef.Text) );
//   End ;
 }

//    sql.SaveToFile('cds_SearchOrder.txt');



    try
      Open;
     cds_SearchOrder.Active:= True ;
    except
    end;
    if not (cds_SearchOrder.bof and cds_SearchOrder.eof) then
     Begin
      grdSearchOrder.SetFocus ;
      SelectOK:= True ;
     End
      else
       if FSearchOption = cSearchLO then
        checkIfLONoIsIntLO ;
  end;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmOrderSearch.EditSearchLOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var  Save_Cursor : TCursor;
begin
 SelectOK:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  if Key <> VK_RETURN then Exit;
  if Trim(EditSearchLO.Text) = '' then Exit;
  grdSearchOrderDBTableView1LO.Visible         := True ;
  grdSearchOrderDBTableView1Reference.Visible  := True ;
  grdSearchOrderDBTableView1ALO.Visible        := False ;
  with sq_SearchOrder do
  begin
   cds_SearchOrder.Active:= False ;
//    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct 0 AS Objecttype, O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
//    if FSearchOption = cSearchLO then
     SQL.Add(', csh.ShippingPlanNo AS LO, 0 AS ALO, AC.ClientName AS AGENT, CSH.Reference' ) ;
//      else
//       if FSearchOption = cSearchOrderNo then
//        SQL.Add(', 0 AS LO, 0 AS ALO, AC.ClientName AS AGENT' ) ;
      SQL.Add( ' FROM dbo.Orders o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
      SQL.Add( ' Left Outer Join dbo.Client AC ON AC.ClientNo = O.AgentNo ');
//    if FSearchOption = cSearchLO then
      SQL.Add(' LEFT JOIN dbo.CustomerShippingPlanHeader csh ON csh.OrderNo = O.OrderNo ');

//    if FSearchOption = cSearchOrderNo then
//      Sql.Add(' WHERE o.OrderNoText LIKE ''%' + Trim(EditSearchLO.Text) + '%''')
//    else
//    if FSearchOption = cSearchLO then
      sql.Add( ' where csh.ShippingPlanNo= ' + Trim(EditSearchLO.Text) );
//   if FSearchOption <> cSearchOrderNo then
//   Begin
  Sql.Add('UNION');
//    SQL.Clear;
    SQL.Add('SELECT distinct ssp.Objecttype, O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName ') ;
//    if FSearchOption = cSearchLO then
     SQL.Add(', csh.ShippingPlanNo AS LO, isnull(ssp.LO_No,0) AS ALO, AC.ClientName AS AGENT, CSH.Reference' ) ;
//      else
//       SQL.Add(', 0 AS LO, ssp.LO_No AS ALO, AC.ClientName AS AGENT,  ' + QuotedStr('') + ' AS Reference' ) ;

      SQL.Add( ' FROM dbo.Orders o');
      SQL.Add( ' LEFT JOIN dbo.Client c ON C.ClientNo = O.CustomerNo ');
      SQL.Add( ' Left Outer Join dbo.Client AC ON AC.ClientNo = O.AgentNo ');
//    if FSearchOption = cSearchLO then
      SQL.Add(' LEFT JOIN dbo.CustomerShippingPlanHeader csh ON csh.OrderNo = o.OrderNo ');
      SQL.Add(' LEFT JOIN dbo.SupplierShippingPlan ssp ON ssp.LO_No = csh.ShippingPlanNo  ');


//    if FSearchOption = cSearchOrderNo then
//      Sql.Add(' WHERE o.OrderNoText LIKE ''%' + Trim(EditSearchLO.Text) + '%''')
//    else
//    if FSearchOption = cSearchLO then
      sql.Add( ' where ssp.ShippingPlanNo = ' + Trim(EditSearchLO.Text) );
      sql.Add( ' and ssp.Objecttype = 1 ') ;
//   End ;

//    sql.SaveToFile('cds_SearchOrder.txt');

    try
      Open;
     cds_SearchOrder.Active:= True ;
    except
    end;
    if not (cds_SearchOrder.bof and cds_SearchOrder.eof) then
     Begin
      grdSearchOrder.SetFocus ;
      SelectOK:= True ;
     End
      else
       if FSearchOption = cSearchLO then
        checkIfLONoIsIntLO ;
  end;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmOrderSearch.grdSearchOrderDBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then atOKExecute(sender);
end;

procedure TfrmOrderSearch.FormShow(Sender: TObject);
begin
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdSearchOrderDBTableView1.Name, grdSearchOrderDBTableView1) = False then ;
end;

procedure TfrmOrderSearch.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdSearchOrderDBTableView1.Name, grdSearchOrderDBTableView1) ;
end;

procedure TfrmOrderSearch.editSearchEnter(Sender: TObject);
begin
 editSearch.Color:= clYellow ;
end;

procedure TfrmOrderSearch.editSearchExit(Sender: TObject);
begin
 editSearch.Color:= clWindow ;
end;

procedure TfrmOrderSearch.EditSearchRefEnter(Sender: TObject);
begin
 EditSearchRef.Color:= clYellow ;
end;

procedure TfrmOrderSearch.EditSearchRefExit(Sender: TObject);
begin
 EditSearchRef.Color:= clWindow ;
end;

procedure TfrmOrderSearch.EditSearchLOEnter(Sender: TObject);
begin
 EditSearchLO.Color:= clYellow ;
end;

procedure TfrmOrderSearch.EditSearchLOExit(Sender: TObject);
begin
 EditSearchLO.Color:= clWindow ;
end;

end.
