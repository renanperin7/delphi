unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  ExtCtrls, MaskEdit, fphttpclient;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Panel1: TPanel;
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
  SaveDialog1.FileName := ExtractFileName(ComboBox1.Text+CURL+MaskEdit1.Text+CCURL+MaskEdit2.Text+'.pdf');
  if not SaveDialog1.Execute then
  begin
    Exit;
  end;

  Client := TFPHTTPClient.Create(Self);
  FS     := TFileStream.Create(SaveDialog1.FileName, fmCreate or fmOpenWrite);
  try
    Client.OnDataReceived := @ClientDataReceived;
    Client.Get(URL+ComboBox1.Text+CURL+MaskEdit1.Text+CCURL+MaskEdit2.Text, FS);
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

