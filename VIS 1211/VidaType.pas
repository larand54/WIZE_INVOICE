// ENVIRONMENT    :  Target is any 32-bit Windows environment.
// Written & tested using Windows NT 4.0
//
// SYSTEM         :  Vida Information System
//
// PURPOSE        :  Defines a number of simple types, collected here so
// they can freely be used in multiple units.
//
// Do not put classes in here, just simple types.
//
//
// NOTES          :
//
//
//
//
// -----------------------------------------------------------------------------
// DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
// DMc       001
//
// -----------------------------------------------------------------------------
//
// Types used by more than 1 unit in the Vida system.
// Only put simple types here - if it needs code in the implementation section, don't
// put it here, put it in a code unit.
//
unit VidaType;

interface

type

  string3 = string[3];
  string5 = string[5];
  string15 = string[15];
  String20 = string[20];
  String50 = string[50];

  TEditAction = (eaABANDON, // Cancel the edit
    eaREJECT, // Reject the current value & force user to change it
    eaACCEPT, eaReserved, // Accept the current value & allow focus to change
    eaDuplicate, eaAlreadyAvReg);

  TDataCategory = (dcProductSection, dcClientSection, dcOrderSection,
    dcInventorySection, dcBaseDataSection, dcInternalOrderSection, dcAvropSec,
    dcARSec, dcSkeppInstrSec, dcKP_ListaSec, dcUtlastningSec, dcFakturaSec,
    dcAvrakningSec, dcFrakt_AvrakningSec,

    dcAdd_packagesSec, dcAsk_packagesSec, dcReport_AvropSec, dcEditLoadOrder,
    dcShowPrice

    );

  TAccessLevel = (arNone, arREAD, arMODIFY);

  TAccessRights = array [Low(TDataCategory) .. High(TDataCategory)
    ] of TAccessLevel;

  TUserSpec = record
    UserID: Integer;
    CompanyNo: Integer;
    LanguageID   : Integer ;
    AccessRights: TAccessRights;
  end;

implementation

// If you are putting something in this implementation section you
// are mis-using this unit.
end.
