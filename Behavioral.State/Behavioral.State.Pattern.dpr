program Behavioral.State.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  context: TContext;
  state: IState;
  r, i: integer;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
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
