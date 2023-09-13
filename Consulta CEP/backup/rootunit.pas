unit RootUnit;

interface

uses
     REST.Json.Types;

{$M+}

type
  TRoot = class(TJsonDTO)
  private
    FBairro: string;
    FCep: string;
    FComplemento: string;
    FDdd: string;
    FGia: string;
    [SuppressZero]
    FIbge: TDateTime;
    FLocalidade: string;
    FLogradouro: string;
    FSiafi: string;
    FUf: string;
  published
    property Bairro: string read FBairro write FBairro;
    property Cep: string read FCep write FCep;
    property Complemento: string read FComplemento write FComplemento;
    property Ddd: string read FDdd write FDdd;
    property Gia: string read FGia write FGia;
    property Ibge: TDateTime read FIbge write FIbge;
    property Localidade: string read FLocalidade write FLocalidade;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Siafi: string read FSiafi write FSiafi;
    property Uf: string read FUf write FUf;
  end;

implementation

end.
