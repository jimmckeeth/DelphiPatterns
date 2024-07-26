unit Creational.AbstractFactory.Example;

interface

procedure Example;

implementation

uses
  Creational.AbstractFactory.Pattern,
  SysUtils;

procedure Example;
var
  bag: IBag;
  shoes: IShoes;
  factory: IFactory;
begin
  factory := TGucciFactory.Create;
  bag := factory.CreateBag;
  shoes := factory.CreateShoes;

  WriteLn('I bought a Bag which is made from ' + bag.Material);
  WriteLn('I bought some shoes which cost ' + IntToStr(shoes.Price));

  factory := TPoochyFactory.Create;
  bag := factory.CreateBag;
  shoes := factory.CreateShoes;

  WriteLn('I bought a Bag which is made from ' + bag.Material);
  WriteLn('I bought some shoes which cost ' + IntToStr(shoes.Price));

  ReadLn;
end;

end.
