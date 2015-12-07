unit VidaConst;

interface

uses
  Graphics;

const

  c_Not_FixedPkg = 0;
  c_FixedPkg = 1;

  c_Komm = 1;
  c_Frakt = 2;
  c_FraktOthers = 3;
  c_Arbete = 4;
  c_Vara = 5;

  c_Moms = 0.25;
  //
  cUp = 0;
  cDown = 1;

  // TransferType
  c_ExportFile = 0;
  c_ImportPackageStatusFile = 1;
  c_ImportLoadFile = 2;

  // VolumeUnits
  c_Packages = 1;
  c_Stycketal = 2;
  c_m3_aDxaL = 3;
  c_m3_nDxnL = 4;
  c_m3_aDxnL = 5;
  c_m3_nDxaL = 6;
  c_Kvm_tB = 7;
  c_Kvm_aB = 8;
  c_Lopm_a = 9;
  c_MFBM_Nom = 10;
  c_SUM = 11;
  c_Lopm_n = 12;

  // Dim format
  cAKT_MM = 0;
  cNOM_MM = 1;
  cNOM_MM_och_AKT_MM = 3;
  cTUM = 2;
  cTUM_och_AKT_MM = 4;
  cALOFormat = 5;

  iLastOrderVerk = 100;

  LastOrderVerk = 100;
  LastOrderVerkReportNo = 14;

  FuruGran = 52;

  // Rapporter
  cKontrakt = 1;
  cFaktura = 2;
  cLastorder = 3;
  cFoljesedel = 4;
  cAdd_LO = 5;
  cTrporder = 6;
  cPkgSpec = 7;
  cLastorderInkop = 8;
  cTrporderInkop = 9;
  cFoljesedelInkop = 10;

  cFoljesedelUSA = 12;
  cTrpBrev = 13;
  cTrpOrderAvrop = 14;

  cFoljesedelIntern = 17;
  cFoljesedel_eng = 18;

  const_Med_Moms = 0;
  const_Utan_Moms = 1;
  const_ShipMill_Delivery = 0;
  const_ShipMill_RecDelivery = 1;
  const_ShipMill_PayControl = 2;
  const_ShipMill_FreightInvoice = 3;
  const_Inventory_Inventory = 4;
  const_Inventory_DeregPkg = 5;
  const_Inventory_RegPackage = 6;
  const_Production_ProdOrder = 7;
  const_Production_Schema = 8;
  const_Production_LoadOrder = 9;
  const_Production_Kalkyl = 10;
  const_Production_RegPoints = 11;
  const_Statistics_Analysis = 12;
  const_Statistics_VWMill = 13;
  const_Register_Product = 14;
  const_Register_Currency = 15;
  const_Register_Client = 16;
  const_ShipVW_Delivery = 17;
  const_ShipVW_RecDelivery = 18;
  const_ShipVW_Booking = 19;
  const_ShipVW_AnkomstRegistrering = 20;
  const_Invoice_VWInvoice = 21;
  const_Invoice_CreatePayment = 22;
  const_Invoice_Payments = 23;
  const_Sales_CustomerOrder = 24;
  const_Sales_DisponibelVolym = 25;
  const_Sales_CustomerService = 26;
  const_Sales_Prompt = 27;
  const_Sales_InternalContract = 28;
  const_SalesUSA_OrderShipping = 29;
  const_SalesUSA_ClearVessel = 30;
  const_SalesUSA_Inventory = 31;
  const_CreateMill_Invoice = 32;
  const_Mill_Invoice_List = 33;
  const_Shipping_Instruction = 34;
  const_KP_LIST = 35;
  const_US_PLANNING = 36;
  const_INVENTORY_REPORT = 37;
  const_SOKAVROP = 38;
  const_ShipMill_Freight_Avrakningar = 39;
  const_Add_package = 40;
  const_Ask_package = 41;
  const_Change_Package = 42; // Ändra huvudegenskaper i paket
  const_Remove_Package = 43;
  const_PkgLog = 44;
  const_ProductionReport = 45;
  const_ChangeFelRegPkg = 46;
  const_FlyttaPaket = 47;
  const_EjFaktureratRapport = 48;
  const_samlingsfaktura = 49;
  const_VerkLaster = 50;
  const_InvCtrl = 51;
  const_PaketInmatningPerPaketKod = 52;
  const_ExtMovePkg = 53;
  const_SkapaAvrakning = 54;
  const_GjordaAvrakningar = 55;
  const_AnkomnaHamn = 56;
  const_CheckLoadsAreReadyForAvrakning = 57;
  const_SkapaRunAttest = 58;
  const_RunAttester = 59;
  const_LegoPrislista = 60;
  const_ShipMill_FreightExternInvoice = 61;

  cEnglish = 2;
  cSwedish = 1;

  clINVALID_DATA = clRed;

  // STATUS_BMP_OFFSET = 5;

  // confirmed package log status
  CONST_TO_LOAD = 0;
  CONST_TO_INVENTORY = 1;

  // Load order status
  STATUS_PRELIMINARY = 0;
  STATUS_NEW = 1;
  STATUS_REJECTED = 2;
  STATUS_ACCEPTED = 3;
  STATUS_COMPLETE = 4;
  STATUS_ONHOLD = 5;
  STATUS_PRODUCTION_COMPLETE = 6;
  STATUS_ANNULERAD = 7;
  STATUS_ANNULERAD_BEKRAFTAD = 8;
  STATUS_KLU = 9;

  // Skulle nog vara 2 statusar kanske ???
  // en som har 3 lägen : progress, complete och cancel
  // En som är New, Rejected, accepted, onhold, production complete

  STATUS_LO_CANCEL = 0;
  STATUS_LO_PROGRESS = 1;
  STATUS_LO_COMPLETE = 2;
  STATUS_LO_PRELLIMINARY = 3;
  STATUS_LO_SKEPPAT = 4;

  // Load status
  LOAD_PLANNED = 0;
  LOAD_SHIPPED_PROBLEM = 1;
  LOAD_SHIPPED_OK = 2;
  HIDE_FROM_LO_GRID = 1;
  rqCENTRED = -1; // Flag to send to DrawTransparentBitmapInRect
  // to request printing in centre of rectangle

  NO_SELECTION = -1; // EG For Tcombobox.itemindex

  NO_MATCH = -1; // Validation of package failed on Load entry form

  NEW_ENTRY = -1;

  NOT_IN_LIST = -1;

  INVALID = -1;

  INVALID_COL = -1; // Results from MouseToCell method
  INVALID_ROW = -1;

  NO_INVENTORY_CHANGE = -1;

  MAX_LOs_PER_LOAD = 20; // The number of LOs some stored procedures can accept.

  NOT_YET_CONFIRMED_BY_RECEIVER = 0;
  SAW_MILL_TO_VIDA_WOOD = 1;
  VIDA_WOOD_TO_SAWMILL = 2;
  LOAD_NOT_GOING_TO_INVENTORY = -1;

  VIDA_WOOD_COMPANY_NO = 741;
  VIDA_DANMARK = 3682;
  SWEDEN = 9;
  DENMARK = 13;
  VIDA_PACKAGING_NO = 1879;
  cVidaPackaging = 1879;
  cOsterlovsta = 4275;
  VIDA_BORGSTENA_BOTLR = 5666; // VIDA BORGSTENA AB (TS/LUCK/RAM)
  // i min testdatabas använd VIDA_DANMARK = 3099

  ANY_CUSTOMER = -1;
  // When filtering LO #s that can be added to a load in Load Entry grdLOTSA
  ANY_SUPPLIER = -1;

  NOT_CONFIRMED = 0;
  CONFIRMED = 1;

  PREPARE_IT_FIRST = FALSE; // Passed as ExecDirect parameter in ExecSQL calls

  { COL_STKS  = 0;
    COL_PKNO  = 1;
    COL_PROD  = 2;
    COL_PCS   = 3;
    COL_ACTM3 = 4;
    COL_SUPP  = 5;
    COL_PLOG  = 6;
    COL_POK   = 7; }

  // ROW_HDR  = 0; // First row of grids is used for column headers

  // RETURN = char(13);

  ALL_OK = 0; // These values correspond to return values from stored procedure
  BAD_PKG = 1;
  // Vida_ValidatePackage. These values are documented in SQLStuff.pas
  // PKG_OK     = 2;
  // NO_PRODUCT = 3;
  BAD_LENGTH = 4;
  // AMBIGUOUS  = 5;
  // MULTIMATCH = 6;

  // The program is making package validation in code now. sept 2 year 2002 ?
  VP_BadThickness = 7;
  VP_BadWidth = 8;
  VP_BadGrade = 9;
  VP_BadSurfacing = 10;
  VP_BadSpecies = 11;
  VP_NoLOConnection = 12;
  VP_LengthNotInLengthGroup = 13;
  VP_BadImp = 14;
  VP_NyaHTFPaket = 15;

  INTERNAL_LOAD = 0;
  EXTERNAL_LOAD = 1;

  // Package entry columns
  cPACKAGENO = 0;
  cRECID = 1;
  cDESCRIPTION = 2;

  cSUPPLIERCODE = 3;
  cPRODUCTNO = 4;
  cPRODUCTGROUPNO = 5;
  cTOTALPCS = 6;
  cTOTALACTM3 = 7;
  cTOTALNOMM3 = 8;
  cTOTALLPM = 9;
  cTOTALM2 = 10;
  cTOTALMFBM = 11;
  cGRADESTAMP = 12;
  cBARCODEID = 13;

  { cONSTICKS = 14 ;
    cPKGHEIGTH = 15 ;
    cPKGWIDTH = 16 ;
    cMINIBUNDLED = 17 ;
    cWRAPTYPE = 18 ;
    cSHRINKWRAP = 19 ; }

  cACTTHICK = 14;
  cACTWIDTH = 15;
  cNOMTHICK = 16;
  cNOMWIDTH = 17;
  cLPM_PROD_LEGNTH_NO = 18;
  cPACKAGETYPENO = 19;
  cINCHTHICK = 20;
  cINCHWIDTH = 21;
  cSurfacingNo = 22;
  cOverrideRL = 23;
  cDefsspno = 24;
  cVaruslag = 25;

  FirstLengthColumn = 25;
  FirstLengthColumnInmatningViaLast = 26;
  // INPUT OPTIONS
  INPUT_PIECES = 0;
  INPUT_LOPM_TOTAL_LOPM = 1;
  INPUT_LOPM_AVERAGE_LENGTH = 2;
  // INPUT_SPECIAL_LENGTH          = 3 ;
  INPUT_ARTICLES = 3;
  INPUT_IMPORTEDPACKAGES = 4;

  // Invoice
  cDebit = 0;
  cCredit = 1;

  NORMAL_INVOICE                  = 0;
  PROFORMA_REAL_INVOICE_LATER     = 1;
  PROFORMA_MOVE_PKGS_TO_INVENTORY = 2;
  PURCHASE_INVOICE                = 3;
  USA_INVOICE                     = 4;
  FW_INVOICE                      = 5;
  AGENT_INVOICE                   = 6;
  VTA_INVOICE                     = 7;
  BORGSTENA_INVOICE               = 8;
  UK_INVOICE                      = 9 ;
  UK_INVOICE_PO                   = 10 ;
  VP_INVOICE_PO                   = 11 ;

  SHOW_LO_LENGTHS = 0;
  SHOW_ALL_LENGTHS = 1;
  SHOW_STD_LENGTHS = 2;

  // PACKAGE TEMP STATUS IN LOAD PACKAGES
  EXISTING_PACKAGE = 0;
  NEW_PACKAGE = 1;

  // CONSTANTS FOR PACKAGE GRID THAT REFLECT USER OPERATIONS
  ADD_PKG_TO_LOAD = 0;
  DELETE_PKG = 1;
  REMOVE_PKG_FROM_LOAD = 2;
  ADD_PKG_TO_INVOICE_LOAD = 3;
  TA_BORT_EJ_COMPLETE_PKG_FROM_LOAD = 4;
  CREDIT_PKG_FROM_LOAD = 5;

  // Max package no allowed
  Const_MAX_PKG_NO: Integer = 2147483646;

  // RoleTypes
  cLEVERANTOR_VIRKE = 2;
  cLego = 6;
  cSalesRegion = 7;
  cInternal_Mill = 9;

  // PackageLog Operations
  oper_New_Pkg = 0;
  oper_Remove_FelReg = 1;
  oper_ChangeAttribute = 2; // Ändra felregistrerad
  oper_AvRegistrera = 3;
  oper_Delete_from_System = 4;
  oper_Add_Pkg_To_Load = 5;
  oper_Remove_From_Load = 6;
  oper_AnkomstRegistrerad = 7;
  oper_movepkg = 8;
  // oper_PaRegistreraPaket         = 9 ;
  oper_Extern_flytt = 9;

  oper_Angra_pareg = 11; // Lagervård
  oper_PaRegistreraPaket = 12; // Lagervård
  oper_ChangePkgsVard = 13; // Lagervård
  oper_cancel_AR = 14;

  // WHEN 15 THEN 'Paket delat'
  // WHEN 16 THEN 'Mak. delat paket'
  // WHEN 17 THEN 'Ångra dela paket'
  oper_AvRegSimiliar = 20;
  oper_CreditInvoice = 21;

  // Package Inventory Status
  Status_Pkg_NOT_IN_Inventory = 0;
  Status_Pkg_IN_Inventory = 1;

  // Ordertyper
  c_Sales = 0;
  c_Purchase = 1;

  // Fasta mätpunkter
  mp_INKOP = 20;




  // Error types when validating package numbers entered by user.

resourcestring

  // String to display in package problem log on Load Entry form
  rs_NO_Thick = 'Tjocklek %4.1f matchar inte';
  rs_NO_Width = 'Bredd %4.1f matchar inte';
  rs_NO_Grade = 'Kvalitet matchar inte';
  rs_NO_Surfacing = 'Utförande matchar inte';
  rs_NO_Species = 'Träslag matchar inte';
  rs_NO_LO_Connection = 'LO koppling saknas';
  rs_NO_IMP = 'Impregnering matchar inte';

  rs_BAD_PKG = 'Package number not found';
  rs_PKG_OK = 'Package number exists; contents not validated.';
  rs_NO_PRODUCT = 'Produkt matchar inte';
  rs_BAD_LENGTH = 'Längd %4.1f matchar inte';
  rs_AMBIGUOUS = 'Ambiguous package / LO Line match';
  rs_MULTIMATCH = 'Package matches lines from > 1 LO';
  rs_PkgErc = 'Logic error in vida_ValidatePackage';

  // Messages to display when validating package number entered by user
  rs_NON_NUMERIC = 'Package numbers must be numeric';
  rs_DUPLICATE_PKG_NO = 'Package No %d already exists';

  rs_ADD_TO_LOAD = 'Do you want to add these packages to the load?';

implementation

// If you are putting something in this implementation section you
// are mis-using this unit.
end.
