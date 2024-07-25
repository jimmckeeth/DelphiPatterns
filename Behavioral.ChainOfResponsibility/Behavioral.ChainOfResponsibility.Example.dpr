program Behavioral.ChainOfResponsibility.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.ChainOfResponsibility.Pattern in 'Behavioral.ChainOfResponsibility.Pattern.pas',
  Common in '..\Common.pas';

var
  Director: IApprover;
  VicePresident: IApprover;
  President: IApprover;
  Purchase: TPurchase;

begin
  try
    Director := TDirector.Create;
    VicePresident := TVicePresident.Create;
    President := TPresident.Create;
    Purchase := nil;
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
