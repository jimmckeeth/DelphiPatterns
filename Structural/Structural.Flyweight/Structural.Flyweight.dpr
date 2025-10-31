program Structural.Flyweight;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Flyweight.Pattern in '..\..\Structural.Flyweight\Structural.Flyweight.Pattern.pas';

begin
  {$I ..\..\common.inc}
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
