program Behavioral.Memento.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  s: TSalesProspect;
  m: TProspectMemory;

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  try
    s := TSalesProspect.Create;
    m := TProspectMemory.Create;
    try
      s.Name := 'Noel van Halen';
      s.Phone := '(412) 256-0990';
      s.Budget := 25000.0;

      m.FMemento := s.SaveMemento;

      s.Name := 'Leo Welch';
      s.Phone := '(310) 209-7111';
      s.Budget := 1000000.0;

      s.RestoreMemento(m.FMemento);

      ReadLn;
    finally
      m.Free;
      s.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
