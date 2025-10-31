program Creational.FactoryMethod;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.FactoryMethod.Pattern in '..\..\Creational.FactoryMethod\Creational.FactoryMethod.Pattern.pas',
  Creational.FactoryMethod.Example in '..\..\Creational.FactoryMethod\Creational.FactoryMethod.Example.pas';

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
