program Structural.Composite;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Composite.Pattern in '..\..\Structural.Composite\Structural.Composite.Pattern.pas',
  Structural.Composite.Example in '..\..\Structural.Composite\Structural.Composite.Example.pas';

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
