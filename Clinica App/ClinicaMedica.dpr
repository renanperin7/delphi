program ClinicaMedica;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {FormPrincipal},
  unitCadPacientes in 'unitCadPacientes.pas' {FormCadPacientes},
  unitCadAgendamentos in 'unitCadAgendamentos.pas' {FormCadAgendamentos},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadPacientes, FormCadPacientes);
  Application.CreateForm(TFormCadAgendamentos, FormCadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
