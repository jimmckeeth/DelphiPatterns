program Structural.Bridge;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Structural.Bridge.Pattern in '..\..\Structural.Bridge\Structural.Bridge.Pattern.pas',
  Structural.Bridge.Example in '..\..\Structural.Bridge\Structural.Bridge.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
