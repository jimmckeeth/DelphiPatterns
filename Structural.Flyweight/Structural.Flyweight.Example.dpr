program Structural.Flyweight.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Flyweight.Pattern in 'Structural.Flyweight.Pattern.pas',
  Common in '..\Common.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
