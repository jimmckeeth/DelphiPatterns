program Behavioral.Strategy;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.Strategy.Pattern in '..\..\Behavoral.Strategy\Behavioral.Strategy.Pattern.pas',
  Behavioral.Strategy.Example in '..\..\Behavoral.Strategy\Behavioral.Strategy.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
