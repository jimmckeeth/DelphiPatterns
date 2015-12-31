unit Pattern;

interface

uses
  SysUtils, Classes;

type
  IComponent = interface
  ['{991C9839-DE75-4687-B194-D820968DBB8E}']
    procedure Add(c: IComponent);
    function Remove(c: IComponent): IComponent;
    function Display(depth: integer): string;
    function Find(c: IComponent): IComponent;
    function GetName: string;
    procedure SetName(Value: string);
    property Name: string read GetName write SetName;
  end;

  TSingle = class(TInterfacedObject, IComponent)
  private
    FName: string;
  public
    constructor Create(n: string);
    destructor Destroy; override;
    procedure Add(c: IComponent);
    function Remove(c: IComponent): IComponent;
    function Display(depth: integer): string;
    function Find(c: IComponent): IComponent;
    function GetName: string;
    procedure SetName(Value: string);
    property Name: string read GetName write SetName;
  end;

  TComposite = class(TInterfacedObject, IComponent)
  private
    FList: TInterfaceList;
    FName: string;
    FHolder: IComponent;
  public
    constructor Create(n: string);
    destructor Destroy; override;
    procedure Add(c: IComponent);
    function Remove(c: IComponent): IComponent;
    function Display(depth: integer): string;
    function Find(c: IComponent): IComponent;
    function GetName: string;
    procedure SetName(Value: string);
    property Name: string read GetName write SetName;
  end;

implementation

{ TComp }

procedure TSingle.Add(c: IComponent);
begin
  WriteLn('Cannot add to an Item');
end;

constructor TSingle.Create(n: string);
begin
  inherited Create;
  SetName(n);
end;

destructor TSingle.Destroy;
begin
  inherited;
end;

function TSingle.Display(depth: integer): string;
begin
  Result := IntToStr(depth) + ' ' + GetName;
end;

function TSingle.Find(c: IComponent): IComponent;
begin
  if c.Name = FName then
    Result := Self
  else
    Result := nil;
end;

function TSingle.GetName: string;
begin
  Result := FName;
end;

function TSingle.Remove(c: IComponent): IComponent;
begin
  WriteLn('Cannot remove directly');
  Result := Self;
end;

procedure TSingle.SetName(Value: string);
begin
  FName := Value;
end;

{ TComposite }

procedure TComposite.Add(c: IComponent);  
begin
  FList.Add(c);
end;

constructor TComposite.Create(n: string);
begin
  inherited Create;
  FHolder := nil;
  FName := n;
  FList := TInterfaceList.Create;
end;

destructor TComposite.Destroy;
var
  i: integer;
begin
  FList.Clear;
  FreeAndNil(FList);
  inherited;
end;

function TComposite.Display(depth: integer): string;
var
  s: String;
  i: Integer;
begin
  s := 'Set ' + FName + ' length: ' + IntToStr(FList.Count) + #10;
  for I := 0 to FList.Count - 1 do begin
    s := s + IComponent(FList.Items[i]).Display(depth + 2) + #10;
  end;
  Result := s;
end;

function TComposite.Find(c: IComponent): IComponent;
var
  f: IComponent;
  i: Integer;
begin
  FHolder := Self;
  if c.Name = FName then begin
    Result := Self;
    Exit;
  end;
  f := nil;
  for i := 0 to FList.Count - 1 do begin
    f := IComponent(FList.Items[i]).Find(c);
    if (f <> nil) then begin
      Result := f;
      exit;
    end;
  end;
  Result := f;
end;

function TComposite.GetName: string;
begin
  Result := FName;
end;

function TComposite.Remove(c: IComponent): IComponent;
var
  i: Integer;
begin
  FHolder := Self;
  if FHolder <> nil then begin
    for i := 0 to FList.Count - 1 do begin
      if ((FList.Items[i] as IComponent).Name = c.Name) then begin
        FList.Remove(c);
      end;
    end;
    Result := FHolder;
  end else begin
    Result := Self;
  end;
end;

procedure TComposite.SetName(Value: string);
begin
  FName := Value;
end;

end.
