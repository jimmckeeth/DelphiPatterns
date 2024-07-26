unit Behavioral.Strategy.Example;

interface

procedure Example;

implementation

uses
  Behavioral.Strategy.Pattern,
  SysUtils;

procedure Example;
begin
  var context := TContext.Create;
  context.SetStrategy(TStrategy1.Create);
  try
    for var i := 0 to 30 do begin
      if i = 15 then begin
        WriteLn(#10 + '|| ');
        context.SetStrategy(TStrategy2.Create);
      end;
      Write(IntToStr(context.Algorithm) + ' ');
    end;
  finally
    context.Free;
  end;
end;


end.
