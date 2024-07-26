program Creational.Singleton;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Creational.Singleton.Pattern in '..\..\Creational.Singleton\Creational.Singleton.Pattern.pas',
  Creational.Singleton.Example in '..\..\Creational.Singleton\Creational.Singleton.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
