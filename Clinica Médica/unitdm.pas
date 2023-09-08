unit unitDM;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, csvdataset, DB, SQLDB;

type

  { TDM }

  TDM = class(TDataModule)
    tbAgendamentosdata: TDateField;
    tbAgendamentosespecialidade: TStringField;
    tbAgendamentoshora: TStringField;
    tbAgendamentosid: TAutoIncField;
    tbAgendamentosmedico: TStringField;
    tbPaciente: TCSVDataset;
    tbAgendamentos: TCSVDataset;
    dsPaciente: TDataSource;
    dsAgendamentos: TDataSource;
    tbPacientecelular: TStringField;
    tbPacientecpf: TStringField;
    tbPacientedata_cadastro: TDateField;
    tbPacienteid: TAutoIncField;
    tbPacientenome: TStringField;
  private

  public

  end;

var
  DM: TDM;

implementation

{$R *.lfm}

{ TDM }


end.

