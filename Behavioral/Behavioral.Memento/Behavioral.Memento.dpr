program Behavioral.Memento;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.Mediator.Example in 'Behavioral.Mediator.Example.pas',
  Behavioral.Memento.Pattern in 'Behavioral.Memento.Pattern.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
