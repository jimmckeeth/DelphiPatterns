program Creational.Singleton;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.Singleton.Pattern in '..\..\Creational.Singleton\Creational.Singleton.Pattern.pas',
  Creational.Singleton.Example in '..\..\Creational.Singleton\Creational.Singleton.Example.pas';

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
