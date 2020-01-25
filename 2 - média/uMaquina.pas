unit uMaquina;

interface

uses
  uIMaquina, Classes, uTroco, Dialogs, SysUtils, math;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    constructor Create;
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

Constructor TMaquina.Create;
begin

end;

function TMaquina.MontarTroco(aTroco: Double): TList;
var Troco: TTroco;
    ListaTroco: TList;
    c: TCedula;
    valorCe: Double;
    qtdNotas :Double;
    i: Integer;
begin

  ListaTroco := TList.Create;

  for c := ceNota100 to ceMoeda1 do
  begin
    valorCe := TTroco.pegaValorCedula(c);
    qtdNotas := Int(aTroco / valorCe);
    aTroco := SimpleRoundTo(aTroco - valorCe * qtdNotas,-2);
    if  qtdNotas > 0 then
      begin
        Troco := TTroco.Create(c, Trunc(qtdNotas));
        ListaTroco.Add(Troco);
      end;
    if (aTroco <= TTroco.pegaValorCedula(ceMoeda1)) then
      break;
  end;

  Result := ListaTroco;
end;

end.

