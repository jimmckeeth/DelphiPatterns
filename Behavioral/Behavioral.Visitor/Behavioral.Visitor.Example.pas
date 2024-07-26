unit Behavioral.Visitor.Example;

interface

procedure Example;

implementation

uses
  Behavioral.Visitor.Pattern;

procedure Example;
begin
  var e := TEmployees.Create;
  try
    e.Attach(TClerk.Create);
    e.Attach(TDirector.Create);
    e.Attach(TPresident.Create);

    e.Accept(TIncomeVisitor.Create);
    e.Accept(TVacationVisitor.Create);
  finally
    e.free;
  end;
end;

end.
