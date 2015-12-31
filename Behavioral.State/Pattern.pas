unit Pattern;

interface

type

  TContext = class;

  IState = interface
  ['{2E995182-8FA5-4AF2-9994-6E5B7F273A0B}']
    function MoveUp(c: TContext): integer;
    function MoveDown(c: TContext): integer;
  end;

  TNormalState = class(TInterfacedObject, IState)
  public
    function MoveUp(c: TContext): integer;
    function MoveDown(c: TContext): integer;
  end;

  TFastState = class(TInterfacedObject, IState)
  public
    function MoveUp(c: TContext): integer;
    function MoveDown(c: TContext): integer;
  end;

  TContext = class
  const
    LIMIT = 10;
  public
    FState: IState;
    FCounter: integer;
    constructor Create;
    function Request(i: integer): integer;
  end;

implementation

{ TNormalState }

function TNormalState.MoveDown(c: TContext): integer;
begin
  if c.FCounter < c.LIMIT then begin
    c.FState := TFastState.Create;
    WriteLn('|| ');
  end;
  c.FCounter := c.FCounter - 2;
  Result := c.FCounter;
end;

function TNormalState.MoveUp(c: TContext): integer;
begin
  c.FCounter := c.FCounter + 2;
  Result := c.FCounter;
end;

{ TFastState }

function TFastState.MoveDown(c: TContext): integer;
begin
    if c.FCounter < c.LIMIT then begin
    c.FState := TNormalState.Create;
    WriteLn('|| ');
  end;
  c.FCounter := c.FCounter - 5;
  Result := c.FCounter;
end;

function TFastState.MoveUp(c: TContext): integer;
begin
  c.FCounter := c.FCounter + 5;
  Result := c.FCounter;
end;

{ TContext }

constructor TContext.Create;
begin
  inherited;
  FCounter := LIMIT;
end;

function TContext.Request(i: integer): integer;
begin
  if i = 2 then
    Result := FState.MoveUp(Self)
  else
    Result := FState.MoveDown(Self);
end;

end.
