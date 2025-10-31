program Structural.Bridge;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Bridge.Pattern in '..\..\Structural.Bridge\Structural.Bridge.Pattern.pas',
  Structural.Bridge.Example in '..\..\Structural.Bridge\Structural.Bridge.Example.pas';

begin
  {$I ..\..\ReportMemoryLeaks.inc}
  try
    Example;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
  if UpperCase(ParamStr(1))<>'-SILENT' then Readln;
end.
