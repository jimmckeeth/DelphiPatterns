program Behavioral.Visitor;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Visitor.Pattern in '..\..\Behavioral.Visitor\Behavioral.Visitor.Pattern.pas',
  Behavioral.Visitor.Example in '..\..\Behavioral.Visitor\Behavioral.Visitor.Example.pas';

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
