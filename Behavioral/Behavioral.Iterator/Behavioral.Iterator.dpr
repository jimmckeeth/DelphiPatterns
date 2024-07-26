program Behavioral.Iterator;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.Iterator.Pattern in '..\..\Behavioral.Iterator\Behavioral.Iterator.Pattern.pas',
  Behavioral.Iterator.Example in '..\..\Behavioral.Iterator\Behavioral.Iterator.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
