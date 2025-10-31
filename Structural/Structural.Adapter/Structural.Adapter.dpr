program Structural.Adapter;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Adapter.Pattern in '..\..\Structural.Adapter\Structural.Adapter.Pattern.pas',
  Structural.Adapter.Example in '..\..\Structural.Adapter\Structural.Adapter.Example.pas';

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
