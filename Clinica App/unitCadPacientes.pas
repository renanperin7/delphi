unit unitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
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
    DBNavigator1: TDBNavigator;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses unitDM;


procedure TForm2.txtBuscaChange(Sender: TObject);
begin
  DM.tbPacientes.Locate('nome', txtBusca.Text, [loCaseInsensitive, loPartialKey]);
end;

end.
