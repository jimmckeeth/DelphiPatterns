unit Creational.Builder.Example;

interface

procedure Example;

implementation

uses
  Creational.Builder.Pattern;

procedure Example;
var
  b1, b2: IBuilder;
  product1, product2: TProduct;
begin
  product1 := nil;
  product2 := nil;
  var director := TDirector.Create;
  try
    b1 := TBuilder1.Create;
    b2 := TBuilder2.Create;

    director.Construct(b1);
    product1 := b1.GetResult;
    product1.Display;

    director.Construct(b2);
    product2 := b2.GetResult;
    product2.Display;

    ReadLn;
  finally
    product1.free;
    product2.free;
    director.Free;
  end;
end;

end.
