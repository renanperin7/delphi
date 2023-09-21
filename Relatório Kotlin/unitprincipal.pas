unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls, fphttpclient;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    pgbProgresso: TProgressBar;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
     procedure ApplicationException(Sender: TObject; E: Exception);
     procedure ClientDataReceived(Sender: TObject; const ContentLength,
      CurrentPos: Int64);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
var
  URL: String = 'http://localhost:8080/relatorio/vendas?nome=';
  CURL: String = '&dataInicial=';
  CCURL: String = '&dataFinal=';
  Client: TFPHTTPClient;
  FS: TFileStream;
begin
  SaveDialog1.FileName := ExtractFileName(URL+Edit1.Text+CURL+Edit2.Text+CCURL+Edit3.Text);
  if not SaveDialog1.Execute then
  begin
    Exit;
  end;

  Client := TFPHTTPClient.Create(Self);
  FS     := TFileStream.Create(SaveDialog1.FileName, fmCreate or fmOpenWrite);
  try
    Client.OnDataReceived := @ClientDataReceived;
    Client.Get(URL+Edit1.Text+CURL+Edit2.Text+CCURL+Edit3.Text, FS);
  finally
    FS.Free;
    Client.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Application.OnException:=@ApplicationException;
end;

procedure TForm1.ApplicationException(Sender: TObject; E: Exception);
begin
  ShowMessage(E.Message);
end;

procedure TForm1.ClientDataReceived(Sender: TObject; const ContentLength,
  CurrentPos: Int64);
begin
  pgbProgresso.Max      := ContentLength;
  pgbProgresso.Position := CurrentPos;
end;

end.

