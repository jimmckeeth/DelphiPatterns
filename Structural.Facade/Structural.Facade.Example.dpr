program Structural.Facade.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Facade.Pattern in 'Structural.Facade.Pattern.pas',
  Common in '..\Common.pas';

begin
  try
    TFacade.Operation1;
    TFacade.Operation2;

    ReadLn;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
