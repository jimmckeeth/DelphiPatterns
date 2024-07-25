program Behavioral.Memento.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Memento.Pattern in 'Behavioral.Memento.Pattern.pas',
  Common in '..\Common.pas';

var
  s: TSalesProspect;
  m: TProspectMemory;

begin
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
