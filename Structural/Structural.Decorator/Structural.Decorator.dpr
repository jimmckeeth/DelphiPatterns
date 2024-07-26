program Structural.Decorator;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Structural.Decorator.Pattern in '..\..\Structural.Decorator\Structural.Decorator.Pattern.pas',
  Structural.Decorator.Example in '..\..\Structural.Decorator\Structural.Decorator.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
