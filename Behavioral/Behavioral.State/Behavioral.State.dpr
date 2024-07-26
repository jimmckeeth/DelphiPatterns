program Behavioral.State;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.State.Pattern in '..\..\Behavioral.State\Behavioral.State.Pattern.pas',
  Behavioral.State.Example in '..\..\Behavioral.State\Behavioral.State.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
