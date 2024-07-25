program Creational.Prototype.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.Prototype.Pattern in 'Creational.Prototype.Pattern.pas',
  Common in '..\Common.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
