program Creational.Prototype;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Creational.Prototype.Pattern in '..\..\Creational.Prototype\Creational.Prototype.Pattern.pas';

begin
  try
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
