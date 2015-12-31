program Structural.Proxy.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  subject: ISubject;
  protect: IProtected;

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  try
    WriteLn('Proxy Pattern' +  #10);

    try
      subject := TProxy.Create;
      WriteLn(subject.Request);
      WriteLn(subject.Request);

      subject := nil;
      subject := TProtectionProxy.Create;
      WriteLn(subject.Request);
      if Supports(subject, IProtected, protect) then begin
        WriteLn(protect.Authenticate('Secret'));
        WriteLn(protect.Authenticate('Abracadabra'));
      end;
      WriteLn(subject.Request);
      ReadLn;
    finally

    end;

  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
