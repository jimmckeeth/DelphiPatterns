program Behavioral.Observe;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Observer.Pattern in '..\..\Behavioral.Observer\Behavioral.Observer.Pattern.pas',
  Behavioral.Observer.Example in '..\..\Behavioral.Observer\Behavioral.Observer.Example.pas';

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
