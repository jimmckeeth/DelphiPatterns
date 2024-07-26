program Structural.Composite;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Structural.Composite.Pattern in '..\..\Structural.Composite\Structural.Composite.Pattern.pas',
  Structural.Composite.Example in '..\..\Structural.Composite\Structural.Composite.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
