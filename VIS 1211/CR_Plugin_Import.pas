unit CR_Plugin_Import;

{ This unit has been automatically created by Hydra. Any changes in this unit might be lost in automatic updates }

interface
uses
  uHYCrossPlatformInterfaces;
type
  PluginInterface = interface;

  // Original Name: CrystalReport_Plugin.PluginInterface
  PluginInterface = interface(IHYCrossPlatformInterface)
  ['{0b5b3d57-3817-460d-be27-3bce41c2c1d9}']
    procedure set_Print(const reportName: WideString; const rptFilePath: WideString; const outputType: WideString; const printSetUp: WideString; const storePath: WideString; const pdfName: WideString; const inputParam: PVarArray{WideString}; const serverName: WideString; const dbName: WideString; const userID: WideString; const passWord: WideString; const iSecurity: WordBool); safecall;
  end;

implementation
end.

