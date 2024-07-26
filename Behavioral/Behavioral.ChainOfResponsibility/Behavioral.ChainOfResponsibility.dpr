program Behavioral.ChainOfResponsibility;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Common in '..\..\Common.pas',
  Behavioral.ChainOfResponsibility.Pattern in '..\..\Behavioral.ChainOfResponsibility\Behavioral.ChainOfResponsibility.Pattern.pas',
  Behavioral.ChainOfResponsibility.Example in '..\..\Behavioral.ChainOfResponsibility\Behavioral.ChainOfResponsibility.Example.pas';

begin
  try
    Example;
    Readln;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
