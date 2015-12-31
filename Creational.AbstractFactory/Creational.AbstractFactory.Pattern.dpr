program Creational.AbstractFactory.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  bag: IBag;
  shoes: IShoes;
  factory: IFactory;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
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
