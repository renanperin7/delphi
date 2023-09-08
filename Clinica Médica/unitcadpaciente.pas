unit unitCadPaciente;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, csvdataset, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, DBGrids;

type

  { TformCadPacientes }

  TformCadPacientes = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    dsPaciente: TDataSource;
    tbPaciente: TCSVDataset;
    tbPacientecelular: TStringField;
    tbPacientecpf: TStringField;
    tbPacientedata_cadastro: TDateField;
    tbPacienteid: TAutoIncField;
    tbPacientenome: TStringField;
    txtBusca: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure txtBuscaChange(Sender: TObject);
  private

  public

  end;

var
  formCadPacientes: TformCadPacientes;
  ArquivoTexto: TStringList;
  i: Integer;

implementation

{$R *.lfm}

{ TformCadPacientes }

procedure TformCadPacientes.FormCreate(Sender: TObject);
begin
  tbPaciente.FileName:= 'C:\Users\renan\OneDrive\Área de Trabalho\gitport\delphi\Clinica Médica\pacientes.txt';
  tbPaciente.CreateDataset;
end;

procedure TformCadPacientes.txtBuscaChange(Sender: TObject);
begin
  tbPaciente.Locate('nome', txtBusca.Text, [loPartialKey]);
end;

end.

