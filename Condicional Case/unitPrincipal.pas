unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    comboUsuario: TComboBox;
    Button1: TButton;
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

  case comboUsuario.ItemIndex of
    0: ShowMessage('Logado como: ' + comboUsuario.Text);
    1: ShowMessage('Logado como: ' + comboUsuario.Text);
    2: ShowMessage('Logado como: ' + comboUsuario.Text);
    3: ShowMessage('Logado como: ' + comboUsuario.Text);
    4: ShowMessage('Logado como: ' + comboUsuario.Text);
  end;

end;

end.
