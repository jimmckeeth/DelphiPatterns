unit Structural.Adapter.Example;

interface

uses
  Structural.Adapter.Pattern;

procedure Example;

implementation

procedure Example;
var
  target: ITarget;
begin
  var adaptee := TAdaptee.Create;
  try
    WriteLn('Before the new standard' + #10 + 'Precise reading:');
    WriteLn(adaptee.SpecificRequest(5, 3));

    target := TAdapter.Create;
    WriteLn(#10 + 'Moving to new standard');
    WriteLn(target.Request(5));
  finally
    adaptee.Free;
  end;
end;

end.
