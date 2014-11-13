program XMLDBExchange;

uses
  Forms,
  MainU in 'MainU.pas' {XMLImportExport},
  DeliveryMessageWoodV2R31 in 'DeliveryMessageWoodV2R31.pas',
  PackageExportU in 'PackageExportU.pas',
  PackageImportU in 'PackageImportU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TXMLImportExport, XMLImportExport);
  Application.Run;
end.
