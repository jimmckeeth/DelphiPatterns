unit Pattern;

interface

uses
  Classes;

type

  TCustomObject = class(TObject)
  public
    FName: string;
    constructor Create(name: string);
    procedure WriteName;
  end;

  TCustomList = class;

  TCustomListEnumerator = class
  private
    FIndex: Integer;
    FCustomList: TCustomList;
  public
    constructor Create(ACustomList: TCustomList);
    function MoveNext: Boolean;
    function GetCurrent: TCustomObject;
    property Current: TCustomObject read GetCurrent;
  end;

  TCustomList = class(TList) 
  public
    procedure Add(ACustomObject: TCustomObject);
    function GetEnumerator: TCustomListEnumerator;
  end;

implementation

{ TCustomObject }

constructor TCustomObject.Create(name: string);
begin
  FName := name;
end;

procedure TCustomObject.WriteName;
begin
  WriteLn('List member ' + FName);
end;

{ TCustomList }

procedure TCustomList.Add(ACustomObject: TCustomObject);
begin
  inherited Add(ACustomObject);
end;

function TCustomList.GetEnumerator: TCustomListEnumerator;
begin
  Result := TCustomListEnumerator.Create(Self);
end;

{ TCustomListEnumerator }

constructor TCustomListEnumerator.Create(ACustomList: TCustomList);
begin
  inherited Create;
  FIndex := -1;
  FCustomList := ACustomList;
end;

function TCustomListEnumerator.GetCurrent: TCustomObject;
begin
  Result := FCustomList.List[FIndex];
end;

function TCustomListEnumerator.MoveNext: Boolean;
begin
  Result := FIndex < FCustomList.Count - 1;
  if Result then
    Inc(FIndex);
end;

end.
