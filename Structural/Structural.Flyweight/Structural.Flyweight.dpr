program Structural.Flyweight;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Flyweight.Pattern in 'Structural.Flyweight.Pattern.pas';

begin
  {$I ..\..\ReportMemoryLeaks.inc}
  try
    {TODO : Structural.Flyweight.Pattern}
    Writeln('ToDo: Structural.Flyweight.Pattern');
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
  if UpperCase(ParamStr(1))<>'-SILENT' then Readln;
end.
