unit Structural.Bridge.Example;

interface

uses
  Structural.Bridge.Pattern,
  SysUtils;

procedure Example;

implementation

procedure Example;
begin
  var abstraction := TAbstraction.Create(TImplementationA.Create);
  try
    WriteLn(abstraction.Operation);

    abstraction.Free;
    abstraction := TAbstraction.Create(TImplementationB.Create);
    WriteLn(abstraction.Operation);
  finally
    FreeAndNil(abstraction);
  end;
end;

end.
