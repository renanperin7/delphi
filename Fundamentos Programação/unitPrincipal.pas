unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    txtNome: TEdit;
    Button1: TButton;
    Label2: TLabel;
    txtIdade: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

    if txtNome.Text = '' then
        begin
          ShowMessage('Preencha o nome');
        end;
    if txtIdade.Text = '' then
        begin
          ShowMessage('Digite a idade');
        end;

    if (txtNome.Text <> '') and (txtIdade.Text <> '') then
       begin
         ShowMessage('Cadastro preenchido com sucesso');
       end;

end;

end.
