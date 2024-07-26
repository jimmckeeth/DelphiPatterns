program Behavioral.Mediator;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.Mediator.Pattern in '..\..\Behavioral.Mediator\Behavioral.Mediator.Pattern.pas',
  Behavioral.Mediator.Example in '..\..\Behavioral.Mediator\Behavioral.Mediator.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
