program Behavioral.Visitor;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.Visitor.Pattern in '..\..\Behavioral.Visitor\Behavioral.Visitor.Pattern.pas',
  Behavioral.Visitor.Example in '..\..\Behavioral.Visitor\Behavioral.Visitor.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
