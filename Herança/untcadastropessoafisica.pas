unit untCadastroPessoaFisica;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  untMdlCadastros;

type

  { TFrmMdlCadastros1 }

  TFrmMdlCadastros1 = class(TFrmMdlCadastros)
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  FrmMdlCadastros1: TFrmMdlCadastros1;

implementation

{$R *.lfm}

{ TFrmMdlCadastros1 }

procedure TFrmMdlCadastros1.Button2Click(Sender: TObject);
begin

   if (Trim(Edit1.Text) <> '') and
      (Trim(Edit2.Text) <> '') and
      (Trim(Edit3.Text) <> '') and
      (Trim(Edit4.Text) <> '') and
      (Trim(Edit5.Text) <> '') and
      (Trim(Edit6.Text) <> '') and
      (Trim(Edit7.Text) <> '') and
      (Trim(Edit8.Text) <> '') and
      (Trim(Edit9.Text) <> '')then
    begin
      ShowMessage('Cadastro Feito com sucesso!');
    end
    else
    begin
      ShowMessage('O campo está vazio. Por favor, preencha-o.');
    end;

end;

end.

