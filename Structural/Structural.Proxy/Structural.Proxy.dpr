program Structural.Proxy;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Structural.Proxy.Pattern in '..\..\Structural.Proxy\Structural.Proxy.Pattern.pas',
  Structural.Proxy.Example in '..\..\Structural.Proxy\Structural.Proxy.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
