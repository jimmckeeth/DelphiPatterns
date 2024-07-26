program Behavioral.Memento;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.Memento.Pattern in '..\..\Behavioral.Memento\Behavioral.Memento.Pattern.pas',
  Behavioral.Mediator.Example in '..\..\Behavioral.Memento\Behavioral.Mediator.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
