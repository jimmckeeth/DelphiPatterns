program Behavioral.Interpreter;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Interpreter.Pattern in '..\..\Behavioral.Interpreter\Behavioral.Interpreter.Pattern.pas',
  Behavioral.Interpreter.Example in '..\..\Behavioral.Interpreter\Behavioral.Interpreter.Example.pas';

begin
  {$I ..\..\ReportMemoryLeaks.inc}
  try
    Example;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
  if UpperCase(ParamStr(1))<>'-SILENT' then Readln;
end.
