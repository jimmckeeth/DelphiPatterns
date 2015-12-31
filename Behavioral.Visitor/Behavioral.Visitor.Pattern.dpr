program Behavioral.Visitor.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  e: TEmployees;


begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
  try
    e := TEmployees.Create;
    try
      e.Attach(TClerk.Create);
      e.Attach(TDirector.Create);
      e.Attach(TPresident.Create);

      e.Accept(TIncomeVisitor.Create);
      e.Accept(TVacationVisitor.Create);

      ReadLn;
    finally
      e.free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
