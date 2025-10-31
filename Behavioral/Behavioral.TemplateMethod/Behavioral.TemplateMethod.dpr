program Behavioral.TemplateMethod;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.TemplateMethod.Pattern in '..\..\Behavioral.TemplateMethod\Behavioral.TemplateMethod.Pattern.pas',
  Behavioral.TemplateMethod.Example in '..\..\Behavioral.TemplateMethod\Behavioral.TemplateMethod.Example.pas';

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
