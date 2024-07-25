program Creational.Singleton.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Creational.Singleton.Pattern in 'Creational.Singleton.Pattern.pas',
  Common in '..\Common.pas';

var
  s1, s2: TSingle;

begin
  try
    s1 := TSingle.Create;
    s2 := TSingle.Create;
    try
      s1.WriteCount;
      s2.WriteCount;

      ReadLn;
    finally
      s1.Free;
      s2.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
