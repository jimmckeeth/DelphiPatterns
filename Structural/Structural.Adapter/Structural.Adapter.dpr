program Structural.Adapter;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Structural.Adapter.Pattern in '..\..\Structural.Adapter\Structural.Adapter.Pattern.pas',
  Structural.Adapter.Example in '..\..\Structural.Adapter\Structural.Adapter.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
