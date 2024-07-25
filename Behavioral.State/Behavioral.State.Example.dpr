program Behavioral.State.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.State.Pattern in 'Behavioral.State.Pattern.pas',
  Common in '..\Common.pas';

var
  context: TContext;
  r, i: integer;

begin
  try
    context := TContext.Create;
    try
      context.FState := TNormalState.Create;
      for i := 0 to 30 do begin
        r := Random(3);
        Write(IntToStr(context.Request(r)) + ' ');
      end;
      ReadLn;
    finally
      context.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
