unit Pattern;

interface

type

  TSystemA = class
  private
    function A1: string;
  end;

  TSystemB = class
  private
    function B1: string;
  end;

  TSystemC = class
  private
    function C1: string;
  end;

  TFacade = class
  public
    class procedure Operation1;
    class procedure Operation2;
  end;

implementation

{ TSystemA }

function TSystemA.A1: string;
begin
  Result := 'System A, Method A1' + #10;
end;

{ TSystemB }

function TSystemB.B1: string;
begin
  Result := 'System B, Method B1' + #10;
end;

{ TSystemC }

function TSystemC.C1: string;
begin
  Result := 'System C, Method C1' + #10;
end;

{ TFacade }

class procedure TFacade.Operation1;
var
  sysA: TSystemA;
  sysB: TSystemB;
  sysC: TSystemC;
begin
  sysA := TSystemA.Create;
  sysB := TSystemB.Create;
  sysC := TSystemC.Create;
  try
    WriteLn('Operation 1' + #10 +
            sysA.A1 +
            sysB.B1 +            
            sysC.C1);

  finally
    sysA.Free;
    sysB.Free;
    sysC.Free;
  end;
end;

class procedure TFacade.Operation2;
var
  sysB: TSystemB;
  sysC: TSystemC;
begin
  sysB := TSystemB.Create;
  sysC := TSystemC.Create;
  try
    WriteLn('Operation 1' + #10 +
            sysB.B1 +
            sysC.C1);

  finally
    sysB.Free;
    sysC.Free;
  end;
end;

end.
