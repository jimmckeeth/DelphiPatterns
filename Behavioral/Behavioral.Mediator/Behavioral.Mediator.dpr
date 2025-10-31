program Behavioral.Mediator;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Mediator.Example in 'Behavioral.Mediator.Example.pas',
  Behavioral.Mediator.Pattern in 'Behavioral.Mediator.Pattern.pas';

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
