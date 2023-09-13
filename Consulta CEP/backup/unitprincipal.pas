unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  fphttpclient, fpjson;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    edtLogradouro: TEdit;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtLocalidade: TEdit;
    edtUf: TEdit;
    edtDdd: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
const
  CURL : String =  'http://viacep.com.br/ws/';
  JSON = '/json/';
var
  VStr: String;
  JsonData, Items: TJSONData;
  Url: String;
  i: integer;
begin
    VStr:= TFPHTTPClient.SimpleGet(CURL+Edit1.Text+JSON);
    JsonData:= GetJSON(VStr);
    Memo1.Text:=VStr;
for i := 0 to Pred(JsonData.Count) do
    Items:= JsonData.Items[i];
    edtLogradouro.Text:=(JsonData.FindPath('logradouro').AsString);

end;

end.

