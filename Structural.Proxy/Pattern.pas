unit Pattern;

interface

uses
  SysUtils;

type
  ISubject = interface
  ['{78E26A3C-A657-4327-93CB-F3EB175AF85A}']
    function Request(): string;
  end;

  IProtected = interface
  ['{928BA576-0D8D-47FE-9301-DA3D8F9639AF}']
    function Authenticate(supplied: string): String;
  end;

  TSubject = class
  public
    function Request(): string;
  end;

  TProxy = class (TInterfacedObject, ISubject)
  private
    FSubject: TSubject;
  public
    function Request(): String;
    destructor Destroy(); override;
  end;

  TProtectionProxy = class (TInterfacedObject, ISubject, IProtected)
  private
    FSubject: TSubject;
    const FPassword: String =  'Abracadabra';
  public
    destructor Destroy(); override;
    function Authenticate(supplied: String): String;
    function Request(): String;
  end;

implementation

destructor TProxy.Destroy;
begin
  FreeAndNil(FSubject);
  inherited;
end;

function TProxy.Request: String;
begin
  if FSubject = nil then begin
    WriteLn('Subject Inactive');
    FSubject := TSubject.Create;
  end;
  WriteLn('Subject active');
  Result := 'Proxy: Call to ' + FSubject.Request;
end;

{ TSubject }

function TSubject.Request: string;
begin
  Result := 'Subject Request Choose left door' + #10;
end;

{ TProtectionProxy }

function TProtectionProxy.Authenticate(supplied: String): String;
begin
  if (supplied <> FPassword) then begin
    Result := 'Protection proxy: No Access!';
  end else begin
    FSubject := TSubject.Create;
    Result := 'Protection Proxy: Authenticated';
  end;
end;

destructor TProtectionProxy.Destroy;
begin
  FreeAndNil(FSubject);
  inherited;
end;

function TProtectionProxy.Request: String;
begin
  if FSubject = nil then begin
    Result := 'Protection Proxy: Authenticate first!';
  end else begin
    Result := 'Protection Proxy: Call to ' + FSubject.Request;
  end;
end;

end.
