program Creational.FactoryMethod.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  c: TCreator;
  product: IProduct;
  i: integer;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
  try
    c := TCreator.Create;
    try
      for i := 1 to 12 do begin
        product := c.FactoryMethod(i);
        WriteLn('Avokados ' + product.ShipFrom);
      end;
      ReadLn;
    finally
      c.Free;
    end;   
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
