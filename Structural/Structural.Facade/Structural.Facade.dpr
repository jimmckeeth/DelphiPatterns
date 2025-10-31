program Structural.Facade;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Facade.Pattern in '..\..\Structural.Facade\Structural.Facade.Pattern.pas',
  Structural.Facade.Example in '..\..\Structural.Facade\Structural.Facade.Example.pas';

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
