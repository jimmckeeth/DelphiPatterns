unit Pattern;

interface

uses
  Classes;

type

  TProduct = class
  private
    FParts: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Add(part: string);
    procedure Display;
  end;

  IBuilder = interface
  ['{9769DCD1-A2F5-4105-B28D-8A34DA6B0C12}']
    procedure BuildPartA;
    procedure BuildPartB;
    function GetResult: TProduct;
  end;

  TBuilder1 = class(TInterfacedObject, IBuilder)
  private
    FProduct: TProduct;
  public
    constructor Create;
    procedure BuildPartA;
    procedure BuildPartB;
    function GetResult: TProduct;
  end;

  TBuilder2 = class(TInterfacedObject, IBuilder)
  private
    FProduct: TProduct;
  public
    constructor Create;
    procedure BuildPartA;
    procedure BuildPartB;
    function GetResult: TProduct;
  end;

  TDirector = class
  public
    procedure Construct(builder: IBuilder);
  end;

implementation

{ TProduct }

procedure TProduct.Add(part: string);
begin
  FParts.Add(part);
end;

constructor TProduct.Create;
begin
  inherited;
  FParts := TStringList.Create;
end;

destructor TProduct.Destroy;
begin
  FParts.Free;
  inherited;
end;

procedure TProduct.Display;
var
  I: integer;
begin
  WriteLn('Product Patrs -----------');
  for I := 0 to FParts.Count - 1 do begin
    WriteLn(FParts[I]);
  end;
end;

{ TBuilder1 }

procedure TBuilder1.BuildPartA;
begin
  FProduct.Add('Part A ');
end;

procedure TBuilder1.BuildPartB;
begin
  FProduct.Add('Part B ');
end;

constructor TBuilder1.Create;
begin
  inherited;
  FProduct := TProduct.Create;
end;

function TBuilder1.GetResult: TProduct;
begin
  Result := FProduct;
end;

{ TBuilder2 }

procedure TBuilder2.BuildPartA;
begin
  FProduct.Add('Part X ');
end;

procedure TBuilder2.BuildPartB;
begin
  FProduct.Add('Part Y ');
end;

constructor TBuilder2.Create;
begin
  inherited;
  FProduct := TProduct.Create;
end;

function TBuilder2.GetResult: TProduct;
begin
  Result := FProduct;
end;

{ TDirector }

procedure TDirector.Construct(builder: IBuilder);
begin
  builder.BuildPartA;
  builder.BuildPartB;
  builder.BuildPartB;
end;

end.
