unit uComponente;

interface

uses Classes;

type

  TRecalcTamanhoStatus = (stAntes,stDepois);

  TComponente = class;

  TComponenteArray = TList;

  TComponente = class
  private
    FComponentePai: TComponente;
  protected
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    procedure SetLargura(Value: Integer); virtual;
    procedure SetAltura(Value: Integer); virtual;
    procedure SetX(Value: Integer); virtual;
    procedure SetY(Value: Integer); virtual;

  public
    constructor Create;overload;
    constructor Create(objetoPai: TComponente);overload;
    procedure RecalculaTamanho(status: TRecalcTamanhoStatus); virtual; Abstract;
    property ComponentePai: TComponente read FComponentePai;
    property Largura : Integer read FLargura write SetLargura default 0;
    property Altura : Integer read FAltura write SetAltura default 0;
    property X: Integer read FX write SetX default 0;
    property Y: Integer read FY write SetY default 0;
  end;

implementation

constructor TComponente.Create;
begin
  Self.FComponentePai := nil;
end;

constructor TComponente.Create(objetoPai: TComponente);
begin
  if objetoPai <> nil then
    Self.FComponentePai := objetoPai;
end;


procedure TComponente.SetLargura(Value: Integer);
begin
  Self.FLargura := Value;
end;

procedure TComponente.SetAltura(Value: Integer);
begin
  Self.FAltura := Value;
end;

procedure TComponente.SetX(value: Integer);
begin
  Self.FX := Value;
end;

procedure TComponente.SetY(Value: Integer);
begin

  Self.FY := Value;

end;


end.

