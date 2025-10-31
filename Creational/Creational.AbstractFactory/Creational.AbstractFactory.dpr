program Creational.AbstractFactory;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.AbstractFactory.Pattern in 'Creational.AbstractFactory.Pattern.pas',
  Creational.AbstractFactory.Example in 'Creational.AbstractFactory.Example.pas';

begin
  {$I ..\..\common.inc}
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
