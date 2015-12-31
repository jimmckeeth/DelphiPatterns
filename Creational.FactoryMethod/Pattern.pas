unit Pattern;

interface

type

  IProduct = interface
  ['{2E0DD8B3-6BA2-4922-93F1-81F521B55AA9}']
    function ShipFrom: string;
  End;

  TProductA = class(TInterfacedObject, IProduct)
    function ShipFrom: string;
  end;

  TProductB = class(TInterfacedObject, IProduct)
    function ShipFrom: string;
  end;

  TDefaultProduct = class(TInterfacedObject, IProduct)
    function ShipFrom: string;
  end;

  TCreator = class
    function FactoryMethod(month: integer): IProduct;
  end;

implementation

{ TProductA }

function TProductA.ShipFrom: string;
begin
  Result := 'from South Africa';
end;

{ TProductB }

function TProductB.ShipFrom: string;
begin
  Result := 'from Spain';
end;

{ TDefaultProduct }

function TDefaultProduct.ShipFrom: string;
begin
  Result := 'not available';
end;

{ TCreator }

function TCreator.FactoryMethod(month: integer): IProduct;
begin
  if (month > 4) and (month <= 11) then begin
    Result := TProductA.Create;
  end else if (month in [1,2,12]) then  begin
    Result := TProductB.Create;
  end else
    Result := TDefaultProduct.Create;
end;

end.
