program Structural.Composite;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Composite.Pattern in '..\..\Structural.Composite\Structural.Composite.Pattern.pas',
  Structural.Composite.Example in '..\..\Structural.Composite\Structural.Composite.Example.pas';

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
