unit untMdlCadastros;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  fphttpclient, fpjson;

type

  { TFrmMdlCadastros }

  TFrmMdlCadastros = class(TForm)
    Button1: TButton;
    edtCep: TEdit;
    edtNumero: TEdit;
    edtLogradouro: TEdit;
    edtLocalidade: TEdit;
    edtBairro: TEdit;
    edtComplemento: TEdit;
    edtUf: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  FrmMdlCadastros: TFrmMdlCadastros;

implementation

{$R *.lfm}

{ TFrmMdlCadastros }

procedure TFrmMdlCadastros.Button1Click(Sender: TObject);
const
  CURL : String =  'http://viacep.com.br/ws/';
  JSON = '/json/';
var
  VStr: String;
  JsonData, Items: TJSONData;
  i: integer;
begin
    VStr:= TFPHTTPClient.SimpleGet(CURL+edtCep.Text+JSON);
    JsonData:= GetJSON(VStr);
for i := 0 to Pred(JsonData.Count) do
    Items:= JsonData.Items[i];
    edtLogradouro.Text:=(JsonData.FindPath('logradouro').AsString);
    edtComplemento.Text:=(JsonData.FindPath('complemento').AsString);
    edtBairro.Text:=(JsonData.FindPath('bairro').AsString);
    edtLocalidade.Text:=(JsonData.FindPath('localidade').AsString);
    edtUf.Text:=(JsonData.FindPath('uf').AsString);
end;

end.

