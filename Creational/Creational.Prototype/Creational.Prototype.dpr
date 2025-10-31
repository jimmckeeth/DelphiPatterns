program Creational.Prototype;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.Prototype.Pattern in '..\..\Creational.Prototype\Creational.Prototype.Pattern.pas';

begin
  {$I ..\..\ReportMemoryLeaks.inc}
  try
    {TODO : Creational.Prototype.Pattern}
    Writeln('ToDo: Creational.Prototype.Pattern');
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
  if UpperCase(ParamStr(1))<>'-SILENT' then Readln;
end.
