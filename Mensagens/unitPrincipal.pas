unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
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
    ShowMessage('Mensagem simples');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Application.MessageBox('Teste de Mensagem', 'Aten��o', MB_ICONEXCLAMATION+MB_OK);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Application.MessageBox('Teste de Mensagem', 'Inform��o', MB_ICONINFORMATION);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    Application.MessageBox('Teste de Mensagem', 'Erro', MB_ICONERROR);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    Application.MessageBox('Teste de Mensagem', 'Pergunta', MB_ICONQUESTION);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    Application.MessageBox('Teste de Mensagem', 'Titulo', MB_ICONQUESTION+MB_OKCANCEL);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    if Application.MessageBox('Teste de Mensagem', 'Titulo', MB_ICONQUESTION+MB_YESNO) = mrYES then
        begin
          ShowMessage('Voc� escolheu o bot�o SIM');
        end
    else
        begin
          ShowMessage('Voc� escolheu o bot�o N�O');
        end;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
   if Application.MessageBox('Deseja realmente sair do sistema?', 'Confirma��o', MB_ICONQUESTION+MB_YESNO) = mrYES then
    begin
      Application.Terminate;
    end;

end;

end.
