program Behavioral.Observe;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.Observer.Pattern in '..\..\Behavioral.Observer\Behavioral.Observer.Pattern.pas',
  Behavioral.Observer.Example in '..\..\Behavioral.Observer\Behavioral.Observer.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
