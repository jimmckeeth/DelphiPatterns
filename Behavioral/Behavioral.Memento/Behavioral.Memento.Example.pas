unit Behavioral.Memento.Example;

interface

procedure Example;

implementation

uses
  Behavioral.Memento.Pattern;

procedure Example;
begin
  var s := TSalesProspect.Create;
  var m := TProspectMemory.Create;
  try
    s.Name := 'Noel van Halen';
    s.Phone := '(412) 256-0990';
    s.Budget := 25000.0;

    m.FMemento := s.SaveMemento;

    s.Name := 'Leo Welch';
    s.Phone := '(310) 209-7111';
    s.Budget := 1000000.0;

    s.RestoreMemento(m.FMemento);
  finally
    m.Free;
    s.Free;
  end;
end;

end.
