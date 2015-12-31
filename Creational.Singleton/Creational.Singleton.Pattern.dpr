program Creational.Singleton.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  s1, s2: TSingle;

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  try
    s1 := TSingle.Create;
    s2 := TSingle.Create;
    try
      s1.WriteCount;
      s2.WriteCount;

      ReadLn;
    finally
      s1.Free;
      s2.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
