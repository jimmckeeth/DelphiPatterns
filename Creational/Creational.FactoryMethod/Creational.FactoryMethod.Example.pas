unit Creational.FactoryMethod.Example;

interface

procedure Example;

implementation

uses
  Creational.FactoryMethod.Pattern;

procedure Example;
var
  product: IProduct;
begin
  var c := TCreator.Create;
  try
    for var i := 1 to 12 do begin
      product := c.FactoryMethod(i);
      WriteLn('Avokados ' + product.ShipFrom);
    end;
  finally
    c.Free;
  end;
end;

end.
