program Structural.Flyweight.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
