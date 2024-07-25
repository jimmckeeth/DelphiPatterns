program Behavioral.Mediator.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Mediator.Pattern in 'Behavioral.Mediator.Pattern.pas',
  Common in '..\Common.pas';
var
  mediator: TConcreteMediator;
  coll1: TConcreteColleague1;
  coll2: TConcreteColleague2;

begin
  try
    mediator := TConcreteMediator.Create;
    coll1 := TConcreteColleague1.Create(mediator);
    coll2 := TConcreteColleague2.Create(mediator);
    try
      mediator.FColleague1 := coll1;
      mediator.FColleague2 := coll2;

      coll1.Send('How are you?');
      coll2.Send('Fine, thanks');

      ReadLn;
    finally
      coll1.Free;
      coll2.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
