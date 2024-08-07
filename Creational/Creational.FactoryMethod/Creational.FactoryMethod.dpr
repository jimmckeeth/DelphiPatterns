program Creational.FactoryMethod;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Creational.FactoryMethod.Pattern in '..\..\Creational.FactoryMethod\Creational.FactoryMethod.Pattern.pas',
  Creational.FactoryMethod.Example in '..\..\Creational.FactoryMethod\Creational.FactoryMethod.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
