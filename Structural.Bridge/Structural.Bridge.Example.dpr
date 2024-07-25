program Structural.Bridge.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Bridge.Pattern in 'Structural.Bridge.Pattern.pas',
  Common in '..\Common.pas';

var
  abstraction: TAbstraction;

begin
  try
    try
      abstraction := TAbstraction.Create(TImplementationA.Create);
      WriteLn(abstraction.Operation);

      abstraction.Free;
      abstraction := TAbstraction.Create(TImplementationB.Create);
      WriteLn(abstraction.Operation);

      ReadLn;
    finally
      FreeAndNil(abstraction);
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
