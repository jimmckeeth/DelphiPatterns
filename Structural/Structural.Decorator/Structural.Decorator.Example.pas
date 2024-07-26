unit Structural.Decorator.Example;

interface

uses
  Structural.Decorator.Pattern;

procedure Example;

implementation

procedure Example;
var
  decB: TDecoratorB;
  component, decoratorA, decoratorB: IComponent;
begin
  WriteLn('Decorator Pattern' +  #10);
  try
    component := TComponent.Create;
    decoratorA := TDecoratorA.Create(component);
    decoratorB := TDecoratorB.Create(component);

    TClient.Display('1. Basic component : ', component);
    TClient.Display('2. A-Decorated     : ', decoratorA);
    TClient.Display('3. B-Decorated     : ', decoratorB);

    decoratorB := TDecoratorB.Create(decoratorA);
    TClient.Display('4. B-A-Decorated   : ', decoratorB);

    decB := TDecoratorB.Create(component);
    decoratorA := TDecoratorA.Create(decB);
    TClient.Display('5. A-B-Decorated   : ', decoratorA);
    WriteLn(decB.addedState + decB.AddedBehaviour);

  finally
    // Don't free it!
    // decB.Free;
  end;
end;

end.
