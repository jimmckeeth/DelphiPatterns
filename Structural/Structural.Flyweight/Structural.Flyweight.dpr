program Structural.Flyweight;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Structural.Flyweight.Pattern in '..\..\Structural.Flyweight\Structural.Flyweight.Pattern.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
