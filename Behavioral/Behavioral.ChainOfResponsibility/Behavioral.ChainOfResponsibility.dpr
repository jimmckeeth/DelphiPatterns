program Behavioral.ChainOfResponsibility;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.ChainOfResponsibility.Pattern in '..\..\Behavioral.ChainOfResponsibility\Behavioral.ChainOfResponsibility.Pattern.pas',
  Behavioral.ChainOfResponsibility.Example in '..\..\Behavioral.ChainOfResponsibility\Behavioral.ChainOfResponsibility.Example.pas';

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
