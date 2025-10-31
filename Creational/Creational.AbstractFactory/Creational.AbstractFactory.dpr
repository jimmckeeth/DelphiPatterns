program Creational.AbstractFactory;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.AbstractFactory.Pattern in 'Creational.AbstractFactory.Pattern.pas',
  Creational.AbstractFactory.Example in 'Creational.AbstractFactory.Example.pas';

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
