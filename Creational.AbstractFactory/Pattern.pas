unit Pattern;

interface

type
  // the brands definition
  IBrand = interface
  ['{3D8E5363-08E7-4B8F-ABF1-8953E13C7A9A}']
    function Price: integer;
    function Material: string;
  end;

  TGucci = class(TInterfacedObject, IBrand)
  public
    function Price: integer;
    function Material: string;
  end;

  TPoochy = class(TInterfacedObject, IBrand)
  public
    function Price: integer;
    function Material: string;
  end;
  // the products definition
  IBag = interface
  ['{7EACC8B1-7963-4677-A8D7-9FA62065B880}']
    function Material: string;
  end;

  IShoes = interface
  ['{1560A332-D2D1-43E1-99BB-3D2882C1501A}']
    function Price: integer;
  end;

  TBag = class(TInterfacedObject, IBag)
  private
    FMyBrand: IBrand;
  public
    constructor Create(brand: IBrand);
    function Material: string;
  end;

  TShoes = class(TInterfacedObject, IShoes)
  private
    FMyBrand: IBrand;
  public
    constructor Create(brand: IBrand);
    function Price: integer;
  end;
  // factories definition
  IFactory = interface
  ['{A9948727-DA7C-4843-83CF-92B81DD158F9}']
    function CreateBag: IBag;
    function CreateShoes: IShoes;
  end;

  TGucciFactory = class(TInterfacedObject, IFactory)
  public
    function CreateBag: IBag;
    function CreateShoes: IShoes;
  end;

  TPoochyFactory = class(TInterfacedObject, IFactory)
  public
    function CreateBag: IBag;
    function CreateShoes: IShoes;
  end;

implementation

{ TGucci }

function TGucci.Material: string;
begin
  Result := 'Crocodile skin';
end;

function TGucci.Price: integer;
begin
  Result := 1000;
end;

{ TPoochi }

function TPoochy.Material: string;
begin
  Result := 'Plastic';
end;

function TPoochy.Price: integer;
var
  gucci: TGucci;
begin
  gucci := TGucci.Create;
  try
    Result := Round(gucci.Price / 3);
  finally
    gucci.Free;
  end;
end;

{ TBag }

constructor TBag.Create(brand: IBrand);
begin
  inherited Create;
  FMyBrand := brand;
end;

function TBag.Material: string;
begin
  Result := FMyBrand.Material;
end;

{ TShoes }

constructor TShoes.Create(brand: IBrand);
begin
  inherited Create;
  FMyBrand := brand;
end;

function TShoes.Price: integer;
begin
  Result := FMyBrand.Price;
end;

{ TGucciFactory }

function TGucciFactory.CreateBag: IBag;
begin
  Result := IBag(TBag.Create(TGucci.Create));
end;

function TGucciFactory.CreateShoes: IShoes;
begin
  Result := IShoes(TShoes.Create(TGucci.Create));
end;

{ TPoochyFactory }

function TPoochyFactory.CreateBag: IBag;
begin
  Result := IBag(TBag.Create(TPoochy.Create));
end;

function TPoochyFactory.CreateShoes: IShoes;
begin
  Result := IShoes(TShoes.Create(TPoochy.Create));
end;

end.
