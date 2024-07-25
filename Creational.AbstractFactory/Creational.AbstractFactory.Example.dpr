program Creational.AbstractFactory.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.AbstractFactory.Pattern in 'Creational.AbstractFactory.Pattern.pas',
  Common in '..\Common.pas';

var
  bag: IBag;
  shoes: IShoes;
  factory: IFactory;

begin
  try
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
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
