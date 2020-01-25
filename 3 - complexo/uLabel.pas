unit uLabel;

interface

uses
  uComponente;

type

  TLabel = class(TComponente)
  private
    FProporX: Integer;
    FProporY: Integer;
  public
    procedure RecalculaTamanho(status: TRecalcTamanhoStatus); override;
  end;

implementation
procedure TLabel.RecalculaTamanho(status: TRecalcTamanhoStatus);
begin
case status of
    stAntes:
      begin
        Self.FProporX := Self.X - Self.ComponentePai.X;
        Self.FProporY := Self.Y - Self.ComponentePai.Y;
      end;
    stDepois:
      begin
        Self.X := Self.ComponentePai.X + Self.FProporX;
        Self.Y := Self.ComponentePai.Y + Self.FProporY;
      end;
  end;
end;


end.

