unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TFrmPrincipal }

  TFrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.lfm}

{ TFrmPrincipal }

uses untCadastroPessoaFisica, untMdlCadastroPessoaJuridica;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  FrmMdlCadastros1.Show;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  FrmMdlCadastros2.Show;
end;

end.

