program Behavioral.Command;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Command.Pattern in '..\..\Behavioral.Command\Behavioral.Command.Pattern.pas',
  Behavioral.Command.Example in '..\..\Behavioral.Command\Behavioral.Command.Example.pas';

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
