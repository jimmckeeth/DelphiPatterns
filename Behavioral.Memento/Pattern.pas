unit Pattern;

interface

uses SysUtils;

type

  TMemento = class
  public
    FName: string;
    FPhone: string;
    FBudget: Double;
    constructor Create(name: string; phone: string; budget: Double);
  end;

  TSalesProspect = class
  private
    FName: string;
    FPhone: string;
    FBudget: Double;
    procedure SetName(value: string);
    procedure SetPhone(value: string);
    procedure SetBudget(value: Double);
  public
    property Name: string read FName write SetName;
    property Phone: string read FPhone write SetPhone;
    property Budget: Double read FBudget write SetBudget;
    function SaveMemento: TMemento;
    procedure RestoreMemento(memento: TMemento);
  end;

  TProspectMemory = class
  public
    FMemento: TMemento;
    destructor Destroy; override;
  end;

implementation

{ TMemento }

constructor TMemento.Create(name, phone: string; budget: Double);
begin
  FName := name;
  FPhone := phone;
  FBudget := budget;
end;

{ TSalesProspect }

procedure TSalesProspect.RestoreMemento(memento: TMemento);
begin
  WriteLn(#10 + ' Restoring State ---' + #10);
  Name := memento.FName;
  Phone := memento.FPhone;
  Budget := memento.FBudget;
end;

function TSalesProspect.SaveMemento: TMemento;
begin
  WriteLn(#10 + ' Saving State ---' + #10);
  Result := TMemento.Create(FName, FPhone, FBudget);
end;

procedure TSalesProspect.SetBudget(value: Double);
begin
  FBudget := value;
  WriteLn('Budget = ' + FloatToStr(FBudget));
end;

procedure TSalesProspect.SetName(value: string);
begin
  FName  := value;
  WriteLn('Name = ' + FName);
end;

procedure TSalesProspect.SetPhone(value: string);
begin
  FPhone := value;
  WriteLn('Phone = ' + FPhone);
end;

{ TProspectMemory }

destructor TProspectMemory.Destroy;
begin
  FMemento.Free;
  inherited;
end;

end.
