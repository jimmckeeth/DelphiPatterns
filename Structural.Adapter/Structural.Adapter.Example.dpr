program Structural.Adapter.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Structural.Adapter.Pattern in 'Structural.Adapter.Pattern.pas',
  Common in '..\Common.pas';

var
  adaptee: TAdaptee;
  target: ITarget;

begin
  try
    adaptee := TAdaptee.Create;
    try
      WriteLn('Before the new standard' + #10 + 'Precise reading:');
      WriteLn(adaptee.SpecificRequest(5, 3));

      target := TAdapter.Create;
      WriteLn(#10 + 'Moving to new standard');
      WriteLn(target.Request(5));

      ReadLn;
    finally
       adaptee.Free;
    end; 
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
