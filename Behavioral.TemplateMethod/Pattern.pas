unit Pattern;

interface

type

  IPrimitives = interface
  ['{FDD3A7B4-D02B-4F84-8428-C70DED215E42}']
    function Operation1: string;
    function Operation2: string;
  end;

  TClasA = class(TInterfacedObject, IPrimitives)
    function Operation1: string;
    function Operation2: string;
  end;

  TClasB = class(TInterfacedObject, IPrimitives)
    function Operation1: string;
    function Operation2: string;
  end;

  TAlgorithm = class
    procedure TemplateMethod(a: IPrimitives);
  end;

implementation

{ TClasA }

function TClasA.Operation1: string;
begin
  Result := 'ClassA:Op1 ';
end;

function TClasA.Operation2: string;
begin
  Result := 'ClassA:Op2 ';
end;

{ TClasB }

function TClasB.Operation1: string;
begin
  Result := 'ClassB:Op1 ';
end;

function TClasB.Operation2: string;
begin
  Result := 'ClassB:Op2 ';
end;

{ TAlgorithm }

procedure TAlgorithm.TemplateMethod(a: IPrimitives);
var
  s: string;
begin
  s := a.Operation1 + a.Operation2;
  WriteLn(s);
end;

end.
