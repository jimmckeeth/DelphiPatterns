unit Behavioral.Observer.Example;

interface

procedure Example;

implementation

uses
  Behavioral.Observer.Pattern;

procedure Example;
begin
  var stock := TStock.Create('IBM', 120.0);
  var investor1 := TInvestor.Create('Sorros');
  var investor2 := TInvestor.Create('Berkshire');
  try
    stock.Attach(investor1);
    stock.Attach(investor2);

    stock.Price := 120.10;
    stock.Price := 121.0;
    stock.Price := 120.50;
    stock.Price := 120.750;

    WriteLn(#10 + 'Remove investor');
    stock.Detach(investor1);

    stock.Price := 120.10;
    stock.Price := 121.0;
    stock.Price := 120.50;
    stock.Price := 120.750;

    stock.Detach(investor2);
  finally
    stock.Free;
  end;
end;

end.
