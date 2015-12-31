unit Pattern;

interface
  type
    IComponent = interface
      ['{8021ECE2-0D60-4C96-99AA-C5A6C515DF52}']
      function Operation(): String;
    End;

    TComponent = class (TInterfacedObject, IComponent)
    public
      function Operation(): String;
    end;

    TDecoratorA = class (TInterfacedObject, IComponent)
    private
      FComponent: IComponent;
    public
      function Operation(): String;
      constructor Create(c: IComponent);
    end;

    TDecoratorB = class (TInterfacedObject, IComponent)
    private
      FComponent: IComponent;
    public
      addedState: String;
      function Operation(): String;
      function AddedBehaviour(): String;
      constructor Create(c: IComponent);
    end;

    TClient = class
      class procedure Display(s: String; c: IComponent);
    end;


implementation

{ TComponent }

function TComponent.Operation: String;
begin
  Result := 'I am walking ';
end;

{ TDecoratorA }

constructor TDecoratorA.Create(c: IComponent);
begin
  inherited Create;
  Self.FComponent := c;
end;

function TDecoratorA.Operation: String;
var
  s: String;
begin
  s := Self.FComponent.Operation;
  s := s + 'and listening to Classic FM ';
  Result := s;
end;

{ TDecoratorB }

function TDecoratorB.AddedBehaviour: String;
begin
  Result := 'and I bouth a capuccino ';
end;

constructor TDecoratorB.Create(c: IComponent);
begin
  inherited Create;
  Self.FComponent := c;
  Self.addedState := 'past the coffe shop ';
end;

function TDecoratorB.Operation: String;
var
  s: String;
begin
  s := Self.FComponent.Operation;
  s := s + 'to school ';
  Result := s;
end;

{ TClient }

class procedure TClient.Display(s: String; c: IComponent);
begin
  WriteLn(s + c.Operation);
end;

end.
