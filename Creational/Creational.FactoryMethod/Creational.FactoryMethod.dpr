program Creational.FactoryMethod;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.FactoryMethod.Pattern in '..\..\Creational.FactoryMethod\Creational.FactoryMethod.Pattern.pas',
  Creational.FactoryMethod.Example in '..\..\Creational.FactoryMethod\Creational.FactoryMethod.Example.pas';

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
