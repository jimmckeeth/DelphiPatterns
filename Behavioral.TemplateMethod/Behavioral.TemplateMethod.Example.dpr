program Behavioral.TemplateMethod.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.TemplateMethod.Pattern in 'Behavioral.TemplateMethod.Pattern.pas',
  Common in '..\Common.pas';

var
  m: TAlgorithm;

begin
  try
    m := TAlgorithm.Create;
    try
      m.TemplateMethod(TClasA.Create);
      m.TemplateMethod(TClasB.Create);
      ReadLn;
    finally
      m.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
