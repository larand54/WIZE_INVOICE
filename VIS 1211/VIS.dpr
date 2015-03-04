program VIS;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  fMain in 'fMain.pas' {frmMain},
  VidaConst in 'VidaConst.pas',
  dmsDataConn in 'dmsDataConn.pas' {dmsConnector: TDataModule},
  frmDBAdmin in 'frmDBAdmin.pas' {dlgDBAdmin},
  uEncode in 'uEncode.pas',
  VidaUtils in 'VidaUtils.pas',
  dmsVidaSystem in 'dmsVidaSystem.pas' {dmsSystem: TDataModule},
  dmcVidaSystem in 'dmcVidaSystem.pas' {dmcSystem: TDataModule},
  VidaType in 'VidaType.pas',
  fDBForm in 'fDBForm.pas' {frmDBForm},
  dmsVidaContact in 'dmsVidaContact.pas' {dmsContact: TDataModule},
  dmLM1 in 'dmLM1.pas' {daMoLM1: TDataModule},
  fAvrop in 'fAvrop.pas' {frmAvrop},
  fInvoice in 'fInvoice.pas' {frmInvoice},
  fInvoiceList in 'fInvoiceList.pas' {frmInvoiceList},
  fSkapaAvrakning in 'fSkapaAvrakning.pas' {frmSkapaAvrakning},
  UnitdmModule1 in 'UnitdmModule1.pas' {dmModule1: TDataModule},
  fAvrakningar in 'fAvrakningar.pas' {frmGjordaAvrakningar},
  UnitSelectClient in 'UnitSelectClient.pas' {FormSelectClient},
  UnitDestination in 'UnitDestination.pas' {FormDestination},
  UnitAddress in 'UnitAddress.pas' {FormAddress},
  UnitEnterInvoiceNo in 'UnitEnterInvoiceNo.pas' {FormEnterInvoiceNo},
  UnitCurrency in 'UnitCurrency.pas' {FormCurrency},
  UnitDelTerms in 'UnitDelTerms.pas' {FormDelTerms},
  UnitPaymentTerms in 'UnitPaymentTerms.pas' {FormPaymentTerms},
  UnitCRViewReport in 'UnitCRViewReport.pas' {FormCRViewReport},
  UnitBookingForm in 'UnitBookingForm.pas' {FormBookingForm},
  dmBooking in 'dmBooking.pas' {dm_Booking: TDataModule},
  UnitCarrier in 'UnitCarrier.pas' {FormCarrier},
  dmcAvrakning in 'dmcAvrakning.pas' {dm_Avrakning: TDataModule},
  UnitShippingInstruction in 'UnitShippingInstruction.pas' {frmShippingInstruction},
  UnitKP_List in 'UnitKP_List.pas' {frmKP_List},
  dmcVidaInvoice in 'dmcVidaInvoice.pas' {dmVidaInvoice: TDataModule},
  fMoveInvPkgToInventory in 'fMoveInvPkgToInventory.pas' {formfMoveInvPkgToInventory},
  dlgPickPkg in 'dlgPickPkg.pas' {frmPackagePicker},
  UnitPackageEntry in 'UnitPackageEntry.pas' {frmPackageEntry},
  dmsVidaProduct in 'dmsVidaProduct.pas' {dmsProduct: TDataModule},
  UnitPkgNoSeries in 'UnitPkgNoSeries.pas' {frmPkgNoSeries},
  dmcVidaOrder in 'dmcVidaOrder.pas' {dmcOrder: TDataModule},
  fLoadOrder in 'fLoadOrder.pas' {frmLoadOrder},
  UnitLoadEntrySSP in 'UnitLoadEntrySSP.pas' {fLoadEntrySSP},
  dmcLoadEntrySSP in 'dmcLoadEntrySSP.pas' {dmLoadEntrySSP: TDataModule},
  UnitLoadArrivals in 'UnitLoadArrivals.pas' {frmLoadArrivals},
  dmc_ArrivingLoads in 'dmc_ArrivingLoads.pas' {dmArrivingLoads: TDataModule},
  UnitPkgInfo in 'UnitPkgInfo.pas' {frmPkgInfo},
  UnitPkgNo in 'UnitPkgNo.pas' {frmPkgNo},
  UnitSokAvropFormular in 'UnitSokAvropFormular.pas' {frmSokAvropFormular},
  dmSokFormular in 'dmSokFormular.pas' {dm_SokFormular: TDataModule},
  UnitAvrakningar in 'UnitAvrakningar.pas' {frmAvrakningar},
  uFreightLoad in 'uFreightLoad.pas' {frmFreightLoad},
  uUserPreference in 'uUserPreference.pas' {fUserPreference},
  UnitCRPrintReport in 'UnitCRPrintReport.pas' {FormCRPrintReport},
  uStickyNote in 'uStickyNote.pas' {frmStickyNote},
  uGenShipCost in 'uGenShipCost.pas' {frmGenShipCost},
  dlgPickPkg_II in 'dlgPickPkg_II.pas' {frmPackagePicker_II},
  uEntryField in 'uEntryField.pas' {fEntryField},
  fAttestInvoice in 'fAttestInvoice.pas' {frmAttestInvoice},
  fSelectInvoice in 'fSelectInvoice.pas' {frmSelectInvoice},
  uBasMatPunkter in 'uBasMatPunkter.pas' {fBasMatPunkter},
  uMultiplaShippers in 'uMultiplaShippers.pas' {fMultiplaShippers},
  UnotInvoicedReport in 'UnotInvoicedReport.pas' {fnotInvoicedReport},
  uSamlingsfaktura in 'uSamlingsfaktura.pas' {fSamlingsfaktura},
  ULastLista in 'ULastLista.pas' {fLastLista},
  uPickPkgNo in 'uPickPkgNo.pas' {fPickPkgNo},
  uScanLoadPkgNo in 'uScanLoadPkgNo.pas' {fScanLoadPkgNo},
  Recerror in 'Recerror.pas' {ReconcileErrorForm},
  uConfirmCodeDialog in 'uConfirmCodeDialog.pas' {frmConfirmCodeDialog},
  uLanguage in 'uLanguage.pas' {frmLanguage},
  uSelectShipper in 'uSelectShipper.pas' {fSelectShipper},
  uSelectLIP in 'uSelectLIP.pas' {fSelectLIP},
  uAnkomstRegProgress in 'uAnkomstRegProgress.pas' {fAnkomstRegProgress},
  uSelectLoadPlanDest in 'uSelectLoadPlanDest.pas' {fSelectLoadPlanDest},
  UnitCRPrintOneReport in 'UnitCRPrintOneReport.pas' {FormCRPrintOneReport},
  UnitCRExportOneReport in 'UnitCRExportOneReport.pas' {FormCRExportOneReport},
  uSendMapiMail in 'uSendMapiMail.pas' {dm_SendMapiMail: TDataModule},
  uSelectMultInvoice in 'uSelectMultInvoice.pas' {fSelectMultInvoice},
  dmcLoadEntryCSD in 'dmcLoadEntryCSD.pas' {dmLoadEntryCSD: TDataModule},
  UnitLoadEntryCSD in 'UnitLoadEntryCSD.pas' {fLoadEntryCSD},
  uAddSpecialLengths in 'uAddSpecialLengths.pas' {fAddSpecialLengths},
  uSearchRunNo in 'uSearchRunNo.pas' {fSearchRunNo},
  dmc_ImportWoodx in 'dmc_ImportWoodx.pas' {dm_ImportWoodx: TDataModule},
  uSelectWoodxClient in 'uSelectWoodxClient.pas' {fSelectWoodxClient},
  dmc_UserProps in 'dmc_UserProps.pas' {dm_UserProps: TDataModule},
  uWait in 'uWait.pas' {fWait},
  UPortArrivals in 'UPortArrivals.pas' {frmPortArrivals},
  uSokAvropMall in 'uSokAvropMall.pas' {fSokAvropMall},
  UnitAboutBox in '..\..\CommonUnits\UnitAboutBox.pas' {AboutBox},
  VidaUser in '..\..\CommonUnits\VidaUser.pas',
  uChangeLogins in 'uChangeLogins.pas' {OKHelpBottomDlg},
  uChkAvrLoads in 'uChkAvrLoads.pas' {fChkAvrLoads},
  uInvoiceWizard in 'uInvoiceWizard.pas' {fInvoiceWizard},
  uShowMemo in 'uShowMemo.pas' {fShowMemo},
  uLoadOrderListSetup in 'uLoadOrderListSetup.pas' {fLoadOrderListSetup},
  uTradingLinkMult in 'uTradingLinkMult.pas' {fTradingLinkMult},
  dmcVidaLO in 'dmcVidaLO.pas' {dmcLO: TDataModule},
  uInScannedPkgs in 'uInScannedPkgs.pas' {fInScannedPkgs},
  uSelectLaststalleAndShipto in 'uSelectLaststalleAndShipto.pas' {fSelectLastStalleAndShipTo},
  uFreightAvrSearch in 'uFreightAvrSearch.pas' {fFreightAvrSearch},
  uSelectLONoByInvoiceSerie in 'uSelectLONoByInvoiceSerie.pas' {fSelectLONoByInvoiceSerie},
  uLoadOrderSearch in 'uLoadOrderSearch.pas' {fLoadOrderSearch},
  uSelectBTHorBTB in 'uSelectBTHorBTB.pas' {fSelectBTHorBTB},
  uSelectFSFileName in 'uSelectFSFileName.pas' {fSelectFSFileName},
  uKundspecifika in 'uKundspecifika.pas' {fKundspecifika},
  uAddKundSpecifika in 'uAddKundSpecifika.pas' {fAddKundSpecifika},
  fBaseFormA in 'fBaseFormA.pas' {frmBaseFormA},
  uArticle in 'uArticle.pas' {fArticle},
  uKontoLogik in 'uKontoLogik.pas' {fKontoLogik},
  uBaseListForm in 'uBaseListForm.pas' {fBaseListForm},
  uOrderStocken in 'uOrderStocken.pas' {fOrderStocken},
  uIntrastat in 'uIntrastat.pas' {fIntrastat},
  uTradingAnalyze in 'uTradingAnalyze.pas' {fTradingAnalyze},
  uShowInvTrfLog in 'uShowInvTrfLog.pas' {fShowInvTrfLog},
  uFreightExternLoad in 'uFreightExternLoad.pas' {frmFreightExternLoad},
  uPayControl in 'uPayControl.pas' {fPayControl},
  uAttest_SetHdrInfo in 'uAttest_SetHdrInfo.pas' {fAttest_SetHdrInfo},
  uSelectAttBeskrivning in 'uSelectAttBeskrivning.pas' {fSelectAttBeskrivning},
  uFastReports in 'uFastReports.pas' {dmFR: TDataModule},
  uExportLoadPurpose in 'uExportLoadPurpose.pas' {fExportLoadPurpose},
  uPickVPPkgs in 'uPickVPPkgs.pas' {fPickVPPkgs},
  uCreditGrpClients in 'uCreditGrpClients.pas' {frmCreditGrpClients},
  uSelectCustomer in 'uSelectCustomer.pas' {frmSelectCustomer},
  uCredit in 'uCredit.pas' {frmCredit},
  uImportedPackages in 'uImportedPackages.pas' {fImportedPackages},
  uEntryPriceField in 'uEntryPriceField.pas' {fEntryPriceField},
  uVerifikationLogg in 'uVerifikationLogg.pas' {fVerifikationLogg},
  uCreditLimitAnalys in 'uCreditLimitAnalys.pas' {frmCreditLimitAnalys},
  fShipToAddress in 'fShipToAddress.pas' {frmShipToAddress},
  uCity in 'uCity.pas' {fCity},
  uCountry in 'uCountry.pas' {fCountry},
  uOrderStockDetails in 'uOrderStockDetails.pas' {fOrderStockDetails},
  uAccInv in 'uAccInv.pas' {fAccInv},
  uLockedLoads in 'uLockedLoads.pas' {frmLockLoads},
  uReportStatics in 'uReportStatics.pas' {fReportStatics},
  uStef in 'uStef.pas' {fStef},
  uSelectLORowInLoad in 'uSelectLORowInLoad.pas' {fSelectLORowInLoad},
  uconfirm in 'uconfirm.pas' {fConfirm},
  uEnterLoadWeight in 'uEnterLoadWeight.pas' {fEnterLoadWeight},
  uSelectPrintDevice in 'uSelectPrintDevice.pas' {fSelectPrintDevice},
  uAvdelning in 'uAvdelning.pas' {fAvdelning},
  USelectLIPNo in 'USelectLIPNo.pas' {fSelectLIPNo},
  CR_Plugin_Import in 'CR_Plugin_Import.pas',
  PreviewForm in 'PreviewForm.pas' {Form2},
  PrintUnit in 'PrintUnit.pas',
  uUnConnectedPackages in 'uUnConnectedPackages.pas' {fUnConnectedPackages},
  uPrintTest in 'uPrintTest.pas' {fPrintTest},
  udmLanguage in 'udmLanguage.pas' {dmLanguage: TDataModule},
  ufrmChangeLanguage in 'ufrmChangeLanguage.pas' {frmChangeLanguage},
  MainU in 'Aug 31B dbExpress\MainU.pas' {XMLImportExport},
  DeliveryMessageWoodV2R31 in 'Aug 31B dbExpress\DeliveryMessageWoodV2R31.pas',
  PackageExportU in 'Aug 31B dbExpress\PackageExportU.pas',
  PackageImportU in 'Aug 31B dbExpress\PackageImportU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'VIS';
  Application.CreateForm(TdmsConnector, dmsConnector);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TdmsSystem, dmsSystem);
  Application.CreateForm(TdmsContact, dmsContact);
  Application.CreateForm(TdmModule1, dmModule1);
  Application.CreateForm(TdmLanguage, dmLanguage);
  Application.CreateForm(TfrmChangeLanguage, frmChangeLanguage);
  Application.CreateForm(TXMLImportExport, XMLImportExport);
  Application.Run;

end.
