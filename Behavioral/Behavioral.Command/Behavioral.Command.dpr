program Behavioral.Command;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.Command.Pattern in '..\..\Behavioral.Command\Behavioral.Command.Pattern.pas',
  Behavioral.Command.Example in '..\..\Behavioral.Command\Behavioral.Command.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
