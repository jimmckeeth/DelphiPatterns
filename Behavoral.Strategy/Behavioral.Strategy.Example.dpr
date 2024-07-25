program Behavioral.Strategy.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Strategy.Pattern in 'Behavioral.Strategy.Pattern.pas',
  Common in '..\Common.pas';

var
  context: TContext;
  i: integer;

begin
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
