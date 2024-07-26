unit Creational.Singleton.Example;

interface

procedure Example;

implementation

uses
  Creational.Singleton.Pattern;

procedure Example;
begin
  var s1 := TSingle.Create;
  try
    s1.WriteCount;
    var s2 := TSingle.Create;
    try
      s2.WriteCount;
    finally
      s2.Free;
      s2.WriteCount;
    end;
  finally
    s1.Free;
  end;
end;

end.
