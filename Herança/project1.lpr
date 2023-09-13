program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unitPrincipal, untMdlCadastros, untCadastroPessoaFisica, 
untMdlCadastroPessoaJuridica
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmMdlCadastros, FrmMdlCadastros);
  Application.CreateForm(TFrmMdlCadastros1, FrmMdlCadastros1);
  Application.CreateForm(TFrmMdlCadastros2, FrmMdlCadastros2);
  Application.Run;
end.

