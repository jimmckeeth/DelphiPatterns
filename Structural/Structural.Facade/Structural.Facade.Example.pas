unit Structural.Facade.Example;

interface

procedure Example;

implementation

uses
  Structural.Facade.Pattern;

procedure Example;
begin
  TFacade.Operation1;
  TFacade.Operation2;
end;

end.
