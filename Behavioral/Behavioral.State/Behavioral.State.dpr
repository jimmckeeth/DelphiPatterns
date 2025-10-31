program Behavioral.State;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.State.Pattern in '..\..\Behavioral.State\Behavioral.State.Pattern.pas',
  Behavioral.State.Example in '..\..\Behavioral.State\Behavioral.State.Example.pas';

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
