program Creational.Builder;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.Builder.Pattern in '..\..\Creational.Builder\Creational.Builder.Pattern.pas',
  Creational.Builder.Example in '..\..\Creational.Builder\Creational.Builder.Example.pas';

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
