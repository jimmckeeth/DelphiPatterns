unit Behavioral.Mediator.Example;

interface

procedure Example;

implementation

uses
  Behavioral.Mediator.Pattern;

procedure Example;
begin
  var mediator := TConcreteMediator.Create;
  var coll1 := TConcreteColleague1.Create(mediator);
  var coll2 := TConcreteColleague2.Create(mediator);
  try
    mediator.FColleague1 := coll1;
    mediator.FColleague2 := coll2;

    coll1.Send('How are you?');
    coll2.Send('Fine, thanks');
  finally
    coll1.Free;
    coll2.Free;
  end;
end;

end.
