program Creational.FactoryMethod.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.FactoryMethod.Pattern in 'Creational.FactoryMethod.Pattern.pas',
  Common in '..\Common.pas';

var
  c: TCreator;
  product: IProduct;
  i: integer;

begin
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
