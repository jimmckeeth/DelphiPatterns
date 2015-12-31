program Creational.Builder.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  b1, b2: IBuilder;
  director: TDirector;
  product1, product2: TProduct;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
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
