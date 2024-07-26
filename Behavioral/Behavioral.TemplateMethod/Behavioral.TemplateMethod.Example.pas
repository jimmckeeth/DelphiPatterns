unit Behavioral.TemplateMethod.Example;

interface

procedure Example;

implementation

uses
  Behavioral.TemplateMethod.Pattern;

procedure Example;
begin
  var m := TAlgorithm.Create;
  try
    m.TemplateMethod(TClasA.Create);
    m.TemplateMethod(TClasB.Create);
  finally
    m.Free;
  end;

end;

end.
