program Behavioral.Strategy.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  context: TContext;
  strategy: IStrategy;
  i: integer;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
  try
    context := TContext.Create;
    context.SetStrategy(TStrategy1.Create);
    try 
      for i := 0 to 30 do begin
        if i =  15 then begin
          WriteLn(#10 + '|| ');
          context.SetStrategy(TStrategy2.Create);
        end;
        Write(IntToStr(context.Algorithm) + ' ');
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
