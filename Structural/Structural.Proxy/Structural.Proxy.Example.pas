unit Structural.Proxy.Example;

interface

procedure Example;

implementation

uses
  Structural.Proxy.Pattern,
  SysUtils;

procedure Example;
var
  subject: ISubject;
  protect: IProtected;
begin
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
  finally

  end;

end;

end.
