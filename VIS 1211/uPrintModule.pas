unit uPrintModule;

interface

uses
  SysUtils, Classes, FMTBcd, DB,
  DBClient, Provider, SqlExpr,  Graphics,

  ExtCtrls,

  Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxRich, frxClass, frxDBSet,
  frxExportPDF ;

type
  TdmPrintModule = class(TDataModule)
    cds_LoadSpec: TFDQuery;
    cds_LoadSpecKund: TStringField;
    cds_LoadSpecLeverantr: TStringField;
    cds_LoadSpecFS: TStringField;
    cds_LoadSpecUtlastad: TSQLTimeStampField;
    cds_LoadSpecSTATUS: TIntegerField;
    cds_LoadSpecLAST_ID: TStringField;
    cds_LoadSpecLastnr: TIntegerField;
    cds_LoadSpecLONo: TIntegerField;
    cds_LoadSpecProdukt: TStringField;
    cds_LoadSpecLoadDetailNo: TIntegerField;
    cds_LoadSpecPaketnr: TIntegerField;
    cds_LoadSpecPACKAGETYPENO: TIntegerField;
    cds_LoadSpecPrefix: TStringField;
    cds_LoadSpecPackageOK: TIntegerField;
    cds_LoadSpecProblemPackageLog: TStringField;
    cds_LoadSpecCreatedUser: TIntegerField;
    cds_LoadSpecModifiedUser: TIntegerField;
    cds_LoadSpecDateCreated: TSQLTimeStampField;
    cds_LoadSpecStyck: TIntegerField;
    cds_LoadSpecProductNo: TIntegerField;
    cds_LoadSpecDefaultCustShipObjectNo: TIntegerField;
    cds_LoadSpecNoOfLengths: TIntegerField;
    cds_LoadSpecProductLengthNo: TIntegerField;
    cds_LoadSpecSurfacingNo: TIntegerField;
    cds_LoadSpecSpeciesNo: TIntegerField;
    cds_LoadSpecMainGradeNo: TIntegerField;
    cds_LoadSpecOverrideMatch: TIntegerField;
    cds_LoadSpecPkg_State: TIntegerField;
    cds_LoadSpecPkg_Function: TIntegerField;
    cds_LoadSpecChanged: TIntegerField;
    cds_LoadSpecDefaultsspObjectNo: TIntegerField;
    cds_LoadSpecMCClassNo: TIntegerField;
    cds_LoadSpecExLog: TStringField;
    cds_LoadSpecProcessNo: TIntegerField;
    ds_LoadSpec: TDataSource;
    cds_LoadSpecLV_Produkt: TStringField;
    cds_LoadSpecNotering: TStringField;
    cds_InvResSum: TFDQuery;
    ds_InvResSum: TDataSource;
    cds_InvResSumPRODUKT: TStringField;
    cds_InvResSumSTYCK: TIntegerField;
    cds_InvResSumAM3: TFMTBCDField;
    cds_InvResSumLager: TStringField;
    cds_InvResSumNM3: TFMTBCDField;
    cds_InvResSumIC_grpno: TIntegerField;
    cds_InvResSumInventeringsdatum: TSQLTimeStampField;
    cds_InvResSumNote: TStringField;
    cds_InvResSumMaxDatum: TSQLTimeStampField;
    cds_InvResSumNamn: TStringField;
    cds_InvResSumPaket: TIntegerField;
    cds_LoadSpecPCS_PER_LENGTH: TStringField;
    cds_LoadSpecKontaktInfo: TStringField;
    cds_LoadSpecAdressInfo: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    cds_LoadSpecAM3: TBCDField;
    cds_LoadSpecNM3: TBCDField;
    cds_LoadSpecMFBM: TBCDField;
    cds_LoadSpecKVM: TBCDField;
    cds_LoadSpecLOPM: TBCDField;
    cds_LoadSpecALMM: TBCDField;
    cds_LoadSpecATMM: TBCDField;
    cds_LoadSpecABMM: TBCDField;
    frxPDFExport1: TfrxPDFExport;
    cds_LoadSpecArticleNumber: TStringField;
    frxReportMedArtNo: TfrxReport;
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExportFS_As_PDF(const LoadNo : Integer;const PathAndFileName : String;const MedArtNo : Boolean) ;
    procedure PrintFS(const LoadNo : Integer;const MedArtNo : Boolean) ;
  end;

var
  dmPrintModule: TdmPrintModule;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TdmPrintModule.PrintFS(const LoadNo : Integer;const MedArtNo : Boolean) ;
Begin
 cds_LoadSpec.ParamByName('LoadNo').AsInteger := LoadNo ;
 cds_LoadSpec.Active := True ;
 Try
  if MedArtNo then
   frxReportMedArtNo.ShowReport()
    else
      frxReport1.ShowReport() ;
 Finally
  cds_LoadSpec.Active := False ;
 End;
End;

procedure TdmPrintModule.ExportFS_As_PDF(const LoadNo : Integer;const PathAndFileName : String;const MedArtNo : Boolean) ;
Begin
 frxPDFExport1.ShowDialog := False ;
 frxPDFExport1.FileName   := PathAndFileName ;
 cds_LoadSpec.Active       := False ;
 cds_LoadSpec.ParamByName('LoadNo').AsInteger := LoadNo ;
 cds_LoadSpec.Active := True ;
 Try
  if MedArtNo then
  Begin
    frxReportMedArtNo.PrepareReport(True) ;
    frxReportMedArtNo.Export(frxPDFExport1) ;
  End
    else
     Begin
      frxReport1.PrepareReport(True) ;
      frxReport1.Export(frxPDFExport1) ;
     End;


 Finally
  cds_LoadSpec.Active       := False ;
  frxPDFExport1.ShowDialog  := True ;
 End;
End;


procedure TdmPrintModule.ppDBText2GetText(Sender: TObject;
  var Text: String);
begin
 if Length(Text) = 0 then
  Text:= cds_LoadSpecProdukt.AsString ;
end;

end.
