program Behavioral.Observer.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Observer.Pattern in 'Behavioral.Observer.Pattern.pas',
  Common in '..\Common.pas';

var
  stock: TStock;
  investor1, investor2: TInvestor;

begin
  try
    stock := TStock.Create('IBM', 120.0);
    investor1 := TInvestor.Create('Sorros');
    investor2 := TInvestor.Create('Berkshire');
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

      ReadLn;
    finally
      stock.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
