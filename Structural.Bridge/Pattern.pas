unit Pattern;

interface

uses
  SysUtils;

type
  IBridge = interface
  ['{FB1F4FB1-8AD8-48FD-AEA5-1E33B4628879}']
    function OperationImp: String;
  end;

  TAbstraction = class
  private
    FBridge: IBridge;
  public
    constructor Create(implement: IBridge);
    function Operation: string;
  end;

  TImplementationA = class(TinterfacedObject, IBridge)
  public
    function OperationImp: string;
  end;

  TImplementationB = class(TInterfacedObject, IBridge)
  public
    function OperationImp: string;
  end;

implementation

{ TAbstraction }

constructor TAbstraction.Create(implement: IBridge);
begin
  inherited Create();
  FBridge := implement;
end;

function TAbstraction.Operation: string;
begin
  WriteLn('Abstraction' + ' <<< BRIDGE >>> ' + FBridge.OperationImp);
end;

{ TImplemetationA }

function TImplementationA.OperationImp: string;
begin
  Result := 'Implementation A';
end;

{ TImplementationB }

function TImplementationB.OperationImp: string;
begin
  Result := 'Implementation B';
end;

end.
