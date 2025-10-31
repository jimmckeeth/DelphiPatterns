program Behavioral.Memento;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Memento.Example in 'Behavioral.Memento.Example.pas',
  Behavioral.Memento.Pattern in 'Behavioral.Memento.Pattern.pas';

begin
  {$I ..\..\common.inc}
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
