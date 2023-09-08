﻿unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  unitCadPacientes, unitCadAgendamentos;

procedure TForm1.Agendamentos1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.Pacientes1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
   Application.Terminate;
end;

end.

