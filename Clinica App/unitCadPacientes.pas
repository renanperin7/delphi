unit unitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFormCadPacientes = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    txtBusca: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    procedure txtBuscaChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadPacientes: TFormCadPacientes;

implementation

{$R *.dfm}

uses unitDM, unitCadAgendamentos;

procedure TFormCadPacientes.Button2Click(Sender: TObject);
begin
  DM.tbPacientes.Insert;
end;

procedure TFormCadPacientes.Button3Click(Sender: TObject);
begin
  DM.tbPacientes.Append;
end;

procedure TFormCadPacientes.Button4Click(Sender: TObject);
begin
  DM.tbPacientes.Cancel;
end;

procedure TFormCadPacientes.txtBuscaChange(Sender: TObject);
begin
  DM.tbPacientes.Locate('nome', txtBusca.Text, [loCaseInsensitive, loPartialKey]);
end;

end.
