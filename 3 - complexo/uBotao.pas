unit uBotao;

interface

uses
  uComponente,
  Dialogs,
  SysUtils;

type

  TBotao = class(TComponente)
  private
    FProporL: Double;
    FProporX: Integer;
    FProporY: Integer;
  public
    procedure RecalculaTamanho(status: TRecalcTamanhoStatus); override;
  end;

implementation

procedure TBotao.RecalculaTamanho(status: TRecalcTamanhoStatus);
begin
  case status of
    stAntes:
      begin
        Self.FProporL := Self.Largura / Self.ComponentePai.Largura;
        Self.FProporX := Self.X - Self.ComponentePai.X;
        Self.FProporY := Self.Y - Self.ComponentePai.Y;
      end;
    stDepois:
      begin
        Self.Largura := Round(Self.ComponentePai.Largura * Self.FproporL);
        Self.X := Self.ComponentePai.X + Self.FProporX;
        Self.Y := Self.ComponentePai.Y + Self.FProporY;
      end;
  end;
end;

end.

