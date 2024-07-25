program Creational.Builder.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.Builder.Pattern in 'Creational.Builder.Pattern.pas',
  Common in '..\Common.pas';

var
  b1, b2: IBuilder;
  director: TDirector;
  product1, product2: TProduct;

begin
  product1 := nil;
  product2 := nil;
  try
    director := TDirector.Create;
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
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
