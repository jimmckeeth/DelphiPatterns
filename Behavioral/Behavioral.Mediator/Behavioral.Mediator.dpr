program Behavioral.Mediator;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Mediator.Example in 'Behavioral.Mediator.Example.pas',
  Behavioral.Mediator.Pattern in 'Behavioral.Mediator.Pattern.pas';

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
