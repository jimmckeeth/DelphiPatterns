program Behavioral.TemplateMethod;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.TemplateMethod.Pattern in '..\..\Behavioral.TemplateMethod\Behavioral.TemplateMethod.Pattern.pas',
  Behavioral.TemplateMethod.Example in '..\..\Behavioral.TemplateMethod\Behavioral.TemplateMethod.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
