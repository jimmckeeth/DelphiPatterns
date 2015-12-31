program Structural.Bridge.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  abstraction: TAbstraction;

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  try
    try
      abstraction := TAbstraction.Create(TImplementationA.Create);
      WriteLn(abstraction.Operation);

      abstraction.Free;
      abstraction := TAbstraction.Create(TImplementationB.Create);
      WriteLn(abstraction.Operation);

      ReadLn;
    finally
      FreeAndNil(abstraction);
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
