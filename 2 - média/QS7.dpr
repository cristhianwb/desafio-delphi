program QS7;

uses
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  SysUtils,
  Dialogs,
  Classes;

{$R *.RES}
var
  Maquina: TMaquina;
  ListaTroco: TList;
  Troco: TTroco;
  i,qtd: Integer;
  valor: Double;

begin
  Maquina := TMaquina.Create;
  ListaTroco := Maquina.MontarTroco(125.15);

  for i := 0 to ListaTroco.Count-1 do
  begin
    Troco := ListaTroco.items[i];
    valor := TTroco.pegaValorCedula(Troco.Tipo);
    qtd := Troco.Quantidade;
    if valor <= 1 then
      ShowMessage('Moedas de R$'+FloatToStr(valor)+': '+IntToStr(qtd))
    else
      ShowMessage('Notas de R$'+FloatToStr(valor)+': '+IntToStr(qtd));

  end;

end.

