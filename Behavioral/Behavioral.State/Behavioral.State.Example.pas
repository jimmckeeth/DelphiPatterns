unit Behavioral.State.Example;

interface

procedure Example;

implementation

uses
  Behavioral.State.Pattern,
  SysUtils;

procedure Example;
begin
  var context := TContext.Create;
  try
    context.FState := TNormalState.Create;
    for var i := 0 to 30 do begin
      var r := Random(3);
      Write(IntToStr(context.Request(r)) + ' ');
    end;
  finally
    context.Free;
  end;

end;

end.
