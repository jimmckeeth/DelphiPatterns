program Creational.AbstractFactory;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\Common.pas',
  Creational.AbstractFactory.Pattern in 'Creational.AbstractFactory.Pattern.pas',
  Creational.AbstractFactory.Example in 'Creational.AbstractFactory.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
