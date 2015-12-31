unit Pattern;

interface

uses SysUtils, Windows;

type
  TAdaptee = class
  public
    function SpecificRequest(a, b: Double): Double;
  end;

  ITarget = interface
  ['{7422D6B2-5601-4DB6-AF78-63524D1ED7A8}']
    function Request(i: Integer): string;
  end;

  TAdapter = class(TAdaptee, ITarget, IInterface)
  private
    FRefCount: Integer;
  public
    function Request(i: Integer): string;
  protected
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  end;

implementation

{ TAdaptee }

function TAdaptee.SpecificRequest(a, b: Double): Double;
begin
  Result := a / b;
end;

{ TAdapter }

function TAdapter.Request(i: Integer): string;
begin
  Result := 'Rough estimate is '
            + IntToStr(Round(SpecificRequest(i, 3)));
end;

function TAdapter.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
    Result := 0
  else
    Result := E_NOINTERFACE;
end;

function TAdapter._AddRef: Integer;
begin
  Result := InterlockedIncrement(FRefCount);
end;

function TAdapter._Release: Integer;
begin
  Result := InterlockedDecrement(FRefCount);
  if Result = 0 then
    Destroy;
end;

end.
