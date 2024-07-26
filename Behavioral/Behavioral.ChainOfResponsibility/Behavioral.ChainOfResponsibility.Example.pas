unit Behavioral.ChainOfResponsibility.Example;

interface

procedure Example;

implementation

uses
  Behavioral.ChainOfResponsibility.Pattern;

procedure Example;
begin
  var Director: IApprover := TDirector.Create;
  var VicePresident: IApprover := TVicePresident.Create;
  var President: IApprover := TPresident.Create;
  var Purchase: TPurchase := nil;
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
  finally
    Purchase.Free;
  end;
end;

end.
