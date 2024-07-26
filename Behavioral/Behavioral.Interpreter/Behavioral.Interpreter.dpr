program Behavioral.Interpreter;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Classes,
  Common in '..\..\Common.pas',
  Behavioral.Interpreter.Pattern in '..\..\Behavioral.Interpreter\Behavioral.Interpreter.Pattern.pas',
  Behavioral.Interpreter.Example in '..\..\Behavioral.Interpreter\Behavioral.Interpreter.Example.pas';

begin
  try
    Example;
    ReadLn;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
