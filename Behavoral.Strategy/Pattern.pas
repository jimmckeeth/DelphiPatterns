unit Pattern;

interface

type

  TContext = class;

  IStrategy = interface
  ['{7F63C143-98D0-4B8C-A02B-894D145BB745}']
    function Move(c: TContext): integer;
  end;

  TStrategy1 = class(TInterfacedObject, IStrategy)
  public
    function Move(c: TContext): integer;
  end;

  TStrategy2 = class(TInterfacedObject, IStrategy)
  public
    function Move(c: TContext): integer;
  end;

  TContext = class
  private
    FStrategy: IStrategy;
  public
    FCounter: integer;
    constructor Create;
    function Algorithm: integer;
    procedure SetStrategy(s: IStrategy);
  end;

implementation

{ TStrategy1 }

function TStrategy1.Move(c: TContext): integer;
begin
  c.FCounter := c.FCounter + 1;
  Result := c.FCounter;
end;

{ TStrategy2 }

function TStrategy2.Move(c: TContext): integer;
begin
  c.FCounter := c.FCounter - 1;
  Result := c.FCounter;
end;

{ TContext }

function TContext.Algorithm: integer;
begin
  Result := FStrategy.Move(Self)
end;

constructor TContext.Create;
begin
  inherited;
  FCounter := 5;
  FStrategy := TStrategy1.Create;
end;

procedure TContext.SetStrategy(s: IStrategy);
begin
  FStrategy := s;
end;

end.
