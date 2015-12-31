program Behavioral.Command.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  user: TUser;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
  try
    user := TUser.Create;
    try
      user.Compute('+', 100);
      user.Compute('-', 50);
      user.Compute('*', 10);
      user.Compute('/', 2);

      user.Undo(4);

      user.Redo(3);

      ReadLn;
    finally
      user.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
