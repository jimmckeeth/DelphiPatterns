unit Behavioral.Command.Example;

interface

procedure Example;

implementation

uses
  Behavioral.Command.Pattern;

procedure Example;
begin
  var user := TUser.Create;
  try
    user.Compute('+', 100);
    user.Compute('-', 50);
    user.Compute('*', 10);
    user.Compute('/', 2);

    user.Undo(4);

    user.Redo(3);
  finally
    user.Free;
  end;
end;

end.
