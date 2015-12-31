program Behavioral.ChainOfResponsibility.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  Director: IApprover;
  VicePresident: IApprover;
  President: IApprover;
  Purchase: TPurchase;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
  try
    Director := TDirector.Create;
    VicePresident := TVicePresident.Create;
    President := TPresident.Create;

    try
      Director.SetSuccessor(VicePresident);
      VicePresident.SetSuccessor(President);

      Purchase := TPurchase.Create(2034, 350.00, 'Supplies');
      Director.ProcessRequest(Purchase);

      Purchase.Free;
      Purchase := TPurchase.Create(2035, 32590.10, 'Project X');
      Director.ProcessRequest(Purchase);
      
      Purchase.Free;
      Purchase := TPurchase.Create(2036, 122100.00, 'Project Y');
      Director.ProcessRequest(Purchase);

      ReadLn;
    finally
      Purchase.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
