program QS6;
{$AppType CONSOLE}

uses
  Dialogs,
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas';

{$R *.RES}
var sub: TSubstitui;
begin
sub := TSubstitui.create;
ShowMessage(sub.Substituir('O rato roeu a roupa do rei de roma','ro','teste'));
end.

