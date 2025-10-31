program Behavioral.Interpreter;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Classes,
  Behavioral.Interpreter.Pattern in '..\..\Behavioral.Interpreter\Behavioral.Interpreter.Pattern.pas',
  Behavioral.Interpreter.Example in '..\..\Behavioral.Interpreter\Behavioral.Interpreter.Example.pas';

begin
  {$I ..\..\common.inc}
  try
    Example;
    ReadLn;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
