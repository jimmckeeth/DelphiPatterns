program Structural.Decorator;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Decorator.Pattern in '..\..\Structural.Decorator\Structural.Decorator.Pattern.pas',
  Structural.Decorator.Example in '..\..\Structural.Decorator\Structural.Decorator.Example.pas';

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
