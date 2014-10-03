unit dmc_Filter;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  Tdm_Filter = class(TDataModule)
    sq_verk: TSQLQuery;
    dsp_verk: TDataSetProvider;
    cds_Verk: TClientDataSet;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    ds_Verk: TDataSource;
    sq_Producer: TSQLQuery;
    dsp_producer: TDataSetProvider;
    cds_producer: TClientDataSet;
    cds_producerClientNo: TIntegerField;
    cds_producerClientName: TStringField;
    cds_producerSearchName: TStringField;
    ds_Producer: TDataSource;
    sq_PIP: TSQLQuery;
    sq_LIP: TSQLQuery;
    dsp_PIP: TDataSetProvider;
    dsp_LIP: TDataSetProvider;
    cds_PIP: TClientDataSet;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    cds_LIP: TClientDataSet;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    sq_RegPoint: TSQLQuery;
    dsp_RegPoint: TDataSetProvider;
    cds_RegPoint: TClientDataSet;
    cds_RegPointProductionUnitName: TStringField;
    cds_RegPointRegistrationPointNo: TIntegerField;
    ds_RegPoint: TDataSource;
    sq_LengthGroup: TSQLQuery;
    dsp_LengthGroup: TDataSetProvider;
    cds_LengthGroup: TClientDataSet;
    cds_LengthGroupGroupNo: TIntegerField;
    cds_LengthGroupGroupName: TStringField;
    ds_LengthGroup: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_Filter: Tdm_Filter;

implementation

uses dmsDataConn;

{$R *.dfm}

end.
