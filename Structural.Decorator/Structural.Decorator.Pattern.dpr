program Structural.Decorator.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  component, decoratorA, decoratorB: IComponent;
  decB: TDecoratorB;

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  try
    WriteLn('Decorator Pattern' +  #10);
    try
      component := TComponent.Create;
      decoratorA := TDecoratorA.Create(component);
      decoratorB := TDecoratorB.Create(component);

      TClient.Display('1. Basic component : ', component);
      TClient.Display('2. A-Decorated     : ', decoratorA);
      TClient.Display('3. B-Decorated     : ', decoratorB);

      decoratorB := TDecoratorB.Create(decoratorA);
      TClient.Display('4. B-A-Decorated   : ', decoratorB);

      decB := TDecoratorB.Create(component);
      decoratorA := TDecoratorA.Create(decB);
      TClient.Display('5. A-B-Decorated   : ', decoratorA);
      WriteLn(decB.addedState + decB.AddedBehaviour);

    finally

    end;

    ReadLn;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
