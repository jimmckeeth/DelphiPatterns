program Behavioral.Memento;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Memento.Example in 'Behavioral.Memento.Example.pas',
  Behavioral.Memento.Pattern in 'Behavioral.Memento.Pattern.pas';

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
