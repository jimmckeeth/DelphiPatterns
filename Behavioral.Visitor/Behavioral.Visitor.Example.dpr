program Behavioral.Visitor.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Visitor.Pattern in 'Behavioral.Visitor.Pattern.pas',
  Common in '..\Common.pas';

var
  e: TEmployees;


begin
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
