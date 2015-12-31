program Behavioral.Observer.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  stock: TStock;
  investor1, investor2: TInvestor;

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
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
