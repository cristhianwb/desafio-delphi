unit uFrame;

interface

uses
  uComponente, Classes;

type

  TFrame = class(TComponente)

  private
    FProporL: Double;
    FProporA: Double;
    FProporX: Integer;
    FProporY: Integer;
    FComponentes: TComponenteArray;
    procedure SetLargura(Value: Integer); override;
    procedure SetAltura(Value: Integer); override;
    procedure SetX(Value: Integer); override;
    procedure SetY(Value: Integer); override;
  public
    constructor Create; overload;
    constructor Create(objetoPai: TComponente);overload;
    procedure RecalculaTamanho(status: TRecalcTamanhoStatus); override;
    procedure AdicionaComponente(aComponente: TComponente);
    procedure RemoveComponente(aComponente: TComponente);

  end;

implementation

constructor TFrame.Create;
begin
  inherited;
  Self.FComponentes := TList.Create;
end;

constructor TFrame.Create(objetoPai: TComponente);
begin
  inherited Create(objetoPai);
  Self.FComponentes := TList.Create;
end;

procedure TFrame.AdicionaComponente(aComponente: TComponente);
begin
  if aComponente <> nil then
  begin
    self.FComponentes.Add(aComponente);
  end;
end;

procedure TFrame.RemoveComponente(aComponente: TComponente);
begin
  if aComponente <> nil then
  begin
    self.FComponentes.Remove(aComponente);
  end;
end;


procedure TFrame.RecalculaTamanho(status: TRecalcTamanhoStatus);
begin
    case status of
    stAntes:
      begin
        Self.FProporA := Self.Altura / Self.ComponentePai.Altura;
        Self.FProporL := Self.Largura / Self.ComponentePai.Largura;
        Self.FProporX := Self.X - Self.ComponentePai.X;
        Self.FProporY := Self.Y - Self.ComponentePai.Y;
      end;
    stDepois:
      begin
        Self.Altura := Round(Self.ComponentePai.Altura * Self.FProporA);
        Self.Largura := Round(Self.ComponentePai.Largura * Self.FproporL);
        Self.X := Self.ComponentePai.X + Self.FProporX;
        Self.Y := Self.ComponentePai.Y + Self.FProporY;
      end;
  end;
end;

procedure TFrame.SetLargura(Value: Integer);
var i:Integer;
cp: TComponente;
begin

  for i := 0 to Self.FComponentes.Count-1 do
  begin
    cp := Self.FComponentes[i];
    cp.RecalculaTamanho(stAntes);
  end;

  Self.FLargura := Value;

  for i := 0 to Self.FComponentes.Count-1 do
  begin
    cp := Self.FComponentes[i];
    cp.RecalculaTamanho(stDepois);
  end;

end;

procedure TFrame.SetAltura(Value: Integer);
var i:Integer;
cp: TComponente;
begin

  for i := 0 to Self.FComponentes.Count-1 do
  begin
    cp := Self.FComponentes[i];
    cp.RecalculaTamanho(stAntes);
  end;

  Self.FAltura := Value;
  for i := 0 to Self.FComponentes.Count-1 do
  begin
    cp := Self.FComponentes[i];
    cp.RecalculaTamanho(stDepois);
  end;

end;

procedure TFrame.SetX(value: Integer);
var i:Integer;
cp: TComponente;
begin

  for i := 0 to Self.FComponentes.Count-1 do
  begin
    cp := Self.FComponentes[i];
    cp.RecalculaTamanho(stAntes);
  end;

  Self.FX := Value;

  for i := 0 to Self.FComponentes.Count-1 do
  begin
    cp := Self.FComponentes[i];
    cp.RecalculaTamanho(stDepois);
  end;

end;

procedure TFrame.SetY(Value: Integer);
var i:Integer;
cp: TComponente;
begin

  for i := 0 to Self.FComponentes.Count-1 do
  begin
    cp := Self.FComponentes[i];
    cp.RecalculaTamanho(stAntes);
  end;

  Self.FY := Value;

  for i := 0 to Self.FComponentes.Count-1 do
  begin
    cp := Self.FComponentes[i];
    cp.RecalculaTamanho(stDepois);
  end;


end;



end.

