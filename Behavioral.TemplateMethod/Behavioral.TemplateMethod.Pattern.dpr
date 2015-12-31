program Behavioral.TemplateMethod.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  m: TAlgorithm;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
  try
    m := TAlgorithm.Create;
    try
      m.TemplateMethod(TClasA.Create);
      m.TemplateMethod(TClasB.Create);
      ReadLn;
    finally
      m.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
