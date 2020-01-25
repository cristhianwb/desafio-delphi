unit uMemo;

interface

uses
  uComponente,
  Dialogs,
  SysUtils;

type

  TMemo = class(TComponente)
  private
    FProporL: Double;
    FProporA: Double;
    FProporX: Integer;
    FProporY: Integer;
  public
    procedure RecalculaTamanho(status: TRecalcTamanhoStatus); override;
  end;

implementation

procedure TMemo.RecalculaTamanho(status: TRecalcTamanhoStatus);
var Prop: Double;
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

end.

