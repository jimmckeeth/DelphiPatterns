program Creational.Prototype;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.Prototype.Pattern in '..\..\Creational.Prototype\Creational.Prototype.Pattern.pas';

begin
  {$I ..\..\common.inc}
  try
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
