unit uFastReports;

interface

uses
  SysUtils, Classes, uADStanIntf, uADStanOption, uADStanParam,
  uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf, uADStanAsync,
  uADDAptManager, frxClass, frxRich, frxExportPDF, frxDBSet, DB,
  uADCompDataSet, uADCompClient;

type
  TdmFR = class(TDataModule)
    sp_vis_FR_Invoice: TADStoredProc;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport2: TfrxPDFExport;
    frxRichObject1: TfrxRichObject;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFR: TdmFR;

implementation

uses dmsDataConn;

{$R *.dfm}

end.
