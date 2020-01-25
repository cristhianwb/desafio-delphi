unit uSubstitui;

interface

uses
  Dialogs,
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    constructor create;
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

constructor TSubstitui.create;
begin

end;

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var rep,rep1: String;
    i,j,Vsz,aSz: Integer;
    copy: Boolean;
begin
  copy := False;
  Vsz := length(aVelho);
  Result := '';
  rep := '';
  rep1 := '';
  j := 1;
  aSz := length(aStr);
  for i := 1 to aSz do
  begin
    if not (aStr[i] = aVelho[j]) then
    begin
      if copy then
      begin
        rep := rep + aStr[i];
        Result := Result + rep;
        rep := '';
        j := 1;
      end else Result := Result + aStr[i];
    end else
    begin
      if not copy then
      begin
        if (Vsz = 1) then
        begin
          Result := Result + aNovo;
          copy := False;
          j := 1;
        end else
        begin
          copy := True;
          rep := rep + aStr[i];
          j := j + 1;
        end;

      end else
      begin
        rep := rep + aStr[i];
        if (j = Vsz) or (i = aSz) then
        begin
          if (j < vSz) then
            Result := Result + rep
          else
            Result := Result + aNovo;
          rep := '';
          copy := False;
          j := 1;
        end else
          j := j + 1;

      end;

    end;

  end;

end;

end.

