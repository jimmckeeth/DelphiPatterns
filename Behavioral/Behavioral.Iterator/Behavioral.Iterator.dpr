program Behavioral.Iterator;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Iterator.Pattern in '..\..\Behavioral.Iterator\Behavioral.Iterator.Pattern.pas',
  Behavioral.Iterator.Example in '..\..\Behavioral.Iterator\Behavioral.Iterator.Example.pas';

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
