unit untMdlCadastroPessoaJuridica;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  untMdlCadastros;

type

  { TFrmMdlCadastros2 }

  TFrmMdlCadastros2 = class(TFrmMdlCadastros)
    Button2: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  FrmMdlCadastros2: TFrmMdlCadastros2;

implementation

{$R *.lfm}

{ TFrmMdlCadastros2 }

procedure TFrmMdlCadastros2.Button2Click(Sender: TObject);

begin

   if (Trim(Edit1.Text) <> '') and
      (Trim(Edit10.Text) <> '') and
      (Trim(Edit4.Text) <> '') and
      (Trim(Edit7.Text) <> '') and
      (Trim(Edit8.Text) <> '') and
      (Trim(Edit9.Text) <> '') then
    begin
      ShowMessage('Cadastro Feito com sucesso!');
    end
    else
    begin
      ShowMessage('O campo está vazio. Por favor, preencha-o.');
    end;

end;

end.

