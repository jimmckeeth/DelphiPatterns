program Structural.Facade.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  try
    TFacade.Operation1;
    TFacade.Operation2;

    ReadLn;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
